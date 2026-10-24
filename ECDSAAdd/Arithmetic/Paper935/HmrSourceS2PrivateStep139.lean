import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep137
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

private def s2Step139CompleteMoves : List (Wire × Wire) := [(788,199)]

private def s2Step139EarlyControlLog : HmrEarlyControlLog := ⟨[788, 783, 837, 849, 781],[790],[815],[867, 877, 879, 882, 885, 886],[887]⟩

private def s2Step139FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [782]],[[837], [783], [814], [826]],[[], [], [], []]⟩,[778],[841],[849],[781],[790, 815, 867, 877, 879, 882, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[790, 815, 867, 877, 879, 882, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[849, 781, 790, 815]⟩

private def s2Step139CompleteLog : HmrEarlyStepLog := ⟨s2Step139FrontLog,s2Step139CompleteMoves,s2Step139EarlyControlLog⟩

private def s2Step139ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711],768⟩

private def s2Step139ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826],770⟩

private def s2Step139ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198],769⟩

private def s2Step139ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814],771⟩

private def s2Step139FrontOut : WindowBank := ⟨s2Step139ExitFOut,s2Step139ExitGOut,s2Step139ExitFvOut,s2Step139ExitGvOut⟩

private def s2Step139CompleteOut : WindowBank := s2Step139FrontOut.repacked s2Step139CompleteMoves

private def s2Step139EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885)),Finset.filter_subset _ _⟩

private def s2Step139EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885)),Finset.filter_subset _ _⟩

private def s2Step139EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885)),Finset.filter_subset _ _⟩

private def s2Step139EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step139EarlyControlPositiveArena,[790],s2Step139EarlyControlEqualityArena,[815],⟨⟨778,false⟩,[⟨⟨790,false⟩,815⟩]⟩⟩

private def s2Step139EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<888)),Finset.filter_subset _ _⟩

private def s2Step139EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<887)),Finset.filter_subset _ _⟩

private def s2Step139EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (887≤q ∧ q<888)),Finset.filter_subset _ _⟩

private def s2Step139EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (887≤q ∧ q<888)),Finset.filter_subset _ _⟩

private def s2Step139EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (887≤q ∧ q<888)),Finset.filter_subset _ _⟩

private def s2Step139EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885)),Finset.filter_subset _ _⟩

private def s2Step139EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,788⟩,⟨⟨774,false⟩,783⟩,⟨⟨775,false⟩,837⟩,⟨⟨776,false⟩,849⟩,⟨⟨777,false⟩,781⟩]⟩

private def s2Step139EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step139EarlyControlZeroArena,s2Step139EarlyControlZeroPlan,s2Step139EarlyControlClassPlan,s2Step139EarlyControlFlagArena,s2Step139EarlyControlFittedArena,s2Step139EarlyControlHistoryArena,s2Step139EarlyControlSigmaArena,s2Step139EarlyControlOutputArena,s2Step139EarlyControlLog⟩

private def s2Step139CounterWork : List Wire := [849, 781, 790, 815]

private theorem s2Step139Counter_bounded : s2Step139CounterWork.toFinset⊆arenaWires := by norm_num [s2Step139CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step139HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885)),Finset.filter_subset _ _⟩

private def s2Step139CounterDuring : Arena := ⟨s2Step139HeadFvAfter.live∪s2Step139CounterWork.toFinset,Finset.union_subset s2Step139HeadFvAfter.bounded s2Step139Counter_bounded⟩

private def s2Step139EntryFFresh : List Wire := []

private def s2Step139EntryFvFresh : List Wire := []

private def s2Step139EntryGFresh : List Wire := []

private def s2Step139EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885)),Finset.filter_subset _ _⟩

private def s2Step139EntryGvFresh : List Wire := [782]

private def s2Step139ExitFExtra : List Wire := [783]

private def s2Step139ExitGExtra : List Wire := [199, 837]

private def s2Step139ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<199) ∨ (200≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885)),Finset.filter_subset _ _⟩

private def s2Step139ExitGvAfter : Arena := s2Step139ExitFAfter

private def s2Step139Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885)),Finset.filter_subset _ _⟩

private def s2Step139Add0Work : List Wire := [790, 815, 867, 877, 879, 882, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step139Add0_bounded : s2Step139Add0Work.toFinset⊆arenaWires := by
  have h : s2Step139Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step139Add0During : Arena := ⟨s2Step139Add0Arena.live∪s2Step139Add0Work.toFinset,Finset.union_subset s2Step139Add0Arena.bounded s2Step139Add0_bounded⟩

private def s2Step139Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885)),Finset.filter_subset _ _⟩

private def s2Step139Add1Work : List Wire := [790, 815, 867, 877, 879, 882, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step139Add1_bounded : s2Step139Add1Work.toFinset⊆arenaWires := by
  have h : s2Step139Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step139Add1During : Arena := ⟨s2Step139Add1Arena.live∪s2Step139Add1Work.toFinset,Finset.union_subset s2Step139Add1Arena.bounded s2Step139Add1_bounded⟩

private def s2Step139F4FlagArena : Arena := ⟨s2Step139HeadFvAfter.live∪{849},Finset.union_subset s2Step139HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step139F4Plan : HmrHybridF4Plan := ⟨s2Step139F4FlagArena,[849],s2Step139Add0Arena,[781],s2Step139Add0During,s2Step139Add0Work,s2Step139Add1During,s2Step139Add1Work⟩

private def s2Step139HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 783],768⟩

private def s2Step139HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826],770⟩

private def s2Step139HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 837],769⟩

private def s2Step139HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814],771⟩

private def s2Step139FrontHead : WindowBank := ⟨s2Step139HeadFOut,s2Step139HeadGOut,s2Step139HeadFvOut,s2Step139HeadGvOut⟩

private def s2Step139EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711],768⟩

private def s2Step139EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827],770⟩

private def s2Step139EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199],769⟩

private def s2Step139EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782],771⟩

private def s2Step139FrontPair : WindowBank := ⟨s2Step139EntryFOut,s2Step139EntryGOut,s2Step139EntryFvOut,s2Step139EntryGvOut⟩

private def s2Step139FrontSigmaArena : Arena := ⟨s2Step139EntryGvAfter.live∪{778},Finset.union_subset s2Step139EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step139HeadFFresh : List Wire := [783]

private def s2Step139HeadFvFresh : List Wire := [826]

private def s2Step139HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885)),Finset.filter_subset _ _⟩

private def s2Step139HeadGFresh : List Wire := [837]

private def s2Step139HeadGvFresh : List Wire := [814]

private def s2Step139FrontPlan : HmrSourceFront := ⟨s2Step139EntryGvAfter,s2Step139FrontPair,(growRow 768 s2Step139EntryFFresh ++ (growRow 769 s2Step139EntryGFresh ++ (growRow 770 s2Step139EntryFvFresh ++ (growRow 771 s2Step139EntryGvFresh ++ [])))),s2Step139FrontSigmaArena,[778],s2Step139HeadGBefore,[841],
  s2Step139HeadFvAfter,s2Step139FrontHead,(growRow 769 s2Step139HeadGFresh ++ (growRow 768 s2Step139HeadFFresh ++ (growRow 771 s2Step139HeadGvFresh ++ (growRow 770 s2Step139HeadFvFresh ++ [])))),s2Step139F4Plan,s2Step139CounterDuring,s2Step139CounterWork,s2Step139ExitGvAfter,s2Step139FrontOut,(shrinkRow 769 s2Step139ExitGExtra ++ (shrinkRow 768 s2Step139ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ []))))⟩

private def s2Step139CompletePlan : HmrEarlyStepPlan := ⟨s2Step139FrontPlan,s2Step139EarlyControlArena,s2Step139EarlyControlPlan,s2Step139CompleteMoves⟩

private theorem s2Step139Complete_apart : List.Disjoint (s2Step139CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [778, 841, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883] := by
  have nd : ((s2Step139CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[778, 841, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step139Complete_owned : (s2Step139CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step139EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step139EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885)) rfl
  decide +kernel

private def s2Step139CompleteMoveArena : Arena := ⟨s2Step139ExitGvAfter.live∪{199},Finset.union_subset s2Step139ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step139Complete_repack : s2Step139ExitGvAfter.checkRepack s2Step139CompleteMoves=some s2Step139EarlyControlArena := by
  have owned : 788∈s2Step139ExitGvAfter.live := by norm_num [s2Step139ExitGvAfter,s2Step139ExitFAfter,arenaWires]
  have reserve : s2Step139ExitGvAfter.reserve {199}=some s2Step139CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step139ExitGvAfter,s2Step139ExitFAfter,arenaWires]
    · rfl
  have retired : s2Step139CompleteMoveArena.retireSet {788}=s2Step139EarlyControlArena := by
    unfold Arena.retireSet s2Step139EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step139CompleteMoveArena,s2Step139ExitGvAfter,s2Step139ExitFAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step139CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step139CompleteMoveArena.retireSet {788}).checkRepack []=some s2Step139EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step139EarlyControl_branchOwned : ([841] : List Wire).toFinset⊆s2Step139EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step139EarlyControlSigmaArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (887≤q ∧ q<888)) rfl
  decide +kernel

private theorem s2Step139EarlyControl_branch : compileHmrBranchRetirement s2Step139EarlyControlSigmaArena 841=some s2Step139EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step139EarlyControl_branchOwned
  · ext q
    simp [s2Step139EarlyControlOutputArena,s2Step139EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step139EarlyControl_classEqualityBorrow : s2Step139EarlyControlPositiveArena.checkBorrow (([778, 790] : List Wire).length-1) s2Step139EarlyControlLog.classWork=some s2Step139EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step139EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step139EarlyControlPositiveArena (fun q => (0≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885)) rfl
      decide +kernel
    · ext q
      simp [s2Step139EarlyControlEqualityArena,s2Step139EarlyControlPositiveArena,s2Step139EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step139EarlyControl_classEqualityOwned : ([778, 790] : List Wire).toFinset⊆s2Step139EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step139EarlyControlPositiveArena (fun q => (0≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885)) rfl
  decide +kernel

private theorem s2Step139EarlyControl_classEquality : compileHmrEqualityLog s2Step139EarlyControlPositiveArena [778, 790] 0 s2Step139EarlyControlLog.classWork=some (s2Step139EarlyControlEqualityArena,s2Step139EarlyControlLog.classWork,s2Step139EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step139EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step139EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step139EarlyControl_classOwned : ([777, 781, 778] : List Wire).toFinset⊆s2Step139EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step139EarlyControlZeroArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885)) rfl
  decide +kernel

private theorem s2Step139EarlyControl_positiveBorrow : s2Step139EarlyControlZeroArena.checkBorrow (1) s2Step139EarlyControlLog.positiveWork=some s2Step139EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step139EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step139EarlyControlZeroArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885)) rfl
      decide +kernel
    · ext q
      simp [s2Step139EarlyControlPositiveArena,s2Step139EarlyControlZeroArena,s2Step139EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step139EarlyControl_class : compileHmrSourceClassLog s2Step139EarlyControlZeroArena false 777 s2Step139EarlyControlZeroPlan.top 0 778 s2Step139EarlyControlLog.positiveWork s2Step139EarlyControlLog.classWork=some s2Step139EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step139EarlyControlClassPlan s2Step139EarlyControlZeroArena false 777 s2Step139EarlyControlZeroPlan.top 0 778
  constructor
  · decide +kernel
  · exact s2Step139EarlyControl_classOwned
  · exact s2Step139EarlyControl_positiveBorrow
  · exact s2Step139EarlyControl_classEquality

private theorem s2Step139EarlyControl_entryRecordOwned : ([841, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883] : List Wire).toFinset⊆s2Step139EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step139EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885)) rfl
  decide +kernel

private theorem s2Step139EarlyControl_entrySigmaOwned : ([778, 254] : List Wire).toFinset⊆s2Step139EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step139EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885)) rfl
  decide +kernel

private theorem s2Step139EarlyControl_fitBorrow : s2Step139EarlyControlFlagArena.checkBorrow ((40-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883] : List Wire).length)) s2Step139EarlyControlLog.recordFresh=some s2Step139EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step139EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step139EarlyControlFlagArena (fun q => (0≤q ∧ q<887)) rfl
      decide +kernel
    · ext q
      simp [s2Step139EarlyControlFittedArena,s2Step139EarlyControlFlagArena,s2Step139EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step139EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883] : List Wire).toFinset⊆s2Step139EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step139EarlyControlFlagArena (fun q => (0≤q ∧ q<887)) rfl
  decide +kernel

private theorem s2Step139EarlyControl_fit : compileHmrRecordGrowLog s2Step139EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883] 40 s2Step139EarlyControlLog.recordFresh=some s2Step139EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step139EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step139EarlyControl_fitBorrow

private theorem s2Step139EarlyControl_flagsBorrow : s2Step139EarlyControlEqualityArena.checkBorrow (6) s2Step139EarlyControlLog.flagWork=some s2Step139EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step139EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step139EarlyControlEqualityArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885)) rfl
      decide +kernel
    · ext q
      simp [s2Step139EarlyControlFlagArena,s2Step139EarlyControlEqualityArena,s2Step139EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step139EarlyControl_flagsOwned : ([815, 253, 252, 251] : List Wire).toFinset⊆s2Step139EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step139EarlyControlEqualityArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885)) rfl
  decide +kernel

private theorem s2Step139EarlyControl_flags : compileHmrFlagsLog s2Step139EarlyControlClassPlan.equalityArena s2Step139EarlyControlClassPlan.equality.top 253 252 251 s2Step139EarlyControlLog.flagWork=some s2Step139EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step139EarlyControl_flagsOwned⟩
  · exact s2Step139EarlyControl_flagsBorrow

private theorem s2Step139EarlyControl_historyBorrow : s2Step139EarlyControlArena.checkBorrow ((40-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883] : List Wire).length)) s2Step139EarlyControlLog.recordFresh=some s2Step139EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step139EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step139EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885)) rfl
      decide +kernel
    · ext q
      simp [s2Step139EarlyControlHistoryArena,s2Step139EarlyControlArena,s2Step139EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step139EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883] : List Wire).toFinset⊆s2Step139EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step139EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885)) rfl
  decide +kernel

private theorem s2Step139EarlyControl_history : compileHmrRecordGrowLog s2Step139EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883] 40 s2Step139EarlyControlLog.recordFresh=some s2Step139EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step139EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step139EarlyControl_historyBorrow

private theorem s2Step139EarlyControl_sigmaOwned : ([254, 778] : List Wire).toFinset⊆s2Step139EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step139EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (887≤q ∧ q<888)) rfl
  decide +kernel

private theorem s2Step139EarlyControl_sigmaReleaseOwned : ([778] : List Wire).toFinset⊆s2Step139EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step139EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (887≤q ∧ q<888)) rfl
  decide +kernel

private theorem s2Step139EarlyControl_sigmaRelease : s2Step139EarlyControlHistoryArena.release {778} (fun _ => false)=some s2Step139EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step139EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step139EarlyControlSigmaArena,s2Step139EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step139EarlyControl_sigma : compileHmrSigmaDropLog s2Step139EarlyControlHistoryArena false 0 0 254 778 []=some s2Step139EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step139EarlyControl_sigmaOwned⟩
  · exact s2Step139EarlyControl_sigmaRelease

private theorem s2Step139EarlyControl_zeroBorrow : s2Step139EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step139EarlyControlLog.zeroWork=some s2Step139EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step139EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step139EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885)) rfl
      decide +kernel
    · ext q
      simp [s2Step139EarlyControlZeroArena,s2Step139EarlyControlArena,s2Step139EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step139EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step139EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step139EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885)) rfl
  decide +kernel

private theorem s2Step139EarlyControl_zero : compileHmrEqualityLog s2Step139EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step139EarlyControlLog.zeroWork=some (s2Step139EarlyControlZeroArena,s2Step139EarlyControlLog.zeroWork,s2Step139EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step139EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step139EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step139EarlyControl_logged : s2Step139EarlyControlPlan.Logged s2Step139EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883] 777 778 254 253 252 251 841 40 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step139EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step139EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step139EarlyControl_zero
  · exact s2Step139EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step139EarlyControl_flags
  · exact s2Step139EarlyControl_fit
  · exact s2Step139EarlyControl_history
  · exact s2Step139EarlyControl_sigma
  · exact s2Step139EarlyControl_branch

private theorem s2Step139EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step139EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883] 777 778 254 253 252 251 841 40 s2Step139EarlyControlLog=some s2Step139EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step139EarlyControlPlan s2Step139EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883] 777 778 254 253 252 251 841 40 s2Step139EarlyControl_logged

private def s2Step139EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885)),Finset.filter_subset _ _⟩

private def s2Step139EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711],768⟩

private def s2Step139EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827],770⟩

private def s2Step139EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199],769⟩

private def s2Step139EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817],771⟩

private def s2Step139FrontBank : WindowBank := ⟨s2Step139EntryFRow,s2Step139EntryGRow,s2Step139EntryFvRow,s2Step139EntryGvRow⟩

private def s2Step139Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 783, 768]

private def s2Step139Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 837, 769]

private def s2Step139Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 770]

private def s2Step139Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 771]

private theorem s2Step139Counter_apart : Disjoint s2Step139HeadFvAfter.live s2Step139CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step139HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885)) rfl
  decide +kernel

private theorem s2Step139Counter_borrowed : s2Step139HeadFvAfter.checkBorrow 4 s2Step139CounterWork=some s2Step139CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step139HeadFvAfter s2Step139CounterDuring s2Step139CounterWork.toFinset s2Step139Counter_bounded s2Step139Counter_apart rfl

private theorem s2Step139Counter_owned : (778::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step139HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step139HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885)) rfl
  decide +kernel

private theorem s2Step139Counter_checked : compileHmrCounterStepLog s2Step139HeadFvAfter true 778 [772, 773, 774, 775, 776, 777] s2Step139CounterWork=some s2Step139CounterDuring := by
  have owned : ∀q∈778::[772, 773, 774, 775, 776, 777],q∈s2Step139HeadFvAfter.live := fun q hq => s2Step139Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step139Counter_borrowed

private def s2Step139EntryFAfter : Arena := s2Step139EntryFBefore

private theorem s2Step139EntryBank_incomingDistinct : ([s2Step139EntryFRow,s2Step139EntryGRow,s2Step139EntryFvRow,s2Step139EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step139EntryF_Incoming : rowsOwned s2Step139EntryFBefore [s2Step139EntryFRow,s2Step139EntryGRow,s2Step139EntryFvRow,s2Step139EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step139EntryFRow,s2Step139EntryGRow,s2Step139EntryFvRow,s2Step139EntryGvRow] 0 s2Step139EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step139EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885)) rfl
    decide +kernel

private theorem s2Step139EntryBank_outgoingOwned : rowsOwned s2Step139EntryGvAfter [s2Step139EntryFOut,s2Step139EntryGOut,s2Step139EntryFvOut,s2Step139EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step139EntryGvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885)) rfl
    decide +kernel

private theorem s2Step139EntryF_Outgoing : rowsOwned s2Step139EntryGvAfter [s2Step139EntryFOut,s2Step139EntryGOut,s2Step139EntryFvOut,s2Step139EntryGvOut] :=
  hmrRows_owned_drop s2Step139EntryGvAfter [s2Step139EntryFOut,s2Step139EntryGOut,s2Step139EntryFvOut,s2Step139EntryGvOut] 0 s2Step139EntryBank_outgoingOwned

private theorem s2Step139EntryF_distinct : (s2Step139EntryFRow.sign::s2Step139EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step139EntryF_owned : (s2Step139EntryFRow.sign::s2Step139EntryFRow.payload).toFinset⊆s2Step139EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step139EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885)) rfl
  decide +kernel

private theorem s2Step139EntryF_reserved : s2Step139EntryFBefore.reserve s2Step139EntryFFresh.toFinset=some s2Step139EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step139EntryFFresh,arenaWires]
  · norm_num [s2Step139EntryFBefore,s2Step139EntryFFresh,arenaWires]
  · simp only [s2Step139EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step139EntryF_checked : planRowResizeLog s2Step139EntryFBefore s2Step139EntryFRow 200 s2Step139EntryFFresh=
    some (s2Step139EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711],768⟩,growRow 768 s2Step139EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step139EntryFBefore s2Step139EntryFAfter s2Step139EntryFRow 200 s2Step139EntryFFresh
    s2Step139EntryF_distinct s2Step139EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step139EntryF_reserved
  have rowEq : WindowRow.mk (s2Step139EntryFRow.payload++s2Step139EntryFFresh) s2Step139EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step139EntryFvAfter : Arena := s2Step139EntryFBefore

private def s2Step139EntryFvBefore : Arena := s2Step139EntryFBefore

private theorem s2Step139EntryFv_Incoming : rowsOwned s2Step139EntryFvBefore [s2Step139EntryFvRow,s2Step139EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step139EntryFRow,s2Step139EntryGRow,s2Step139EntryFvRow,s2Step139EntryGvRow] 2 s2Step139EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step139EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885)) rfl
    decide +kernel

private theorem s2Step139EntryFv_Outgoing : rowsOwned s2Step139EntryGvAfter [s2Step139EntryFvOut,s2Step139EntryGvOut] :=
  hmrRows_owned_drop s2Step139EntryGvAfter [s2Step139EntryFOut,s2Step139EntryGOut,s2Step139EntryFvOut,s2Step139EntryGvOut] 2 s2Step139EntryBank_outgoingOwned

private theorem s2Step139EntryFv_distinct : (s2Step139EntryFvRow.sign::s2Step139EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step139EntryFv_owned : (s2Step139EntryFvRow.sign::s2Step139EntryFvRow.payload).toFinset⊆s2Step139EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step139EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885)) rfl
  decide +kernel

private theorem s2Step139EntryFv_reserved : s2Step139EntryFvBefore.reserve s2Step139EntryFvFresh.toFinset=some s2Step139EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step139EntryFvFresh,arenaWires]
  · norm_num [s2Step139EntryFvBefore,s2Step139EntryFBefore,s2Step139EntryFvFresh,arenaWires]
  · simp only [s2Step139EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step139EntryFv_checked : planRowResizeLog s2Step139EntryFvBefore s2Step139EntryFvRow 83 s2Step139EntryFvFresh=
    some (s2Step139EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827],770⟩,growRow 770 s2Step139EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step139EntryFvBefore s2Step139EntryFvAfter s2Step139EntryFvRow 83 s2Step139EntryFvFresh
    s2Step139EntryFv_distinct s2Step139EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step139EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step139EntryFvRow.payload++s2Step139EntryFvFresh) s2Step139EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step139EntryGAfter : Arena := s2Step139EntryFBefore

private def s2Step139EntryGBefore : Arena := s2Step139EntryFBefore

private theorem s2Step139EntryG_Incoming : rowsOwned s2Step139EntryGBefore [s2Step139EntryGRow,s2Step139EntryFvRow,s2Step139EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step139EntryFRow,s2Step139EntryGRow,s2Step139EntryFvRow,s2Step139EntryGvRow] 1 s2Step139EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step139EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885)) rfl
    decide +kernel

private theorem s2Step139EntryG_Outgoing : rowsOwned s2Step139EntryGvAfter [s2Step139EntryGOut,s2Step139EntryFvOut,s2Step139EntryGvOut] :=
  hmrRows_owned_drop s2Step139EntryGvAfter [s2Step139EntryFOut,s2Step139EntryGOut,s2Step139EntryFvOut,s2Step139EntryGvOut] 1 s2Step139EntryBank_outgoingOwned

private theorem s2Step139EntryG_distinct : (s2Step139EntryGRow.sign::s2Step139EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step139EntryG_owned : (s2Step139EntryGRow.sign::s2Step139EntryGRow.payload).toFinset⊆s2Step139EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step139EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885)) rfl
  decide +kernel

private theorem s2Step139EntryG_reserved : s2Step139EntryGBefore.reserve s2Step139EntryGFresh.toFinset=some s2Step139EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step139EntryGFresh,arenaWires]
  · norm_num [s2Step139EntryGBefore,s2Step139EntryFBefore,s2Step139EntryGFresh,arenaWires]
  · simp only [s2Step139EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step139EntryG_checked : planRowResizeLog s2Step139EntryGBefore s2Step139EntryGRow 200 s2Step139EntryGFresh=
    some (s2Step139EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199],769⟩,growRow 769 s2Step139EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step139EntryGBefore s2Step139EntryGAfter s2Step139EntryGRow 200 s2Step139EntryGFresh
    s2Step139EntryG_distinct s2Step139EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step139EntryG_reserved
  have rowEq : WindowRow.mk (s2Step139EntryGRow.payload++s2Step139EntryGFresh) s2Step139EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step139EntryGvBefore : Arena := s2Step139EntryFBefore

private theorem s2Step139EntryGv_Incoming : rowsOwned s2Step139EntryGvBefore [s2Step139EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step139EntryFRow,s2Step139EntryGRow,s2Step139EntryFvRow,s2Step139EntryGvRow] 3 s2Step139EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step139EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885)) rfl
    decide +kernel

private theorem s2Step139EntryGv_Outgoing : rowsOwned s2Step139EntryGvAfter [s2Step139EntryGvOut] :=
  hmrRows_owned_drop s2Step139EntryGvAfter [s2Step139EntryFOut,s2Step139EntryGOut,s2Step139EntryFvOut,s2Step139EntryGvOut] 3 s2Step139EntryBank_outgoingOwned

private theorem s2Step139EntryGv_distinct : (s2Step139EntryGvRow.sign::s2Step139EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step139EntryGv_owned : (s2Step139EntryGvRow.sign::s2Step139EntryGvRow.payload).toFinset⊆s2Step139EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step139EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885)) rfl
  decide +kernel

private theorem s2Step139EntryGv_reserved : s2Step139EntryGvBefore.reserve s2Step139EntryGvFresh.toFinset=some s2Step139EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step139EntryGvFresh,arenaWires]
  · norm_num [s2Step139EntryGvBefore,s2Step139EntryFBefore,s2Step139EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step139EntryGvAfter,s2Step139EntryGvBefore,s2Step139EntryFBefore,s2Step139EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step139EntryGv_checked : planRowResizeLog s2Step139EntryGvBefore s2Step139EntryGvRow 83 s2Step139EntryGvFresh=
    some (s2Step139EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782],771⟩,growRow 771 s2Step139EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step139EntryGvBefore s2Step139EntryGvAfter s2Step139EntryGvRow 83 s2Step139EntryGvFresh
    s2Step139EntryGv_distinct s2Step139EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step139EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step139EntryGvRow.payload++s2Step139EntryGvFresh) s2Step139EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step139EntryBank_rows : planWindowRowsLog s2Step139EntryFBefore [(s2Step139EntryFRow,200),(s2Step139EntryGRow,200),(s2Step139EntryFvRow,83),(s2Step139EntryGvRow,83)] [s2Step139EntryFFresh,s2Step139EntryGFresh,s2Step139EntryFvFresh,s2Step139EntryGvFresh]=
    some (s2Step139EntryGvAfter,[s2Step139EntryFOut,s2Step139EntryGOut,s2Step139EntryFvOut,s2Step139EntryGvOut],(growRow 768 s2Step139EntryFFresh ++ (growRow 769 s2Step139EntryGFresh ++ (growRow 770 s2Step139EntryFvFresh ++ (growRow 771 s2Step139EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step139EntryGvAfter [] []=some (s2Step139EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step139EntryGvBefore s2Step139EntryGvAfter s2Step139EntryGvAfter
    s2Step139EntryGvRow s2Step139EntryGvOut 83 s2Step139EntryGvFresh [] [] []
    (growRow 771 s2Step139EntryGvFresh) ([]) s2Step139EntryGv_Incoming s2Step139EntryGv_checked h4 s2Step139EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step139EntryFvBefore s2Step139EntryFvAfter s2Step139EntryGvAfter
    s2Step139EntryFvRow s2Step139EntryFvOut 83 s2Step139EntryFvFresh [(s2Step139EntryGvRow,83)] [s2Step139EntryGvFresh] [s2Step139EntryGvOut]
    (growRow 770 s2Step139EntryFvFresh) ((growRow 771 s2Step139EntryGvFresh ++ [])) s2Step139EntryFv_Incoming s2Step139EntryFv_checked h3 s2Step139EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step139EntryGBefore s2Step139EntryGAfter s2Step139EntryGvAfter
    s2Step139EntryGRow s2Step139EntryGOut 200 s2Step139EntryGFresh [(s2Step139EntryFvRow,83),(s2Step139EntryGvRow,83)] [s2Step139EntryFvFresh,s2Step139EntryGvFresh] [s2Step139EntryFvOut,s2Step139EntryGvOut]
    (growRow 769 s2Step139EntryGFresh) ((growRow 770 s2Step139EntryFvFresh ++ (growRow 771 s2Step139EntryGvFresh ++ []))) s2Step139EntryG_Incoming s2Step139EntryG_checked h2 s2Step139EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step139EntryFBefore s2Step139EntryFAfter s2Step139EntryGvAfter
    s2Step139EntryFRow s2Step139EntryFOut 200 s2Step139EntryFFresh [(s2Step139EntryGRow,200),(s2Step139EntryFvRow,83),(s2Step139EntryGvRow,83)] [s2Step139EntryGFresh,s2Step139EntryFvFresh,s2Step139EntryGvFresh] [s2Step139EntryGOut,s2Step139EntryFvOut,s2Step139EntryGvOut]
    (growRow 768 s2Step139EntryFFresh) ((growRow 769 s2Step139EntryGFresh ++ (growRow 770 s2Step139EntryFvFresh ++ (growRow 771 s2Step139EntryGvFresh ++ [])))) s2Step139EntryF_Incoming s2Step139EntryF_checked h1 s2Step139EntryF_Outgoing
  exact h0

private theorem s2Step139EntryBank_checked : compileHmrBankResizeLog .entry s2Step139EntryFBefore ⟨s2Step139EntryFRow,s2Step139EntryGRow,s2Step139EntryFvRow,s2Step139EntryGvRow⟩ ⟨200,200,83,83⟩ [s2Step139EntryFFresh,s2Step139EntryGFresh,s2Step139EntryFvFresh,s2Step139EntryGvFresh]=
    some (s2Step139EntryGvAfter,⟨s2Step139EntryFOut,s2Step139EntryGOut,s2Step139EntryFvOut,s2Step139EntryGvOut⟩,(growRow 768 s2Step139EntryFFresh ++ (growRow 769 s2Step139EntryGFresh ++ (growRow 770 s2Step139EntryFvFresh ++ (growRow 771 s2Step139EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step139EntryBank_rows]
  rfl

private def s2Step139ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<199) ∨ (200≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885)),Finset.filter_subset _ _⟩

private def s2Step139ExitFBefore : Arena := s2Step139ExitGAfter

private def s2Step139ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 783],768⟩

private def s2Step139ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826],770⟩

private def s2Step139ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 837],769⟩

private def s2Step139ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814],771⟩

private theorem s2Step139ExitBank_incomingDistinct : ([s2Step139ExitGRow,s2Step139ExitFRow,s2Step139ExitFvRow,s2Step139ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step139ExitF_Incoming : rowsOwned s2Step139ExitFBefore [s2Step139ExitFRow,s2Step139ExitFvRow,s2Step139ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step139ExitGRow,s2Step139ExitFRow,s2Step139ExitFvRow,s2Step139ExitGvRow] 1 s2Step139ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step139ExitFBefore (fun q => (0≤q ∧ q<199) ∨ (200≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885)) rfl
    decide +kernel

private theorem s2Step139ExitBank_outgoingOwned : rowsOwned s2Step139ExitGvAfter [s2Step139ExitGOut,s2Step139ExitFOut,s2Step139ExitFvOut,s2Step139ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step139ExitGvAfter (fun q => (0≤q ∧ q<199) ∨ (200≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885)) rfl
    decide +kernel

private theorem s2Step139ExitF_Outgoing : rowsOwned s2Step139ExitGvAfter [s2Step139ExitFOut,s2Step139ExitFvOut,s2Step139ExitGvOut] :=
  hmrRows_owned_drop s2Step139ExitGvAfter [s2Step139ExitGOut,s2Step139ExitFOut,s2Step139ExitFvOut,s2Step139ExitGvOut] 1 s2Step139ExitBank_outgoingOwned

private theorem s2Step139ExitF_distinct : (s2Step139ExitFRow.sign::s2Step139ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step139ExitF_owned : (s2Step139ExitFRow.sign::s2Step139ExitFRow.payload).toFinset⊆s2Step139ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step139ExitFBefore (fun q => (0≤q ∧ q<199) ∨ (200≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885)) rfl
  decide +kernel

private theorem s2Step139ExitF_retired : s2Step139ExitFBefore.retireSet s2Step139ExitFExtra.toFinset=s2Step139ExitFAfter := by
  unfold Arena.retireSet s2Step139ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step139ExitFBefore,s2Step139ExitGAfter,s2Step139ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step139ExitF_checked : planRowResizeLog s2Step139ExitFBefore s2Step139ExitFRow 200 []=
    some (s2Step139ExitFAfter,s2Step139ExitFOut,shrinkRow 768 s2Step139ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step139ExitFBefore s2Step139ExitFRow 200 s2Step139ExitF_distinct s2Step139ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step139ExitFRow.payload.take 200) s2Step139ExitFRow.sign=s2Step139ExitFOut := by decide +kernel
  have hi : s2Step139ExitFRow.payload.drop 200=s2Step139ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step139ExitF_retired] at result
  exact result

private def s2Step139ExitFvAfter : Arena := s2Step139ExitFAfter

private def s2Step139ExitFvBefore : Arena := s2Step139ExitFAfter

private theorem s2Step139ExitFv_Incoming : rowsOwned s2Step139ExitFvBefore [s2Step139ExitFvRow,s2Step139ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step139ExitGRow,s2Step139ExitFRow,s2Step139ExitFvRow,s2Step139ExitGvRow] 2 s2Step139ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step139ExitFvBefore (fun q => (0≤q ∧ q<199) ∨ (200≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885)) rfl
    decide +kernel

private theorem s2Step139ExitFv_Outgoing : rowsOwned s2Step139ExitGvAfter [s2Step139ExitFvOut,s2Step139ExitGvOut] :=
  hmrRows_owned_drop s2Step139ExitGvAfter [s2Step139ExitGOut,s2Step139ExitFOut,s2Step139ExitFvOut,s2Step139ExitGvOut] 2 s2Step139ExitBank_outgoingOwned

private theorem s2Step139ExitFv_distinct : (s2Step139ExitFvRow.sign::s2Step139ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step139ExitFv_owned : (s2Step139ExitFvRow.sign::s2Step139ExitFvRow.payload).toFinset⊆s2Step139ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step139ExitFvBefore (fun q => (0≤q ∧ q<199) ∨ (200≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885)) rfl
  decide +kernel

private theorem s2Step139ExitFv_reserved : s2Step139ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step139ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step139ExitFv_checked : planRowResizeLog s2Step139ExitFvBefore s2Step139ExitFvRow 84 []=
    some (s2Step139ExitFvAfter,s2Step139ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step139ExitFvBefore s2Step139ExitFvAfter s2Step139ExitFvRow 84 []
    s2Step139ExitFv_distinct s2Step139ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step139ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step139ExitFvRow.payload++[]) s2Step139ExitFvRow.sign=s2Step139ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step139ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885)),Finset.filter_subset _ _⟩

private theorem s2Step139ExitG_Incoming : rowsOwned s2Step139ExitGBefore [s2Step139ExitGRow,s2Step139ExitFRow,s2Step139ExitFvRow,s2Step139ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step139ExitGRow,s2Step139ExitFRow,s2Step139ExitFvRow,s2Step139ExitGvRow] 0 s2Step139ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step139ExitGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885)) rfl
    decide +kernel

private theorem s2Step139ExitG_Outgoing : rowsOwned s2Step139ExitGvAfter [s2Step139ExitGOut,s2Step139ExitFOut,s2Step139ExitFvOut,s2Step139ExitGvOut] :=
  hmrRows_owned_drop s2Step139ExitGvAfter [s2Step139ExitGOut,s2Step139ExitFOut,s2Step139ExitFvOut,s2Step139ExitGvOut] 0 s2Step139ExitBank_outgoingOwned

private theorem s2Step139ExitG_distinct : (s2Step139ExitGRow.sign::s2Step139ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step139ExitG_owned : (s2Step139ExitGRow.sign::s2Step139ExitGRow.payload).toFinset⊆s2Step139ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step139ExitGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885)) rfl
  decide +kernel

private theorem s2Step139ExitG_retired : s2Step139ExitGBefore.retireSet s2Step139ExitGExtra.toFinset=s2Step139ExitGAfter := by
  unfold Arena.retireSet s2Step139ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step139ExitGBefore,s2Step139ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step139ExitG_checked : planRowResizeLog s2Step139ExitGBefore s2Step139ExitGRow 199 []=
    some (s2Step139ExitGAfter,s2Step139ExitGOut,shrinkRow 769 s2Step139ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step139ExitGBefore s2Step139ExitGRow 199 s2Step139ExitG_distinct s2Step139ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step139ExitGRow.payload.take 199) s2Step139ExitGRow.sign=s2Step139ExitGOut := by decide +kernel
  have hi : s2Step139ExitGRow.payload.drop 199=s2Step139ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step139ExitG_retired] at result
  exact result

private def s2Step139ExitGvBefore : Arena := s2Step139ExitFAfter

private theorem s2Step139ExitGv_Incoming : rowsOwned s2Step139ExitGvBefore [s2Step139ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step139ExitGRow,s2Step139ExitFRow,s2Step139ExitFvRow,s2Step139ExitGvRow] 3 s2Step139ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step139ExitGvBefore (fun q => (0≤q ∧ q<199) ∨ (200≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885)) rfl
    decide +kernel

private theorem s2Step139ExitGv_Outgoing : rowsOwned s2Step139ExitGvAfter [s2Step139ExitGvOut] :=
  hmrRows_owned_drop s2Step139ExitGvAfter [s2Step139ExitGOut,s2Step139ExitFOut,s2Step139ExitFvOut,s2Step139ExitGvOut] 3 s2Step139ExitBank_outgoingOwned

private theorem s2Step139ExitGv_distinct : (s2Step139ExitGvRow.sign::s2Step139ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step139ExitGv_owned : (s2Step139ExitGvRow.sign::s2Step139ExitGvRow.payload).toFinset⊆s2Step139ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step139ExitGvBefore (fun q => (0≤q ∧ q<199) ∨ (200≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885)) rfl
  decide +kernel

private theorem s2Step139ExitGv_reserved : s2Step139ExitGvBefore.reserve (∅ : Finset Wire)=some s2Step139ExitGvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step139ExitGv_checked : planRowResizeLog s2Step139ExitGvBefore s2Step139ExitGvRow 84 []=
    some (s2Step139ExitGvAfter,s2Step139ExitGvOut,growRow 771 []) := by
  have result := planRowResizeLog_of_growth s2Step139ExitGvBefore s2Step139ExitGvAfter s2Step139ExitGvRow 84 []
    s2Step139ExitGv_distinct s2Step139ExitGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step139ExitGv_reserved
  have rowEq : WindowRow.mk (s2Step139ExitGvRow.payload++[]) s2Step139ExitGvRow.sign=s2Step139ExitGvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step139ExitBank_rows : planWindowRowsLog s2Step139ExitGBefore [(s2Step139ExitGRow,199),(s2Step139ExitFRow,200),(s2Step139ExitFvRow,84),(s2Step139ExitGvRow,84)] [[],[],[],[]]=
    some (s2Step139ExitGvAfter,[s2Step139ExitGOut,s2Step139ExitFOut,s2Step139ExitFvOut,s2Step139ExitGvOut],(shrinkRow 769 s2Step139ExitGExtra ++ (shrinkRow 768 s2Step139ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ []))))) := by
  have h4 : planWindowRowsLog s2Step139ExitGvAfter [] []=some (s2Step139ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step139ExitGvBefore s2Step139ExitGvAfter s2Step139ExitGvAfter
    s2Step139ExitGvRow s2Step139ExitGvOut 84 [] [] [] []
    (growRow 771 []) ([]) s2Step139ExitGv_Incoming s2Step139ExitGv_checked h4 s2Step139ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step139ExitFvBefore s2Step139ExitFvAfter s2Step139ExitGvAfter
    s2Step139ExitFvRow s2Step139ExitFvOut 84 [] [(s2Step139ExitGvRow,84)] [[]] [s2Step139ExitGvOut]
    (growRow 770 []) ((growRow 771 [] ++ [])) s2Step139ExitFv_Incoming s2Step139ExitFv_checked h3 s2Step139ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step139ExitFBefore s2Step139ExitFAfter s2Step139ExitGvAfter
    s2Step139ExitFRow s2Step139ExitFOut 200 [] [(s2Step139ExitFvRow,84),(s2Step139ExitGvRow,84)] [[],[]] [s2Step139ExitFvOut,s2Step139ExitGvOut]
    (shrinkRow 768 s2Step139ExitFExtra) ((growRow 770 [] ++ (growRow 771 [] ++ []))) s2Step139ExitF_Incoming s2Step139ExitF_checked h2 s2Step139ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step139ExitGBefore s2Step139ExitGAfter s2Step139ExitGvAfter
    s2Step139ExitGRow s2Step139ExitGOut 199 [] [(s2Step139ExitFRow,200),(s2Step139ExitFvRow,84),(s2Step139ExitGvRow,84)] [[],[],[]] [s2Step139ExitFOut,s2Step139ExitFvOut,s2Step139ExitGvOut]
    (shrinkRow 769 s2Step139ExitGExtra) ((shrinkRow 768 s2Step139ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ [])))) s2Step139ExitG_Incoming s2Step139ExitG_checked h1 s2Step139ExitG_Outgoing
  exact h0

private theorem s2Step139ExitBank_checked : compileHmrBankResizeLog .exit s2Step139ExitGBefore ⟨s2Step139ExitFRow,s2Step139ExitGRow,s2Step139ExitFvRow,s2Step139ExitGvRow⟩ ⟨200,199,84,84⟩ [[],[],[],[]]=
    some (s2Step139ExitGvAfter,⟨s2Step139ExitFOut,s2Step139ExitGOut,s2Step139ExitFvOut,s2Step139ExitGvOut⟩,(shrinkRow 769 s2Step139ExitGExtra ++ (shrinkRow 768 s2Step139ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step139ExitBank_rows]
  rfl

private theorem s2Step139Add0_apart : Disjoint s2Step139Add0Arena.live s2Step139Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step139Add0Arena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885)) rfl
  decide +kernel

private theorem s2Step139Add0_card : s2Step139Add0Arena.live.card=879 := by
  decide +kernel

private theorem s2Step139Add0_borrowed : s2Step139Add0Arena.checkBorrow (hmrHybridCount s2Step139Add0Arena s2Step139Add0B.length) s2Step139Add0Work=some s2Step139Add0During := by
  have len : s2Step139Add0Work.length=hmrHybridCount s2Step139Add0Arena s2Step139Add0B.length := by
    rw [hmrHybridCount,s2Step139Add0_card]
    decide +kernel
  have nd : s2Step139Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step139Add0Arena s2Step139Add0During s2Step139Add0Work.toFinset s2Step139Add0_bounded s2Step139Add0_apart rfl

private theorem s2Step139Add0_distinct : (849::841::781::(s2Step139Add0A++s2Step139Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step139Add0_owned : (849::841::781::(s2Step139Add0A++s2Step139Add0B)).toFinset⊆s2Step139Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step139Add0Arena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885)) rfl
  decide +kernel

private theorem s2Step139Add0_checked : compileHmrHybridCinLog s2Step139Add0Arena 841 849 781 s2Step139Add0A s2Step139Add0B s2Step139Add0Work=some s2Step139Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step139Add0Arena s2Step139Add0During 841 849 781 s2Step139Add0A s2Step139Add0B s2Step139Add0Work
    (by decide +kernel) (by decide +kernel) s2Step139Add0_distinct
    (fun q hq => s2Step139Add0_owned (List.mem_toFinset.mpr hq)) s2Step139Add0_borrowed

private theorem s2Step139Add1_apart : Disjoint s2Step139Add1Arena.live s2Step139Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step139Add1Arena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885)) rfl
  decide +kernel

private theorem s2Step139Add1_card : s2Step139Add1Arena.live.card=879 := by
  decide +kernel

private theorem s2Step139Add1_borrowed : s2Step139Add1Arena.checkBorrow (hmrHybridCount s2Step139Add1Arena s2Step139Add1B.length) s2Step139Add1Work=some s2Step139Add1During := by
  have len : s2Step139Add1Work.length=hmrHybridCount s2Step139Add1Arena s2Step139Add1B.length := by
    rw [hmrHybridCount,s2Step139Add1_card]
    decide +kernel
  have nd : s2Step139Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step139Add1Arena s2Step139Add1During s2Step139Add1Work.toFinset s2Step139Add1_bounded s2Step139Add1_apart rfl

private theorem s2Step139Add1_distinct : (849::841::781::(s2Step139Add1A++s2Step139Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step139Add1_owned : (849::841::781::(s2Step139Add1A++s2Step139Add1B)).toFinset⊆s2Step139Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step139Add1Arena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885)) rfl
  decide +kernel

private theorem s2Step139Add1_checked : compileHmrHybridCinLog s2Step139Add1Arena 841 849 781 s2Step139Add1A s2Step139Add1B s2Step139Add1Work=some s2Step139Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step139Add1Arena s2Step139Add1During 841 849 781 s2Step139Add1A s2Step139Add1B s2Step139Add1Work
    (by decide +kernel) (by decide +kernel) s2Step139Add1_distinct
    (fun q hq => s2Step139Add1_owned (List.mem_toFinset.mpr hq)) s2Step139Add1_borrowed

private theorem s2Step139F4_apart : Disjoint (s2Step139Add0A++s2Step139Add0B).toFinset (s2Step139Add1A++s2Step139Add1B).toFinset := by
  have nd : ((s2Step139Add0A++s2Step139Add0B)++(s2Step139Add1A++s2Step139Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step139F4_carry : s2Step139F4FlagArena.checkBorrow 1 [781]=some s2Step139Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step139F4FlagArena,s2Step139HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step139F4FlagArena,s2Step139HeadFvAfter,s2Step139Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step139F4_distinct : (778::841::849::781::((s2Step139Add0A++s2Step139Add1A)++(s2Step139Add0B++s2Step139Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step139F4_flag : s2Step139HeadFvAfter.checkBorrow 1 [849]=some s2Step139F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step139HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step139F4_owned : (778::841::((s2Step139Add0A++s2Step139Add1A)++(s2Step139Add0B++s2Step139Add1B))).toFinset⊆s2Step139HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step139HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885)) rfl
  decide +kernel

private theorem s2Step139F4_checked : compileHmrHybridF4Log s2Step139HeadFvAfter 778 841 s2Step139Add0A s2Step139Add0B s2Step139Add1A s2Step139Add1B [849] [781] s2Step139Add0Work s2Step139Add1Work=some s2Step139F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step139HeadFvAfter s2Step139F4FlagArena s2Step139Add0Arena s2Step139Add0During s2Step139Add1During 778 841
    s2Step139Add0A s2Step139Add0B s2Step139Add1A s2Step139Add1B [849] [781] s2Step139Add0Work s2Step139Add1Work
    (fun q hq => s2Step139F4_owned (List.mem_toFinset.mpr hq)) s2Step139F4_flag s2Step139F4_carry
    s2Step139F4_distinct s2Step139F4_apart s2Step139Add0_checked s2Step139Add1_checked

private theorem s2Step139Front_branch : s2Step139FrontSigmaArena.checkBorrow 1 [841]=some s2Step139HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step139FrontSigmaArena,s2Step139EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step139FrontSigmaArena,s2Step139EntryGvAfter,s2Step139HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step139Front_entry : HmrFrontEntryValid s2Step139EntryFBefore s2Step139FrontBank 200 83 ⟨200,199,84,84⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step139FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step139EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step139EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step139FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step139Front_sigma : s2Step139EntryGvAfter.checkBorrow 1 [778]=some s2Step139FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step139EntryGvAfter,arenaWires]
  · rfl

private def s2Step139HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885)),Finset.filter_subset _ _⟩

private def s2Step139HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885)),Finset.filter_subset _ _⟩

private def s2Step139HeadFBefore : Arena := s2Step139HeadGAfter

private def s2Step139HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711],768⟩

private def s2Step139HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827],770⟩

private def s2Step139HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199],769⟩

private def s2Step139HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782],771⟩

private theorem s2Step139HeadBank_incomingDistinct : ([s2Step139HeadGRow,s2Step139HeadFRow,s2Step139HeadGvRow,s2Step139HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step139HeadF_Incoming : rowsOwned s2Step139HeadFBefore [s2Step139HeadFRow,s2Step139HeadGvRow,s2Step139HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step139HeadGRow,s2Step139HeadFRow,s2Step139HeadGvRow,s2Step139HeadFvRow] 1 s2Step139HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step139HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885)) rfl
    decide +kernel

private theorem s2Step139HeadBank_outgoingOwned : rowsOwned s2Step139HeadFvAfter [s2Step139HeadGOut,s2Step139HeadFOut,s2Step139HeadGvOut,s2Step139HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step139HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885)) rfl
    decide +kernel

private theorem s2Step139HeadF_Outgoing : rowsOwned s2Step139HeadFvAfter [s2Step139HeadFOut,s2Step139HeadGvOut,s2Step139HeadFvOut] :=
  hmrRows_owned_drop s2Step139HeadFvAfter [s2Step139HeadGOut,s2Step139HeadFOut,s2Step139HeadGvOut,s2Step139HeadFvOut] 1 s2Step139HeadBank_outgoingOwned

private theorem s2Step139HeadF_distinct : (s2Step139HeadFRow.sign::s2Step139HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step139HeadF_owned : (s2Step139HeadFRow.sign::s2Step139HeadFRow.payload).toFinset⊆s2Step139HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step139HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885)) rfl
  decide +kernel

private theorem s2Step139HeadF_reserved : s2Step139HeadFBefore.reserve s2Step139HeadFFresh.toFinset=some s2Step139HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step139HeadFFresh,arenaWires]
  · norm_num [s2Step139HeadFBefore,s2Step139HeadGAfter,s2Step139HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step139HeadFAfter,s2Step139HeadFBefore,s2Step139HeadGAfter,s2Step139HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step139HeadF_checked : planRowResizeLog s2Step139HeadFBefore s2Step139HeadFRow 201 s2Step139HeadFFresh=
    some (s2Step139HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 783],768⟩,growRow 768 s2Step139HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step139HeadFBefore s2Step139HeadFAfter s2Step139HeadFRow 201 s2Step139HeadFFresh
    s2Step139HeadF_distinct s2Step139HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step139HeadF_reserved
  have rowEq : WindowRow.mk (s2Step139HeadFRow.payload++s2Step139HeadFFresh) s2Step139HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 783],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step139HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885)),Finset.filter_subset _ _⟩

private def s2Step139HeadFvBefore : Arena := s2Step139HeadGvAfter

private theorem s2Step139HeadFv_Incoming : rowsOwned s2Step139HeadFvBefore [s2Step139HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step139HeadGRow,s2Step139HeadFRow,s2Step139HeadGvRow,s2Step139HeadFvRow] 3 s2Step139HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step139HeadFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885)) rfl
    decide +kernel

private theorem s2Step139HeadFv_Outgoing : rowsOwned s2Step139HeadFvAfter [s2Step139HeadFvOut] :=
  hmrRows_owned_drop s2Step139HeadFvAfter [s2Step139HeadGOut,s2Step139HeadFOut,s2Step139HeadGvOut,s2Step139HeadFvOut] 3 s2Step139HeadBank_outgoingOwned

private theorem s2Step139HeadFv_distinct : (s2Step139HeadFvRow.sign::s2Step139HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step139HeadFv_owned : (s2Step139HeadFvRow.sign::s2Step139HeadFvRow.payload).toFinset⊆s2Step139HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step139HeadFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885)) rfl
  decide +kernel

private theorem s2Step139HeadFv_reserved : s2Step139HeadFvBefore.reserve s2Step139HeadFvFresh.toFinset=some s2Step139HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step139HeadFvFresh,arenaWires]
  · norm_num [s2Step139HeadFvBefore,s2Step139HeadGvAfter,s2Step139HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step139HeadFvAfter,s2Step139HeadFvBefore,s2Step139HeadGvAfter,s2Step139HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step139HeadFv_checked : planRowResizeLog s2Step139HeadFvBefore s2Step139HeadFvRow 84 s2Step139HeadFvFresh=
    some (s2Step139HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826],770⟩,growRow 770 s2Step139HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step139HeadFvBefore s2Step139HeadFvAfter s2Step139HeadFvRow 84 s2Step139HeadFvFresh
    s2Step139HeadFv_distinct s2Step139HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step139HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step139HeadFvRow.payload++s2Step139HeadFvFresh) s2Step139HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step139HeadG_Incoming : rowsOwned s2Step139HeadGBefore [s2Step139HeadGRow,s2Step139HeadFRow,s2Step139HeadGvRow,s2Step139HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step139HeadGRow,s2Step139HeadFRow,s2Step139HeadGvRow,s2Step139HeadFvRow] 0 s2Step139HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step139HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885)) rfl
    decide +kernel

private theorem s2Step139HeadG_Outgoing : rowsOwned s2Step139HeadFvAfter [s2Step139HeadGOut,s2Step139HeadFOut,s2Step139HeadGvOut,s2Step139HeadFvOut] :=
  hmrRows_owned_drop s2Step139HeadFvAfter [s2Step139HeadGOut,s2Step139HeadFOut,s2Step139HeadGvOut,s2Step139HeadFvOut] 0 s2Step139HeadBank_outgoingOwned

private theorem s2Step139HeadG_distinct : (s2Step139HeadGRow.sign::s2Step139HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step139HeadG_owned : (s2Step139HeadGRow.sign::s2Step139HeadGRow.payload).toFinset⊆s2Step139HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step139HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885)) rfl
  decide +kernel

private theorem s2Step139HeadG_reserved : s2Step139HeadGBefore.reserve s2Step139HeadGFresh.toFinset=some s2Step139HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step139HeadGFresh,arenaWires]
  · norm_num [s2Step139HeadGBefore,s2Step139HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step139HeadGAfter,s2Step139HeadGBefore,s2Step139HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step139HeadG_checked : planRowResizeLog s2Step139HeadGBefore s2Step139HeadGRow 201 s2Step139HeadGFresh=
    some (s2Step139HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 837],769⟩,growRow 769 s2Step139HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step139HeadGBefore s2Step139HeadGAfter s2Step139HeadGRow 201 s2Step139HeadGFresh
    s2Step139HeadG_distinct s2Step139HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step139HeadG_reserved
  have rowEq : WindowRow.mk (s2Step139HeadGRow.payload++s2Step139HeadGFresh) s2Step139HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 837],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step139HeadGvBefore : Arena := s2Step139HeadFAfter

private theorem s2Step139HeadGv_Incoming : rowsOwned s2Step139HeadGvBefore [s2Step139HeadGvRow,s2Step139HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step139HeadGRow,s2Step139HeadFRow,s2Step139HeadGvRow,s2Step139HeadFvRow] 2 s2Step139HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step139HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885)) rfl
    decide +kernel

private theorem s2Step139HeadGv_Outgoing : rowsOwned s2Step139HeadFvAfter [s2Step139HeadGvOut,s2Step139HeadFvOut] :=
  hmrRows_owned_drop s2Step139HeadFvAfter [s2Step139HeadGOut,s2Step139HeadFOut,s2Step139HeadGvOut,s2Step139HeadFvOut] 2 s2Step139HeadBank_outgoingOwned

private theorem s2Step139HeadGv_distinct : (s2Step139HeadGvRow.sign::s2Step139HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step139HeadGv_owned : (s2Step139HeadGvRow.sign::s2Step139HeadGvRow.payload).toFinset⊆s2Step139HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step139HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885)) rfl
  decide +kernel

private theorem s2Step139HeadGv_reserved : s2Step139HeadGvBefore.reserve s2Step139HeadGvFresh.toFinset=some s2Step139HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step139HeadGvFresh,arenaWires]
  · norm_num [s2Step139HeadGvBefore,s2Step139HeadFAfter,s2Step139HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step139HeadGvAfter,s2Step139HeadGvBefore,s2Step139HeadFAfter,s2Step139HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step139HeadGv_checked : planRowResizeLog s2Step139HeadGvBefore s2Step139HeadGvRow 84 s2Step139HeadGvFresh=
    some (s2Step139HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814],771⟩,growRow 771 s2Step139HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step139HeadGvBefore s2Step139HeadGvAfter s2Step139HeadGvRow 84 s2Step139HeadGvFresh
    s2Step139HeadGv_distinct s2Step139HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step139HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step139HeadGvRow.payload++s2Step139HeadGvFresh) s2Step139HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step139HeadBank_rows : planWindowRowsLog s2Step139HeadGBefore [(s2Step139HeadGRow,201),(s2Step139HeadFRow,201),(s2Step139HeadGvRow,84),(s2Step139HeadFvRow,84)] [s2Step139HeadGFresh,s2Step139HeadFFresh,s2Step139HeadGvFresh,s2Step139HeadFvFresh]=
    some (s2Step139HeadFvAfter,[s2Step139HeadGOut,s2Step139HeadFOut,s2Step139HeadGvOut,s2Step139HeadFvOut],(growRow 769 s2Step139HeadGFresh ++ (growRow 768 s2Step139HeadFFresh ++ (growRow 771 s2Step139HeadGvFresh ++ (growRow 770 s2Step139HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step139HeadFvAfter [] []=some (s2Step139HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step139HeadFvBefore s2Step139HeadFvAfter s2Step139HeadFvAfter
    s2Step139HeadFvRow s2Step139HeadFvOut 84 s2Step139HeadFvFresh [] [] []
    (growRow 770 s2Step139HeadFvFresh) ([]) s2Step139HeadFv_Incoming s2Step139HeadFv_checked h4 s2Step139HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step139HeadGvBefore s2Step139HeadGvAfter s2Step139HeadFvAfter
    s2Step139HeadGvRow s2Step139HeadGvOut 84 s2Step139HeadGvFresh [(s2Step139HeadFvRow,84)] [s2Step139HeadFvFresh] [s2Step139HeadFvOut]
    (growRow 771 s2Step139HeadGvFresh) ((growRow 770 s2Step139HeadFvFresh ++ [])) s2Step139HeadGv_Incoming s2Step139HeadGv_checked h3 s2Step139HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step139HeadFBefore s2Step139HeadFAfter s2Step139HeadFvAfter
    s2Step139HeadFRow s2Step139HeadFOut 201 s2Step139HeadFFresh [(s2Step139HeadGvRow,84),(s2Step139HeadFvRow,84)] [s2Step139HeadGvFresh,s2Step139HeadFvFresh] [s2Step139HeadGvOut,s2Step139HeadFvOut]
    (growRow 768 s2Step139HeadFFresh) ((growRow 771 s2Step139HeadGvFresh ++ (growRow 770 s2Step139HeadFvFresh ++ []))) s2Step139HeadF_Incoming s2Step139HeadF_checked h2 s2Step139HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step139HeadGBefore s2Step139HeadGAfter s2Step139HeadFvAfter
    s2Step139HeadGRow s2Step139HeadGOut 201 s2Step139HeadGFresh [(s2Step139HeadFRow,201),(s2Step139HeadGvRow,84),(s2Step139HeadFvRow,84)] [s2Step139HeadFFresh,s2Step139HeadGvFresh,s2Step139HeadFvFresh] [s2Step139HeadFOut,s2Step139HeadGvOut,s2Step139HeadFvOut]
    (growRow 769 s2Step139HeadGFresh) ((growRow 768 s2Step139HeadFFresh ++ (growRow 771 s2Step139HeadGvFresh ++ (growRow 770 s2Step139HeadFvFresh ++ [])))) s2Step139HeadG_Incoming s2Step139HeadG_checked h1 s2Step139HeadG_Outgoing
  exact h0

private theorem s2Step139HeadBank_checked : compileHmrBankResizeLog .headroom s2Step139HeadGBefore ⟨s2Step139HeadFRow,s2Step139HeadGRow,s2Step139HeadFvRow,s2Step139HeadGvRow⟩ ⟨201,201,84,84⟩ [s2Step139HeadGFresh,s2Step139HeadFFresh,s2Step139HeadGvFresh,s2Step139HeadFvFresh]=
    some (s2Step139HeadFvAfter,⟨s2Step139HeadFOut,s2Step139HeadGOut,s2Step139HeadFvOut,s2Step139HeadGvOut⟩,(growRow 769 s2Step139HeadGFresh ++ (growRow 768 s2Step139HeadFFresh ++ (growRow 771 s2Step139HeadGvFresh ++ (growRow 770 s2Step139HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step139HeadBank_rows]
  rfl

private theorem s2Step139Front_checked : compileHmrSourceFrontLog s2Step139EntryFBefore s2Step139FrontBank 200 83 ⟨200,199,84,84⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step139FrontLog=some s2Step139FrontPlan := by
  have pairEq : s2Step139FrontPair=⟨s2Step139HeadFRow,s2Step139HeadGRow,s2Step139HeadFvRow,s2Step139HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step139FrontHead=⟨s2Step139ExitFRow,s2Step139ExitGRow,s2Step139ExitFvRow,s2Step139ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step139Add0A=s2Step139FrontHead.f.wires := by decide +kernel
  have gEq : s2Step139Add0B=s2Step139FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step139Add1A=s2Step139FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step139Add1B=s2Step139FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step139EntryFBefore s2Step139FrontBank 200 83 ⟨200,199,84,84⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step139FrontLog s2Step139FrontPlan
  · exact s2Step139Front_entry
  · exact s2Step139EntryBank_checked
  · exact s2Step139Front_sigma
  · rfl
  · exact s2Step139Front_branch
  · rfl
  · simpa only [s2Step139FrontPlan,pairEq] using s2Step139HeadBank_checked
  · simpa only [s2Step139FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step139F4_checked
  · exact s2Step139Counter_checked
  · rfl
  · simpa only [s2Step139FrontPlan,headEq] using s2Step139ExitBank_checked

private theorem s2Step139Complete_explicit_checked : compileHmrEarlyStepLog s2Step139EntryFBefore s2Step139FrontBank 200 83 ⟨200,199,84,84⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883] 40 s2Step139CompleteLog=some s2Step139CompletePlan := by
  let Q := s2Step139EarlyControlPlan
  have hq := s2Step139EarlyControl_plan_checked
  have fv1 : s2Step139CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step139CompleteOut.fv.payload[2]?.getD s2Step139CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step139CompleteOut.fv.payload[3]?.getD s2Step139CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step139CompleteOut.fv.payload[4]?.getD s2Step139CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step139EntryFBefore s2Step139EarlyControlArena s2Step139FrontBank 200 83 ⟨200,199,84,84⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883] 40 s2Step139CompleteLog s2Step139FrontPlan Q
    s2Step139Front_checked s2Step139Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step139Complete_owned s2Step139Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step139EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883] 777 778 s2Step139CompleteOut.fv.second (s2Step139CompleteOut.fv.payload[2]?.getD s2Step139CompleteOut.fv.sign) (s2Step139CompleteOut.fv.payload[3]?.getD s2Step139CompleteOut.fv.sign) (s2Step139CompleteOut.fv.payload[4]?.getD s2Step139CompleteOut.fv.sign) 841 40 s2Step139EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep139Arena : Arena := s2Step139EntryFBefore
def s2PrivateStep139Bank : WindowBank := s2Step139FrontBank
def s2PrivateStep139Spec : HmrSourceWalkStepLog := ⟨200,83,⟨200,199,84,84⟩,40,.early s2Step139CompleteLog⟩
def s2PrivateStep139Plan : HmrSourceStepPlan := .early s2Step139CompletePlan
theorem s2PrivateStep139_source : s2PrivateStep139Spec=s2ObservedLogs128[11] := rfl
theorem s2PrivateStep139_checked : compileHmrSourceStepLog s2PrivateStep139Arena s2PrivateStep139Bank
    s2PrivateStep139Spec.fgWidth s2PrivateStep139Spec.vWidth s2PrivateStep139Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883]
    6 498 139 s2PrivateStep139Spec.need none s2PrivateStep139Spec.log=some s2PrivateStep139Plan := by
  change compileHmrSourceStepLog s2Step139EntryFBefore s2Step139FrontBank 200 83 ⟨200,199,84,84⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883] 6 498 139 40 none (.early s2Step139CompleteLog)=some (.early s2Step139CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 139<498)]
  rw [s2Step139Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
