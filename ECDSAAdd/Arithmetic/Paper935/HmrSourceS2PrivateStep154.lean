import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep152
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

private def s2Step154CompleteMoves : List (Wire × Wire) := [(801,704)]

private def s2Step154EarlyControlLog : HmrEarlyControlLog := ⟨[801, 847, 780, 839, 849],[790],[797],[867, 877, 879, 882, 885, 888],[]⟩

private def s2Step154FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [790], [], [786, 847]],[[797], [849], [780], [839]],[[], [], [], []]⟩,[778],[791],[867],[877],[879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[867, 877, 879, 882]⟩

private def s2Step154CompleteLog : HmrEarlyStepLog := ⟨s2Step154FrontLog,s2Step154CompleteMoves,s2Step154EarlyControlLog⟩

private def s2Step154ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703],768⟩

private def s2Step154ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815],770⟩

private def s2Step154ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191],769⟩

private def s2Step154ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786],771⟩

private def s2Step154FrontOut : WindowBank := ⟨s2Step154ExitFOut,s2Step154ExitGOut,s2Step154ExitFvOut,s2Step154ExitGvOut⟩

private def s2Step154CompleteOut : WindowBank := s2Step154FrontOut.repacked s2Step154CompleteMoves

private def s2Step154EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<839) ∨ (840≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step154EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step154EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step154EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step154EarlyControlPositiveArena,[790],s2Step154EarlyControlEqualityArena,[797],⟨⟨778,false⟩,[⟨⟨790,false⟩,797⟩]⟩⟩

private def s2Step154EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step154EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step154EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<839) ∨ (840≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step154EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<797) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<839) ∨ (840≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step154EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<839) ∨ (840≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step154EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step154EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,801⟩,⟨⟨774,false⟩,847⟩,⟨⟨775,false⟩,780⟩,⟨⟨776,false⟩,839⟩,⟨⟨777,false⟩,849⟩]⟩

private def s2Step154EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step154EarlyControlZeroArena,s2Step154EarlyControlZeroPlan,s2Step154EarlyControlClassPlan,s2Step154EarlyControlFlagArena,s2Step154EarlyControlFittedArena,s2Step154EarlyControlHistoryArena,s2Step154EarlyControlSigmaArena,s2Step154EarlyControlOutputArena,s2Step154EarlyControlLog⟩

private def s2Step154CounterWork : List Wire := [867, 877, 879, 882]

private theorem s2Step154Counter_bounded : s2Step154CounterWork.toFinset⊆arenaWires := by norm_num [s2Step154CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step154HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step154CounterDuring : Arena := ⟨s2Step154HeadFvAfter.live∪s2Step154CounterWork.toFinset,Finset.union_subset s2Step154HeadFvAfter.bounded s2Step154Counter_bounded⟩

private def s2Step154EntryFFresh : List Wire := []

private def s2Step154EntryFvFresh : List Wire := []

private def s2Step154EntryGFresh : List Wire := [790]

private def s2Step154EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<791) ∨ (792≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step154EntryGvFresh : List Wire := [786, 847]

private def s2Step154ExitFExtra : List Wire := [704, 849]

private def s2Step154ExitFvExtra : List Wire := [839]

private def s2Step154ExitGExtra : List Wire := [790, 797]

private def s2Step154ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<704) ∨ (705≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step154ExitGvExtra : List Wire := [847, 780]

private def s2Step154Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step154Add0Work : List Wire := [879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step154Add0_bounded : s2Step154Add0Work.toFinset⊆arenaWires := by
  have h : s2Step154Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step154Add0During : Arena := ⟨s2Step154Add0Arena.live∪s2Step154Add0Work.toFinset,Finset.union_subset s2Step154Add0Arena.bounded s2Step154Add0_bounded⟩

private def s2Step154Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step154Add1Work : List Wire := [879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step154Add1_bounded : s2Step154Add1Work.toFinset⊆arenaWires := by
  have h : s2Step154Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step154Add1During : Arena := ⟨s2Step154Add1Arena.live∪s2Step154Add1Work.toFinset,Finset.union_subset s2Step154Add1Arena.bounded s2Step154Add1_bounded⟩

private def s2Step154F4FlagArena : Arena := ⟨s2Step154HeadFvAfter.live∪{867},Finset.union_subset s2Step154HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step154F4Plan : HmrHybridF4Plan := ⟨s2Step154F4FlagArena,[867],s2Step154Add0Arena,[877],s2Step154Add0During,s2Step154Add0Work,s2Step154Add1During,s2Step154Add1Work⟩

private def s2Step154HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 849],768⟩

private def s2Step154HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 839],770⟩

private def s2Step154HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 790, 797],769⟩

private def s2Step154HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 847, 780],771⟩

private def s2Step154FrontHead : WindowBank := ⟨s2Step154HeadFOut,s2Step154HeadGOut,s2Step154HeadFvOut,s2Step154HeadGvOut⟩

private def s2Step154EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704],768⟩

private def s2Step154EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815],770⟩

private def s2Step154EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 790],769⟩

private def s2Step154EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 847],771⟩

private def s2Step154FrontPair : WindowBank := ⟨s2Step154EntryFOut,s2Step154EntryGOut,s2Step154EntryFvOut,s2Step154EntryGvOut⟩

private def s2Step154FrontSigmaArena : Arena := ⟨s2Step154EntryGvAfter.live∪{778},Finset.union_subset s2Step154EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step154HeadFFresh : List Wire := [849]

private def s2Step154HeadFvFresh : List Wire := [839]

private def s2Step154HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step154HeadGFresh : List Wire := [797]

private def s2Step154HeadGvFresh : List Wire := [780]

private def s2Step154FrontPlan : HmrSourceFront := ⟨s2Step154EntryGvAfter,s2Step154FrontPair,(growRow 768 s2Step154EntryFFresh ++ (growRow 769 s2Step154EntryGFresh ++ (growRow 770 s2Step154EntryFvFresh ++ (growRow 771 s2Step154EntryGvFresh ++ [])))),s2Step154FrontSigmaArena,[778],s2Step154HeadGBefore,[791],
  s2Step154HeadFvAfter,s2Step154FrontHead,(growRow 769 s2Step154HeadGFresh ++ (growRow 768 s2Step154HeadFFresh ++ (growRow 771 s2Step154HeadGvFresh ++ (growRow 770 s2Step154HeadFvFresh ++ [])))),s2Step154F4Plan,s2Step154CounterDuring,s2Step154CounterWork,s2Step154ExitGvAfter,s2Step154FrontOut,(shrinkRow 769 s2Step154ExitGExtra ++ (shrinkRow 768 s2Step154ExitFExtra ++ (shrinkRow 770 s2Step154ExitFvExtra ++ (shrinkRow 771 s2Step154ExitGvExtra ++ []))))⟩

private def s2Step154CompletePlan : HmrEarlyStepPlan := ⟨s2Step154FrontPlan,s2Step154EarlyControlArena,s2Step154EarlyControlPlan,s2Step154CompleteMoves⟩

private theorem s2Step154Complete_apart : List.Disjoint (s2Step154CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [778, 791, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] := by
  have nd : ((s2Step154CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[778, 791, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step154Complete_owned : (s2Step154CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step154EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step154EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<839) ∨ (840≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private def s2Step154CompleteMoveArena : Arena := ⟨s2Step154ExitGvAfter.live∪{704},Finset.union_subset s2Step154ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step154Complete_repack : s2Step154ExitGvAfter.checkRepack s2Step154CompleteMoves=some s2Step154EarlyControlArena := by
  have owned : 801∈s2Step154ExitGvAfter.live := by norm_num [s2Step154ExitGvAfter,arenaWires]
  have reserve : s2Step154ExitGvAfter.reserve {704}=some s2Step154CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step154ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step154CompleteMoveArena.retireSet {801}=s2Step154EarlyControlArena := by
    unfold Arena.retireSet s2Step154EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step154CompleteMoveArena,s2Step154ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step154CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step154CompleteMoveArena.retireSet {801}).checkRepack []=some s2Step154EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step154EarlyControl_branchOwned : ([791] : List Wire).toFinset⊆s2Step154EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step154EarlyControlSigmaArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<839) ∨ (840≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step154EarlyControl_branch : compileHmrBranchRetirement s2Step154EarlyControlSigmaArena 791=some s2Step154EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step154EarlyControl_branchOwned
  · ext q
    simp [s2Step154EarlyControlOutputArena,s2Step154EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step154EarlyControl_classEqualityBorrow : s2Step154EarlyControlPositiveArena.checkBorrow (([778, 790] : List Wire).length-1) s2Step154EarlyControlLog.classWork=some s2Step154EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step154EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step154EarlyControlPositiveArena (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step154EarlyControlEqualityArena,s2Step154EarlyControlPositiveArena,s2Step154EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step154EarlyControl_classEqualityOwned : ([778, 790] : List Wire).toFinset⊆s2Step154EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step154EarlyControlPositiveArena (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step154EarlyControl_classEquality : compileHmrEqualityLog s2Step154EarlyControlPositiveArena [778, 790] 0 s2Step154EarlyControlLog.classWork=some (s2Step154EarlyControlEqualityArena,s2Step154EarlyControlLog.classWork,s2Step154EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step154EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step154EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step154EarlyControl_classOwned : ([777, 849, 778] : List Wire).toFinset⊆s2Step154EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step154EarlyControlZeroArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step154EarlyControl_positiveBorrow : s2Step154EarlyControlZeroArena.checkBorrow (1) s2Step154EarlyControlLog.positiveWork=some s2Step154EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step154EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step154EarlyControlZeroArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step154EarlyControlPositiveArena,s2Step154EarlyControlZeroArena,s2Step154EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step154EarlyControl_class : compileHmrSourceClassLog s2Step154EarlyControlZeroArena false 777 s2Step154EarlyControlZeroPlan.top 0 778 s2Step154EarlyControlLog.positiveWork s2Step154EarlyControlLog.classWork=some s2Step154EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step154EarlyControlClassPlan s2Step154EarlyControlZeroArena false 777 s2Step154EarlyControlZeroPlan.top 0 778
  constructor
  · decide +kernel
  · exact s2Step154EarlyControl_classOwned
  · exact s2Step154EarlyControl_positiveBorrow
  · exact s2Step154EarlyControl_classEquality

private theorem s2Step154EarlyControl_entryRecordOwned : ([791, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step154EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step154EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<839) ∨ (840≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step154EarlyControl_entrySigmaOwned : ([778, 254] : List Wire).toFinset⊆s2Step154EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step154EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<839) ∨ (840≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step154EarlyControl_fitBorrow : s2Step154EarlyControlFlagArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step154EarlyControlLog.recordFresh=some s2Step154EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step154EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step154EarlyControlFlagArena (fun q => (0≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step154EarlyControlFittedArena,s2Step154EarlyControlFlagArena,s2Step154EarlyControlLog,arenaWires]

private theorem s2Step154EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step154EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step154EarlyControlFlagArena (fun q => (0≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step154EarlyControl_fit : compileHmrRecordGrowLog s2Step154EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step154EarlyControlLog.recordFresh=some s2Step154EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step154EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step154EarlyControl_fitBorrow

private theorem s2Step154EarlyControl_flagsBorrow : s2Step154EarlyControlEqualityArena.checkBorrow (6) s2Step154EarlyControlLog.flagWork=some s2Step154EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step154EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step154EarlyControlEqualityArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step154EarlyControlFlagArena,s2Step154EarlyControlEqualityArena,s2Step154EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step154EarlyControl_flagsOwned : ([797, 253, 252, 251] : List Wire).toFinset⊆s2Step154EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step154EarlyControlEqualityArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step154EarlyControl_flags : compileHmrFlagsLog s2Step154EarlyControlClassPlan.equalityArena s2Step154EarlyControlClassPlan.equality.top 253 252 251 s2Step154EarlyControlLog.flagWork=some s2Step154EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step154EarlyControl_flagsOwned⟩
  · exact s2Step154EarlyControl_flagsBorrow

private theorem s2Step154EarlyControl_historyBorrow : s2Step154EarlyControlArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step154EarlyControlLog.recordFresh=some s2Step154EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step154EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step154EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<839) ∨ (840≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step154EarlyControlHistoryArena,s2Step154EarlyControlArena,s2Step154EarlyControlLog,arenaWires]

private theorem s2Step154EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step154EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step154EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<839) ∨ (840≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step154EarlyControl_history : compileHmrRecordGrowLog s2Step154EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step154EarlyControlLog.recordFresh=some s2Step154EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step154EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step154EarlyControl_historyBorrow

private theorem s2Step154EarlyControl_sigmaOwned : ([254, 778] : List Wire).toFinset⊆s2Step154EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step154EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<839) ∨ (840≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step154EarlyControl_sigmaReleaseOwned : ([778] : List Wire).toFinset⊆s2Step154EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step154EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<839) ∨ (840≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step154EarlyControl_sigmaRelease : s2Step154EarlyControlHistoryArena.release {778} (fun _ => false)=some s2Step154EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step154EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step154EarlyControlSigmaArena,s2Step154EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step154EarlyControl_sigma : compileHmrSigmaDropLog s2Step154EarlyControlHistoryArena false 0 0 254 778 []=some s2Step154EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step154EarlyControl_sigmaOwned⟩
  · exact s2Step154EarlyControl_sigmaRelease

private theorem s2Step154EarlyControl_zeroBorrow : s2Step154EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step154EarlyControlLog.zeroWork=some s2Step154EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step154EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step154EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<839) ∨ (840≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step154EarlyControlZeroArena,s2Step154EarlyControlArena,s2Step154EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step154EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step154EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step154EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<839) ∨ (840≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step154EarlyControl_zero : compileHmrEqualityLog s2Step154EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step154EarlyControlLog.zeroWork=some (s2Step154EarlyControlZeroArena,s2Step154EarlyControlLog.zeroWork,s2Step154EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step154EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step154EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step154EarlyControl_logged : s2Step154EarlyControlPlan.Logged s2Step154EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 778 254 253 252 251 791 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step154EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step154EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step154EarlyControl_zero
  · exact s2Step154EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step154EarlyControl_flags
  · exact s2Step154EarlyControl_fit
  · exact s2Step154EarlyControl_history
  · exact s2Step154EarlyControl_sigma
  · exact s2Step154EarlyControl_branch

private theorem s2Step154EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step154EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 778 254 253 252 251 791 42 s2Step154EarlyControlLog=some s2Step154EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step154EarlyControlPlan s2Step154EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 778 254 253 252 251 791 42 s2Step154EarlyControl_logged

private def s2Step154EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step154EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704],768⟩

private def s2Step154EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815],770⟩

private def s2Step154EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191],769⟩

private def s2Step154EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779],771⟩

private def s2Step154FrontBank : WindowBank := ⟨s2Step154EntryFRow,s2Step154EntryGRow,s2Step154EntryFvRow,s2Step154EntryGvRow⟩

private def s2Step154Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 849, 768]

private def s2Step154Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 790, 797, 769]

private def s2Step154Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 839, 770]

private def s2Step154Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 847, 780, 771]

private theorem s2Step154Counter_apart : Disjoint s2Step154HeadFvAfter.live s2Step154CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step154HeadFvAfter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step154Counter_borrowed : s2Step154HeadFvAfter.checkBorrow 4 s2Step154CounterWork=some s2Step154CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step154HeadFvAfter s2Step154CounterDuring s2Step154CounterWork.toFinset s2Step154Counter_bounded s2Step154Counter_apart rfl

private theorem s2Step154Counter_owned : (778::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step154HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step154HeadFvAfter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step154Counter_checked : compileHmrCounterStepLog s2Step154HeadFvAfter true 778 [772, 773, 774, 775, 776, 777] s2Step154CounterWork=some s2Step154CounterDuring := by
  have owned : ∀q∈778::[772, 773, 774, 775, 776, 777],q∈s2Step154HeadFvAfter.live := fun q hq => s2Step154Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step154Counter_borrowed

private def s2Step154EntryFAfter : Arena := s2Step154EntryFBefore

private theorem s2Step154EntryBank_incomingDistinct : ([s2Step154EntryFRow,s2Step154EntryGRow,s2Step154EntryFvRow,s2Step154EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step154EntryF_Incoming : rowsOwned s2Step154EntryFBefore [s2Step154EntryFRow,s2Step154EntryGRow,s2Step154EntryFvRow,s2Step154EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step154EntryFRow,s2Step154EntryGRow,s2Step154EntryFvRow,s2Step154EntryGvRow] 0 s2Step154EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step154EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step154EntryBank_outgoingOwned : rowsOwned s2Step154EntryGvAfter [s2Step154EntryFOut,s2Step154EntryGOut,s2Step154EntryFvOut,s2Step154EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step154EntryGvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<791) ∨ (792≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step154EntryF_Outgoing : rowsOwned s2Step154EntryGvAfter [s2Step154EntryFOut,s2Step154EntryGOut,s2Step154EntryFvOut,s2Step154EntryGvOut] :=
  hmrRows_owned_drop s2Step154EntryGvAfter [s2Step154EntryFOut,s2Step154EntryGOut,s2Step154EntryFvOut,s2Step154EntryGvOut] 0 s2Step154EntryBank_outgoingOwned

private theorem s2Step154EntryF_distinct : (s2Step154EntryFRow.sign::s2Step154EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step154EntryF_owned : (s2Step154EntryFRow.sign::s2Step154EntryFRow.payload).toFinset⊆s2Step154EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step154EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step154EntryF_reserved : s2Step154EntryFBefore.reserve s2Step154EntryFFresh.toFinset=some s2Step154EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step154EntryFFresh,arenaWires]
  · norm_num [s2Step154EntryFBefore,s2Step154EntryFFresh,arenaWires]
  · simp only [s2Step154EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step154EntryF_checked : planRowResizeLog s2Step154EntryFBefore s2Step154EntryFRow 193 s2Step154EntryFFresh=
    some (s2Step154EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704],768⟩,growRow 768 s2Step154EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step154EntryFBefore s2Step154EntryFAfter s2Step154EntryFRow 193 s2Step154EntryFFresh
    s2Step154EntryF_distinct s2Step154EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step154EntryF_reserved
  have rowEq : WindowRow.mk (s2Step154EntryFRow.payload++s2Step154EntryFFresh) s2Step154EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step154EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<791) ∨ (792≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step154EntryFvAfter : Arena := s2Step154EntryGAfter

private def s2Step154EntryFvBefore : Arena := s2Step154EntryGAfter

private theorem s2Step154EntryFv_Incoming : rowsOwned s2Step154EntryFvBefore [s2Step154EntryFvRow,s2Step154EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step154EntryFRow,s2Step154EntryGRow,s2Step154EntryFvRow,s2Step154EntryGvRow] 2 s2Step154EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step154EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<791) ∨ (792≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step154EntryFv_Outgoing : rowsOwned s2Step154EntryGvAfter [s2Step154EntryFvOut,s2Step154EntryGvOut] :=
  hmrRows_owned_drop s2Step154EntryGvAfter [s2Step154EntryFOut,s2Step154EntryGOut,s2Step154EntryFvOut,s2Step154EntryGvOut] 2 s2Step154EntryBank_outgoingOwned

private theorem s2Step154EntryFv_distinct : (s2Step154EntryFvRow.sign::s2Step154EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step154EntryFv_owned : (s2Step154EntryFvRow.sign::s2Step154EntryFvRow.payload).toFinset⊆s2Step154EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step154EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<791) ∨ (792≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step154EntryFv_reserved : s2Step154EntryFvBefore.reserve s2Step154EntryFvFresh.toFinset=some s2Step154EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step154EntryFvFresh,arenaWires]
  · norm_num [s2Step154EntryFvBefore,s2Step154EntryGAfter,s2Step154EntryFvFresh,arenaWires]
  · simp only [s2Step154EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step154EntryFv_checked : planRowResizeLog s2Step154EntryFvBefore s2Step154EntryFvRow 92 s2Step154EntryFvFresh=
    some (s2Step154EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815],770⟩,growRow 770 s2Step154EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step154EntryFvBefore s2Step154EntryFvAfter s2Step154EntryFvRow 92 s2Step154EntryFvFresh
    s2Step154EntryFv_distinct s2Step154EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step154EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step154EntryFvRow.payload++s2Step154EntryFvFresh) s2Step154EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step154EntryGBefore : Arena := s2Step154EntryFBefore

private theorem s2Step154EntryG_Incoming : rowsOwned s2Step154EntryGBefore [s2Step154EntryGRow,s2Step154EntryFvRow,s2Step154EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step154EntryFRow,s2Step154EntryGRow,s2Step154EntryFvRow,s2Step154EntryGvRow] 1 s2Step154EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step154EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step154EntryG_Outgoing : rowsOwned s2Step154EntryGvAfter [s2Step154EntryGOut,s2Step154EntryFvOut,s2Step154EntryGvOut] :=
  hmrRows_owned_drop s2Step154EntryGvAfter [s2Step154EntryFOut,s2Step154EntryGOut,s2Step154EntryFvOut,s2Step154EntryGvOut] 1 s2Step154EntryBank_outgoingOwned

private theorem s2Step154EntryG_distinct : (s2Step154EntryGRow.sign::s2Step154EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step154EntryG_owned : (s2Step154EntryGRow.sign::s2Step154EntryGRow.payload).toFinset⊆s2Step154EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step154EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step154EntryG_reserved : s2Step154EntryGBefore.reserve s2Step154EntryGFresh.toFinset=some s2Step154EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step154EntryGFresh,arenaWires]
  · norm_num [s2Step154EntryGBefore,s2Step154EntryFBefore,s2Step154EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step154EntryGAfter,s2Step154EntryGBefore,s2Step154EntryFBefore,s2Step154EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step154EntryG_checked : planRowResizeLog s2Step154EntryGBefore s2Step154EntryGRow 193 s2Step154EntryGFresh=
    some (s2Step154EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 790],769⟩,growRow 769 s2Step154EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step154EntryGBefore s2Step154EntryGAfter s2Step154EntryGRow 193 s2Step154EntryGFresh
    s2Step154EntryG_distinct s2Step154EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step154EntryG_reserved
  have rowEq : WindowRow.mk (s2Step154EntryGRow.payload++s2Step154EntryGFresh) s2Step154EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 790],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step154EntryGvBefore : Arena := s2Step154EntryGAfter

private theorem s2Step154EntryGv_Incoming : rowsOwned s2Step154EntryGvBefore [s2Step154EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step154EntryFRow,s2Step154EntryGRow,s2Step154EntryFvRow,s2Step154EntryGvRow] 3 s2Step154EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step154EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<791) ∨ (792≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step154EntryGv_Outgoing : rowsOwned s2Step154EntryGvAfter [s2Step154EntryGvOut] :=
  hmrRows_owned_drop s2Step154EntryGvAfter [s2Step154EntryFOut,s2Step154EntryGOut,s2Step154EntryFvOut,s2Step154EntryGvOut] 3 s2Step154EntryBank_outgoingOwned

private theorem s2Step154EntryGv_distinct : (s2Step154EntryGvRow.sign::s2Step154EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step154EntryGv_owned : (s2Step154EntryGvRow.sign::s2Step154EntryGvRow.payload).toFinset⊆s2Step154EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step154EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<791) ∨ (792≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step154EntryGv_reserved : s2Step154EntryGvBefore.reserve s2Step154EntryGvFresh.toFinset=some s2Step154EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step154EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step154EntryGvBefore,s2Step154EntryGAfter,s2Step154EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step154EntryGvAfter,s2Step154EntryGvBefore,s2Step154EntryGAfter,s2Step154EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step154EntryGv_checked : planRowResizeLog s2Step154EntryGvBefore s2Step154EntryGvRow 92 s2Step154EntryGvFresh=
    some (s2Step154EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 847],771⟩,growRow 771 s2Step154EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step154EntryGvBefore s2Step154EntryGvAfter s2Step154EntryGvRow 92 s2Step154EntryGvFresh
    s2Step154EntryGv_distinct s2Step154EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step154EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step154EntryGvRow.payload++s2Step154EntryGvFresh) s2Step154EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 847],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step154EntryBank_rows : planWindowRowsLog s2Step154EntryFBefore [(s2Step154EntryFRow,193),(s2Step154EntryGRow,193),(s2Step154EntryFvRow,92),(s2Step154EntryGvRow,92)] [s2Step154EntryFFresh,s2Step154EntryGFresh,s2Step154EntryFvFresh,s2Step154EntryGvFresh]=
    some (s2Step154EntryGvAfter,[s2Step154EntryFOut,s2Step154EntryGOut,s2Step154EntryFvOut,s2Step154EntryGvOut],(growRow 768 s2Step154EntryFFresh ++ (growRow 769 s2Step154EntryGFresh ++ (growRow 770 s2Step154EntryFvFresh ++ (growRow 771 s2Step154EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step154EntryGvAfter [] []=some (s2Step154EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step154EntryGvBefore s2Step154EntryGvAfter s2Step154EntryGvAfter
    s2Step154EntryGvRow s2Step154EntryGvOut 92 s2Step154EntryGvFresh [] [] []
    (growRow 771 s2Step154EntryGvFresh) ([]) s2Step154EntryGv_Incoming s2Step154EntryGv_checked h4 s2Step154EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step154EntryFvBefore s2Step154EntryFvAfter s2Step154EntryGvAfter
    s2Step154EntryFvRow s2Step154EntryFvOut 92 s2Step154EntryFvFresh [(s2Step154EntryGvRow,92)] [s2Step154EntryGvFresh] [s2Step154EntryGvOut]
    (growRow 770 s2Step154EntryFvFresh) ((growRow 771 s2Step154EntryGvFresh ++ [])) s2Step154EntryFv_Incoming s2Step154EntryFv_checked h3 s2Step154EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step154EntryGBefore s2Step154EntryGAfter s2Step154EntryGvAfter
    s2Step154EntryGRow s2Step154EntryGOut 193 s2Step154EntryGFresh [(s2Step154EntryFvRow,92),(s2Step154EntryGvRow,92)] [s2Step154EntryFvFresh,s2Step154EntryGvFresh] [s2Step154EntryFvOut,s2Step154EntryGvOut]
    (growRow 769 s2Step154EntryGFresh) ((growRow 770 s2Step154EntryFvFresh ++ (growRow 771 s2Step154EntryGvFresh ++ []))) s2Step154EntryG_Incoming s2Step154EntryG_checked h2 s2Step154EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step154EntryFBefore s2Step154EntryFAfter s2Step154EntryGvAfter
    s2Step154EntryFRow s2Step154EntryFOut 193 s2Step154EntryFFresh [(s2Step154EntryGRow,193),(s2Step154EntryFvRow,92),(s2Step154EntryGvRow,92)] [s2Step154EntryGFresh,s2Step154EntryFvFresh,s2Step154EntryGvFresh] [s2Step154EntryGOut,s2Step154EntryFvOut,s2Step154EntryGvOut]
    (growRow 768 s2Step154EntryFFresh) ((growRow 769 s2Step154EntryGFresh ++ (growRow 770 s2Step154EntryFvFresh ++ (growRow 771 s2Step154EntryGvFresh ++ [])))) s2Step154EntryF_Incoming s2Step154EntryF_checked h1 s2Step154EntryF_Outgoing
  exact h0

private theorem s2Step154EntryBank_checked : compileHmrBankResizeLog .entry s2Step154EntryFBefore ⟨s2Step154EntryFRow,s2Step154EntryGRow,s2Step154EntryFvRow,s2Step154EntryGvRow⟩ ⟨193,193,92,92⟩ [s2Step154EntryFFresh,s2Step154EntryGFresh,s2Step154EntryFvFresh,s2Step154EntryGvFresh]=
    some (s2Step154EntryGvAfter,⟨s2Step154EntryFOut,s2Step154EntryGOut,s2Step154EntryFvOut,s2Step154EntryGvOut⟩,(growRow 768 s2Step154EntryFFresh ++ (growRow 769 s2Step154EntryGFresh ++ (growRow 770 s2Step154EntryFvFresh ++ (growRow 771 s2Step154EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step154EntryBank_rows]
  rfl

private def s2Step154ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<704) ∨ (705≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step154ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step154ExitFBefore : Arena := s2Step154ExitGAfter

private def s2Step154ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 849],768⟩

private def s2Step154ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 839],770⟩

private def s2Step154ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 790, 797],769⟩

private def s2Step154ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 847, 780],771⟩

private theorem s2Step154ExitBank_incomingDistinct : ([s2Step154ExitGRow,s2Step154ExitFRow,s2Step154ExitFvRow,s2Step154ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step154ExitF_Incoming : rowsOwned s2Step154ExitFBefore [s2Step154ExitFRow,s2Step154ExitFvRow,s2Step154ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step154ExitGRow,s2Step154ExitFRow,s2Step154ExitFvRow,s2Step154ExitGvRow] 1 s2Step154ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step154ExitFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step154ExitBank_outgoingOwned : rowsOwned s2Step154ExitGvAfter [s2Step154ExitGOut,s2Step154ExitFOut,s2Step154ExitFvOut,s2Step154ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step154ExitGvAfter (fun q => (0≤q ∧ q<704) ∨ (705≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step154ExitF_Outgoing : rowsOwned s2Step154ExitGvAfter [s2Step154ExitFOut,s2Step154ExitFvOut,s2Step154ExitGvOut] :=
  hmrRows_owned_drop s2Step154ExitGvAfter [s2Step154ExitGOut,s2Step154ExitFOut,s2Step154ExitFvOut,s2Step154ExitGvOut] 1 s2Step154ExitBank_outgoingOwned

private theorem s2Step154ExitF_distinct : (s2Step154ExitFRow.sign::s2Step154ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step154ExitF_owned : (s2Step154ExitFRow.sign::s2Step154ExitFRow.payload).toFinset⊆s2Step154ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step154ExitFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step154ExitF_retired : s2Step154ExitFBefore.retireSet s2Step154ExitFExtra.toFinset=s2Step154ExitFAfter := by
  unfold Arena.retireSet s2Step154ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step154ExitFBefore,s2Step154ExitGAfter,s2Step154ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step154ExitF_checked : planRowResizeLog s2Step154ExitFBefore s2Step154ExitFRow 192 []=
    some (s2Step154ExitFAfter,s2Step154ExitFOut,shrinkRow 768 s2Step154ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step154ExitFBefore s2Step154ExitFRow 192 s2Step154ExitF_distinct s2Step154ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step154ExitFRow.payload.take 192) s2Step154ExitFRow.sign=s2Step154ExitFOut := by decide +kernel
  have hi : s2Step154ExitFRow.payload.drop 192=s2Step154ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step154ExitF_retired] at result
  exact result

private def s2Step154ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<704) ∨ (705≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step154ExitFvBefore : Arena := s2Step154ExitFAfter

private theorem s2Step154ExitFv_Incoming : rowsOwned s2Step154ExitFvBefore [s2Step154ExitFvRow,s2Step154ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step154ExitGRow,s2Step154ExitFRow,s2Step154ExitFvRow,s2Step154ExitGvRow] 2 s2Step154ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step154ExitFvBefore (fun q => (0≤q ∧ q<704) ∨ (705≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step154ExitFv_Outgoing : rowsOwned s2Step154ExitGvAfter [s2Step154ExitFvOut,s2Step154ExitGvOut] :=
  hmrRows_owned_drop s2Step154ExitGvAfter [s2Step154ExitGOut,s2Step154ExitFOut,s2Step154ExitFvOut,s2Step154ExitGvOut] 2 s2Step154ExitBank_outgoingOwned

private theorem s2Step154ExitFv_distinct : (s2Step154ExitFvRow.sign::s2Step154ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step154ExitFv_owned : (s2Step154ExitFvRow.sign::s2Step154ExitFvRow.payload).toFinset⊆s2Step154ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step154ExitFvBefore (fun q => (0≤q ∧ q<704) ∨ (705≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step154ExitFv_retired : s2Step154ExitFvBefore.retireSet s2Step154ExitFvExtra.toFinset=s2Step154ExitFvAfter := by
  unfold Arena.retireSet s2Step154ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step154ExitFvBefore,s2Step154ExitFAfter,s2Step154ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step154ExitFv_checked : planRowResizeLog s2Step154ExitFvBefore s2Step154ExitFvRow 92 []=
    some (s2Step154ExitFvAfter,s2Step154ExitFvOut,shrinkRow 770 s2Step154ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step154ExitFvBefore s2Step154ExitFvRow 92 s2Step154ExitFv_distinct s2Step154ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step154ExitFvRow.payload.take 92) s2Step154ExitFvRow.sign=s2Step154ExitFvOut := by decide +kernel
  have hi : s2Step154ExitFvRow.payload.drop 92=s2Step154ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step154ExitFv_retired] at result
  exact result

private def s2Step154ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private theorem s2Step154ExitG_Incoming : rowsOwned s2Step154ExitGBefore [s2Step154ExitGRow,s2Step154ExitFRow,s2Step154ExitFvRow,s2Step154ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step154ExitGRow,s2Step154ExitFRow,s2Step154ExitFvRow,s2Step154ExitGvRow] 0 s2Step154ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step154ExitGBefore (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step154ExitG_Outgoing : rowsOwned s2Step154ExitGvAfter [s2Step154ExitGOut,s2Step154ExitFOut,s2Step154ExitFvOut,s2Step154ExitGvOut] :=
  hmrRows_owned_drop s2Step154ExitGvAfter [s2Step154ExitGOut,s2Step154ExitFOut,s2Step154ExitFvOut,s2Step154ExitGvOut] 0 s2Step154ExitBank_outgoingOwned

private theorem s2Step154ExitG_distinct : (s2Step154ExitGRow.sign::s2Step154ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step154ExitG_owned : (s2Step154ExitGRow.sign::s2Step154ExitGRow.payload).toFinset⊆s2Step154ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step154ExitGBefore (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step154ExitG_retired : s2Step154ExitGBefore.retireSet s2Step154ExitGExtra.toFinset=s2Step154ExitGAfter := by
  unfold Arena.retireSet s2Step154ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step154ExitGBefore,s2Step154ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step154ExitG_checked : planRowResizeLog s2Step154ExitGBefore s2Step154ExitGRow 192 []=
    some (s2Step154ExitGAfter,s2Step154ExitGOut,shrinkRow 769 s2Step154ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step154ExitGBefore s2Step154ExitGRow 192 s2Step154ExitG_distinct s2Step154ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step154ExitGRow.payload.take 192) s2Step154ExitGRow.sign=s2Step154ExitGOut := by decide +kernel
  have hi : s2Step154ExitGRow.payload.drop 192=s2Step154ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step154ExitG_retired] at result
  exact result

private def s2Step154ExitGvBefore : Arena := s2Step154ExitFvAfter

private theorem s2Step154ExitGv_Incoming : rowsOwned s2Step154ExitGvBefore [s2Step154ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step154ExitGRow,s2Step154ExitFRow,s2Step154ExitFvRow,s2Step154ExitGvRow] 3 s2Step154ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step154ExitGvBefore (fun q => (0≤q ∧ q<704) ∨ (705≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step154ExitGv_Outgoing : rowsOwned s2Step154ExitGvAfter [s2Step154ExitGvOut] :=
  hmrRows_owned_drop s2Step154ExitGvAfter [s2Step154ExitGOut,s2Step154ExitFOut,s2Step154ExitFvOut,s2Step154ExitGvOut] 3 s2Step154ExitBank_outgoingOwned

private theorem s2Step154ExitGv_distinct : (s2Step154ExitGvRow.sign::s2Step154ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step154ExitGv_owned : (s2Step154ExitGvRow.sign::s2Step154ExitGvRow.payload).toFinset⊆s2Step154ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step154ExitGvBefore (fun q => (0≤q ∧ q<704) ∨ (705≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step154ExitGv_retired : s2Step154ExitGvBefore.retireSet s2Step154ExitGvExtra.toFinset=s2Step154ExitGvAfter := by
  unfold Arena.retireSet s2Step154ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step154ExitGvBefore,s2Step154ExitFvAfter,s2Step154ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step154ExitGv_checked : planRowResizeLog s2Step154ExitGvBefore s2Step154ExitGvRow 91 []=
    some (s2Step154ExitGvAfter,s2Step154ExitGvOut,shrinkRow 771 s2Step154ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step154ExitGvBefore s2Step154ExitGvRow 91 s2Step154ExitGv_distinct s2Step154ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step154ExitGvRow.payload.take 91) s2Step154ExitGvRow.sign=s2Step154ExitGvOut := by decide +kernel
  have hi : s2Step154ExitGvRow.payload.drop 91=s2Step154ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step154ExitGv_retired] at result
  exact result

private theorem s2Step154ExitBank_rows : planWindowRowsLog s2Step154ExitGBefore [(s2Step154ExitGRow,192),(s2Step154ExitFRow,192),(s2Step154ExitFvRow,92),(s2Step154ExitGvRow,91)] [[],[],[],[]]=
    some (s2Step154ExitGvAfter,[s2Step154ExitGOut,s2Step154ExitFOut,s2Step154ExitFvOut,s2Step154ExitGvOut],(shrinkRow 769 s2Step154ExitGExtra ++ (shrinkRow 768 s2Step154ExitFExtra ++ (shrinkRow 770 s2Step154ExitFvExtra ++ (shrinkRow 771 s2Step154ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step154ExitGvAfter [] []=some (s2Step154ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step154ExitGvBefore s2Step154ExitGvAfter s2Step154ExitGvAfter
    s2Step154ExitGvRow s2Step154ExitGvOut 91 [] [] [] []
    (shrinkRow 771 s2Step154ExitGvExtra) ([]) s2Step154ExitGv_Incoming s2Step154ExitGv_checked h4 s2Step154ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step154ExitFvBefore s2Step154ExitFvAfter s2Step154ExitGvAfter
    s2Step154ExitFvRow s2Step154ExitFvOut 92 [] [(s2Step154ExitGvRow,91)] [[]] [s2Step154ExitGvOut]
    (shrinkRow 770 s2Step154ExitFvExtra) ((shrinkRow 771 s2Step154ExitGvExtra ++ [])) s2Step154ExitFv_Incoming s2Step154ExitFv_checked h3 s2Step154ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step154ExitFBefore s2Step154ExitFAfter s2Step154ExitGvAfter
    s2Step154ExitFRow s2Step154ExitFOut 192 [] [(s2Step154ExitFvRow,92),(s2Step154ExitGvRow,91)] [[],[]] [s2Step154ExitFvOut,s2Step154ExitGvOut]
    (shrinkRow 768 s2Step154ExitFExtra) ((shrinkRow 770 s2Step154ExitFvExtra ++ (shrinkRow 771 s2Step154ExitGvExtra ++ []))) s2Step154ExitF_Incoming s2Step154ExitF_checked h2 s2Step154ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step154ExitGBefore s2Step154ExitGAfter s2Step154ExitGvAfter
    s2Step154ExitGRow s2Step154ExitGOut 192 [] [(s2Step154ExitFRow,192),(s2Step154ExitFvRow,92),(s2Step154ExitGvRow,91)] [[],[],[]] [s2Step154ExitFOut,s2Step154ExitFvOut,s2Step154ExitGvOut]
    (shrinkRow 769 s2Step154ExitGExtra) ((shrinkRow 768 s2Step154ExitFExtra ++ (shrinkRow 770 s2Step154ExitFvExtra ++ (shrinkRow 771 s2Step154ExitGvExtra ++ [])))) s2Step154ExitG_Incoming s2Step154ExitG_checked h1 s2Step154ExitG_Outgoing
  exact h0

private theorem s2Step154ExitBank_checked : compileHmrBankResizeLog .exit s2Step154ExitGBefore ⟨s2Step154ExitFRow,s2Step154ExitGRow,s2Step154ExitFvRow,s2Step154ExitGvRow⟩ ⟨192,192,92,91⟩ [[],[],[],[]]=
    some (s2Step154ExitGvAfter,⟨s2Step154ExitFOut,s2Step154ExitGOut,s2Step154ExitFvOut,s2Step154ExitGvOut⟩,(shrinkRow 769 s2Step154ExitGExtra ++ (shrinkRow 768 s2Step154ExitFExtra ++ (shrinkRow 770 s2Step154ExitFvExtra ++ (shrinkRow 771 s2Step154ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step154ExitBank_rows]
  rfl

private theorem s2Step154Add0_apart : Disjoint s2Step154Add0Arena.live s2Step154Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step154Add0Arena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step154Add0_card : s2Step154Add0Arena.live.card=886 := by
  decide +kernel

private theorem s2Step154Add0_borrowed : s2Step154Add0Arena.checkBorrow (hmrHybridCount s2Step154Add0Arena s2Step154Add0B.length) s2Step154Add0Work=some s2Step154Add0During := by
  have len : s2Step154Add0Work.length=hmrHybridCount s2Step154Add0Arena s2Step154Add0B.length := by
    rw [hmrHybridCount,s2Step154Add0_card]
    decide +kernel
  have nd : s2Step154Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step154Add0Arena s2Step154Add0During s2Step154Add0Work.toFinset s2Step154Add0_bounded s2Step154Add0_apart rfl

private theorem s2Step154Add0_distinct : (867::791::877::(s2Step154Add0A++s2Step154Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step154Add0_owned : (867::791::877::(s2Step154Add0A++s2Step154Add0B)).toFinset⊆s2Step154Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step154Add0Arena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step154Add0_checked : compileHmrHybridCinLog s2Step154Add0Arena 791 867 877 s2Step154Add0A s2Step154Add0B s2Step154Add0Work=some s2Step154Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step154Add0Arena s2Step154Add0During 791 867 877 s2Step154Add0A s2Step154Add0B s2Step154Add0Work
    (by decide +kernel) (by decide +kernel) s2Step154Add0_distinct
    (fun q hq => s2Step154Add0_owned (List.mem_toFinset.mpr hq)) s2Step154Add0_borrowed

private theorem s2Step154Add1_apart : Disjoint s2Step154Add1Arena.live s2Step154Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step154Add1Arena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step154Add1_card : s2Step154Add1Arena.live.card=886 := by
  decide +kernel

private theorem s2Step154Add1_borrowed : s2Step154Add1Arena.checkBorrow (hmrHybridCount s2Step154Add1Arena s2Step154Add1B.length) s2Step154Add1Work=some s2Step154Add1During := by
  have len : s2Step154Add1Work.length=hmrHybridCount s2Step154Add1Arena s2Step154Add1B.length := by
    rw [hmrHybridCount,s2Step154Add1_card]
    decide +kernel
  have nd : s2Step154Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step154Add1Arena s2Step154Add1During s2Step154Add1Work.toFinset s2Step154Add1_bounded s2Step154Add1_apart rfl

private theorem s2Step154Add1_distinct : (867::791::877::(s2Step154Add1A++s2Step154Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step154Add1_owned : (867::791::877::(s2Step154Add1A++s2Step154Add1B)).toFinset⊆s2Step154Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step154Add1Arena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step154Add1_checked : compileHmrHybridCinLog s2Step154Add1Arena 791 867 877 s2Step154Add1A s2Step154Add1B s2Step154Add1Work=some s2Step154Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step154Add1Arena s2Step154Add1During 791 867 877 s2Step154Add1A s2Step154Add1B s2Step154Add1Work
    (by decide +kernel) (by decide +kernel) s2Step154Add1_distinct
    (fun q hq => s2Step154Add1_owned (List.mem_toFinset.mpr hq)) s2Step154Add1_borrowed

private theorem s2Step154F4_apart : Disjoint (s2Step154Add0A++s2Step154Add0B).toFinset (s2Step154Add1A++s2Step154Add1B).toFinset := by
  have nd : ((s2Step154Add0A++s2Step154Add0B)++(s2Step154Add1A++s2Step154Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step154F4_carry : s2Step154F4FlagArena.checkBorrow 1 [877]=some s2Step154Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step154F4FlagArena,s2Step154HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step154F4FlagArena,s2Step154HeadFvAfter,s2Step154Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step154F4_distinct : (778::791::867::877::((s2Step154Add0A++s2Step154Add1A)++(s2Step154Add0B++s2Step154Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step154F4_flag : s2Step154HeadFvAfter.checkBorrow 1 [867]=some s2Step154F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step154HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step154F4_owned : (778::791::((s2Step154Add0A++s2Step154Add1A)++(s2Step154Add0B++s2Step154Add1B))).toFinset⊆s2Step154HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step154HeadFvAfter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step154F4_checked : compileHmrHybridF4Log s2Step154HeadFvAfter 778 791 s2Step154Add0A s2Step154Add0B s2Step154Add1A s2Step154Add1B [867] [877] s2Step154Add0Work s2Step154Add1Work=some s2Step154F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step154HeadFvAfter s2Step154F4FlagArena s2Step154Add0Arena s2Step154Add0During s2Step154Add1During 778 791
    s2Step154Add0A s2Step154Add0B s2Step154Add1A s2Step154Add1B [867] [877] s2Step154Add0Work s2Step154Add1Work
    (fun q hq => s2Step154F4_owned (List.mem_toFinset.mpr hq)) s2Step154F4_flag s2Step154F4_carry
    s2Step154F4_distinct s2Step154F4_apart s2Step154Add0_checked s2Step154Add1_checked

private theorem s2Step154Front_branch : s2Step154FrontSigmaArena.checkBorrow 1 [791]=some s2Step154HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step154FrontSigmaArena,s2Step154EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step154FrontSigmaArena,s2Step154EntryGvAfter,s2Step154HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step154Front_entry : HmrFrontEntryValid s2Step154EntryFBefore s2Step154FrontBank 193 92 ⟨192,192,92,91⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step154FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step154EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step154EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step154FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step154Front_sigma : s2Step154EntryGvAfter.checkBorrow 1 [778]=some s2Step154FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step154EntryGvAfter,arenaWires]
  · rfl

private def s2Step154HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<839) ∨ (840≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step154HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step154HeadFBefore : Arena := s2Step154HeadGAfter

private def s2Step154HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704],768⟩

private def s2Step154HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815],770⟩

private def s2Step154HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 790],769⟩

private def s2Step154HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 847],771⟩

private theorem s2Step154HeadBank_incomingDistinct : ([s2Step154HeadGRow,s2Step154HeadFRow,s2Step154HeadGvRow,s2Step154HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step154HeadF_Incoming : rowsOwned s2Step154HeadFBefore [s2Step154HeadFRow,s2Step154HeadGvRow,s2Step154HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step154HeadGRow,s2Step154HeadFRow,s2Step154HeadGvRow,s2Step154HeadFvRow] 1 s2Step154HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step154HeadFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step154HeadBank_outgoingOwned : rowsOwned s2Step154HeadFvAfter [s2Step154HeadGOut,s2Step154HeadFOut,s2Step154HeadGvOut,s2Step154HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step154HeadFvAfter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step154HeadF_Outgoing : rowsOwned s2Step154HeadFvAfter [s2Step154HeadFOut,s2Step154HeadGvOut,s2Step154HeadFvOut] :=
  hmrRows_owned_drop s2Step154HeadFvAfter [s2Step154HeadGOut,s2Step154HeadFOut,s2Step154HeadGvOut,s2Step154HeadFvOut] 1 s2Step154HeadBank_outgoingOwned

private theorem s2Step154HeadF_distinct : (s2Step154HeadFRow.sign::s2Step154HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step154HeadF_owned : (s2Step154HeadFRow.sign::s2Step154HeadFRow.payload).toFinset⊆s2Step154HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step154HeadFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step154HeadF_reserved : s2Step154HeadFBefore.reserve s2Step154HeadFFresh.toFinset=some s2Step154HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step154HeadFFresh,arenaWires]
  · norm_num [s2Step154HeadFBefore,s2Step154HeadGAfter,s2Step154HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step154HeadFAfter,s2Step154HeadFBefore,s2Step154HeadGAfter,s2Step154HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step154HeadF_checked : planRowResizeLog s2Step154HeadFBefore s2Step154HeadFRow 194 s2Step154HeadFFresh=
    some (s2Step154HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 849],768⟩,growRow 768 s2Step154HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step154HeadFBefore s2Step154HeadFAfter s2Step154HeadFRow 194 s2Step154HeadFFresh
    s2Step154HeadF_distinct s2Step154HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step154HeadF_reserved
  have rowEq : WindowRow.mk (s2Step154HeadFRow.payload++s2Step154HeadFFresh) s2Step154HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 849],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step154HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<839) ∨ (840≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step154HeadFvBefore : Arena := s2Step154HeadGvAfter

private theorem s2Step154HeadFv_Incoming : rowsOwned s2Step154HeadFvBefore [s2Step154HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step154HeadGRow,s2Step154HeadFRow,s2Step154HeadGvRow,s2Step154HeadFvRow] 3 s2Step154HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step154HeadFvBefore (fun q => (0≤q ∧ q<839) ∨ (840≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step154HeadFv_Outgoing : rowsOwned s2Step154HeadFvAfter [s2Step154HeadFvOut] :=
  hmrRows_owned_drop s2Step154HeadFvAfter [s2Step154HeadGOut,s2Step154HeadFOut,s2Step154HeadGvOut,s2Step154HeadFvOut] 3 s2Step154HeadBank_outgoingOwned

private theorem s2Step154HeadFv_distinct : (s2Step154HeadFvRow.sign::s2Step154HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step154HeadFv_owned : (s2Step154HeadFvRow.sign::s2Step154HeadFvRow.payload).toFinset⊆s2Step154HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step154HeadFvBefore (fun q => (0≤q ∧ q<839) ∨ (840≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step154HeadFv_reserved : s2Step154HeadFvBefore.reserve s2Step154HeadFvFresh.toFinset=some s2Step154HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step154HeadFvFresh,arenaWires]
  · norm_num [s2Step154HeadFvBefore,s2Step154HeadGvAfter,s2Step154HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step154HeadFvAfter,s2Step154HeadFvBefore,s2Step154HeadGvAfter,s2Step154HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step154HeadFv_checked : planRowResizeLog s2Step154HeadFvBefore s2Step154HeadFvRow 93 s2Step154HeadFvFresh=
    some (s2Step154HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 839],770⟩,growRow 770 s2Step154HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step154HeadFvBefore s2Step154HeadFvAfter s2Step154HeadFvRow 93 s2Step154HeadFvFresh
    s2Step154HeadFv_distinct s2Step154HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step154HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step154HeadFvRow.payload++s2Step154HeadFvFresh) s2Step154HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 839],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step154HeadG_Incoming : rowsOwned s2Step154HeadGBefore [s2Step154HeadGRow,s2Step154HeadFRow,s2Step154HeadGvRow,s2Step154HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step154HeadGRow,s2Step154HeadFRow,s2Step154HeadGvRow,s2Step154HeadFvRow] 0 s2Step154HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step154HeadGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step154HeadG_Outgoing : rowsOwned s2Step154HeadFvAfter [s2Step154HeadGOut,s2Step154HeadFOut,s2Step154HeadGvOut,s2Step154HeadFvOut] :=
  hmrRows_owned_drop s2Step154HeadFvAfter [s2Step154HeadGOut,s2Step154HeadFOut,s2Step154HeadGvOut,s2Step154HeadFvOut] 0 s2Step154HeadBank_outgoingOwned

private theorem s2Step154HeadG_distinct : (s2Step154HeadGRow.sign::s2Step154HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step154HeadG_owned : (s2Step154HeadGRow.sign::s2Step154HeadGRow.payload).toFinset⊆s2Step154HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step154HeadGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step154HeadG_reserved : s2Step154HeadGBefore.reserve s2Step154HeadGFresh.toFinset=some s2Step154HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step154HeadGFresh,arenaWires]
  · norm_num [s2Step154HeadGBefore,s2Step154HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step154HeadGAfter,s2Step154HeadGBefore,s2Step154HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step154HeadG_checked : planRowResizeLog s2Step154HeadGBefore s2Step154HeadGRow 194 s2Step154HeadGFresh=
    some (s2Step154HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 790, 797],769⟩,growRow 769 s2Step154HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step154HeadGBefore s2Step154HeadGAfter s2Step154HeadGRow 194 s2Step154HeadGFresh
    s2Step154HeadG_distinct s2Step154HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step154HeadG_reserved
  have rowEq : WindowRow.mk (s2Step154HeadGRow.payload++s2Step154HeadGFresh) s2Step154HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 790, 797],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step154HeadGvBefore : Arena := s2Step154HeadFAfter

private theorem s2Step154HeadGv_Incoming : rowsOwned s2Step154HeadGvBefore [s2Step154HeadGvRow,s2Step154HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step154HeadGRow,s2Step154HeadFRow,s2Step154HeadGvRow,s2Step154HeadFvRow] 2 s2Step154HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step154HeadGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<839) ∨ (840≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step154HeadGv_Outgoing : rowsOwned s2Step154HeadFvAfter [s2Step154HeadGvOut,s2Step154HeadFvOut] :=
  hmrRows_owned_drop s2Step154HeadFvAfter [s2Step154HeadGOut,s2Step154HeadFOut,s2Step154HeadGvOut,s2Step154HeadFvOut] 2 s2Step154HeadBank_outgoingOwned

private theorem s2Step154HeadGv_distinct : (s2Step154HeadGvRow.sign::s2Step154HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step154HeadGv_owned : (s2Step154HeadGvRow.sign::s2Step154HeadGvRow.payload).toFinset⊆s2Step154HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step154HeadGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<839) ∨ (840≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step154HeadGv_reserved : s2Step154HeadGvBefore.reserve s2Step154HeadGvFresh.toFinset=some s2Step154HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step154HeadGvFresh,arenaWires]
  · norm_num [s2Step154HeadGvBefore,s2Step154HeadFAfter,s2Step154HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step154HeadGvAfter,s2Step154HeadGvBefore,s2Step154HeadFAfter,s2Step154HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step154HeadGv_checked : planRowResizeLog s2Step154HeadGvBefore s2Step154HeadGvRow 93 s2Step154HeadGvFresh=
    some (s2Step154HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 847, 780],771⟩,growRow 771 s2Step154HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step154HeadGvBefore s2Step154HeadGvAfter s2Step154HeadGvRow 93 s2Step154HeadGvFresh
    s2Step154HeadGv_distinct s2Step154HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step154HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step154HeadGvRow.payload++s2Step154HeadGvFresh) s2Step154HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 847, 780],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step154HeadBank_rows : planWindowRowsLog s2Step154HeadGBefore [(s2Step154HeadGRow,194),(s2Step154HeadFRow,194),(s2Step154HeadGvRow,93),(s2Step154HeadFvRow,93)] [s2Step154HeadGFresh,s2Step154HeadFFresh,s2Step154HeadGvFresh,s2Step154HeadFvFresh]=
    some (s2Step154HeadFvAfter,[s2Step154HeadGOut,s2Step154HeadFOut,s2Step154HeadGvOut,s2Step154HeadFvOut],(growRow 769 s2Step154HeadGFresh ++ (growRow 768 s2Step154HeadFFresh ++ (growRow 771 s2Step154HeadGvFresh ++ (growRow 770 s2Step154HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step154HeadFvAfter [] []=some (s2Step154HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step154HeadFvBefore s2Step154HeadFvAfter s2Step154HeadFvAfter
    s2Step154HeadFvRow s2Step154HeadFvOut 93 s2Step154HeadFvFresh [] [] []
    (growRow 770 s2Step154HeadFvFresh) ([]) s2Step154HeadFv_Incoming s2Step154HeadFv_checked h4 s2Step154HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step154HeadGvBefore s2Step154HeadGvAfter s2Step154HeadFvAfter
    s2Step154HeadGvRow s2Step154HeadGvOut 93 s2Step154HeadGvFresh [(s2Step154HeadFvRow,93)] [s2Step154HeadFvFresh] [s2Step154HeadFvOut]
    (growRow 771 s2Step154HeadGvFresh) ((growRow 770 s2Step154HeadFvFresh ++ [])) s2Step154HeadGv_Incoming s2Step154HeadGv_checked h3 s2Step154HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step154HeadFBefore s2Step154HeadFAfter s2Step154HeadFvAfter
    s2Step154HeadFRow s2Step154HeadFOut 194 s2Step154HeadFFresh [(s2Step154HeadGvRow,93),(s2Step154HeadFvRow,93)] [s2Step154HeadGvFresh,s2Step154HeadFvFresh] [s2Step154HeadGvOut,s2Step154HeadFvOut]
    (growRow 768 s2Step154HeadFFresh) ((growRow 771 s2Step154HeadGvFresh ++ (growRow 770 s2Step154HeadFvFresh ++ []))) s2Step154HeadF_Incoming s2Step154HeadF_checked h2 s2Step154HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step154HeadGBefore s2Step154HeadGAfter s2Step154HeadFvAfter
    s2Step154HeadGRow s2Step154HeadGOut 194 s2Step154HeadGFresh [(s2Step154HeadFRow,194),(s2Step154HeadGvRow,93),(s2Step154HeadFvRow,93)] [s2Step154HeadFFresh,s2Step154HeadGvFresh,s2Step154HeadFvFresh] [s2Step154HeadFOut,s2Step154HeadGvOut,s2Step154HeadFvOut]
    (growRow 769 s2Step154HeadGFresh) ((growRow 768 s2Step154HeadFFresh ++ (growRow 771 s2Step154HeadGvFresh ++ (growRow 770 s2Step154HeadFvFresh ++ [])))) s2Step154HeadG_Incoming s2Step154HeadG_checked h1 s2Step154HeadG_Outgoing
  exact h0

private theorem s2Step154HeadBank_checked : compileHmrBankResizeLog .headroom s2Step154HeadGBefore ⟨s2Step154HeadFRow,s2Step154HeadGRow,s2Step154HeadFvRow,s2Step154HeadGvRow⟩ ⟨194,194,93,93⟩ [s2Step154HeadGFresh,s2Step154HeadFFresh,s2Step154HeadGvFresh,s2Step154HeadFvFresh]=
    some (s2Step154HeadFvAfter,⟨s2Step154HeadFOut,s2Step154HeadGOut,s2Step154HeadFvOut,s2Step154HeadGvOut⟩,(growRow 769 s2Step154HeadGFresh ++ (growRow 768 s2Step154HeadFFresh ++ (growRow 771 s2Step154HeadGvFresh ++ (growRow 770 s2Step154HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step154HeadBank_rows]
  rfl

private theorem s2Step154Front_checked : compileHmrSourceFrontLog s2Step154EntryFBefore s2Step154FrontBank 193 92 ⟨192,192,92,91⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step154FrontLog=some s2Step154FrontPlan := by
  have pairEq : s2Step154FrontPair=⟨s2Step154HeadFRow,s2Step154HeadGRow,s2Step154HeadFvRow,s2Step154HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step154FrontHead=⟨s2Step154ExitFRow,s2Step154ExitGRow,s2Step154ExitFvRow,s2Step154ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step154Add0A=s2Step154FrontHead.f.wires := by decide +kernel
  have gEq : s2Step154Add0B=s2Step154FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step154Add1A=s2Step154FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step154Add1B=s2Step154FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step154EntryFBefore s2Step154FrontBank 193 92 ⟨192,192,92,91⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step154FrontLog s2Step154FrontPlan
  · exact s2Step154Front_entry
  · exact s2Step154EntryBank_checked
  · exact s2Step154Front_sigma
  · rfl
  · exact s2Step154Front_branch
  · rfl
  · simpa only [s2Step154FrontPlan,pairEq] using s2Step154HeadBank_checked
  · simpa only [s2Step154FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step154F4_checked
  · exact s2Step154Counter_checked
  · rfl
  · simpa only [s2Step154FrontPlan,headEq] using s2Step154ExitBank_checked

private theorem s2Step154Complete_explicit_checked : compileHmrEarlyStepLog s2Step154EntryFBefore s2Step154FrontBank 193 92 ⟨192,192,92,91⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step154CompleteLog=some s2Step154CompletePlan := by
  let Q := s2Step154EarlyControlPlan
  have hq := s2Step154EarlyControl_plan_checked
  have fv1 : s2Step154CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step154CompleteOut.fv.payload[2]?.getD s2Step154CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step154CompleteOut.fv.payload[3]?.getD s2Step154CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step154CompleteOut.fv.payload[4]?.getD s2Step154CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step154EntryFBefore s2Step154EarlyControlArena s2Step154FrontBank 193 92 ⟨192,192,92,91⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step154CompleteLog s2Step154FrontPlan Q
    s2Step154Front_checked s2Step154Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step154Complete_owned s2Step154Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step154EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 778 s2Step154CompleteOut.fv.second (s2Step154CompleteOut.fv.payload[2]?.getD s2Step154CompleteOut.fv.sign) (s2Step154CompleteOut.fv.payload[3]?.getD s2Step154CompleteOut.fv.sign) (s2Step154CompleteOut.fv.payload[4]?.getD s2Step154CompleteOut.fv.sign) 791 42 s2Step154EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep154Arena : Arena := s2Step154EntryFBefore
def s2PrivateStep154Bank : WindowBank := s2Step154FrontBank
def s2PrivateStep154Spec : HmrSourceWalkStepLog := ⟨193,92,⟨192,192,92,91⟩,42,.early s2Step154CompleteLog⟩
def s2PrivateStep154Plan : HmrSourceStepPlan := .early s2Step154CompletePlan
theorem s2PrivateStep154_source : s2PrivateStep154Spec=s2ObservedLogs144[10] := rfl
theorem s2PrivateStep154_checked : compileHmrSourceStepLog s2PrivateStep154Arena s2PrivateStep154Bank
    s2PrivateStep154Spec.fgWidth s2PrivateStep154Spec.vWidth s2PrivateStep154Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]
    6 498 154 s2PrivateStep154Spec.need none s2PrivateStep154Spec.log=some s2PrivateStep154Plan := by
  change compileHmrSourceStepLog s2Step154EntryFBefore s2Step154FrontBank 193 92 ⟨192,192,92,91⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 6 498 154 42 none (.early s2Step154CompleteLog)=some (.early s2Step154CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 154<498)]
  rw [s2Step154Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
