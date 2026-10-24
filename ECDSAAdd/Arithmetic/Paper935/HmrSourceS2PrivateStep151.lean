import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep149
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

private def s2Step151CompleteMoves : List (Wire × Wire) := [(786,705)]

private def s2Step151EarlyControlLog : HmrEarlyControlLog := ⟨[786, 778, 779, 849, 780],[790],[815],[867, 877, 879, 882, 885, 888],[]⟩

private def s2Step151FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [797], [], [778]],[[780], [849], [779], [796]],[[], [], [], []]⟩,[791],[839],[790],[815],[867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[790, 815, 867, 877]⟩

private def s2Step151CompleteLog : HmrEarlyStepLog := ⟨s2Step151FrontLog,s2Step151CompleteMoves,s2Step151EarlyControlLog⟩

private def s2Step151ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704],768⟩

private def s2Step151ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796],770⟩

private def s2Step151ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 797],769⟩

private def s2Step151ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845],771⟩

private def s2Step151FrontOut : WindowBank := ⟨s2Step151ExitFOut,s2Step151ExitGOut,s2Step151ExitFvOut,s2Step151ExitGvOut⟩

private def s2Step151CompleteOut : WindowBank := s2Step151FrontOut.repacked s2Step151CompleteMoves

private def s2Step151EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step151EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step151EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step151EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step151EarlyControlPositiveArena,[790],s2Step151EarlyControlEqualityArena,[815],⟨⟨791,false⟩,[⟨⟨790,false⟩,815⟩]⟩⟩

private def s2Step151EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step151EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step151EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step151EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<815) ∨ (816≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step151EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step151EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step151EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,786⟩,⟨⟨774,false⟩,778⟩,⟨⟨775,false⟩,779⟩,⟨⟨776,false⟩,849⟩,⟨⟨777,false⟩,780⟩]⟩

private def s2Step151EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step151EarlyControlZeroArena,s2Step151EarlyControlZeroPlan,s2Step151EarlyControlClassPlan,s2Step151EarlyControlFlagArena,s2Step151EarlyControlFittedArena,s2Step151EarlyControlHistoryArena,s2Step151EarlyControlSigmaArena,s2Step151EarlyControlOutputArena,s2Step151EarlyControlLog⟩

private def s2Step151CounterWork : List Wire := [790, 815, 867, 877]

private theorem s2Step151Counter_bounded : s2Step151CounterWork.toFinset⊆arenaWires := by norm_num [s2Step151CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step151HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step151CounterDuring : Arena := ⟨s2Step151HeadFvAfter.live∪s2Step151CounterWork.toFinset,Finset.union_subset s2Step151HeadFvAfter.bounded s2Step151Counter_bounded⟩

private def s2Step151EntryFFresh : List Wire := []

private def s2Step151EntryFvFresh : List Wire := []

private def s2Step151EntryGFresh : List Wire := [797]

private def s2Step151EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<815) ∨ (816≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step151EntryGvFresh : List Wire := [778]

private def s2Step151ExitFExtra : List Wire := [705, 849]

private def s2Step151ExitGExtra : List Wire := [780]

private def s2Step151ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<705) ∨ (706≤q ∧ q<778) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step151ExitGvExtra : List Wire := [778, 779]

private def s2Step151Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step151Add0Work : List Wire := [867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step151Add0_bounded : s2Step151Add0Work.toFinset⊆arenaWires := by
  have h : s2Step151Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step151Add0During : Arena := ⟨s2Step151Add0Arena.live∪s2Step151Add0Work.toFinset,Finset.union_subset s2Step151Add0Arena.bounded s2Step151Add0_bounded⟩

private def s2Step151Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step151Add1Work : List Wire := [867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step151Add1_bounded : s2Step151Add1Work.toFinset⊆arenaWires := by
  have h : s2Step151Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step151Add1During : Arena := ⟨s2Step151Add1Arena.live∪s2Step151Add1Work.toFinset,Finset.union_subset s2Step151Add1Arena.bounded s2Step151Add1_bounded⟩

private def s2Step151F4FlagArena : Arena := ⟨s2Step151HeadFvAfter.live∪{790},Finset.union_subset s2Step151HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step151F4Plan : HmrHybridF4Plan := ⟨s2Step151F4FlagArena,[790],s2Step151Add0Arena,[815],s2Step151Add0During,s2Step151Add0Work,s2Step151Add1During,s2Step151Add1Work⟩

private def s2Step151HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 849],768⟩

private def s2Step151HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796],770⟩

private def s2Step151HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 797, 780],769⟩

private def s2Step151HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 778, 779],771⟩

private def s2Step151FrontHead : WindowBank := ⟨s2Step151HeadFOut,s2Step151HeadGOut,s2Step151HeadFvOut,s2Step151HeadGvOut⟩

private def s2Step151EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705],768⟩

private def s2Step151EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783],770⟩

private def s2Step151EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 797],769⟩

private def s2Step151EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 778],771⟩

private def s2Step151FrontPair : WindowBank := ⟨s2Step151EntryFOut,s2Step151EntryGOut,s2Step151EntryFvOut,s2Step151EntryGvOut⟩

private def s2Step151FrontSigmaArena : Arena := ⟨s2Step151EntryGvAfter.live∪{791},Finset.union_subset s2Step151EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step151HeadFFresh : List Wire := [849]

private def s2Step151HeadFvFresh : List Wire := [796]

private def s2Step151HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step151HeadGFresh : List Wire := [780]

private def s2Step151HeadGvFresh : List Wire := [779]

private def s2Step151FrontPlan : HmrSourceFront := ⟨s2Step151EntryGvAfter,s2Step151FrontPair,(growRow 768 s2Step151EntryFFresh ++ (growRow 769 s2Step151EntryGFresh ++ (growRow 770 s2Step151EntryFvFresh ++ (growRow 771 s2Step151EntryGvFresh ++ [])))),s2Step151FrontSigmaArena,[791],s2Step151HeadGBefore,[839],
  s2Step151HeadFvAfter,s2Step151FrontHead,(growRow 769 s2Step151HeadGFresh ++ (growRow 768 s2Step151HeadFFresh ++ (growRow 771 s2Step151HeadGvFresh ++ (growRow 770 s2Step151HeadFvFresh ++ [])))),s2Step151F4Plan,s2Step151CounterDuring,s2Step151CounterWork,s2Step151ExitGvAfter,s2Step151FrontOut,(shrinkRow 769 s2Step151ExitGExtra ++ (shrinkRow 768 s2Step151ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step151ExitGvExtra ++ []))))⟩

private def s2Step151CompletePlan : HmrEarlyStepPlan := ⟨s2Step151FrontPlan,s2Step151EarlyControlArena,s2Step151EarlyControlPlan,s2Step151CompleteMoves⟩

private theorem s2Step151Complete_apart : List.Disjoint (s2Step151CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [791, 839, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] := by
  have nd : ((s2Step151CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[791, 839, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step151Complete_owned : (s2Step151CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step151EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step151EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private def s2Step151CompleteMoveArena : Arena := ⟨s2Step151ExitGvAfter.live∪{705},Finset.union_subset s2Step151ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step151Complete_repack : s2Step151ExitGvAfter.checkRepack s2Step151CompleteMoves=some s2Step151EarlyControlArena := by
  have owned : 786∈s2Step151ExitGvAfter.live := by norm_num [s2Step151ExitGvAfter,arenaWires]
  have reserve : s2Step151ExitGvAfter.reserve {705}=some s2Step151CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step151ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step151CompleteMoveArena.retireSet {786}=s2Step151EarlyControlArena := by
    unfold Arena.retireSet s2Step151EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step151CompleteMoveArena,s2Step151ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step151CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step151CompleteMoveArena.retireSet {786}).checkRepack []=some s2Step151EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step151EarlyControl_branchOwned : ([839] : List Wire).toFinset⊆s2Step151EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step151EarlyControlSigmaArena (fun q => (0≤q ∧ q<778) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step151EarlyControl_branch : compileHmrBranchRetirement s2Step151EarlyControlSigmaArena 839=some s2Step151EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step151EarlyControl_branchOwned
  · ext q
    simp [s2Step151EarlyControlOutputArena,s2Step151EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step151EarlyControl_classEqualityBorrow : s2Step151EarlyControlPositiveArena.checkBorrow (([791, 790] : List Wire).length-1) s2Step151EarlyControlLog.classWork=some s2Step151EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step151EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step151EarlyControlPositiveArena (fun q => (0≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step151EarlyControlEqualityArena,s2Step151EarlyControlPositiveArena,s2Step151EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step151EarlyControl_classEqualityOwned : ([791, 790] : List Wire).toFinset⊆s2Step151EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step151EarlyControlPositiveArena (fun q => (0≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step151EarlyControl_classEquality : compileHmrEqualityLog s2Step151EarlyControlPositiveArena [791, 790] 0 s2Step151EarlyControlLog.classWork=some (s2Step151EarlyControlEqualityArena,s2Step151EarlyControlLog.classWork,s2Step151EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step151EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step151EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step151EarlyControl_classOwned : ([777, 780, 791] : List Wire).toFinset⊆s2Step151EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step151EarlyControlZeroArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step151EarlyControl_positiveBorrow : s2Step151EarlyControlZeroArena.checkBorrow (1) s2Step151EarlyControlLog.positiveWork=some s2Step151EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step151EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step151EarlyControlZeroArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step151EarlyControlPositiveArena,s2Step151EarlyControlZeroArena,s2Step151EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step151EarlyControl_class : compileHmrSourceClassLog s2Step151EarlyControlZeroArena false 777 s2Step151EarlyControlZeroPlan.top 0 791 s2Step151EarlyControlLog.positiveWork s2Step151EarlyControlLog.classWork=some s2Step151EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step151EarlyControlClassPlan s2Step151EarlyControlZeroArena false 777 s2Step151EarlyControlZeroPlan.top 0 791
  constructor
  · decide +kernel
  · exact s2Step151EarlyControl_classOwned
  · exact s2Step151EarlyControl_positiveBorrow
  · exact s2Step151EarlyControl_classEquality

private theorem s2Step151EarlyControl_entryRecordOwned : ([839, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step151EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step151EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step151EarlyControl_entrySigmaOwned : ([791, 254] : List Wire).toFinset⊆s2Step151EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step151EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step151EarlyControl_fitBorrow : s2Step151EarlyControlFlagArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step151EarlyControlLog.recordFresh=some s2Step151EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step151EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step151EarlyControlFlagArena (fun q => (0≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step151EarlyControlFittedArena,s2Step151EarlyControlFlagArena,s2Step151EarlyControlLog,arenaWires]

private theorem s2Step151EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step151EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step151EarlyControlFlagArena (fun q => (0≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step151EarlyControl_fit : compileHmrRecordGrowLog s2Step151EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step151EarlyControlLog.recordFresh=some s2Step151EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step151EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step151EarlyControl_fitBorrow

private theorem s2Step151EarlyControl_flagsBorrow : s2Step151EarlyControlEqualityArena.checkBorrow (6) s2Step151EarlyControlLog.flagWork=some s2Step151EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step151EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step151EarlyControlEqualityArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step151EarlyControlFlagArena,s2Step151EarlyControlEqualityArena,s2Step151EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step151EarlyControl_flagsOwned : ([815, 253, 252, 251] : List Wire).toFinset⊆s2Step151EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step151EarlyControlEqualityArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step151EarlyControl_flags : compileHmrFlagsLog s2Step151EarlyControlClassPlan.equalityArena s2Step151EarlyControlClassPlan.equality.top 253 252 251 s2Step151EarlyControlLog.flagWork=some s2Step151EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step151EarlyControl_flagsOwned⟩
  · exact s2Step151EarlyControl_flagsBorrow

private theorem s2Step151EarlyControl_historyBorrow : s2Step151EarlyControlArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step151EarlyControlLog.recordFresh=some s2Step151EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step151EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step151EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step151EarlyControlHistoryArena,s2Step151EarlyControlArena,s2Step151EarlyControlLog,arenaWires]

private theorem s2Step151EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step151EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step151EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step151EarlyControl_history : compileHmrRecordGrowLog s2Step151EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step151EarlyControlLog.recordFresh=some s2Step151EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step151EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step151EarlyControl_historyBorrow

private theorem s2Step151EarlyControl_sigmaOwned : ([254, 791] : List Wire).toFinset⊆s2Step151EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step151EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step151EarlyControl_sigmaReleaseOwned : ([791] : List Wire).toFinset⊆s2Step151EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step151EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step151EarlyControl_sigmaRelease : s2Step151EarlyControlHistoryArena.release {791} (fun _ => false)=some s2Step151EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step151EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step151EarlyControlSigmaArena,s2Step151EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step151EarlyControl_sigma : compileHmrSigmaDropLog s2Step151EarlyControlHistoryArena false 0 0 254 791 []=some s2Step151EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step151EarlyControl_sigmaOwned⟩
  · exact s2Step151EarlyControl_sigmaRelease

private theorem s2Step151EarlyControl_zeroBorrow : s2Step151EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step151EarlyControlLog.zeroWork=some s2Step151EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step151EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step151EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step151EarlyControlZeroArena,s2Step151EarlyControlArena,s2Step151EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step151EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step151EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step151EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step151EarlyControl_zero : compileHmrEqualityLog s2Step151EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step151EarlyControlLog.zeroWork=some (s2Step151EarlyControlZeroArena,s2Step151EarlyControlLog.zeroWork,s2Step151EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step151EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step151EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step151EarlyControl_logged : s2Step151EarlyControlPlan.Logged s2Step151EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 791 254 253 252 251 839 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step151EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step151EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step151EarlyControl_zero
  · exact s2Step151EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step151EarlyControl_flags
  · exact s2Step151EarlyControl_fit
  · exact s2Step151EarlyControl_history
  · exact s2Step151EarlyControl_sigma
  · exact s2Step151EarlyControl_branch

private theorem s2Step151EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step151EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 791 254 253 252 251 839 42 s2Step151EarlyControlLog=some s2Step151EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step151EarlyControlPlan s2Step151EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 791 254 253 252 251 839 42 s2Step151EarlyControl_logged

private def s2Step151EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step151EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705],768⟩

private def s2Step151EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783],770⟩

private def s2Step151EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192],769⟩

private def s2Step151EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845],771⟩

private def s2Step151FrontBank : WindowBank := ⟨s2Step151EntryFRow,s2Step151EntryGRow,s2Step151EntryFvRow,s2Step151EntryGvRow⟩

private def s2Step151Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 849, 768]

private def s2Step151Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 797, 780, 769]

private def s2Step151Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 770]

private def s2Step151Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 778, 779, 771]

private theorem s2Step151Counter_apart : Disjoint s2Step151HeadFvAfter.live s2Step151CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step151HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step151Counter_borrowed : s2Step151HeadFvAfter.checkBorrow 4 s2Step151CounterWork=some s2Step151CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step151HeadFvAfter s2Step151CounterDuring s2Step151CounterWork.toFinset s2Step151Counter_bounded s2Step151Counter_apart rfl

private theorem s2Step151Counter_owned : (791::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step151HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step151HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step151Counter_checked : compileHmrCounterStepLog s2Step151HeadFvAfter true 791 [772, 773, 774, 775, 776, 777] s2Step151CounterWork=some s2Step151CounterDuring := by
  have owned : ∀q∈791::[772, 773, 774, 775, 776, 777],q∈s2Step151HeadFvAfter.live := fun q hq => s2Step151Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step151Counter_borrowed

private def s2Step151EntryFAfter : Arena := s2Step151EntryFBefore

private theorem s2Step151EntryBank_incomingDistinct : ([s2Step151EntryFRow,s2Step151EntryGRow,s2Step151EntryFvRow,s2Step151EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step151EntryF_Incoming : rowsOwned s2Step151EntryFBefore [s2Step151EntryFRow,s2Step151EntryGRow,s2Step151EntryFvRow,s2Step151EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step151EntryFRow,s2Step151EntryGRow,s2Step151EntryFvRow,s2Step151EntryGvRow] 0 s2Step151EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step151EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step151EntryBank_outgoingOwned : rowsOwned s2Step151EntryGvAfter [s2Step151EntryFOut,s2Step151EntryGOut,s2Step151EntryFvOut,s2Step151EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step151EntryGvAfter (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<815) ∨ (816≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step151EntryF_Outgoing : rowsOwned s2Step151EntryGvAfter [s2Step151EntryFOut,s2Step151EntryGOut,s2Step151EntryFvOut,s2Step151EntryGvOut] :=
  hmrRows_owned_drop s2Step151EntryGvAfter [s2Step151EntryFOut,s2Step151EntryGOut,s2Step151EntryFvOut,s2Step151EntryGvOut] 0 s2Step151EntryBank_outgoingOwned

private theorem s2Step151EntryF_distinct : (s2Step151EntryFRow.sign::s2Step151EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step151EntryF_owned : (s2Step151EntryFRow.sign::s2Step151EntryFRow.payload).toFinset⊆s2Step151EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step151EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step151EntryF_reserved : s2Step151EntryFBefore.reserve s2Step151EntryFFresh.toFinset=some s2Step151EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step151EntryFFresh,arenaWires]
  · norm_num [s2Step151EntryFBefore,s2Step151EntryFFresh,arenaWires]
  · simp only [s2Step151EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step151EntryF_checked : planRowResizeLog s2Step151EntryFBefore s2Step151EntryFRow 194 s2Step151EntryFFresh=
    some (s2Step151EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705],768⟩,growRow 768 s2Step151EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step151EntryFBefore s2Step151EntryFAfter s2Step151EntryFRow 194 s2Step151EntryFFresh
    s2Step151EntryF_distinct s2Step151EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step151EntryF_reserved
  have rowEq : WindowRow.mk (s2Step151EntryFRow.payload++s2Step151EntryFFresh) s2Step151EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step151EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<815) ∨ (816≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step151EntryFvAfter : Arena := s2Step151EntryGAfter

private def s2Step151EntryFvBefore : Arena := s2Step151EntryGAfter

private theorem s2Step151EntryFv_Incoming : rowsOwned s2Step151EntryFvBefore [s2Step151EntryFvRow,s2Step151EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step151EntryFRow,s2Step151EntryGRow,s2Step151EntryFvRow,s2Step151EntryGvRow] 2 s2Step151EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step151EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<815) ∨ (816≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step151EntryFv_Outgoing : rowsOwned s2Step151EntryGvAfter [s2Step151EntryFvOut,s2Step151EntryGvOut] :=
  hmrRows_owned_drop s2Step151EntryGvAfter [s2Step151EntryFOut,s2Step151EntryGOut,s2Step151EntryFvOut,s2Step151EntryGvOut] 2 s2Step151EntryBank_outgoingOwned

private theorem s2Step151EntryFv_distinct : (s2Step151EntryFvRow.sign::s2Step151EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step151EntryFv_owned : (s2Step151EntryFvRow.sign::s2Step151EntryFvRow.payload).toFinset⊆s2Step151EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step151EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<815) ∨ (816≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step151EntryFv_reserved : s2Step151EntryFvBefore.reserve s2Step151EntryFvFresh.toFinset=some s2Step151EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step151EntryFvFresh,arenaWires]
  · norm_num [s2Step151EntryFvBefore,s2Step151EntryGAfter,s2Step151EntryFvFresh,arenaWires]
  · simp only [s2Step151EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step151EntryFv_checked : planRowResizeLog s2Step151EntryFvBefore s2Step151EntryFvRow 90 s2Step151EntryFvFresh=
    some (s2Step151EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783],770⟩,growRow 770 s2Step151EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step151EntryFvBefore s2Step151EntryFvAfter s2Step151EntryFvRow 90 s2Step151EntryFvFresh
    s2Step151EntryFv_distinct s2Step151EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step151EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step151EntryFvRow.payload++s2Step151EntryFvFresh) s2Step151EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step151EntryGBefore : Arena := s2Step151EntryFBefore

private theorem s2Step151EntryG_Incoming : rowsOwned s2Step151EntryGBefore [s2Step151EntryGRow,s2Step151EntryFvRow,s2Step151EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step151EntryFRow,s2Step151EntryGRow,s2Step151EntryFvRow,s2Step151EntryGvRow] 1 s2Step151EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step151EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step151EntryG_Outgoing : rowsOwned s2Step151EntryGvAfter [s2Step151EntryGOut,s2Step151EntryFvOut,s2Step151EntryGvOut] :=
  hmrRows_owned_drop s2Step151EntryGvAfter [s2Step151EntryFOut,s2Step151EntryGOut,s2Step151EntryFvOut,s2Step151EntryGvOut] 1 s2Step151EntryBank_outgoingOwned

private theorem s2Step151EntryG_distinct : (s2Step151EntryGRow.sign::s2Step151EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step151EntryG_owned : (s2Step151EntryGRow.sign::s2Step151EntryGRow.payload).toFinset⊆s2Step151EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step151EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step151EntryG_reserved : s2Step151EntryGBefore.reserve s2Step151EntryGFresh.toFinset=some s2Step151EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step151EntryGFresh,arenaWires]
  · norm_num [s2Step151EntryGBefore,s2Step151EntryFBefore,s2Step151EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step151EntryGAfter,s2Step151EntryGBefore,s2Step151EntryFBefore,s2Step151EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step151EntryG_checked : planRowResizeLog s2Step151EntryGBefore s2Step151EntryGRow 194 s2Step151EntryGFresh=
    some (s2Step151EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 797],769⟩,growRow 769 s2Step151EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step151EntryGBefore s2Step151EntryGAfter s2Step151EntryGRow 194 s2Step151EntryGFresh
    s2Step151EntryG_distinct s2Step151EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step151EntryG_reserved
  have rowEq : WindowRow.mk (s2Step151EntryGRow.payload++s2Step151EntryGFresh) s2Step151EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 797],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step151EntryGvBefore : Arena := s2Step151EntryGAfter

private theorem s2Step151EntryGv_Incoming : rowsOwned s2Step151EntryGvBefore [s2Step151EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step151EntryFRow,s2Step151EntryGRow,s2Step151EntryFvRow,s2Step151EntryGvRow] 3 s2Step151EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step151EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<815) ∨ (816≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step151EntryGv_Outgoing : rowsOwned s2Step151EntryGvAfter [s2Step151EntryGvOut] :=
  hmrRows_owned_drop s2Step151EntryGvAfter [s2Step151EntryFOut,s2Step151EntryGOut,s2Step151EntryFvOut,s2Step151EntryGvOut] 3 s2Step151EntryBank_outgoingOwned

private theorem s2Step151EntryGv_distinct : (s2Step151EntryGvRow.sign::s2Step151EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step151EntryGv_owned : (s2Step151EntryGvRow.sign::s2Step151EntryGvRow.payload).toFinset⊆s2Step151EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step151EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<815) ∨ (816≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step151EntryGv_reserved : s2Step151EntryGvBefore.reserve s2Step151EntryGvFresh.toFinset=some s2Step151EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step151EntryGvFresh,arenaWires]
  · norm_num [s2Step151EntryGvBefore,s2Step151EntryGAfter,s2Step151EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step151EntryGvAfter,s2Step151EntryGvBefore,s2Step151EntryGAfter,s2Step151EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step151EntryGv_checked : planRowResizeLog s2Step151EntryGvBefore s2Step151EntryGvRow 90 s2Step151EntryGvFresh=
    some (s2Step151EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 778],771⟩,growRow 771 s2Step151EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step151EntryGvBefore s2Step151EntryGvAfter s2Step151EntryGvRow 90 s2Step151EntryGvFresh
    s2Step151EntryGv_distinct s2Step151EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step151EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step151EntryGvRow.payload++s2Step151EntryGvFresh) s2Step151EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 778],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step151EntryBank_rows : planWindowRowsLog s2Step151EntryFBefore [(s2Step151EntryFRow,194),(s2Step151EntryGRow,194),(s2Step151EntryFvRow,90),(s2Step151EntryGvRow,90)] [s2Step151EntryFFresh,s2Step151EntryGFresh,s2Step151EntryFvFresh,s2Step151EntryGvFresh]=
    some (s2Step151EntryGvAfter,[s2Step151EntryFOut,s2Step151EntryGOut,s2Step151EntryFvOut,s2Step151EntryGvOut],(growRow 768 s2Step151EntryFFresh ++ (growRow 769 s2Step151EntryGFresh ++ (growRow 770 s2Step151EntryFvFresh ++ (growRow 771 s2Step151EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step151EntryGvAfter [] []=some (s2Step151EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step151EntryGvBefore s2Step151EntryGvAfter s2Step151EntryGvAfter
    s2Step151EntryGvRow s2Step151EntryGvOut 90 s2Step151EntryGvFresh [] [] []
    (growRow 771 s2Step151EntryGvFresh) ([]) s2Step151EntryGv_Incoming s2Step151EntryGv_checked h4 s2Step151EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step151EntryFvBefore s2Step151EntryFvAfter s2Step151EntryGvAfter
    s2Step151EntryFvRow s2Step151EntryFvOut 90 s2Step151EntryFvFresh [(s2Step151EntryGvRow,90)] [s2Step151EntryGvFresh] [s2Step151EntryGvOut]
    (growRow 770 s2Step151EntryFvFresh) ((growRow 771 s2Step151EntryGvFresh ++ [])) s2Step151EntryFv_Incoming s2Step151EntryFv_checked h3 s2Step151EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step151EntryGBefore s2Step151EntryGAfter s2Step151EntryGvAfter
    s2Step151EntryGRow s2Step151EntryGOut 194 s2Step151EntryGFresh [(s2Step151EntryFvRow,90),(s2Step151EntryGvRow,90)] [s2Step151EntryFvFresh,s2Step151EntryGvFresh] [s2Step151EntryFvOut,s2Step151EntryGvOut]
    (growRow 769 s2Step151EntryGFresh) ((growRow 770 s2Step151EntryFvFresh ++ (growRow 771 s2Step151EntryGvFresh ++ []))) s2Step151EntryG_Incoming s2Step151EntryG_checked h2 s2Step151EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step151EntryFBefore s2Step151EntryFAfter s2Step151EntryGvAfter
    s2Step151EntryFRow s2Step151EntryFOut 194 s2Step151EntryFFresh [(s2Step151EntryGRow,194),(s2Step151EntryFvRow,90),(s2Step151EntryGvRow,90)] [s2Step151EntryGFresh,s2Step151EntryFvFresh,s2Step151EntryGvFresh] [s2Step151EntryGOut,s2Step151EntryFvOut,s2Step151EntryGvOut]
    (growRow 768 s2Step151EntryFFresh) ((growRow 769 s2Step151EntryGFresh ++ (growRow 770 s2Step151EntryFvFresh ++ (growRow 771 s2Step151EntryGvFresh ++ [])))) s2Step151EntryF_Incoming s2Step151EntryF_checked h1 s2Step151EntryF_Outgoing
  exact h0

private theorem s2Step151EntryBank_checked : compileHmrBankResizeLog .entry s2Step151EntryFBefore ⟨s2Step151EntryFRow,s2Step151EntryGRow,s2Step151EntryFvRow,s2Step151EntryGvRow⟩ ⟨194,194,90,90⟩ [s2Step151EntryFFresh,s2Step151EntryGFresh,s2Step151EntryFvFresh,s2Step151EntryGvFresh]=
    some (s2Step151EntryGvAfter,⟨s2Step151EntryFOut,s2Step151EntryGOut,s2Step151EntryFvOut,s2Step151EntryGvOut⟩,(growRow 768 s2Step151EntryFFresh ++ (growRow 769 s2Step151EntryGFresh ++ (growRow 770 s2Step151EntryFvFresh ++ (growRow 771 s2Step151EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step151EntryBank_rows]
  rfl

private def s2Step151ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<705) ∨ (706≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step151ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step151ExitFBefore : Arena := s2Step151ExitGAfter

private def s2Step151ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 849],768⟩

private def s2Step151ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796],770⟩

private def s2Step151ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 797, 780],769⟩

private def s2Step151ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 778, 779],771⟩

private theorem s2Step151ExitBank_incomingDistinct : ([s2Step151ExitGRow,s2Step151ExitFRow,s2Step151ExitFvRow,s2Step151ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step151ExitF_Incoming : rowsOwned s2Step151ExitFBefore [s2Step151ExitFRow,s2Step151ExitFvRow,s2Step151ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step151ExitGRow,s2Step151ExitFRow,s2Step151ExitFvRow,s2Step151ExitGvRow] 1 s2Step151ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step151ExitFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step151ExitBank_outgoingOwned : rowsOwned s2Step151ExitGvAfter [s2Step151ExitGOut,s2Step151ExitFOut,s2Step151ExitFvOut,s2Step151ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step151ExitGvAfter (fun q => (0≤q ∧ q<705) ∨ (706≤q ∧ q<778) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step151ExitF_Outgoing : rowsOwned s2Step151ExitGvAfter [s2Step151ExitFOut,s2Step151ExitFvOut,s2Step151ExitGvOut] :=
  hmrRows_owned_drop s2Step151ExitGvAfter [s2Step151ExitGOut,s2Step151ExitFOut,s2Step151ExitFvOut,s2Step151ExitGvOut] 1 s2Step151ExitBank_outgoingOwned

private theorem s2Step151ExitF_distinct : (s2Step151ExitFRow.sign::s2Step151ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step151ExitF_owned : (s2Step151ExitFRow.sign::s2Step151ExitFRow.payload).toFinset⊆s2Step151ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step151ExitFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step151ExitF_retired : s2Step151ExitFBefore.retireSet s2Step151ExitFExtra.toFinset=s2Step151ExitFAfter := by
  unfold Arena.retireSet s2Step151ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step151ExitFBefore,s2Step151ExitGAfter,s2Step151ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step151ExitF_checked : planRowResizeLog s2Step151ExitFBefore s2Step151ExitFRow 193 []=
    some (s2Step151ExitFAfter,s2Step151ExitFOut,shrinkRow 768 s2Step151ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step151ExitFBefore s2Step151ExitFRow 193 s2Step151ExitF_distinct s2Step151ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step151ExitFRow.payload.take 193) s2Step151ExitFRow.sign=s2Step151ExitFOut := by decide +kernel
  have hi : s2Step151ExitFRow.payload.drop 193=s2Step151ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step151ExitF_retired] at result
  exact result

private def s2Step151ExitFvAfter : Arena := s2Step151ExitFAfter

private def s2Step151ExitFvBefore : Arena := s2Step151ExitFAfter

private theorem s2Step151ExitFv_Incoming : rowsOwned s2Step151ExitFvBefore [s2Step151ExitFvRow,s2Step151ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step151ExitGRow,s2Step151ExitFRow,s2Step151ExitFvRow,s2Step151ExitGvRow] 2 s2Step151ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step151ExitFvBefore (fun q => (0≤q ∧ q<705) ∨ (706≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step151ExitFv_Outgoing : rowsOwned s2Step151ExitGvAfter [s2Step151ExitFvOut,s2Step151ExitGvOut] :=
  hmrRows_owned_drop s2Step151ExitGvAfter [s2Step151ExitGOut,s2Step151ExitFOut,s2Step151ExitFvOut,s2Step151ExitGvOut] 2 s2Step151ExitBank_outgoingOwned

private theorem s2Step151ExitFv_distinct : (s2Step151ExitFvRow.sign::s2Step151ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step151ExitFv_owned : (s2Step151ExitFvRow.sign::s2Step151ExitFvRow.payload).toFinset⊆s2Step151ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step151ExitFvBefore (fun q => (0≤q ∧ q<705) ∨ (706≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step151ExitFv_reserved : s2Step151ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step151ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step151ExitFv_checked : planRowResizeLog s2Step151ExitFvBefore s2Step151ExitFvRow 91 []=
    some (s2Step151ExitFvAfter,s2Step151ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step151ExitFvBefore s2Step151ExitFvAfter s2Step151ExitFvRow 91 []
    s2Step151ExitFv_distinct s2Step151ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step151ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step151ExitFvRow.payload++[]) s2Step151ExitFvRow.sign=s2Step151ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step151ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private theorem s2Step151ExitG_Incoming : rowsOwned s2Step151ExitGBefore [s2Step151ExitGRow,s2Step151ExitFRow,s2Step151ExitFvRow,s2Step151ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step151ExitGRow,s2Step151ExitFRow,s2Step151ExitFvRow,s2Step151ExitGvRow] 0 s2Step151ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step151ExitGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step151ExitG_Outgoing : rowsOwned s2Step151ExitGvAfter [s2Step151ExitGOut,s2Step151ExitFOut,s2Step151ExitFvOut,s2Step151ExitGvOut] :=
  hmrRows_owned_drop s2Step151ExitGvAfter [s2Step151ExitGOut,s2Step151ExitFOut,s2Step151ExitFvOut,s2Step151ExitGvOut] 0 s2Step151ExitBank_outgoingOwned

private theorem s2Step151ExitG_distinct : (s2Step151ExitGRow.sign::s2Step151ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step151ExitG_owned : (s2Step151ExitGRow.sign::s2Step151ExitGRow.payload).toFinset⊆s2Step151ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step151ExitGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step151ExitG_retired : s2Step151ExitGBefore.retireSet s2Step151ExitGExtra.toFinset=s2Step151ExitGAfter := by
  unfold Arena.retireSet s2Step151ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step151ExitGBefore,s2Step151ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step151ExitG_checked : planRowResizeLog s2Step151ExitGBefore s2Step151ExitGRow 194 []=
    some (s2Step151ExitGAfter,s2Step151ExitGOut,shrinkRow 769 s2Step151ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step151ExitGBefore s2Step151ExitGRow 194 s2Step151ExitG_distinct s2Step151ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step151ExitGRow.payload.take 194) s2Step151ExitGRow.sign=s2Step151ExitGOut := by decide +kernel
  have hi : s2Step151ExitGRow.payload.drop 194=s2Step151ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step151ExitG_retired] at result
  exact result

private def s2Step151ExitGvBefore : Arena := s2Step151ExitFAfter

private theorem s2Step151ExitGv_Incoming : rowsOwned s2Step151ExitGvBefore [s2Step151ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step151ExitGRow,s2Step151ExitFRow,s2Step151ExitFvRow,s2Step151ExitGvRow] 3 s2Step151ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step151ExitGvBefore (fun q => (0≤q ∧ q<705) ∨ (706≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step151ExitGv_Outgoing : rowsOwned s2Step151ExitGvAfter [s2Step151ExitGvOut] :=
  hmrRows_owned_drop s2Step151ExitGvAfter [s2Step151ExitGOut,s2Step151ExitFOut,s2Step151ExitFvOut,s2Step151ExitGvOut] 3 s2Step151ExitBank_outgoingOwned

private theorem s2Step151ExitGv_distinct : (s2Step151ExitGvRow.sign::s2Step151ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step151ExitGv_owned : (s2Step151ExitGvRow.sign::s2Step151ExitGvRow.payload).toFinset⊆s2Step151ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step151ExitGvBefore (fun q => (0≤q ∧ q<705) ∨ (706≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step151ExitGv_retired : s2Step151ExitGvBefore.retireSet s2Step151ExitGvExtra.toFinset=s2Step151ExitGvAfter := by
  unfold Arena.retireSet s2Step151ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step151ExitGvBefore,s2Step151ExitFAfter,s2Step151ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step151ExitGv_checked : planRowResizeLog s2Step151ExitGvBefore s2Step151ExitGvRow 89 []=
    some (s2Step151ExitGvAfter,s2Step151ExitGvOut,shrinkRow 771 s2Step151ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step151ExitGvBefore s2Step151ExitGvRow 89 s2Step151ExitGv_distinct s2Step151ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step151ExitGvRow.payload.take 89) s2Step151ExitGvRow.sign=s2Step151ExitGvOut := by decide +kernel
  have hi : s2Step151ExitGvRow.payload.drop 89=s2Step151ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step151ExitGv_retired] at result
  exact result

private theorem s2Step151ExitBank_rows : planWindowRowsLog s2Step151ExitGBefore [(s2Step151ExitGRow,194),(s2Step151ExitFRow,193),(s2Step151ExitFvRow,91),(s2Step151ExitGvRow,89)] [[],[],[],[]]=
    some (s2Step151ExitGvAfter,[s2Step151ExitGOut,s2Step151ExitFOut,s2Step151ExitFvOut,s2Step151ExitGvOut],(shrinkRow 769 s2Step151ExitGExtra ++ (shrinkRow 768 s2Step151ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step151ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step151ExitGvAfter [] []=some (s2Step151ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step151ExitGvBefore s2Step151ExitGvAfter s2Step151ExitGvAfter
    s2Step151ExitGvRow s2Step151ExitGvOut 89 [] [] [] []
    (shrinkRow 771 s2Step151ExitGvExtra) ([]) s2Step151ExitGv_Incoming s2Step151ExitGv_checked h4 s2Step151ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step151ExitFvBefore s2Step151ExitFvAfter s2Step151ExitGvAfter
    s2Step151ExitFvRow s2Step151ExitFvOut 91 [] [(s2Step151ExitGvRow,89)] [[]] [s2Step151ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step151ExitGvExtra ++ [])) s2Step151ExitFv_Incoming s2Step151ExitFv_checked h3 s2Step151ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step151ExitFBefore s2Step151ExitFAfter s2Step151ExitGvAfter
    s2Step151ExitFRow s2Step151ExitFOut 193 [] [(s2Step151ExitFvRow,91),(s2Step151ExitGvRow,89)] [[],[]] [s2Step151ExitFvOut,s2Step151ExitGvOut]
    (shrinkRow 768 s2Step151ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step151ExitGvExtra ++ []))) s2Step151ExitF_Incoming s2Step151ExitF_checked h2 s2Step151ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step151ExitGBefore s2Step151ExitGAfter s2Step151ExitGvAfter
    s2Step151ExitGRow s2Step151ExitGOut 194 [] [(s2Step151ExitFRow,193),(s2Step151ExitFvRow,91),(s2Step151ExitGvRow,89)] [[],[],[]] [s2Step151ExitFOut,s2Step151ExitFvOut,s2Step151ExitGvOut]
    (shrinkRow 769 s2Step151ExitGExtra) ((shrinkRow 768 s2Step151ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step151ExitGvExtra ++ [])))) s2Step151ExitG_Incoming s2Step151ExitG_checked h1 s2Step151ExitG_Outgoing
  exact h0

private theorem s2Step151ExitBank_checked : compileHmrBankResizeLog .exit s2Step151ExitGBefore ⟨s2Step151ExitFRow,s2Step151ExitGRow,s2Step151ExitFvRow,s2Step151ExitGvRow⟩ ⟨193,194,91,89⟩ [[],[],[],[]]=
    some (s2Step151ExitGvAfter,⟨s2Step151ExitFOut,s2Step151ExitGOut,s2Step151ExitFvOut,s2Step151ExitGvOut⟩,(shrinkRow 769 s2Step151ExitGExtra ++ (shrinkRow 768 s2Step151ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step151ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step151ExitBank_rows]
  rfl

private theorem s2Step151Add0_apart : Disjoint s2Step151Add0Arena.live s2Step151Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step151Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step151Add0_card : s2Step151Add0Arena.live.card=884 := by
  decide +kernel

private theorem s2Step151Add0_borrowed : s2Step151Add0Arena.checkBorrow (hmrHybridCount s2Step151Add0Arena s2Step151Add0B.length) s2Step151Add0Work=some s2Step151Add0During := by
  have len : s2Step151Add0Work.length=hmrHybridCount s2Step151Add0Arena s2Step151Add0B.length := by
    rw [hmrHybridCount,s2Step151Add0_card]
    decide +kernel
  have nd : s2Step151Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step151Add0Arena s2Step151Add0During s2Step151Add0Work.toFinset s2Step151Add0_bounded s2Step151Add0_apart rfl

private theorem s2Step151Add0_distinct : (790::839::815::(s2Step151Add0A++s2Step151Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step151Add0_owned : (790::839::815::(s2Step151Add0A++s2Step151Add0B)).toFinset⊆s2Step151Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step151Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step151Add0_checked : compileHmrHybridCinLog s2Step151Add0Arena 839 790 815 s2Step151Add0A s2Step151Add0B s2Step151Add0Work=some s2Step151Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step151Add0Arena s2Step151Add0During 839 790 815 s2Step151Add0A s2Step151Add0B s2Step151Add0Work
    (by decide +kernel) (by decide +kernel) s2Step151Add0_distinct
    (fun q hq => s2Step151Add0_owned (List.mem_toFinset.mpr hq)) s2Step151Add0_borrowed

private theorem s2Step151Add1_apart : Disjoint s2Step151Add1Arena.live s2Step151Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step151Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step151Add1_card : s2Step151Add1Arena.live.card=884 := by
  decide +kernel

private theorem s2Step151Add1_borrowed : s2Step151Add1Arena.checkBorrow (hmrHybridCount s2Step151Add1Arena s2Step151Add1B.length) s2Step151Add1Work=some s2Step151Add1During := by
  have len : s2Step151Add1Work.length=hmrHybridCount s2Step151Add1Arena s2Step151Add1B.length := by
    rw [hmrHybridCount,s2Step151Add1_card]
    decide +kernel
  have nd : s2Step151Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step151Add1Arena s2Step151Add1During s2Step151Add1Work.toFinset s2Step151Add1_bounded s2Step151Add1_apart rfl

private theorem s2Step151Add1_distinct : (790::839::815::(s2Step151Add1A++s2Step151Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step151Add1_owned : (790::839::815::(s2Step151Add1A++s2Step151Add1B)).toFinset⊆s2Step151Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step151Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step151Add1_checked : compileHmrHybridCinLog s2Step151Add1Arena 839 790 815 s2Step151Add1A s2Step151Add1B s2Step151Add1Work=some s2Step151Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step151Add1Arena s2Step151Add1During 839 790 815 s2Step151Add1A s2Step151Add1B s2Step151Add1Work
    (by decide +kernel) (by decide +kernel) s2Step151Add1_distinct
    (fun q hq => s2Step151Add1_owned (List.mem_toFinset.mpr hq)) s2Step151Add1_borrowed

private theorem s2Step151F4_apart : Disjoint (s2Step151Add0A++s2Step151Add0B).toFinset (s2Step151Add1A++s2Step151Add1B).toFinset := by
  have nd : ((s2Step151Add0A++s2Step151Add0B)++(s2Step151Add1A++s2Step151Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step151F4_carry : s2Step151F4FlagArena.checkBorrow 1 [815]=some s2Step151Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step151F4FlagArena,s2Step151HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step151F4FlagArena,s2Step151HeadFvAfter,s2Step151Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step151F4_distinct : (791::839::790::815::((s2Step151Add0A++s2Step151Add1A)++(s2Step151Add0B++s2Step151Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step151F4_flag : s2Step151HeadFvAfter.checkBorrow 1 [790]=some s2Step151F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step151HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step151F4_owned : (791::839::((s2Step151Add0A++s2Step151Add1A)++(s2Step151Add0B++s2Step151Add1B))).toFinset⊆s2Step151HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step151HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step151F4_checked : compileHmrHybridF4Log s2Step151HeadFvAfter 791 839 s2Step151Add0A s2Step151Add0B s2Step151Add1A s2Step151Add1B [790] [815] s2Step151Add0Work s2Step151Add1Work=some s2Step151F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step151HeadFvAfter s2Step151F4FlagArena s2Step151Add0Arena s2Step151Add0During s2Step151Add1During 791 839
    s2Step151Add0A s2Step151Add0B s2Step151Add1A s2Step151Add1B [790] [815] s2Step151Add0Work s2Step151Add1Work
    (fun q hq => s2Step151F4_owned (List.mem_toFinset.mpr hq)) s2Step151F4_flag s2Step151F4_carry
    s2Step151F4_distinct s2Step151F4_apart s2Step151Add0_checked s2Step151Add1_checked

private theorem s2Step151Front_branch : s2Step151FrontSigmaArena.checkBorrow 1 [839]=some s2Step151HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step151FrontSigmaArena,s2Step151EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step151FrontSigmaArena,s2Step151EntryGvAfter,s2Step151HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step151Front_entry : HmrFrontEntryValid s2Step151EntryFBefore s2Step151FrontBank 194 90 ⟨193,194,91,89⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step151FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step151EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step151EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step151FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step151Front_sigma : s2Step151EntryGvAfter.checkBorrow 1 [791]=some s2Step151FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step151EntryGvAfter,arenaWires]
  · rfl

private def s2Step151HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step151HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step151HeadFBefore : Arena := s2Step151HeadGAfter

private def s2Step151HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705],768⟩

private def s2Step151HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783],770⟩

private def s2Step151HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 797],769⟩

private def s2Step151HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 778],771⟩

private theorem s2Step151HeadBank_incomingDistinct : ([s2Step151HeadGRow,s2Step151HeadFRow,s2Step151HeadGvRow,s2Step151HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step151HeadF_Incoming : rowsOwned s2Step151HeadFBefore [s2Step151HeadFRow,s2Step151HeadGvRow,s2Step151HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step151HeadGRow,s2Step151HeadFRow,s2Step151HeadGvRow,s2Step151HeadFvRow] 1 s2Step151HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step151HeadFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step151HeadBank_outgoingOwned : rowsOwned s2Step151HeadFvAfter [s2Step151HeadGOut,s2Step151HeadFOut,s2Step151HeadGvOut,s2Step151HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step151HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step151HeadF_Outgoing : rowsOwned s2Step151HeadFvAfter [s2Step151HeadFOut,s2Step151HeadGvOut,s2Step151HeadFvOut] :=
  hmrRows_owned_drop s2Step151HeadFvAfter [s2Step151HeadGOut,s2Step151HeadFOut,s2Step151HeadGvOut,s2Step151HeadFvOut] 1 s2Step151HeadBank_outgoingOwned

private theorem s2Step151HeadF_distinct : (s2Step151HeadFRow.sign::s2Step151HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step151HeadF_owned : (s2Step151HeadFRow.sign::s2Step151HeadFRow.payload).toFinset⊆s2Step151HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step151HeadFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step151HeadF_reserved : s2Step151HeadFBefore.reserve s2Step151HeadFFresh.toFinset=some s2Step151HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step151HeadFFresh,arenaWires]
  · norm_num [s2Step151HeadFBefore,s2Step151HeadGAfter,s2Step151HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step151HeadFAfter,s2Step151HeadFBefore,s2Step151HeadGAfter,s2Step151HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step151HeadF_checked : planRowResizeLog s2Step151HeadFBefore s2Step151HeadFRow 195 s2Step151HeadFFresh=
    some (s2Step151HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 849],768⟩,growRow 768 s2Step151HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step151HeadFBefore s2Step151HeadFAfter s2Step151HeadFRow 195 s2Step151HeadFFresh
    s2Step151HeadF_distinct s2Step151HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step151HeadF_reserved
  have rowEq : WindowRow.mk (s2Step151HeadFRow.payload++s2Step151HeadFFresh) s2Step151HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 849],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step151HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step151HeadFvBefore : Arena := s2Step151HeadGvAfter

private theorem s2Step151HeadFv_Incoming : rowsOwned s2Step151HeadFvBefore [s2Step151HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step151HeadGRow,s2Step151HeadFRow,s2Step151HeadGvRow,s2Step151HeadFvRow] 3 s2Step151HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step151HeadFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step151HeadFv_Outgoing : rowsOwned s2Step151HeadFvAfter [s2Step151HeadFvOut] :=
  hmrRows_owned_drop s2Step151HeadFvAfter [s2Step151HeadGOut,s2Step151HeadFOut,s2Step151HeadGvOut,s2Step151HeadFvOut] 3 s2Step151HeadBank_outgoingOwned

private theorem s2Step151HeadFv_distinct : (s2Step151HeadFvRow.sign::s2Step151HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step151HeadFv_owned : (s2Step151HeadFvRow.sign::s2Step151HeadFvRow.payload).toFinset⊆s2Step151HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step151HeadFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step151HeadFv_reserved : s2Step151HeadFvBefore.reserve s2Step151HeadFvFresh.toFinset=some s2Step151HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step151HeadFvFresh,arenaWires]
  · norm_num [s2Step151HeadFvBefore,s2Step151HeadGvAfter,s2Step151HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step151HeadFvAfter,s2Step151HeadFvBefore,s2Step151HeadGvAfter,s2Step151HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step151HeadFv_checked : planRowResizeLog s2Step151HeadFvBefore s2Step151HeadFvRow 91 s2Step151HeadFvFresh=
    some (s2Step151HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796],770⟩,growRow 770 s2Step151HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step151HeadFvBefore s2Step151HeadFvAfter s2Step151HeadFvRow 91 s2Step151HeadFvFresh
    s2Step151HeadFv_distinct s2Step151HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step151HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step151HeadFvRow.payload++s2Step151HeadFvFresh) s2Step151HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step151HeadG_Incoming : rowsOwned s2Step151HeadGBefore [s2Step151HeadGRow,s2Step151HeadFRow,s2Step151HeadGvRow,s2Step151HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step151HeadGRow,s2Step151HeadFRow,s2Step151HeadGvRow,s2Step151HeadFvRow] 0 s2Step151HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step151HeadGBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step151HeadG_Outgoing : rowsOwned s2Step151HeadFvAfter [s2Step151HeadGOut,s2Step151HeadFOut,s2Step151HeadGvOut,s2Step151HeadFvOut] :=
  hmrRows_owned_drop s2Step151HeadFvAfter [s2Step151HeadGOut,s2Step151HeadFOut,s2Step151HeadGvOut,s2Step151HeadFvOut] 0 s2Step151HeadBank_outgoingOwned

private theorem s2Step151HeadG_distinct : (s2Step151HeadGRow.sign::s2Step151HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step151HeadG_owned : (s2Step151HeadGRow.sign::s2Step151HeadGRow.payload).toFinset⊆s2Step151HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step151HeadGBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step151HeadG_reserved : s2Step151HeadGBefore.reserve s2Step151HeadGFresh.toFinset=some s2Step151HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step151HeadGFresh,arenaWires]
  · norm_num [s2Step151HeadGBefore,s2Step151HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step151HeadGAfter,s2Step151HeadGBefore,s2Step151HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step151HeadG_checked : planRowResizeLog s2Step151HeadGBefore s2Step151HeadGRow 195 s2Step151HeadGFresh=
    some (s2Step151HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 797, 780],769⟩,growRow 769 s2Step151HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step151HeadGBefore s2Step151HeadGAfter s2Step151HeadGRow 195 s2Step151HeadGFresh
    s2Step151HeadG_distinct s2Step151HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step151HeadG_reserved
  have rowEq : WindowRow.mk (s2Step151HeadGRow.payload++s2Step151HeadGFresh) s2Step151HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 797, 780],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step151HeadGvBefore : Arena := s2Step151HeadFAfter

private theorem s2Step151HeadGv_Incoming : rowsOwned s2Step151HeadGvBefore [s2Step151HeadGvRow,s2Step151HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step151HeadGRow,s2Step151HeadFRow,s2Step151HeadGvRow,s2Step151HeadFvRow] 2 s2Step151HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step151HeadGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step151HeadGv_Outgoing : rowsOwned s2Step151HeadFvAfter [s2Step151HeadGvOut,s2Step151HeadFvOut] :=
  hmrRows_owned_drop s2Step151HeadFvAfter [s2Step151HeadGOut,s2Step151HeadFOut,s2Step151HeadGvOut,s2Step151HeadFvOut] 2 s2Step151HeadBank_outgoingOwned

private theorem s2Step151HeadGv_distinct : (s2Step151HeadGvRow.sign::s2Step151HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step151HeadGv_owned : (s2Step151HeadGvRow.sign::s2Step151HeadGvRow.payload).toFinset⊆s2Step151HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step151HeadGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step151HeadGv_reserved : s2Step151HeadGvBefore.reserve s2Step151HeadGvFresh.toFinset=some s2Step151HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step151HeadGvFresh,arenaWires]
  · norm_num [s2Step151HeadGvBefore,s2Step151HeadFAfter,s2Step151HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step151HeadGvAfter,s2Step151HeadGvBefore,s2Step151HeadFAfter,s2Step151HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step151HeadGv_checked : planRowResizeLog s2Step151HeadGvBefore s2Step151HeadGvRow 91 s2Step151HeadGvFresh=
    some (s2Step151HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 778, 779],771⟩,growRow 771 s2Step151HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step151HeadGvBefore s2Step151HeadGvAfter s2Step151HeadGvRow 91 s2Step151HeadGvFresh
    s2Step151HeadGv_distinct s2Step151HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step151HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step151HeadGvRow.payload++s2Step151HeadGvFresh) s2Step151HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 778, 779],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step151HeadBank_rows : planWindowRowsLog s2Step151HeadGBefore [(s2Step151HeadGRow,195),(s2Step151HeadFRow,195),(s2Step151HeadGvRow,91),(s2Step151HeadFvRow,91)] [s2Step151HeadGFresh,s2Step151HeadFFresh,s2Step151HeadGvFresh,s2Step151HeadFvFresh]=
    some (s2Step151HeadFvAfter,[s2Step151HeadGOut,s2Step151HeadFOut,s2Step151HeadGvOut,s2Step151HeadFvOut],(growRow 769 s2Step151HeadGFresh ++ (growRow 768 s2Step151HeadFFresh ++ (growRow 771 s2Step151HeadGvFresh ++ (growRow 770 s2Step151HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step151HeadFvAfter [] []=some (s2Step151HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step151HeadFvBefore s2Step151HeadFvAfter s2Step151HeadFvAfter
    s2Step151HeadFvRow s2Step151HeadFvOut 91 s2Step151HeadFvFresh [] [] []
    (growRow 770 s2Step151HeadFvFresh) ([]) s2Step151HeadFv_Incoming s2Step151HeadFv_checked h4 s2Step151HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step151HeadGvBefore s2Step151HeadGvAfter s2Step151HeadFvAfter
    s2Step151HeadGvRow s2Step151HeadGvOut 91 s2Step151HeadGvFresh [(s2Step151HeadFvRow,91)] [s2Step151HeadFvFresh] [s2Step151HeadFvOut]
    (growRow 771 s2Step151HeadGvFresh) ((growRow 770 s2Step151HeadFvFresh ++ [])) s2Step151HeadGv_Incoming s2Step151HeadGv_checked h3 s2Step151HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step151HeadFBefore s2Step151HeadFAfter s2Step151HeadFvAfter
    s2Step151HeadFRow s2Step151HeadFOut 195 s2Step151HeadFFresh [(s2Step151HeadGvRow,91),(s2Step151HeadFvRow,91)] [s2Step151HeadGvFresh,s2Step151HeadFvFresh] [s2Step151HeadGvOut,s2Step151HeadFvOut]
    (growRow 768 s2Step151HeadFFresh) ((growRow 771 s2Step151HeadGvFresh ++ (growRow 770 s2Step151HeadFvFresh ++ []))) s2Step151HeadF_Incoming s2Step151HeadF_checked h2 s2Step151HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step151HeadGBefore s2Step151HeadGAfter s2Step151HeadFvAfter
    s2Step151HeadGRow s2Step151HeadGOut 195 s2Step151HeadGFresh [(s2Step151HeadFRow,195),(s2Step151HeadGvRow,91),(s2Step151HeadFvRow,91)] [s2Step151HeadFFresh,s2Step151HeadGvFresh,s2Step151HeadFvFresh] [s2Step151HeadFOut,s2Step151HeadGvOut,s2Step151HeadFvOut]
    (growRow 769 s2Step151HeadGFresh) ((growRow 768 s2Step151HeadFFresh ++ (growRow 771 s2Step151HeadGvFresh ++ (growRow 770 s2Step151HeadFvFresh ++ [])))) s2Step151HeadG_Incoming s2Step151HeadG_checked h1 s2Step151HeadG_Outgoing
  exact h0

private theorem s2Step151HeadBank_checked : compileHmrBankResizeLog .headroom s2Step151HeadGBefore ⟨s2Step151HeadFRow,s2Step151HeadGRow,s2Step151HeadFvRow,s2Step151HeadGvRow⟩ ⟨195,195,91,91⟩ [s2Step151HeadGFresh,s2Step151HeadFFresh,s2Step151HeadGvFresh,s2Step151HeadFvFresh]=
    some (s2Step151HeadFvAfter,⟨s2Step151HeadFOut,s2Step151HeadGOut,s2Step151HeadFvOut,s2Step151HeadGvOut⟩,(growRow 769 s2Step151HeadGFresh ++ (growRow 768 s2Step151HeadFFresh ++ (growRow 771 s2Step151HeadGvFresh ++ (growRow 770 s2Step151HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step151HeadBank_rows]
  rfl

private theorem s2Step151Front_checked : compileHmrSourceFrontLog s2Step151EntryFBefore s2Step151FrontBank 194 90 ⟨193,194,91,89⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step151FrontLog=some s2Step151FrontPlan := by
  have pairEq : s2Step151FrontPair=⟨s2Step151HeadFRow,s2Step151HeadGRow,s2Step151HeadFvRow,s2Step151HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step151FrontHead=⟨s2Step151ExitFRow,s2Step151ExitGRow,s2Step151ExitFvRow,s2Step151ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step151Add0A=s2Step151FrontHead.f.wires := by decide +kernel
  have gEq : s2Step151Add0B=s2Step151FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step151Add1A=s2Step151FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step151Add1B=s2Step151FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step151EntryFBefore s2Step151FrontBank 194 90 ⟨193,194,91,89⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step151FrontLog s2Step151FrontPlan
  · exact s2Step151Front_entry
  · exact s2Step151EntryBank_checked
  · exact s2Step151Front_sigma
  · rfl
  · exact s2Step151Front_branch
  · rfl
  · simpa only [s2Step151FrontPlan,pairEq] using s2Step151HeadBank_checked
  · simpa only [s2Step151FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step151F4_checked
  · exact s2Step151Counter_checked
  · rfl
  · simpa only [s2Step151FrontPlan,headEq] using s2Step151ExitBank_checked

private theorem s2Step151Complete_explicit_checked : compileHmrEarlyStepLog s2Step151EntryFBefore s2Step151FrontBank 194 90 ⟨193,194,91,89⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step151CompleteLog=some s2Step151CompletePlan := by
  let Q := s2Step151EarlyControlPlan
  have hq := s2Step151EarlyControl_plan_checked
  have fv1 : s2Step151CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step151CompleteOut.fv.payload[2]?.getD s2Step151CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step151CompleteOut.fv.payload[3]?.getD s2Step151CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step151CompleteOut.fv.payload[4]?.getD s2Step151CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step151EntryFBefore s2Step151EarlyControlArena s2Step151FrontBank 194 90 ⟨193,194,91,89⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step151CompleteLog s2Step151FrontPlan Q
    s2Step151Front_checked s2Step151Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step151Complete_owned s2Step151Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step151EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 791 s2Step151CompleteOut.fv.second (s2Step151CompleteOut.fv.payload[2]?.getD s2Step151CompleteOut.fv.sign) (s2Step151CompleteOut.fv.payload[3]?.getD s2Step151CompleteOut.fv.sign) (s2Step151CompleteOut.fv.payload[4]?.getD s2Step151CompleteOut.fv.sign) 839 42 s2Step151EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep151Arena : Arena := s2Step151EntryFBefore
def s2PrivateStep151Bank : WindowBank := s2Step151FrontBank
def s2PrivateStep151Spec : HmrSourceWalkStepLog := ⟨194,90,⟨193,194,91,89⟩,42,.early s2Step151CompleteLog⟩
def s2PrivateStep151Plan : HmrSourceStepPlan := .early s2Step151CompletePlan
theorem s2PrivateStep151_source : s2PrivateStep151Spec=s2ObservedLogs144[7] := rfl
theorem s2PrivateStep151_checked : compileHmrSourceStepLog s2PrivateStep151Arena s2PrivateStep151Bank
    s2PrivateStep151Spec.fgWidth s2PrivateStep151Spec.vWidth s2PrivateStep151Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]
    6 498 151 s2PrivateStep151Spec.need none s2PrivateStep151Spec.log=some s2PrivateStep151Plan := by
  change compileHmrSourceStepLog s2Step151EntryFBefore s2Step151FrontBank 194 90 ⟨193,194,91,89⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 6 498 151 42 none (.early s2Step151CompleteLog)=some (.early s2Step151CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 151<498)]
  rw [s2Step151Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
