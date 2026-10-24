import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep138
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

private def s2Step140CompleteMoves : List (Wire × Wire) := [(842,711)]

private def s2Step140EarlyControlLog : HmrEarlyControlLog := ⟨[842, 849, 781, 837, 841],[783],[790],[815, 867, 877, 879, 882, 885],[886]⟩

private def s2Step140FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [841], [], []],[[783], [837], [849], [781]],[[], [], [], []]⟩,[778],[788],[790],[815],[867, 877, 879, 882, 885, 886, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[867, 877, 879, 882, 885, 886, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[790, 815, 867, 877]⟩

private def s2Step140CompleteLog : HmrEarlyStepLog := ⟨s2Step140FrontLog,s2Step140CompleteMoves,s2Step140EarlyControlLog⟩

private def s2Step140ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710],768⟩

private def s2Step140ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826],770⟩

private def s2Step140ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198],769⟩

private def s2Step140ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814],771⟩

private def s2Step140FrontOut : WindowBank := ⟨s2Step140ExitFOut,s2Step140ExitGOut,s2Step140ExitFvOut,s2Step140ExitGvOut⟩

private def s2Step140CompleteOut : WindowBank := s2Step140FrontOut.repacked s2Step140CompleteMoves

private def s2Step140EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (887≤q ∧ q<888)),Finset.filter_subset _ _⟩

private def s2Step140EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (887≤q ∧ q<888)),Finset.filter_subset _ _⟩

private def s2Step140EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (887≤q ∧ q<888)),Finset.filter_subset _ _⟩

private def s2Step140EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step140EarlyControlPositiveArena,[783],s2Step140EarlyControlEqualityArena,[790],⟨⟨778,false⟩,[⟨⟨783,false⟩,790⟩]⟩⟩

private def s2Step140EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<888)),Finset.filter_subset _ _⟩

private def s2Step140EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<886) ∨ (887≤q ∧ q<888)),Finset.filter_subset _ _⟩

private def s2Step140EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888)),Finset.filter_subset _ _⟩

private def s2Step140EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888)),Finset.filter_subset _ _⟩

private def s2Step140EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888)),Finset.filter_subset _ _⟩

private def s2Step140EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (887≤q ∧ q<888)),Finset.filter_subset _ _⟩

private def s2Step140EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,842⟩,⟨⟨774,false⟩,849⟩,⟨⟨775,false⟩,781⟩,⟨⟨776,false⟩,837⟩,⟨⟨777,false⟩,841⟩]⟩

private def s2Step140EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step140EarlyControlZeroArena,s2Step140EarlyControlZeroPlan,s2Step140EarlyControlClassPlan,s2Step140EarlyControlFlagArena,s2Step140EarlyControlFittedArena,s2Step140EarlyControlHistoryArena,s2Step140EarlyControlSigmaArena,s2Step140EarlyControlOutputArena,s2Step140EarlyControlLog⟩

private def s2Step140CounterWork : List Wire := [790, 815, 867, 877]

private theorem s2Step140Counter_bounded : s2Step140CounterWork.toFinset⊆arenaWires := by norm_num [s2Step140CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step140HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (887≤q ∧ q<888)),Finset.filter_subset _ _⟩

private def s2Step140CounterDuring : Arena := ⟨s2Step140HeadFvAfter.live∪s2Step140CounterWork.toFinset,Finset.union_subset s2Step140HeadFvAfter.bounded s2Step140Counter_bounded⟩

private def s2Step140EntryFFresh : List Wire := []

private def s2Step140EntryFvFresh : List Wire := []

private def s2Step140EntryGFresh : List Wire := [841]

private def s2Step140EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (887≤q ∧ q<888)),Finset.filter_subset _ _⟩

private def s2Step140EntryGvAfter : Arena := s2Step140EntryGAfter

private def s2Step140EntryGvFresh : List Wire := []

private def s2Step140ExitFExtra : List Wire := [711, 837]

private def s2Step140ExitFvExtra : List Wire := [781]

private def s2Step140ExitGExtra : List Wire := [841, 783]

private def s2Step140ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<711) ∨ (712≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (887≤q ∧ q<888)),Finset.filter_subset _ _⟩

private def s2Step140ExitGvExtra : List Wire := [849]

private def s2Step140Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (887≤q ∧ q<888)),Finset.filter_subset _ _⟩

private def s2Step140Add0Work : List Wire := [867, 877, 879, 882, 885, 886, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step140Add0_bounded : s2Step140Add0Work.toFinset⊆arenaWires := by
  have h : s2Step140Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step140Add0During : Arena := ⟨s2Step140Add0Arena.live∪s2Step140Add0Work.toFinset,Finset.union_subset s2Step140Add0Arena.bounded s2Step140Add0_bounded⟩

private def s2Step140Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (887≤q ∧ q<888)),Finset.filter_subset _ _⟩

private def s2Step140Add1Work : List Wire := [867, 877, 879, 882, 885, 886, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step140Add1_bounded : s2Step140Add1Work.toFinset⊆arenaWires := by
  have h : s2Step140Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step140Add1During : Arena := ⟨s2Step140Add1Arena.live∪s2Step140Add1Work.toFinset,Finset.union_subset s2Step140Add1Arena.bounded s2Step140Add1_bounded⟩

private def s2Step140F4FlagArena : Arena := ⟨s2Step140HeadFvAfter.live∪{790},Finset.union_subset s2Step140HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step140F4Plan : HmrHybridF4Plan := ⟨s2Step140F4FlagArena,[790],s2Step140Add0Arena,[815],s2Step140Add0During,s2Step140Add0Work,s2Step140Add1During,s2Step140Add1Work⟩

private def s2Step140HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 837],768⟩

private def s2Step140HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 781],770⟩

private def s2Step140HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 841, 783],769⟩

private def s2Step140HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 849],771⟩

private def s2Step140FrontHead : WindowBank := ⟨s2Step140HeadFOut,s2Step140HeadGOut,s2Step140HeadFvOut,s2Step140HeadGvOut⟩

private def s2Step140EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711],768⟩

private def s2Step140EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826],770⟩

private def s2Step140EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 841],769⟩

private def s2Step140EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814],771⟩

private def s2Step140FrontPair : WindowBank := ⟨s2Step140EntryFOut,s2Step140EntryGOut,s2Step140EntryFvOut,s2Step140EntryGvOut⟩

private def s2Step140FrontSigmaArena : Arena := ⟨s2Step140EntryGvAfter.live∪{778},Finset.union_subset s2Step140EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step140HeadFFresh : List Wire := [837]

private def s2Step140HeadFvFresh : List Wire := [781]

private def s2Step140HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (887≤q ∧ q<888)),Finset.filter_subset _ _⟩

private def s2Step140HeadGFresh : List Wire := [783]

private def s2Step140HeadGvFresh : List Wire := [849]

private def s2Step140FrontPlan : HmrSourceFront := ⟨s2Step140EntryGvAfter,s2Step140FrontPair,(growRow 768 s2Step140EntryFFresh ++ (growRow 769 s2Step140EntryGFresh ++ (growRow 770 s2Step140EntryFvFresh ++ (growRow 771 s2Step140EntryGvFresh ++ [])))),s2Step140FrontSigmaArena,[778],s2Step140HeadGBefore,[788],
  s2Step140HeadFvAfter,s2Step140FrontHead,(growRow 769 s2Step140HeadGFresh ++ (growRow 768 s2Step140HeadFFresh ++ (growRow 771 s2Step140HeadGvFresh ++ (growRow 770 s2Step140HeadFvFresh ++ [])))),s2Step140F4Plan,s2Step140CounterDuring,s2Step140CounterWork,s2Step140ExitGvAfter,s2Step140FrontOut,(shrinkRow 769 s2Step140ExitGExtra ++ (shrinkRow 768 s2Step140ExitFExtra ++ (shrinkRow 770 s2Step140ExitFvExtra ++ (shrinkRow 771 s2Step140ExitGvExtra ++ []))))⟩

private def s2Step140CompletePlan : HmrEarlyStepPlan := ⟨s2Step140FrontPlan,s2Step140EarlyControlArena,s2Step140EarlyControlPlan,s2Step140CompleteMoves⟩

private theorem s2Step140Complete_apart : List.Disjoint (s2Step140CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [778, 788, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887] := by
  have nd : ((s2Step140CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[778, 788, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step140Complete_owned : (s2Step140CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step140EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step140EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (887≤q ∧ q<888)) rfl
  decide +kernel

private def s2Step140CompleteMoveArena : Arena := ⟨s2Step140ExitGvAfter.live∪{711},Finset.union_subset s2Step140ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step140Complete_repack : s2Step140ExitGvAfter.checkRepack s2Step140CompleteMoves=some s2Step140EarlyControlArena := by
  have owned : 842∈s2Step140ExitGvAfter.live := by norm_num [s2Step140ExitGvAfter,arenaWires]
  have reserve : s2Step140ExitGvAfter.reserve {711}=some s2Step140CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step140ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step140CompleteMoveArena.retireSet {842}=s2Step140EarlyControlArena := by
    unfold Arena.retireSet s2Step140EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step140CompleteMoveArena,s2Step140ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step140CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step140CompleteMoveArena.retireSet {842}).checkRepack []=some s2Step140EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step140EarlyControl_branchOwned : ([788] : List Wire).toFinset⊆s2Step140EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step140EarlyControlSigmaArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888)) rfl
  decide +kernel

private theorem s2Step140EarlyControl_branch : compileHmrBranchRetirement s2Step140EarlyControlSigmaArena 788=some s2Step140EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step140EarlyControl_branchOwned
  · ext q
    simp [s2Step140EarlyControlOutputArena,s2Step140EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step140EarlyControl_classEqualityBorrow : s2Step140EarlyControlPositiveArena.checkBorrow (([778, 783] : List Wire).length-1) s2Step140EarlyControlLog.classWork=some s2Step140EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step140EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step140EarlyControlPositiveArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (887≤q ∧ q<888)) rfl
      decide +kernel
    · ext q
      simp [s2Step140EarlyControlEqualityArena,s2Step140EarlyControlPositiveArena,s2Step140EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step140EarlyControl_classEqualityOwned : ([778, 783] : List Wire).toFinset⊆s2Step140EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step140EarlyControlPositiveArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (887≤q ∧ q<888)) rfl
  decide +kernel

private theorem s2Step140EarlyControl_classEquality : compileHmrEqualityLog s2Step140EarlyControlPositiveArena [778, 783] 0 s2Step140EarlyControlLog.classWork=some (s2Step140EarlyControlEqualityArena,s2Step140EarlyControlLog.classWork,s2Step140EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step140EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step140EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step140EarlyControl_classOwned : ([777, 841, 778] : List Wire).toFinset⊆s2Step140EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step140EarlyControlZeroArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (887≤q ∧ q<888)) rfl
  decide +kernel

private theorem s2Step140EarlyControl_positiveBorrow : s2Step140EarlyControlZeroArena.checkBorrow (1) s2Step140EarlyControlLog.positiveWork=some s2Step140EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step140EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step140EarlyControlZeroArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (887≤q ∧ q<888)) rfl
      decide +kernel
    · ext q
      simp [s2Step140EarlyControlPositiveArena,s2Step140EarlyControlZeroArena,s2Step140EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step140EarlyControl_class : compileHmrSourceClassLog s2Step140EarlyControlZeroArena false 777 s2Step140EarlyControlZeroPlan.top 0 778 s2Step140EarlyControlLog.positiveWork s2Step140EarlyControlLog.classWork=some s2Step140EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step140EarlyControlClassPlan s2Step140EarlyControlZeroArena false 777 s2Step140EarlyControlZeroPlan.top 0 778
  constructor
  · decide +kernel
  · exact s2Step140EarlyControl_classOwned
  · exact s2Step140EarlyControl_positiveBorrow
  · exact s2Step140EarlyControl_classEquality

private theorem s2Step140EarlyControl_entryRecordOwned : ([788, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887] : List Wire).toFinset⊆s2Step140EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step140EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (887≤q ∧ q<888)) rfl
  decide +kernel

private theorem s2Step140EarlyControl_entrySigmaOwned : ([778, 254] : List Wire).toFinset⊆s2Step140EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step140EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (887≤q ∧ q<888)) rfl
  decide +kernel

private theorem s2Step140EarlyControl_fitBorrow : s2Step140EarlyControlFlagArena.checkBorrow ((41-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887] : List Wire).length)) s2Step140EarlyControlLog.recordFresh=some s2Step140EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step140EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step140EarlyControlFlagArena (fun q => (0≤q ∧ q<886) ∨ (887≤q ∧ q<888)) rfl
      decide +kernel
    · ext q
      simp [s2Step140EarlyControlFittedArena,s2Step140EarlyControlFlagArena,s2Step140EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step140EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887] : List Wire).toFinset⊆s2Step140EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step140EarlyControlFlagArena (fun q => (0≤q ∧ q<886) ∨ (887≤q ∧ q<888)) rfl
  decide +kernel

private theorem s2Step140EarlyControl_fit : compileHmrRecordGrowLog s2Step140EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887] 41 s2Step140EarlyControlLog.recordFresh=some s2Step140EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step140EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step140EarlyControl_fitBorrow

private theorem s2Step140EarlyControl_flagsBorrow : s2Step140EarlyControlEqualityArena.checkBorrow (6) s2Step140EarlyControlLog.flagWork=some s2Step140EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step140EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step140EarlyControlEqualityArena (fun q => (0≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (887≤q ∧ q<888)) rfl
      decide +kernel
    · ext q
      simp [s2Step140EarlyControlFlagArena,s2Step140EarlyControlEqualityArena,s2Step140EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step140EarlyControl_flagsOwned : ([790, 253, 252, 251] : List Wire).toFinset⊆s2Step140EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step140EarlyControlEqualityArena (fun q => (0≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (887≤q ∧ q<888)) rfl
  decide +kernel

private theorem s2Step140EarlyControl_flags : compileHmrFlagsLog s2Step140EarlyControlClassPlan.equalityArena s2Step140EarlyControlClassPlan.equality.top 253 252 251 s2Step140EarlyControlLog.flagWork=some s2Step140EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step140EarlyControl_flagsOwned⟩
  · exact s2Step140EarlyControl_flagsBorrow

private theorem s2Step140EarlyControl_historyBorrow : s2Step140EarlyControlArena.checkBorrow ((41-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887] : List Wire).length)) s2Step140EarlyControlLog.recordFresh=some s2Step140EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step140EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step140EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (887≤q ∧ q<888)) rfl
      decide +kernel
    · ext q
      simp [s2Step140EarlyControlHistoryArena,s2Step140EarlyControlArena,s2Step140EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step140EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887] : List Wire).toFinset⊆s2Step140EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step140EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (887≤q ∧ q<888)) rfl
  decide +kernel

private theorem s2Step140EarlyControl_history : compileHmrRecordGrowLog s2Step140EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887] 41 s2Step140EarlyControlLog.recordFresh=some s2Step140EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step140EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step140EarlyControl_historyBorrow

private theorem s2Step140EarlyControl_sigmaOwned : ([254, 778] : List Wire).toFinset⊆s2Step140EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step140EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888)) rfl
  decide +kernel

private theorem s2Step140EarlyControl_sigmaReleaseOwned : ([778] : List Wire).toFinset⊆s2Step140EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step140EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888)) rfl
  decide +kernel

private theorem s2Step140EarlyControl_sigmaRelease : s2Step140EarlyControlHistoryArena.release {778} (fun _ => false)=some s2Step140EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step140EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step140EarlyControlSigmaArena,s2Step140EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step140EarlyControl_sigma : compileHmrSigmaDropLog s2Step140EarlyControlHistoryArena false 0 0 254 778 []=some s2Step140EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step140EarlyControl_sigmaOwned⟩
  · exact s2Step140EarlyControl_sigmaRelease

private theorem s2Step140EarlyControl_zeroBorrow : s2Step140EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step140EarlyControlLog.zeroWork=some s2Step140EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step140EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step140EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (887≤q ∧ q<888)) rfl
      decide +kernel
    · ext q
      simp [s2Step140EarlyControlZeroArena,s2Step140EarlyControlArena,s2Step140EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step140EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step140EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step140EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (887≤q ∧ q<888)) rfl
  decide +kernel

private theorem s2Step140EarlyControl_zero : compileHmrEqualityLog s2Step140EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step140EarlyControlLog.zeroWork=some (s2Step140EarlyControlZeroArena,s2Step140EarlyControlLog.zeroWork,s2Step140EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step140EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step140EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step140EarlyControl_logged : s2Step140EarlyControlPlan.Logged s2Step140EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887] 777 778 254 253 252 251 788 41 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step140EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step140EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step140EarlyControl_zero
  · exact s2Step140EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step140EarlyControl_flags
  · exact s2Step140EarlyControl_fit
  · exact s2Step140EarlyControl_history
  · exact s2Step140EarlyControl_sigma
  · exact s2Step140EarlyControl_branch

private theorem s2Step140EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step140EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887] 777 778 254 253 252 251 788 41 s2Step140EarlyControlLog=some s2Step140EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step140EarlyControlPlan s2Step140EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887] 777 778 254 253 252 251 788 41 s2Step140EarlyControl_logged

private def s2Step140EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (887≤q ∧ q<888)),Finset.filter_subset _ _⟩

private def s2Step140EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711],768⟩

private def s2Step140EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826],770⟩

private def s2Step140EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198],769⟩

private def s2Step140EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814],771⟩

private def s2Step140FrontBank : WindowBank := ⟨s2Step140EntryFRow,s2Step140EntryGRow,s2Step140EntryFvRow,s2Step140EntryGvRow⟩

private def s2Step140Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 837, 768]

private def s2Step140Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 841, 783, 769]

private def s2Step140Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 781, 770]

private def s2Step140Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 849, 771]

private theorem s2Step140Counter_apart : Disjoint s2Step140HeadFvAfter.live s2Step140CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step140HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (887≤q ∧ q<888)) rfl
  decide +kernel

private theorem s2Step140Counter_borrowed : s2Step140HeadFvAfter.checkBorrow 4 s2Step140CounterWork=some s2Step140CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step140HeadFvAfter s2Step140CounterDuring s2Step140CounterWork.toFinset s2Step140Counter_bounded s2Step140Counter_apart rfl

private theorem s2Step140Counter_owned : (778::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step140HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step140HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (887≤q ∧ q<888)) rfl
  decide +kernel

private theorem s2Step140Counter_checked : compileHmrCounterStepLog s2Step140HeadFvAfter true 778 [772, 773, 774, 775, 776, 777] s2Step140CounterWork=some s2Step140CounterDuring := by
  have owned : ∀q∈778::[772, 773, 774, 775, 776, 777],q∈s2Step140HeadFvAfter.live := fun q hq => s2Step140Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step140Counter_borrowed

private def s2Step140EntryFAfter : Arena := s2Step140EntryFBefore

private theorem s2Step140EntryBank_incomingDistinct : ([s2Step140EntryFRow,s2Step140EntryGRow,s2Step140EntryFvRow,s2Step140EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step140EntryF_Incoming : rowsOwned s2Step140EntryFBefore [s2Step140EntryFRow,s2Step140EntryGRow,s2Step140EntryFvRow,s2Step140EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step140EntryFRow,s2Step140EntryGRow,s2Step140EntryFvRow,s2Step140EntryGvRow] 0 s2Step140EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step140EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (887≤q ∧ q<888)) rfl
    decide +kernel

private theorem s2Step140EntryBank_outgoingOwned : rowsOwned s2Step140EntryGvAfter [s2Step140EntryFOut,s2Step140EntryGOut,s2Step140EntryFvOut,s2Step140EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step140EntryGvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (887≤q ∧ q<888)) rfl
    decide +kernel

private theorem s2Step140EntryF_Outgoing : rowsOwned s2Step140EntryGvAfter [s2Step140EntryFOut,s2Step140EntryGOut,s2Step140EntryFvOut,s2Step140EntryGvOut] :=
  hmrRows_owned_drop s2Step140EntryGvAfter [s2Step140EntryFOut,s2Step140EntryGOut,s2Step140EntryFvOut,s2Step140EntryGvOut] 0 s2Step140EntryBank_outgoingOwned

private theorem s2Step140EntryF_distinct : (s2Step140EntryFRow.sign::s2Step140EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step140EntryF_owned : (s2Step140EntryFRow.sign::s2Step140EntryFRow.payload).toFinset⊆s2Step140EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step140EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (887≤q ∧ q<888)) rfl
  decide +kernel

private theorem s2Step140EntryF_reserved : s2Step140EntryFBefore.reserve s2Step140EntryFFresh.toFinset=some s2Step140EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step140EntryFFresh,arenaWires]
  · norm_num [s2Step140EntryFBefore,s2Step140EntryFFresh,arenaWires]
  · simp only [s2Step140EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step140EntryF_checked : planRowResizeLog s2Step140EntryFBefore s2Step140EntryFRow 200 s2Step140EntryFFresh=
    some (s2Step140EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711],768⟩,growRow 768 s2Step140EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step140EntryFBefore s2Step140EntryFAfter s2Step140EntryFRow 200 s2Step140EntryFFresh
    s2Step140EntryF_distinct s2Step140EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step140EntryF_reserved
  have rowEq : WindowRow.mk (s2Step140EntryFRow.payload++s2Step140EntryFFresh) s2Step140EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step140EntryFvAfter : Arena := s2Step140EntryGAfter

private def s2Step140EntryFvBefore : Arena := s2Step140EntryGAfter

private theorem s2Step140EntryFv_Incoming : rowsOwned s2Step140EntryFvBefore [s2Step140EntryFvRow,s2Step140EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step140EntryFRow,s2Step140EntryGRow,s2Step140EntryFvRow,s2Step140EntryGvRow] 2 s2Step140EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step140EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (887≤q ∧ q<888)) rfl
    decide +kernel

private theorem s2Step140EntryFv_Outgoing : rowsOwned s2Step140EntryGvAfter [s2Step140EntryFvOut,s2Step140EntryGvOut] :=
  hmrRows_owned_drop s2Step140EntryGvAfter [s2Step140EntryFOut,s2Step140EntryGOut,s2Step140EntryFvOut,s2Step140EntryGvOut] 2 s2Step140EntryBank_outgoingOwned

private theorem s2Step140EntryFv_distinct : (s2Step140EntryFvRow.sign::s2Step140EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step140EntryFv_owned : (s2Step140EntryFvRow.sign::s2Step140EntryFvRow.payload).toFinset⊆s2Step140EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step140EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (887≤q ∧ q<888)) rfl
  decide +kernel

private theorem s2Step140EntryFv_reserved : s2Step140EntryFvBefore.reserve s2Step140EntryFvFresh.toFinset=some s2Step140EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step140EntryFvFresh,arenaWires]
  · norm_num [s2Step140EntryFvBefore,s2Step140EntryGAfter,s2Step140EntryFvFresh,arenaWires]
  · simp only [s2Step140EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step140EntryFv_checked : planRowResizeLog s2Step140EntryFvBefore s2Step140EntryFvRow 84 s2Step140EntryFvFresh=
    some (s2Step140EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826],770⟩,growRow 770 s2Step140EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step140EntryFvBefore s2Step140EntryFvAfter s2Step140EntryFvRow 84 s2Step140EntryFvFresh
    s2Step140EntryFv_distinct s2Step140EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step140EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step140EntryFvRow.payload++s2Step140EntryFvFresh) s2Step140EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step140EntryGBefore : Arena := s2Step140EntryFBefore

private theorem s2Step140EntryG_Incoming : rowsOwned s2Step140EntryGBefore [s2Step140EntryGRow,s2Step140EntryFvRow,s2Step140EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step140EntryFRow,s2Step140EntryGRow,s2Step140EntryFvRow,s2Step140EntryGvRow] 1 s2Step140EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step140EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (887≤q ∧ q<888)) rfl
    decide +kernel

private theorem s2Step140EntryG_Outgoing : rowsOwned s2Step140EntryGvAfter [s2Step140EntryGOut,s2Step140EntryFvOut,s2Step140EntryGvOut] :=
  hmrRows_owned_drop s2Step140EntryGvAfter [s2Step140EntryFOut,s2Step140EntryGOut,s2Step140EntryFvOut,s2Step140EntryGvOut] 1 s2Step140EntryBank_outgoingOwned

private theorem s2Step140EntryG_distinct : (s2Step140EntryGRow.sign::s2Step140EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step140EntryG_owned : (s2Step140EntryGRow.sign::s2Step140EntryGRow.payload).toFinset⊆s2Step140EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step140EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (887≤q ∧ q<888)) rfl
  decide +kernel

private theorem s2Step140EntryG_reserved : s2Step140EntryGBefore.reserve s2Step140EntryGFresh.toFinset=some s2Step140EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step140EntryGFresh,arenaWires]
  · norm_num [s2Step140EntryGBefore,s2Step140EntryFBefore,s2Step140EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step140EntryGAfter,s2Step140EntryGBefore,s2Step140EntryFBefore,s2Step140EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step140EntryG_checked : planRowResizeLog s2Step140EntryGBefore s2Step140EntryGRow 200 s2Step140EntryGFresh=
    some (s2Step140EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 841],769⟩,growRow 769 s2Step140EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step140EntryGBefore s2Step140EntryGAfter s2Step140EntryGRow 200 s2Step140EntryGFresh
    s2Step140EntryG_distinct s2Step140EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step140EntryG_reserved
  have rowEq : WindowRow.mk (s2Step140EntryGRow.payload++s2Step140EntryGFresh) s2Step140EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 841],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step140EntryGvBefore : Arena := s2Step140EntryGAfter

private theorem s2Step140EntryGv_Incoming : rowsOwned s2Step140EntryGvBefore [s2Step140EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step140EntryFRow,s2Step140EntryGRow,s2Step140EntryFvRow,s2Step140EntryGvRow] 3 s2Step140EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step140EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (887≤q ∧ q<888)) rfl
    decide +kernel

private theorem s2Step140EntryGv_Outgoing : rowsOwned s2Step140EntryGvAfter [s2Step140EntryGvOut] :=
  hmrRows_owned_drop s2Step140EntryGvAfter [s2Step140EntryFOut,s2Step140EntryGOut,s2Step140EntryFvOut,s2Step140EntryGvOut] 3 s2Step140EntryBank_outgoingOwned

private theorem s2Step140EntryGv_distinct : (s2Step140EntryGvRow.sign::s2Step140EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step140EntryGv_owned : (s2Step140EntryGvRow.sign::s2Step140EntryGvRow.payload).toFinset⊆s2Step140EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step140EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (887≤q ∧ q<888)) rfl
  decide +kernel

private theorem s2Step140EntryGv_reserved : s2Step140EntryGvBefore.reserve s2Step140EntryGvFresh.toFinset=some s2Step140EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step140EntryGvFresh,arenaWires]
  · norm_num [s2Step140EntryGvBefore,s2Step140EntryGAfter,s2Step140EntryGvFresh,arenaWires]
  · simp only [s2Step140EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step140EntryGv_checked : planRowResizeLog s2Step140EntryGvBefore s2Step140EntryGvRow 84 s2Step140EntryGvFresh=
    some (s2Step140EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814],771⟩,growRow 771 s2Step140EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step140EntryGvBefore s2Step140EntryGvAfter s2Step140EntryGvRow 84 s2Step140EntryGvFresh
    s2Step140EntryGv_distinct s2Step140EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step140EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step140EntryGvRow.payload++s2Step140EntryGvFresh) s2Step140EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step140EntryBank_rows : planWindowRowsLog s2Step140EntryFBefore [(s2Step140EntryFRow,200),(s2Step140EntryGRow,200),(s2Step140EntryFvRow,84),(s2Step140EntryGvRow,84)] [s2Step140EntryFFresh,s2Step140EntryGFresh,s2Step140EntryFvFresh,s2Step140EntryGvFresh]=
    some (s2Step140EntryGvAfter,[s2Step140EntryFOut,s2Step140EntryGOut,s2Step140EntryFvOut,s2Step140EntryGvOut],(growRow 768 s2Step140EntryFFresh ++ (growRow 769 s2Step140EntryGFresh ++ (growRow 770 s2Step140EntryFvFresh ++ (growRow 771 s2Step140EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step140EntryGvAfter [] []=some (s2Step140EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step140EntryGvBefore s2Step140EntryGvAfter s2Step140EntryGvAfter
    s2Step140EntryGvRow s2Step140EntryGvOut 84 s2Step140EntryGvFresh [] [] []
    (growRow 771 s2Step140EntryGvFresh) ([]) s2Step140EntryGv_Incoming s2Step140EntryGv_checked h4 s2Step140EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step140EntryFvBefore s2Step140EntryFvAfter s2Step140EntryGvAfter
    s2Step140EntryFvRow s2Step140EntryFvOut 84 s2Step140EntryFvFresh [(s2Step140EntryGvRow,84)] [s2Step140EntryGvFresh] [s2Step140EntryGvOut]
    (growRow 770 s2Step140EntryFvFresh) ((growRow 771 s2Step140EntryGvFresh ++ [])) s2Step140EntryFv_Incoming s2Step140EntryFv_checked h3 s2Step140EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step140EntryGBefore s2Step140EntryGAfter s2Step140EntryGvAfter
    s2Step140EntryGRow s2Step140EntryGOut 200 s2Step140EntryGFresh [(s2Step140EntryFvRow,84),(s2Step140EntryGvRow,84)] [s2Step140EntryFvFresh,s2Step140EntryGvFresh] [s2Step140EntryFvOut,s2Step140EntryGvOut]
    (growRow 769 s2Step140EntryGFresh) ((growRow 770 s2Step140EntryFvFresh ++ (growRow 771 s2Step140EntryGvFresh ++ []))) s2Step140EntryG_Incoming s2Step140EntryG_checked h2 s2Step140EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step140EntryFBefore s2Step140EntryFAfter s2Step140EntryGvAfter
    s2Step140EntryFRow s2Step140EntryFOut 200 s2Step140EntryFFresh [(s2Step140EntryGRow,200),(s2Step140EntryFvRow,84),(s2Step140EntryGvRow,84)] [s2Step140EntryGFresh,s2Step140EntryFvFresh,s2Step140EntryGvFresh] [s2Step140EntryGOut,s2Step140EntryFvOut,s2Step140EntryGvOut]
    (growRow 768 s2Step140EntryFFresh) ((growRow 769 s2Step140EntryGFresh ++ (growRow 770 s2Step140EntryFvFresh ++ (growRow 771 s2Step140EntryGvFresh ++ [])))) s2Step140EntryF_Incoming s2Step140EntryF_checked h1 s2Step140EntryF_Outgoing
  exact h0

private theorem s2Step140EntryBank_checked : compileHmrBankResizeLog .entry s2Step140EntryFBefore ⟨s2Step140EntryFRow,s2Step140EntryGRow,s2Step140EntryFvRow,s2Step140EntryGvRow⟩ ⟨200,200,84,84⟩ [s2Step140EntryFFresh,s2Step140EntryGFresh,s2Step140EntryFvFresh,s2Step140EntryGvFresh]=
    some (s2Step140EntryGvAfter,⟨s2Step140EntryFOut,s2Step140EntryGOut,s2Step140EntryFvOut,s2Step140EntryGvOut⟩,(growRow 768 s2Step140EntryFFresh ++ (growRow 769 s2Step140EntryGFresh ++ (growRow 770 s2Step140EntryFvFresh ++ (growRow 771 s2Step140EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step140EntryBank_rows]
  rfl

private def s2Step140ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<711) ∨ (712≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (842≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (887≤q ∧ q<888)),Finset.filter_subset _ _⟩

private def s2Step140ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (842≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (887≤q ∧ q<888)),Finset.filter_subset _ _⟩

private def s2Step140ExitFBefore : Arena := s2Step140ExitGAfter

private def s2Step140ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 837],768⟩

private def s2Step140ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 781],770⟩

private def s2Step140ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 841, 783],769⟩

private def s2Step140ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 849],771⟩

private theorem s2Step140ExitBank_incomingDistinct : ([s2Step140ExitGRow,s2Step140ExitFRow,s2Step140ExitFvRow,s2Step140ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step140ExitF_Incoming : rowsOwned s2Step140ExitFBefore [s2Step140ExitFRow,s2Step140ExitFvRow,s2Step140ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step140ExitGRow,s2Step140ExitFRow,s2Step140ExitFvRow,s2Step140ExitGvRow] 1 s2Step140ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step140ExitFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (842≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (887≤q ∧ q<888)) rfl
    decide +kernel

private theorem s2Step140ExitBank_outgoingOwned : rowsOwned s2Step140ExitGvAfter [s2Step140ExitGOut,s2Step140ExitFOut,s2Step140ExitFvOut,s2Step140ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step140ExitGvAfter (fun q => (0≤q ∧ q<711) ∨ (712≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (887≤q ∧ q<888)) rfl
    decide +kernel

private theorem s2Step140ExitF_Outgoing : rowsOwned s2Step140ExitGvAfter [s2Step140ExitFOut,s2Step140ExitFvOut,s2Step140ExitGvOut] :=
  hmrRows_owned_drop s2Step140ExitGvAfter [s2Step140ExitGOut,s2Step140ExitFOut,s2Step140ExitFvOut,s2Step140ExitGvOut] 1 s2Step140ExitBank_outgoingOwned

private theorem s2Step140ExitF_distinct : (s2Step140ExitFRow.sign::s2Step140ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step140ExitF_owned : (s2Step140ExitFRow.sign::s2Step140ExitFRow.payload).toFinset⊆s2Step140ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step140ExitFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (842≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (887≤q ∧ q<888)) rfl
  decide +kernel

private theorem s2Step140ExitF_retired : s2Step140ExitFBefore.retireSet s2Step140ExitFExtra.toFinset=s2Step140ExitFAfter := by
  unfold Arena.retireSet s2Step140ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step140ExitFBefore,s2Step140ExitGAfter,s2Step140ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step140ExitF_checked : planRowResizeLog s2Step140ExitFBefore s2Step140ExitFRow 199 []=
    some (s2Step140ExitFAfter,s2Step140ExitFOut,shrinkRow 768 s2Step140ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step140ExitFBefore s2Step140ExitFRow 199 s2Step140ExitF_distinct s2Step140ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step140ExitFRow.payload.take 199) s2Step140ExitFRow.sign=s2Step140ExitFOut := by decide +kernel
  have hi : s2Step140ExitFRow.payload.drop 199=s2Step140ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step140ExitF_retired] at result
  exact result

private def s2Step140ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<711) ∨ (712≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (842≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (887≤q ∧ q<888)),Finset.filter_subset _ _⟩

private def s2Step140ExitFvBefore : Arena := s2Step140ExitFAfter

private theorem s2Step140ExitFv_Incoming : rowsOwned s2Step140ExitFvBefore [s2Step140ExitFvRow,s2Step140ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step140ExitGRow,s2Step140ExitFRow,s2Step140ExitFvRow,s2Step140ExitGvRow] 2 s2Step140ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step140ExitFvBefore (fun q => (0≤q ∧ q<711) ∨ (712≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (842≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (887≤q ∧ q<888)) rfl
    decide +kernel

private theorem s2Step140ExitFv_Outgoing : rowsOwned s2Step140ExitGvAfter [s2Step140ExitFvOut,s2Step140ExitGvOut] :=
  hmrRows_owned_drop s2Step140ExitGvAfter [s2Step140ExitGOut,s2Step140ExitFOut,s2Step140ExitFvOut,s2Step140ExitGvOut] 2 s2Step140ExitBank_outgoingOwned

private theorem s2Step140ExitFv_distinct : (s2Step140ExitFvRow.sign::s2Step140ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step140ExitFv_owned : (s2Step140ExitFvRow.sign::s2Step140ExitFvRow.payload).toFinset⊆s2Step140ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step140ExitFvBefore (fun q => (0≤q ∧ q<711) ∨ (712≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (842≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (887≤q ∧ q<888)) rfl
  decide +kernel

private theorem s2Step140ExitFv_retired : s2Step140ExitFvBefore.retireSet s2Step140ExitFvExtra.toFinset=s2Step140ExitFvAfter := by
  unfold Arena.retireSet s2Step140ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step140ExitFvBefore,s2Step140ExitFAfter,s2Step140ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step140ExitFv_checked : planRowResizeLog s2Step140ExitFvBefore s2Step140ExitFvRow 84 []=
    some (s2Step140ExitFvAfter,s2Step140ExitFvOut,shrinkRow 770 s2Step140ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step140ExitFvBefore s2Step140ExitFvRow 84 s2Step140ExitFv_distinct s2Step140ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step140ExitFvRow.payload.take 84) s2Step140ExitFvRow.sign=s2Step140ExitFvOut := by decide +kernel
  have hi : s2Step140ExitFvRow.payload.drop 84=s2Step140ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step140ExitFv_retired] at result
  exact result

private def s2Step140ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (887≤q ∧ q<888)),Finset.filter_subset _ _⟩

private theorem s2Step140ExitG_Incoming : rowsOwned s2Step140ExitGBefore [s2Step140ExitGRow,s2Step140ExitFRow,s2Step140ExitFvRow,s2Step140ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step140ExitGRow,s2Step140ExitFRow,s2Step140ExitFvRow,s2Step140ExitGvRow] 0 s2Step140ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step140ExitGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (887≤q ∧ q<888)) rfl
    decide +kernel

private theorem s2Step140ExitG_Outgoing : rowsOwned s2Step140ExitGvAfter [s2Step140ExitGOut,s2Step140ExitFOut,s2Step140ExitFvOut,s2Step140ExitGvOut] :=
  hmrRows_owned_drop s2Step140ExitGvAfter [s2Step140ExitGOut,s2Step140ExitFOut,s2Step140ExitFvOut,s2Step140ExitGvOut] 0 s2Step140ExitBank_outgoingOwned

private theorem s2Step140ExitG_distinct : (s2Step140ExitGRow.sign::s2Step140ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step140ExitG_owned : (s2Step140ExitGRow.sign::s2Step140ExitGRow.payload).toFinset⊆s2Step140ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step140ExitGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (887≤q ∧ q<888)) rfl
  decide +kernel

private theorem s2Step140ExitG_retired : s2Step140ExitGBefore.retireSet s2Step140ExitGExtra.toFinset=s2Step140ExitGAfter := by
  unfold Arena.retireSet s2Step140ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step140ExitGBefore,s2Step140ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step140ExitG_checked : planRowResizeLog s2Step140ExitGBefore s2Step140ExitGRow 199 []=
    some (s2Step140ExitGAfter,s2Step140ExitGOut,shrinkRow 769 s2Step140ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step140ExitGBefore s2Step140ExitGRow 199 s2Step140ExitG_distinct s2Step140ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step140ExitGRow.payload.take 199) s2Step140ExitGRow.sign=s2Step140ExitGOut := by decide +kernel
  have hi : s2Step140ExitGRow.payload.drop 199=s2Step140ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step140ExitG_retired] at result
  exact result

private def s2Step140ExitGvBefore : Arena := s2Step140ExitFvAfter

private theorem s2Step140ExitGv_Incoming : rowsOwned s2Step140ExitGvBefore [s2Step140ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step140ExitGRow,s2Step140ExitFRow,s2Step140ExitFvRow,s2Step140ExitGvRow] 3 s2Step140ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step140ExitGvBefore (fun q => (0≤q ∧ q<711) ∨ (712≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (842≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (887≤q ∧ q<888)) rfl
    decide +kernel

private theorem s2Step140ExitGv_Outgoing : rowsOwned s2Step140ExitGvAfter [s2Step140ExitGvOut] :=
  hmrRows_owned_drop s2Step140ExitGvAfter [s2Step140ExitGOut,s2Step140ExitFOut,s2Step140ExitFvOut,s2Step140ExitGvOut] 3 s2Step140ExitBank_outgoingOwned

private theorem s2Step140ExitGv_distinct : (s2Step140ExitGvRow.sign::s2Step140ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step140ExitGv_owned : (s2Step140ExitGvRow.sign::s2Step140ExitGvRow.payload).toFinset⊆s2Step140ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step140ExitGvBefore (fun q => (0≤q ∧ q<711) ∨ (712≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (842≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (887≤q ∧ q<888)) rfl
  decide +kernel

private theorem s2Step140ExitGv_retired : s2Step140ExitGvBefore.retireSet s2Step140ExitGvExtra.toFinset=s2Step140ExitGvAfter := by
  unfold Arena.retireSet s2Step140ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step140ExitGvBefore,s2Step140ExitFvAfter,s2Step140ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step140ExitGv_checked : planRowResizeLog s2Step140ExitGvBefore s2Step140ExitGvRow 84 []=
    some (s2Step140ExitGvAfter,s2Step140ExitGvOut,shrinkRow 771 s2Step140ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step140ExitGvBefore s2Step140ExitGvRow 84 s2Step140ExitGv_distinct s2Step140ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step140ExitGvRow.payload.take 84) s2Step140ExitGvRow.sign=s2Step140ExitGvOut := by decide +kernel
  have hi : s2Step140ExitGvRow.payload.drop 84=s2Step140ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step140ExitGv_retired] at result
  exact result

private theorem s2Step140ExitBank_rows : planWindowRowsLog s2Step140ExitGBefore [(s2Step140ExitGRow,199),(s2Step140ExitFRow,199),(s2Step140ExitFvRow,84),(s2Step140ExitGvRow,84)] [[],[],[],[]]=
    some (s2Step140ExitGvAfter,[s2Step140ExitGOut,s2Step140ExitFOut,s2Step140ExitFvOut,s2Step140ExitGvOut],(shrinkRow 769 s2Step140ExitGExtra ++ (shrinkRow 768 s2Step140ExitFExtra ++ (shrinkRow 770 s2Step140ExitFvExtra ++ (shrinkRow 771 s2Step140ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step140ExitGvAfter [] []=some (s2Step140ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step140ExitGvBefore s2Step140ExitGvAfter s2Step140ExitGvAfter
    s2Step140ExitGvRow s2Step140ExitGvOut 84 [] [] [] []
    (shrinkRow 771 s2Step140ExitGvExtra) ([]) s2Step140ExitGv_Incoming s2Step140ExitGv_checked h4 s2Step140ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step140ExitFvBefore s2Step140ExitFvAfter s2Step140ExitGvAfter
    s2Step140ExitFvRow s2Step140ExitFvOut 84 [] [(s2Step140ExitGvRow,84)] [[]] [s2Step140ExitGvOut]
    (shrinkRow 770 s2Step140ExitFvExtra) ((shrinkRow 771 s2Step140ExitGvExtra ++ [])) s2Step140ExitFv_Incoming s2Step140ExitFv_checked h3 s2Step140ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step140ExitFBefore s2Step140ExitFAfter s2Step140ExitGvAfter
    s2Step140ExitFRow s2Step140ExitFOut 199 [] [(s2Step140ExitFvRow,84),(s2Step140ExitGvRow,84)] [[],[]] [s2Step140ExitFvOut,s2Step140ExitGvOut]
    (shrinkRow 768 s2Step140ExitFExtra) ((shrinkRow 770 s2Step140ExitFvExtra ++ (shrinkRow 771 s2Step140ExitGvExtra ++ []))) s2Step140ExitF_Incoming s2Step140ExitF_checked h2 s2Step140ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step140ExitGBefore s2Step140ExitGAfter s2Step140ExitGvAfter
    s2Step140ExitGRow s2Step140ExitGOut 199 [] [(s2Step140ExitFRow,199),(s2Step140ExitFvRow,84),(s2Step140ExitGvRow,84)] [[],[],[]] [s2Step140ExitFOut,s2Step140ExitFvOut,s2Step140ExitGvOut]
    (shrinkRow 769 s2Step140ExitGExtra) ((shrinkRow 768 s2Step140ExitFExtra ++ (shrinkRow 770 s2Step140ExitFvExtra ++ (shrinkRow 771 s2Step140ExitGvExtra ++ [])))) s2Step140ExitG_Incoming s2Step140ExitG_checked h1 s2Step140ExitG_Outgoing
  exact h0

private theorem s2Step140ExitBank_checked : compileHmrBankResizeLog .exit s2Step140ExitGBefore ⟨s2Step140ExitFRow,s2Step140ExitGRow,s2Step140ExitFvRow,s2Step140ExitGvRow⟩ ⟨199,199,84,84⟩ [[],[],[],[]]=
    some (s2Step140ExitGvAfter,⟨s2Step140ExitFOut,s2Step140ExitGOut,s2Step140ExitFvOut,s2Step140ExitGvOut⟩,(shrinkRow 769 s2Step140ExitGExtra ++ (shrinkRow 768 s2Step140ExitFExtra ++ (shrinkRow 770 s2Step140ExitFvExtra ++ (shrinkRow 771 s2Step140ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step140ExitBank_rows]
  rfl

private theorem s2Step140Add0_apart : Disjoint s2Step140Add0Arena.live s2Step140Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step140Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (887≤q ∧ q<888)) rfl
  decide +kernel

private theorem s2Step140Add0_card : s2Step140Add0Arena.live.card=882 := by
  decide +kernel

private theorem s2Step140Add0_borrowed : s2Step140Add0Arena.checkBorrow (hmrHybridCount s2Step140Add0Arena s2Step140Add0B.length) s2Step140Add0Work=some s2Step140Add0During := by
  have len : s2Step140Add0Work.length=hmrHybridCount s2Step140Add0Arena s2Step140Add0B.length := by
    rw [hmrHybridCount,s2Step140Add0_card]
    decide +kernel
  have nd : s2Step140Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step140Add0Arena s2Step140Add0During s2Step140Add0Work.toFinset s2Step140Add0_bounded s2Step140Add0_apart rfl

private theorem s2Step140Add0_distinct : (790::788::815::(s2Step140Add0A++s2Step140Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step140Add0_owned : (790::788::815::(s2Step140Add0A++s2Step140Add0B)).toFinset⊆s2Step140Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step140Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (887≤q ∧ q<888)) rfl
  decide +kernel

private theorem s2Step140Add0_checked : compileHmrHybridCinLog s2Step140Add0Arena 788 790 815 s2Step140Add0A s2Step140Add0B s2Step140Add0Work=some s2Step140Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step140Add0Arena s2Step140Add0During 788 790 815 s2Step140Add0A s2Step140Add0B s2Step140Add0Work
    (by decide +kernel) (by decide +kernel) s2Step140Add0_distinct
    (fun q hq => s2Step140Add0_owned (List.mem_toFinset.mpr hq)) s2Step140Add0_borrowed

private theorem s2Step140Add1_apart : Disjoint s2Step140Add1Arena.live s2Step140Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step140Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (887≤q ∧ q<888)) rfl
  decide +kernel

private theorem s2Step140Add1_card : s2Step140Add1Arena.live.card=882 := by
  decide +kernel

private theorem s2Step140Add1_borrowed : s2Step140Add1Arena.checkBorrow (hmrHybridCount s2Step140Add1Arena s2Step140Add1B.length) s2Step140Add1Work=some s2Step140Add1During := by
  have len : s2Step140Add1Work.length=hmrHybridCount s2Step140Add1Arena s2Step140Add1B.length := by
    rw [hmrHybridCount,s2Step140Add1_card]
    decide +kernel
  have nd : s2Step140Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step140Add1Arena s2Step140Add1During s2Step140Add1Work.toFinset s2Step140Add1_bounded s2Step140Add1_apart rfl

private theorem s2Step140Add1_distinct : (790::788::815::(s2Step140Add1A++s2Step140Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step140Add1_owned : (790::788::815::(s2Step140Add1A++s2Step140Add1B)).toFinset⊆s2Step140Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step140Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (887≤q ∧ q<888)) rfl
  decide +kernel

private theorem s2Step140Add1_checked : compileHmrHybridCinLog s2Step140Add1Arena 788 790 815 s2Step140Add1A s2Step140Add1B s2Step140Add1Work=some s2Step140Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step140Add1Arena s2Step140Add1During 788 790 815 s2Step140Add1A s2Step140Add1B s2Step140Add1Work
    (by decide +kernel) (by decide +kernel) s2Step140Add1_distinct
    (fun q hq => s2Step140Add1_owned (List.mem_toFinset.mpr hq)) s2Step140Add1_borrowed

private theorem s2Step140F4_apart : Disjoint (s2Step140Add0A++s2Step140Add0B).toFinset (s2Step140Add1A++s2Step140Add1B).toFinset := by
  have nd : ((s2Step140Add0A++s2Step140Add0B)++(s2Step140Add1A++s2Step140Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step140F4_carry : s2Step140F4FlagArena.checkBorrow 1 [815]=some s2Step140Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step140F4FlagArena,s2Step140HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step140F4FlagArena,s2Step140HeadFvAfter,s2Step140Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step140F4_distinct : (778::788::790::815::((s2Step140Add0A++s2Step140Add1A)++(s2Step140Add0B++s2Step140Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step140F4_flag : s2Step140HeadFvAfter.checkBorrow 1 [790]=some s2Step140F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step140HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step140F4_owned : (778::788::((s2Step140Add0A++s2Step140Add1A)++(s2Step140Add0B++s2Step140Add1B))).toFinset⊆s2Step140HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step140HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (887≤q ∧ q<888)) rfl
  decide +kernel

private theorem s2Step140F4_checked : compileHmrHybridF4Log s2Step140HeadFvAfter 778 788 s2Step140Add0A s2Step140Add0B s2Step140Add1A s2Step140Add1B [790] [815] s2Step140Add0Work s2Step140Add1Work=some s2Step140F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step140HeadFvAfter s2Step140F4FlagArena s2Step140Add0Arena s2Step140Add0During s2Step140Add1During 778 788
    s2Step140Add0A s2Step140Add0B s2Step140Add1A s2Step140Add1B [790] [815] s2Step140Add0Work s2Step140Add1Work
    (fun q hq => s2Step140F4_owned (List.mem_toFinset.mpr hq)) s2Step140F4_flag s2Step140F4_carry
    s2Step140F4_distinct s2Step140F4_apart s2Step140Add0_checked s2Step140Add1_checked

private theorem s2Step140Front_branch : s2Step140FrontSigmaArena.checkBorrow 1 [788]=some s2Step140HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step140FrontSigmaArena,s2Step140EntryGvAfter,s2Step140EntryGAfter,arenaWires]
  · ext q
    simp only [s2Step140FrontSigmaArena,s2Step140EntryGvAfter,s2Step140EntryGAfter,s2Step140HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step140Front_entry : HmrFrontEntryValid s2Step140EntryFBefore s2Step140FrontBank 200 84 ⟨199,199,84,84⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step140FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step140EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step140EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (887≤q ∧ q<888)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step140FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step140Front_sigma : s2Step140EntryGvAfter.checkBorrow 1 [778]=some s2Step140FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step140EntryGvAfter,s2Step140EntryGAfter,arenaWires]
  · rfl

private def s2Step140HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (887≤q ∧ q<888)),Finset.filter_subset _ _⟩

private def s2Step140HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (887≤q ∧ q<888)),Finset.filter_subset _ _⟩

private def s2Step140HeadFBefore : Arena := s2Step140HeadGAfter

private def s2Step140HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711],768⟩

private def s2Step140HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826],770⟩

private def s2Step140HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 841],769⟩

private def s2Step140HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814],771⟩

private theorem s2Step140HeadBank_incomingDistinct : ([s2Step140HeadGRow,s2Step140HeadFRow,s2Step140HeadGvRow,s2Step140HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step140HeadF_Incoming : rowsOwned s2Step140HeadFBefore [s2Step140HeadFRow,s2Step140HeadGvRow,s2Step140HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step140HeadGRow,s2Step140HeadFRow,s2Step140HeadGvRow,s2Step140HeadFvRow] 1 s2Step140HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step140HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (887≤q ∧ q<888)) rfl
    decide +kernel

private theorem s2Step140HeadBank_outgoingOwned : rowsOwned s2Step140HeadFvAfter [s2Step140HeadGOut,s2Step140HeadFOut,s2Step140HeadGvOut,s2Step140HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step140HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (887≤q ∧ q<888)) rfl
    decide +kernel

private theorem s2Step140HeadF_Outgoing : rowsOwned s2Step140HeadFvAfter [s2Step140HeadFOut,s2Step140HeadGvOut,s2Step140HeadFvOut] :=
  hmrRows_owned_drop s2Step140HeadFvAfter [s2Step140HeadGOut,s2Step140HeadFOut,s2Step140HeadGvOut,s2Step140HeadFvOut] 1 s2Step140HeadBank_outgoingOwned

private theorem s2Step140HeadF_distinct : (s2Step140HeadFRow.sign::s2Step140HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step140HeadF_owned : (s2Step140HeadFRow.sign::s2Step140HeadFRow.payload).toFinset⊆s2Step140HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step140HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (887≤q ∧ q<888)) rfl
  decide +kernel

private theorem s2Step140HeadF_reserved : s2Step140HeadFBefore.reserve s2Step140HeadFFresh.toFinset=some s2Step140HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step140HeadFFresh,arenaWires]
  · norm_num [s2Step140HeadFBefore,s2Step140HeadGAfter,s2Step140HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step140HeadFAfter,s2Step140HeadFBefore,s2Step140HeadGAfter,s2Step140HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step140HeadF_checked : planRowResizeLog s2Step140HeadFBefore s2Step140HeadFRow 201 s2Step140HeadFFresh=
    some (s2Step140HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 837],768⟩,growRow 768 s2Step140HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step140HeadFBefore s2Step140HeadFAfter s2Step140HeadFRow 201 s2Step140HeadFFresh
    s2Step140HeadF_distinct s2Step140HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step140HeadF_reserved
  have rowEq : WindowRow.mk (s2Step140HeadFRow.payload++s2Step140HeadFFresh) s2Step140HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 837],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step140HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (887≤q ∧ q<888)),Finset.filter_subset _ _⟩

private def s2Step140HeadFvBefore : Arena := s2Step140HeadGvAfter

private theorem s2Step140HeadFv_Incoming : rowsOwned s2Step140HeadFvBefore [s2Step140HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step140HeadGRow,s2Step140HeadFRow,s2Step140HeadGvRow,s2Step140HeadFvRow] 3 s2Step140HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step140HeadFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (887≤q ∧ q<888)) rfl
    decide +kernel

private theorem s2Step140HeadFv_Outgoing : rowsOwned s2Step140HeadFvAfter [s2Step140HeadFvOut] :=
  hmrRows_owned_drop s2Step140HeadFvAfter [s2Step140HeadGOut,s2Step140HeadFOut,s2Step140HeadGvOut,s2Step140HeadFvOut] 3 s2Step140HeadBank_outgoingOwned

private theorem s2Step140HeadFv_distinct : (s2Step140HeadFvRow.sign::s2Step140HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step140HeadFv_owned : (s2Step140HeadFvRow.sign::s2Step140HeadFvRow.payload).toFinset⊆s2Step140HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step140HeadFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (887≤q ∧ q<888)) rfl
  decide +kernel

private theorem s2Step140HeadFv_reserved : s2Step140HeadFvBefore.reserve s2Step140HeadFvFresh.toFinset=some s2Step140HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step140HeadFvFresh,arenaWires]
  · norm_num [s2Step140HeadFvBefore,s2Step140HeadGvAfter,s2Step140HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step140HeadFvAfter,s2Step140HeadFvBefore,s2Step140HeadGvAfter,s2Step140HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step140HeadFv_checked : planRowResizeLog s2Step140HeadFvBefore s2Step140HeadFvRow 85 s2Step140HeadFvFresh=
    some (s2Step140HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 781],770⟩,growRow 770 s2Step140HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step140HeadFvBefore s2Step140HeadFvAfter s2Step140HeadFvRow 85 s2Step140HeadFvFresh
    s2Step140HeadFv_distinct s2Step140HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step140HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step140HeadFvRow.payload++s2Step140HeadFvFresh) s2Step140HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 781],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step140HeadG_Incoming : rowsOwned s2Step140HeadGBefore [s2Step140HeadGRow,s2Step140HeadFRow,s2Step140HeadGvRow,s2Step140HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step140HeadGRow,s2Step140HeadFRow,s2Step140HeadGvRow,s2Step140HeadFvRow] 0 s2Step140HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step140HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (887≤q ∧ q<888)) rfl
    decide +kernel

private theorem s2Step140HeadG_Outgoing : rowsOwned s2Step140HeadFvAfter [s2Step140HeadGOut,s2Step140HeadFOut,s2Step140HeadGvOut,s2Step140HeadFvOut] :=
  hmrRows_owned_drop s2Step140HeadFvAfter [s2Step140HeadGOut,s2Step140HeadFOut,s2Step140HeadGvOut,s2Step140HeadFvOut] 0 s2Step140HeadBank_outgoingOwned

private theorem s2Step140HeadG_distinct : (s2Step140HeadGRow.sign::s2Step140HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step140HeadG_owned : (s2Step140HeadGRow.sign::s2Step140HeadGRow.payload).toFinset⊆s2Step140HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step140HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (887≤q ∧ q<888)) rfl
  decide +kernel

private theorem s2Step140HeadG_reserved : s2Step140HeadGBefore.reserve s2Step140HeadGFresh.toFinset=some s2Step140HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step140HeadGFresh,arenaWires]
  · norm_num [s2Step140HeadGBefore,s2Step140HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step140HeadGAfter,s2Step140HeadGBefore,s2Step140HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step140HeadG_checked : planRowResizeLog s2Step140HeadGBefore s2Step140HeadGRow 201 s2Step140HeadGFresh=
    some (s2Step140HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 841, 783],769⟩,growRow 769 s2Step140HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step140HeadGBefore s2Step140HeadGAfter s2Step140HeadGRow 201 s2Step140HeadGFresh
    s2Step140HeadG_distinct s2Step140HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step140HeadG_reserved
  have rowEq : WindowRow.mk (s2Step140HeadGRow.payload++s2Step140HeadGFresh) s2Step140HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 841, 783],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step140HeadGvBefore : Arena := s2Step140HeadFAfter

private theorem s2Step140HeadGv_Incoming : rowsOwned s2Step140HeadGvBefore [s2Step140HeadGvRow,s2Step140HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step140HeadGRow,s2Step140HeadFRow,s2Step140HeadGvRow,s2Step140HeadFvRow] 2 s2Step140HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step140HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (887≤q ∧ q<888)) rfl
    decide +kernel

private theorem s2Step140HeadGv_Outgoing : rowsOwned s2Step140HeadFvAfter [s2Step140HeadGvOut,s2Step140HeadFvOut] :=
  hmrRows_owned_drop s2Step140HeadFvAfter [s2Step140HeadGOut,s2Step140HeadFOut,s2Step140HeadGvOut,s2Step140HeadFvOut] 2 s2Step140HeadBank_outgoingOwned

private theorem s2Step140HeadGv_distinct : (s2Step140HeadGvRow.sign::s2Step140HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step140HeadGv_owned : (s2Step140HeadGvRow.sign::s2Step140HeadGvRow.payload).toFinset⊆s2Step140HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step140HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (887≤q ∧ q<888)) rfl
  decide +kernel

private theorem s2Step140HeadGv_reserved : s2Step140HeadGvBefore.reserve s2Step140HeadGvFresh.toFinset=some s2Step140HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step140HeadGvFresh,arenaWires]
  · norm_num [s2Step140HeadGvBefore,s2Step140HeadFAfter,s2Step140HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step140HeadGvAfter,s2Step140HeadGvBefore,s2Step140HeadFAfter,s2Step140HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step140HeadGv_checked : planRowResizeLog s2Step140HeadGvBefore s2Step140HeadGvRow 85 s2Step140HeadGvFresh=
    some (s2Step140HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 849],771⟩,growRow 771 s2Step140HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step140HeadGvBefore s2Step140HeadGvAfter s2Step140HeadGvRow 85 s2Step140HeadGvFresh
    s2Step140HeadGv_distinct s2Step140HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step140HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step140HeadGvRow.payload++s2Step140HeadGvFresh) s2Step140HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 849],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step140HeadBank_rows : planWindowRowsLog s2Step140HeadGBefore [(s2Step140HeadGRow,201),(s2Step140HeadFRow,201),(s2Step140HeadGvRow,85),(s2Step140HeadFvRow,85)] [s2Step140HeadGFresh,s2Step140HeadFFresh,s2Step140HeadGvFresh,s2Step140HeadFvFresh]=
    some (s2Step140HeadFvAfter,[s2Step140HeadGOut,s2Step140HeadFOut,s2Step140HeadGvOut,s2Step140HeadFvOut],(growRow 769 s2Step140HeadGFresh ++ (growRow 768 s2Step140HeadFFresh ++ (growRow 771 s2Step140HeadGvFresh ++ (growRow 770 s2Step140HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step140HeadFvAfter [] []=some (s2Step140HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step140HeadFvBefore s2Step140HeadFvAfter s2Step140HeadFvAfter
    s2Step140HeadFvRow s2Step140HeadFvOut 85 s2Step140HeadFvFresh [] [] []
    (growRow 770 s2Step140HeadFvFresh) ([]) s2Step140HeadFv_Incoming s2Step140HeadFv_checked h4 s2Step140HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step140HeadGvBefore s2Step140HeadGvAfter s2Step140HeadFvAfter
    s2Step140HeadGvRow s2Step140HeadGvOut 85 s2Step140HeadGvFresh [(s2Step140HeadFvRow,85)] [s2Step140HeadFvFresh] [s2Step140HeadFvOut]
    (growRow 771 s2Step140HeadGvFresh) ((growRow 770 s2Step140HeadFvFresh ++ [])) s2Step140HeadGv_Incoming s2Step140HeadGv_checked h3 s2Step140HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step140HeadFBefore s2Step140HeadFAfter s2Step140HeadFvAfter
    s2Step140HeadFRow s2Step140HeadFOut 201 s2Step140HeadFFresh [(s2Step140HeadGvRow,85),(s2Step140HeadFvRow,85)] [s2Step140HeadGvFresh,s2Step140HeadFvFresh] [s2Step140HeadGvOut,s2Step140HeadFvOut]
    (growRow 768 s2Step140HeadFFresh) ((growRow 771 s2Step140HeadGvFresh ++ (growRow 770 s2Step140HeadFvFresh ++ []))) s2Step140HeadF_Incoming s2Step140HeadF_checked h2 s2Step140HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step140HeadGBefore s2Step140HeadGAfter s2Step140HeadFvAfter
    s2Step140HeadGRow s2Step140HeadGOut 201 s2Step140HeadGFresh [(s2Step140HeadFRow,201),(s2Step140HeadGvRow,85),(s2Step140HeadFvRow,85)] [s2Step140HeadFFresh,s2Step140HeadGvFresh,s2Step140HeadFvFresh] [s2Step140HeadFOut,s2Step140HeadGvOut,s2Step140HeadFvOut]
    (growRow 769 s2Step140HeadGFresh) ((growRow 768 s2Step140HeadFFresh ++ (growRow 771 s2Step140HeadGvFresh ++ (growRow 770 s2Step140HeadFvFresh ++ [])))) s2Step140HeadG_Incoming s2Step140HeadG_checked h1 s2Step140HeadG_Outgoing
  exact h0

private theorem s2Step140HeadBank_checked : compileHmrBankResizeLog .headroom s2Step140HeadGBefore ⟨s2Step140HeadFRow,s2Step140HeadGRow,s2Step140HeadFvRow,s2Step140HeadGvRow⟩ ⟨201,201,85,85⟩ [s2Step140HeadGFresh,s2Step140HeadFFresh,s2Step140HeadGvFresh,s2Step140HeadFvFresh]=
    some (s2Step140HeadFvAfter,⟨s2Step140HeadFOut,s2Step140HeadGOut,s2Step140HeadFvOut,s2Step140HeadGvOut⟩,(growRow 769 s2Step140HeadGFresh ++ (growRow 768 s2Step140HeadFFresh ++ (growRow 771 s2Step140HeadGvFresh ++ (growRow 770 s2Step140HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step140HeadBank_rows]
  rfl

private theorem s2Step140Front_checked : compileHmrSourceFrontLog s2Step140EntryFBefore s2Step140FrontBank 200 84 ⟨199,199,84,84⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step140FrontLog=some s2Step140FrontPlan := by
  have pairEq : s2Step140FrontPair=⟨s2Step140HeadFRow,s2Step140HeadGRow,s2Step140HeadFvRow,s2Step140HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step140FrontHead=⟨s2Step140ExitFRow,s2Step140ExitGRow,s2Step140ExitFvRow,s2Step140ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step140Add0A=s2Step140FrontHead.f.wires := by decide +kernel
  have gEq : s2Step140Add0B=s2Step140FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step140Add1A=s2Step140FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step140Add1B=s2Step140FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step140EntryFBefore s2Step140FrontBank 200 84 ⟨199,199,84,84⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step140FrontLog s2Step140FrontPlan
  · exact s2Step140Front_entry
  · exact s2Step140EntryBank_checked
  · exact s2Step140Front_sigma
  · rfl
  · exact s2Step140Front_branch
  · rfl
  · simpa only [s2Step140FrontPlan,pairEq] using s2Step140HeadBank_checked
  · simpa only [s2Step140FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step140F4_checked
  · exact s2Step140Counter_checked
  · rfl
  · simpa only [s2Step140FrontPlan,headEq] using s2Step140ExitBank_checked

private theorem s2Step140Complete_explicit_checked : compileHmrEarlyStepLog s2Step140EntryFBefore s2Step140FrontBank 200 84 ⟨199,199,84,84⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887] 41 s2Step140CompleteLog=some s2Step140CompletePlan := by
  let Q := s2Step140EarlyControlPlan
  have hq := s2Step140EarlyControl_plan_checked
  have fv1 : s2Step140CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step140CompleteOut.fv.payload[2]?.getD s2Step140CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step140CompleteOut.fv.payload[3]?.getD s2Step140CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step140CompleteOut.fv.payload[4]?.getD s2Step140CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step140EntryFBefore s2Step140EarlyControlArena s2Step140FrontBank 200 84 ⟨199,199,84,84⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887] 41 s2Step140CompleteLog s2Step140FrontPlan Q
    s2Step140Front_checked s2Step140Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step140Complete_owned s2Step140Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step140EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887] 777 778 s2Step140CompleteOut.fv.second (s2Step140CompleteOut.fv.payload[2]?.getD s2Step140CompleteOut.fv.sign) (s2Step140CompleteOut.fv.payload[3]?.getD s2Step140CompleteOut.fv.sign) (s2Step140CompleteOut.fv.payload[4]?.getD s2Step140CompleteOut.fv.sign) 788 41 s2Step140EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep140Arena : Arena := s2Step140EntryFBefore
def s2PrivateStep140Bank : WindowBank := s2Step140FrontBank
def s2PrivateStep140Spec : HmrSourceWalkStepLog := ⟨200,84,⟨199,199,84,84⟩,41,.early s2Step140CompleteLog⟩
def s2PrivateStep140Plan : HmrSourceStepPlan := .early s2Step140CompletePlan
theorem s2PrivateStep140_source : s2PrivateStep140Spec=s2ObservedLogs128[12] := rfl
theorem s2PrivateStep140_checked : compileHmrSourceStepLog s2PrivateStep140Arena s2PrivateStep140Bank
    s2PrivateStep140Spec.fgWidth s2PrivateStep140Spec.vWidth s2PrivateStep140Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887]
    6 498 140 s2PrivateStep140Spec.need none s2PrivateStep140Spec.log=some s2PrivateStep140Plan := by
  change compileHmrSourceStepLog s2Step140EntryFBefore s2Step140FrontBank 200 84 ⟨199,199,84,84⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887] 6 498 140 41 none (.early s2Step140CompleteLog)=some (.early s2Step140CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 140<498)]
  rw [s2Step140Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
