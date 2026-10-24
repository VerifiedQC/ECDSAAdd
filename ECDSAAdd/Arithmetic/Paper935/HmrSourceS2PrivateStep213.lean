import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep211
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

private def s2Step213CompleteMoves : List (Wire × Wire) := []

private def s2Step213EarlyControlLog : HmrEarlyControlLog := ⟨[845, 789, 839, 796, 791],[815],[783],[814, 882, 826, 842, 885, 891],[]⟩

private def s2Step213FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [796], [], [822]],[[791], [839], [845], [789]],[[], [], [], []]⟩,[851],[801],[815],[783],[814, 882, 826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[814, 882, 826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[815, 783, 814, 882]⟩

private def s2Step213CompleteLog : HmrEarlyStepLog := ⟨s2Step213FrontLog,s2Step213CompleteMoves,s2Step213EarlyControlLog⟩

private def s2Step213ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674],768⟩

private def s2Step213ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781],770⟩

private def s2Step213ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161],769⟩

private def s2Step213ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822],771⟩

private def s2Step213FrontOut : WindowBank := ⟨s2Step213ExitFOut,s2Step213ExitGOut,s2Step213ExitFvOut,s2Step213ExitGvOut⟩

private def s2Step213CompleteOut : WindowBank := s2Step213FrontOut.repacked s2Step213CompleteMoves

private def s2Step213EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step213EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step213EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step213EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step213EarlyControlPositiveArena,[815],s2Step213EarlyControlEqualityArena,[783],⟨⟨851,false⟩,[⟨⟨815,false⟩,783⟩]⟩⟩

private def s2Step213EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step213EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step213EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step213EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<851) ∨ (852≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step213EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<851) ∨ (852≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step213EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step213EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,845⟩,⟨⟨774,false⟩,789⟩,⟨⟨775,false⟩,839⟩,⟨⟨776,false⟩,796⟩,⟨⟨777,false⟩,791⟩]⟩

private def s2Step213EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step213EarlyControlZeroArena,s2Step213EarlyControlZeroPlan,s2Step213EarlyControlClassPlan,s2Step213EarlyControlFlagArena,s2Step213EarlyControlFittedArena,s2Step213EarlyControlHistoryArena,s2Step213EarlyControlSigmaArena,s2Step213EarlyControlOutputArena,s2Step213EarlyControlLog⟩

private def s2Step213CounterWork : List Wire := [815, 783, 814, 882]

private theorem s2Step213Counter_bounded : s2Step213CounterWork.toFinset⊆arenaWires := by norm_num [s2Step213CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step213HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step213CounterDuring : Arena := ⟨s2Step213HeadFvAfter.live∪s2Step213CounterWork.toFinset,Finset.union_subset s2Step213HeadFvAfter.bounded s2Step213Counter_bounded⟩

private def s2Step213EntryFFresh : List Wire := []

private def s2Step213EntryFvFresh : List Wire := []

private def s2Step213EntryGFresh : List Wire := [796]

private def s2Step213EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<851) ∨ (852≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step213EntryGvFresh : List Wire := [822]

private def s2Step213ExitFExtra : List Wire := [839]

private def s2Step213ExitFvExtra : List Wire := [789]

private def s2Step213ExitGExtra : List Wire := [796, 791]

private def s2Step213ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step213ExitGvExtra : List Wire := [845]

private def s2Step213Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step213Add0Work : List Wire := [814, 882, 826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step213Add0_bounded : s2Step213Add0Work.toFinset⊆arenaWires := by
  have h : s2Step213Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step213Add0During : Arena := ⟨s2Step213Add0Arena.live∪s2Step213Add0Work.toFinset,Finset.union_subset s2Step213Add0Arena.bounded s2Step213Add0_bounded⟩

private def s2Step213Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step213Add1Work : List Wire := [814, 882, 826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step213Add1_bounded : s2Step213Add1Work.toFinset⊆arenaWires := by
  have h : s2Step213Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step213Add1During : Arena := ⟨s2Step213Add1Arena.live∪s2Step213Add1Work.toFinset,Finset.union_subset s2Step213Add1Arena.bounded s2Step213Add1_bounded⟩

private def s2Step213F4FlagArena : Arena := ⟨s2Step213HeadFvAfter.live∪{815},Finset.union_subset s2Step213HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step213F4Plan : HmrHybridF4Plan := ⟨s2Step213F4FlagArena,[815],s2Step213Add0Arena,[783],s2Step213Add0During,s2Step213Add0Work,s2Step213Add1During,s2Step213Add1Work⟩

private def s2Step213HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 839],768⟩

private def s2Step213HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 789],770⟩

private def s2Step213HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 796, 791],769⟩

private def s2Step213HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 845],771⟩

private def s2Step213FrontHead : WindowBank := ⟨s2Step213HeadFOut,s2Step213HeadGOut,s2Step213HeadFvOut,s2Step213HeadGvOut⟩

private def s2Step213EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674],768⟩

private def s2Step213EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781],770⟩

private def s2Step213EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 796],769⟩

private def s2Step213EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822],771⟩

private def s2Step213FrontPair : WindowBank := ⟨s2Step213EntryFOut,s2Step213EntryGOut,s2Step213EntryFvOut,s2Step213EntryGvOut⟩

private def s2Step213FrontSigmaArena : Arena := ⟨s2Step213EntryGvAfter.live∪{851},Finset.union_subset s2Step213EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step213HeadFFresh : List Wire := [839]

private def s2Step213HeadFvFresh : List Wire := [789]

private def s2Step213HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step213HeadGFresh : List Wire := [791]

private def s2Step213HeadGvFresh : List Wire := [845]

private def s2Step213FrontPlan : HmrSourceFront := ⟨s2Step213EntryGvAfter,s2Step213FrontPair,(growRow 768 s2Step213EntryFFresh ++ (growRow 769 s2Step213EntryGFresh ++ (growRow 770 s2Step213EntryFvFresh ++ (growRow 771 s2Step213EntryGvFresh ++ [])))),s2Step213FrontSigmaArena,[851],s2Step213HeadGBefore,[801],
  s2Step213HeadFvAfter,s2Step213FrontHead,(growRow 769 s2Step213HeadGFresh ++ (growRow 768 s2Step213HeadFFresh ++ (growRow 771 s2Step213HeadGvFresh ++ (growRow 770 s2Step213HeadFvFresh ++ [])))),s2Step213F4Plan,s2Step213CounterDuring,s2Step213CounterWork,s2Step213ExitGvAfter,s2Step213FrontOut,(shrinkRow 769 s2Step213ExitGExtra ++ (shrinkRow 768 s2Step213ExitFExtra ++ (shrinkRow 770 s2Step213ExitFvExtra ++ (shrinkRow 771 s2Step213ExitGvExtra ++ []))))⟩

private def s2Step213CompletePlan : HmrEarlyStepPlan := ⟨s2Step213FrontPlan,s2Step213EarlyControlArena,s2Step213EarlyControlPlan,s2Step213CompleteMoves⟩

private theorem s2Step213Complete_apart : List.Disjoint (s2Step213CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [851, 801, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] := by
  have nd : ((s2Step213CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[851, 801, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step213Complete_owned : (s2Step213CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step213EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step213EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step213Complete_repack : s2Step213ExitGvAfter.checkRepack s2Step213CompleteMoves=some s2Step213EarlyControlArena := by rfl

private theorem s2Step213EarlyControl_branchOwned : ([801] : List Wire).toFinset⊆s2Step213EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step213EarlyControlSigmaArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<851) ∨ (852≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step213EarlyControl_branch : compileHmrBranchRetirement s2Step213EarlyControlSigmaArena 801=some s2Step213EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step213EarlyControl_branchOwned
  · ext q
    simp [s2Step213EarlyControlOutputArena,s2Step213EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step213EarlyControl_classEqualityBorrow : s2Step213EarlyControlPositiveArena.checkBorrow (([851, 815] : List Wire).length-1) s2Step213EarlyControlLog.classWork=some s2Step213EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step213EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step213EarlyControlPositiveArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step213EarlyControlEqualityArena,s2Step213EarlyControlPositiveArena,s2Step213EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step213EarlyControl_classEqualityOwned : ([851, 815] : List Wire).toFinset⊆s2Step213EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step213EarlyControlPositiveArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step213EarlyControl_classEquality : compileHmrEqualityLog s2Step213EarlyControlPositiveArena [851, 815] 0 s2Step213EarlyControlLog.classWork=some (s2Step213EarlyControlEqualityArena,s2Step213EarlyControlLog.classWork,s2Step213EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step213EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step213EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step213EarlyControl_classOwned : ([777, 791, 851] : List Wire).toFinset⊆s2Step213EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step213EarlyControlZeroArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step213EarlyControl_positiveBorrow : s2Step213EarlyControlZeroArena.checkBorrow (1) s2Step213EarlyControlLog.positiveWork=some s2Step213EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step213EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step213EarlyControlZeroArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step213EarlyControlPositiveArena,s2Step213EarlyControlZeroArena,s2Step213EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step213EarlyControl_class : compileHmrSourceClassLog s2Step213EarlyControlZeroArena false 777 s2Step213EarlyControlZeroPlan.top 0 851 s2Step213EarlyControlLog.positiveWork s2Step213EarlyControlLog.classWork=some s2Step213EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step213EarlyControlClassPlan s2Step213EarlyControlZeroArena false 777 s2Step213EarlyControlZeroPlan.top 0 851
  constructor
  · decide +kernel
  · exact s2Step213EarlyControl_classOwned
  · exact s2Step213EarlyControl_positiveBorrow
  · exact s2Step213EarlyControl_classEquality

private theorem s2Step213EarlyControl_entryRecordOwned : ([801, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step213EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step213EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step213EarlyControl_entrySigmaOwned : ([851, 254] : List Wire).toFinset⊆s2Step213EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step213EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step213EarlyControl_fitBorrow : s2Step213EarlyControlFlagArena.checkBorrow ((47-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).length)) s2Step213EarlyControlLog.recordFresh=some s2Step213EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step213EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step213EarlyControlFlagArena (fun q => (0≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step213EarlyControlFittedArena,s2Step213EarlyControlFlagArena,s2Step213EarlyControlLog,arenaWires]

private theorem s2Step213EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step213EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step213EarlyControlFlagArena (fun q => (0≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step213EarlyControl_fit : compileHmrRecordGrowLog s2Step213EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step213EarlyControlLog.recordFresh=some s2Step213EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step213EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step213EarlyControl_fitBorrow

private theorem s2Step213EarlyControl_flagsBorrow : s2Step213EarlyControlEqualityArena.checkBorrow (6) s2Step213EarlyControlLog.flagWork=some s2Step213EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step213EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step213EarlyControlEqualityArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step213EarlyControlFlagArena,s2Step213EarlyControlEqualityArena,s2Step213EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step213EarlyControl_flagsOwned : ([783, 253, 252, 251] : List Wire).toFinset⊆s2Step213EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step213EarlyControlEqualityArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step213EarlyControl_flags : compileHmrFlagsLog s2Step213EarlyControlClassPlan.equalityArena s2Step213EarlyControlClassPlan.equality.top 253 252 251 s2Step213EarlyControlLog.flagWork=some s2Step213EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step213EarlyControl_flagsOwned⟩
  · exact s2Step213EarlyControl_flagsBorrow

private theorem s2Step213EarlyControl_historyBorrow : s2Step213EarlyControlArena.checkBorrow ((47-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).length)) s2Step213EarlyControlLog.recordFresh=some s2Step213EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step213EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step213EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step213EarlyControlHistoryArena,s2Step213EarlyControlArena,s2Step213EarlyControlLog,arenaWires]

private theorem s2Step213EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step213EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step213EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step213EarlyControl_history : compileHmrRecordGrowLog s2Step213EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step213EarlyControlLog.recordFresh=some s2Step213EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step213EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step213EarlyControl_historyBorrow

private theorem s2Step213EarlyControl_sigmaOwned : ([254, 851] : List Wire).toFinset⊆s2Step213EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step213EarlyControlHistoryArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step213EarlyControl_sigmaReleaseOwned : ([851] : List Wire).toFinset⊆s2Step213EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step213EarlyControlHistoryArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step213EarlyControl_sigmaRelease : s2Step213EarlyControlHistoryArena.release {851} (fun _ => false)=some s2Step213EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step213EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step213EarlyControlSigmaArena,s2Step213EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step213EarlyControl_sigma : compileHmrSigmaDropLog s2Step213EarlyControlHistoryArena false 0 0 254 851 []=some s2Step213EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step213EarlyControl_sigmaOwned⟩
  · exact s2Step213EarlyControl_sigmaRelease

private theorem s2Step213EarlyControl_zeroBorrow : s2Step213EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step213EarlyControlLog.zeroWork=some s2Step213EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step213EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step213EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step213EarlyControlZeroArena,s2Step213EarlyControlArena,s2Step213EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step213EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step213EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step213EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step213EarlyControl_zero : compileHmrEqualityLog s2Step213EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step213EarlyControlLog.zeroWork=some (s2Step213EarlyControlZeroArena,s2Step213EarlyControlLog.zeroWork,s2Step213EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step213EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step213EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step213EarlyControl_logged : s2Step213EarlyControlPlan.Logged s2Step213EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 851 254 253 252 251 801 47 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step213EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step213EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step213EarlyControl_zero
  · exact s2Step213EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step213EarlyControl_flags
  · exact s2Step213EarlyControl_fit
  · exact s2Step213EarlyControl_history
  · exact s2Step213EarlyControl_sigma
  · exact s2Step213EarlyControl_branch

private theorem s2Step213EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step213EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 851 254 253 252 251 801 47 s2Step213EarlyControlLog=some s2Step213EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step213EarlyControlPlan s2Step213EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 851 254 253 252 251 801 47 s2Step213EarlyControl_logged

private def s2Step213EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<851) ∨ (852≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step213EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674],768⟩

private def s2Step213EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781],770⟩

private def s2Step213EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161],769⟩

private def s2Step213EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841],771⟩

private def s2Step213FrontBank : WindowBank := ⟨s2Step213EntryFRow,s2Step213EntryGRow,s2Step213EntryFvRow,s2Step213EntryGvRow⟩

private def s2Step213Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 839, 768]

private def s2Step213Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 796, 791, 769]

private def s2Step213Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 789, 770]

private def s2Step213Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 845, 771]

private theorem s2Step213Counter_apart : Disjoint s2Step213HeadFvAfter.live s2Step213CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step213HeadFvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step213Counter_borrowed : s2Step213HeadFvAfter.checkBorrow 4 s2Step213CounterWork=some s2Step213CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step213HeadFvAfter s2Step213CounterDuring s2Step213CounterWork.toFinset s2Step213Counter_bounded s2Step213Counter_apart rfl

private theorem s2Step213Counter_owned : (851::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step213HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step213HeadFvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step213Counter_checked : compileHmrCounterStepLog s2Step213HeadFvAfter true 851 [772, 773, 774, 775, 776, 777] s2Step213CounterWork=some s2Step213CounterDuring := by
  have owned : ∀q∈851::[772, 773, 774, 775, 776, 777],q∈s2Step213HeadFvAfter.live := fun q hq => s2Step213Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step213Counter_borrowed

private def s2Step213EntryFAfter : Arena := s2Step213EntryFBefore

private theorem s2Step213EntryBank_incomingDistinct : ([s2Step213EntryFRow,s2Step213EntryGRow,s2Step213EntryFvRow,s2Step213EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step213EntryF_Incoming : rowsOwned s2Step213EntryFBefore [s2Step213EntryFRow,s2Step213EntryGRow,s2Step213EntryFvRow,s2Step213EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step213EntryFRow,s2Step213EntryGRow,s2Step213EntryFvRow,s2Step213EntryGvRow] 0 s2Step213EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step213EntryFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<851) ∨ (852≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step213EntryBank_outgoingOwned : rowsOwned s2Step213EntryGvAfter [s2Step213EntryFOut,s2Step213EntryGOut,s2Step213EntryFvOut,s2Step213EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step213EntryGvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<851) ∨ (852≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step213EntryF_Outgoing : rowsOwned s2Step213EntryGvAfter [s2Step213EntryFOut,s2Step213EntryGOut,s2Step213EntryFvOut,s2Step213EntryGvOut] :=
  hmrRows_owned_drop s2Step213EntryGvAfter [s2Step213EntryFOut,s2Step213EntryGOut,s2Step213EntryFvOut,s2Step213EntryGvOut] 0 s2Step213EntryBank_outgoingOwned

private theorem s2Step213EntryF_distinct : (s2Step213EntryFRow.sign::s2Step213EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step213EntryF_owned : (s2Step213EntryFRow.sign::s2Step213EntryFRow.payload).toFinset⊆s2Step213EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step213EntryFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<851) ∨ (852≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step213EntryF_reserved : s2Step213EntryFBefore.reserve s2Step213EntryFFresh.toFinset=some s2Step213EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step213EntryFFresh,arenaWires]
  · norm_num [s2Step213EntryFBefore,s2Step213EntryFFresh,arenaWires]
  · simp only [s2Step213EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step213EntryF_checked : planRowResizeLog s2Step213EntryFBefore s2Step213EntryFRow 163 s2Step213EntryFFresh=
    some (s2Step213EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674],768⟩,growRow 768 s2Step213EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step213EntryFBefore s2Step213EntryFAfter s2Step213EntryFRow 163 s2Step213EntryFFresh
    s2Step213EntryF_distinct s2Step213EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step213EntryF_reserved
  have rowEq : WindowRow.mk (s2Step213EntryFRow.payload++s2Step213EntryFFresh) s2Step213EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step213EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<851) ∨ (852≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step213EntryFvAfter : Arena := s2Step213EntryGAfter

private def s2Step213EntryFvBefore : Arena := s2Step213EntryGAfter

private theorem s2Step213EntryFv_Incoming : rowsOwned s2Step213EntryFvBefore [s2Step213EntryFvRow,s2Step213EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step213EntryFRow,s2Step213EntryGRow,s2Step213EntryFvRow,s2Step213EntryGvRow] 2 s2Step213EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step213EntryFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<851) ∨ (852≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step213EntryFv_Outgoing : rowsOwned s2Step213EntryGvAfter [s2Step213EntryFvOut,s2Step213EntryGvOut] :=
  hmrRows_owned_drop s2Step213EntryGvAfter [s2Step213EntryFOut,s2Step213EntryGOut,s2Step213EntryFvOut,s2Step213EntryGvOut] 2 s2Step213EntryBank_outgoingOwned

private theorem s2Step213EntryFv_distinct : (s2Step213EntryFvRow.sign::s2Step213EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step213EntryFv_owned : (s2Step213EntryFvRow.sign::s2Step213EntryFvRow.payload).toFinset⊆s2Step213EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step213EntryFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<851) ∨ (852≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step213EntryFv_reserved : s2Step213EntryFvBefore.reserve s2Step213EntryFvFresh.toFinset=some s2Step213EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step213EntryFvFresh,arenaWires]
  · norm_num [s2Step213EntryFvBefore,s2Step213EntryGAfter,s2Step213EntryFvFresh,arenaWires]
  · simp only [s2Step213EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step213EntryFv_checked : planRowResizeLog s2Step213EntryFvBefore s2Step213EntryFvRow 121 s2Step213EntryFvFresh=
    some (s2Step213EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781],770⟩,growRow 770 s2Step213EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step213EntryFvBefore s2Step213EntryFvAfter s2Step213EntryFvRow 121 s2Step213EntryFvFresh
    s2Step213EntryFv_distinct s2Step213EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step213EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step213EntryFvRow.payload++s2Step213EntryFvFresh) s2Step213EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step213EntryGBefore : Arena := s2Step213EntryFBefore

private theorem s2Step213EntryG_Incoming : rowsOwned s2Step213EntryGBefore [s2Step213EntryGRow,s2Step213EntryFvRow,s2Step213EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step213EntryFRow,s2Step213EntryGRow,s2Step213EntryFvRow,s2Step213EntryGvRow] 1 s2Step213EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step213EntryGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<851) ∨ (852≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step213EntryG_Outgoing : rowsOwned s2Step213EntryGvAfter [s2Step213EntryGOut,s2Step213EntryFvOut,s2Step213EntryGvOut] :=
  hmrRows_owned_drop s2Step213EntryGvAfter [s2Step213EntryFOut,s2Step213EntryGOut,s2Step213EntryFvOut,s2Step213EntryGvOut] 1 s2Step213EntryBank_outgoingOwned

private theorem s2Step213EntryG_distinct : (s2Step213EntryGRow.sign::s2Step213EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step213EntryG_owned : (s2Step213EntryGRow.sign::s2Step213EntryGRow.payload).toFinset⊆s2Step213EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step213EntryGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<851) ∨ (852≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step213EntryG_reserved : s2Step213EntryGBefore.reserve s2Step213EntryGFresh.toFinset=some s2Step213EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step213EntryGFresh,arenaWires]
  · norm_num [s2Step213EntryGBefore,s2Step213EntryFBefore,s2Step213EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step213EntryGAfter,s2Step213EntryGBefore,s2Step213EntryFBefore,s2Step213EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step213EntryG_checked : planRowResizeLog s2Step213EntryGBefore s2Step213EntryGRow 163 s2Step213EntryGFresh=
    some (s2Step213EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 796],769⟩,growRow 769 s2Step213EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step213EntryGBefore s2Step213EntryGAfter s2Step213EntryGRow 163 s2Step213EntryGFresh
    s2Step213EntryG_distinct s2Step213EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step213EntryG_reserved
  have rowEq : WindowRow.mk (s2Step213EntryGRow.payload++s2Step213EntryGFresh) s2Step213EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 796],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step213EntryGvBefore : Arena := s2Step213EntryGAfter

private theorem s2Step213EntryGv_Incoming : rowsOwned s2Step213EntryGvBefore [s2Step213EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step213EntryFRow,s2Step213EntryGRow,s2Step213EntryFvRow,s2Step213EntryGvRow] 3 s2Step213EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step213EntryGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<851) ∨ (852≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step213EntryGv_Outgoing : rowsOwned s2Step213EntryGvAfter [s2Step213EntryGvOut] :=
  hmrRows_owned_drop s2Step213EntryGvAfter [s2Step213EntryFOut,s2Step213EntryGOut,s2Step213EntryFvOut,s2Step213EntryGvOut] 3 s2Step213EntryBank_outgoingOwned

private theorem s2Step213EntryGv_distinct : (s2Step213EntryGvRow.sign::s2Step213EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step213EntryGv_owned : (s2Step213EntryGvRow.sign::s2Step213EntryGvRow.payload).toFinset⊆s2Step213EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step213EntryGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<851) ∨ (852≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step213EntryGv_reserved : s2Step213EntryGvBefore.reserve s2Step213EntryGvFresh.toFinset=some s2Step213EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step213EntryGvFresh,arenaWires]
  · norm_num [s2Step213EntryGvBefore,s2Step213EntryGAfter,s2Step213EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step213EntryGvAfter,s2Step213EntryGvBefore,s2Step213EntryGAfter,s2Step213EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step213EntryGv_checked : planRowResizeLog s2Step213EntryGvBefore s2Step213EntryGvRow 121 s2Step213EntryGvFresh=
    some (s2Step213EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822],771⟩,growRow 771 s2Step213EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step213EntryGvBefore s2Step213EntryGvAfter s2Step213EntryGvRow 121 s2Step213EntryGvFresh
    s2Step213EntryGv_distinct s2Step213EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step213EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step213EntryGvRow.payload++s2Step213EntryGvFresh) s2Step213EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step213EntryBank_rows : planWindowRowsLog s2Step213EntryFBefore [(s2Step213EntryFRow,163),(s2Step213EntryGRow,163),(s2Step213EntryFvRow,121),(s2Step213EntryGvRow,121)] [s2Step213EntryFFresh,s2Step213EntryGFresh,s2Step213EntryFvFresh,s2Step213EntryGvFresh]=
    some (s2Step213EntryGvAfter,[s2Step213EntryFOut,s2Step213EntryGOut,s2Step213EntryFvOut,s2Step213EntryGvOut],(growRow 768 s2Step213EntryFFresh ++ (growRow 769 s2Step213EntryGFresh ++ (growRow 770 s2Step213EntryFvFresh ++ (growRow 771 s2Step213EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step213EntryGvAfter [] []=some (s2Step213EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step213EntryGvBefore s2Step213EntryGvAfter s2Step213EntryGvAfter
    s2Step213EntryGvRow s2Step213EntryGvOut 121 s2Step213EntryGvFresh [] [] []
    (growRow 771 s2Step213EntryGvFresh) ([]) s2Step213EntryGv_Incoming s2Step213EntryGv_checked h4 s2Step213EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step213EntryFvBefore s2Step213EntryFvAfter s2Step213EntryGvAfter
    s2Step213EntryFvRow s2Step213EntryFvOut 121 s2Step213EntryFvFresh [(s2Step213EntryGvRow,121)] [s2Step213EntryGvFresh] [s2Step213EntryGvOut]
    (growRow 770 s2Step213EntryFvFresh) ((growRow 771 s2Step213EntryGvFresh ++ [])) s2Step213EntryFv_Incoming s2Step213EntryFv_checked h3 s2Step213EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step213EntryGBefore s2Step213EntryGAfter s2Step213EntryGvAfter
    s2Step213EntryGRow s2Step213EntryGOut 163 s2Step213EntryGFresh [(s2Step213EntryFvRow,121),(s2Step213EntryGvRow,121)] [s2Step213EntryFvFresh,s2Step213EntryGvFresh] [s2Step213EntryFvOut,s2Step213EntryGvOut]
    (growRow 769 s2Step213EntryGFresh) ((growRow 770 s2Step213EntryFvFresh ++ (growRow 771 s2Step213EntryGvFresh ++ []))) s2Step213EntryG_Incoming s2Step213EntryG_checked h2 s2Step213EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step213EntryFBefore s2Step213EntryFAfter s2Step213EntryGvAfter
    s2Step213EntryFRow s2Step213EntryFOut 163 s2Step213EntryFFresh [(s2Step213EntryGRow,163),(s2Step213EntryFvRow,121),(s2Step213EntryGvRow,121)] [s2Step213EntryGFresh,s2Step213EntryFvFresh,s2Step213EntryGvFresh] [s2Step213EntryGOut,s2Step213EntryFvOut,s2Step213EntryGvOut]
    (growRow 768 s2Step213EntryFFresh) ((growRow 769 s2Step213EntryGFresh ++ (growRow 770 s2Step213EntryFvFresh ++ (growRow 771 s2Step213EntryGvFresh ++ [])))) s2Step213EntryF_Incoming s2Step213EntryF_checked h1 s2Step213EntryF_Outgoing
  exact h0

private theorem s2Step213EntryBank_checked : compileHmrBankResizeLog .entry s2Step213EntryFBefore ⟨s2Step213EntryFRow,s2Step213EntryGRow,s2Step213EntryFvRow,s2Step213EntryGvRow⟩ ⟨163,163,121,121⟩ [s2Step213EntryFFresh,s2Step213EntryGFresh,s2Step213EntryFvFresh,s2Step213EntryGvFresh]=
    some (s2Step213EntryGvAfter,⟨s2Step213EntryFOut,s2Step213EntryGOut,s2Step213EntryFvOut,s2Step213EntryGvOut⟩,(growRow 768 s2Step213EntryFFresh ++ (growRow 769 s2Step213EntryGFresh ++ (growRow 770 s2Step213EntryFvFresh ++ (growRow 771 s2Step213EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step213EntryBank_rows]
  rfl

private def s2Step213ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step213ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step213ExitFBefore : Arena := s2Step213ExitGAfter

private def s2Step213ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 839],768⟩

private def s2Step213ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 789],770⟩

private def s2Step213ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 796, 791],769⟩

private def s2Step213ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 845],771⟩

private theorem s2Step213ExitBank_incomingDistinct : ([s2Step213ExitGRow,s2Step213ExitFRow,s2Step213ExitFvRow,s2Step213ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step213ExitF_Incoming : rowsOwned s2Step213ExitFBefore [s2Step213ExitFRow,s2Step213ExitFvRow,s2Step213ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step213ExitGRow,s2Step213ExitFRow,s2Step213ExitFvRow,s2Step213ExitGvRow] 1 s2Step213ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step213ExitFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step213ExitBank_outgoingOwned : rowsOwned s2Step213ExitGvAfter [s2Step213ExitGOut,s2Step213ExitFOut,s2Step213ExitFvOut,s2Step213ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step213ExitGvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step213ExitF_Outgoing : rowsOwned s2Step213ExitGvAfter [s2Step213ExitFOut,s2Step213ExitFvOut,s2Step213ExitGvOut] :=
  hmrRows_owned_drop s2Step213ExitGvAfter [s2Step213ExitGOut,s2Step213ExitFOut,s2Step213ExitFvOut,s2Step213ExitGvOut] 1 s2Step213ExitBank_outgoingOwned

private theorem s2Step213ExitF_distinct : (s2Step213ExitFRow.sign::s2Step213ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step213ExitF_owned : (s2Step213ExitFRow.sign::s2Step213ExitFRow.payload).toFinset⊆s2Step213ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step213ExitFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step213ExitF_retired : s2Step213ExitFBefore.retireSet s2Step213ExitFExtra.toFinset=s2Step213ExitFAfter := by
  unfold Arena.retireSet s2Step213ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step213ExitFBefore,s2Step213ExitGAfter,s2Step213ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step213ExitF_checked : planRowResizeLog s2Step213ExitFBefore s2Step213ExitFRow 163 []=
    some (s2Step213ExitFAfter,s2Step213ExitFOut,shrinkRow 768 s2Step213ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step213ExitFBefore s2Step213ExitFRow 163 s2Step213ExitF_distinct s2Step213ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step213ExitFRow.payload.take 163) s2Step213ExitFRow.sign=s2Step213ExitFOut := by decide +kernel
  have hi : s2Step213ExitFRow.payload.drop 163=s2Step213ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step213ExitF_retired] at result
  exact result

private def s2Step213ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step213ExitFvBefore : Arena := s2Step213ExitFAfter

private theorem s2Step213ExitFv_Incoming : rowsOwned s2Step213ExitFvBefore [s2Step213ExitFvRow,s2Step213ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step213ExitGRow,s2Step213ExitFRow,s2Step213ExitFvRow,s2Step213ExitGvRow] 2 s2Step213ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step213ExitFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step213ExitFv_Outgoing : rowsOwned s2Step213ExitGvAfter [s2Step213ExitFvOut,s2Step213ExitGvOut] :=
  hmrRows_owned_drop s2Step213ExitGvAfter [s2Step213ExitGOut,s2Step213ExitFOut,s2Step213ExitFvOut,s2Step213ExitGvOut] 2 s2Step213ExitBank_outgoingOwned

private theorem s2Step213ExitFv_distinct : (s2Step213ExitFvRow.sign::s2Step213ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step213ExitFv_owned : (s2Step213ExitFvRow.sign::s2Step213ExitFvRow.payload).toFinset⊆s2Step213ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step213ExitFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step213ExitFv_retired : s2Step213ExitFvBefore.retireSet s2Step213ExitFvExtra.toFinset=s2Step213ExitFvAfter := by
  unfold Arena.retireSet s2Step213ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step213ExitFvBefore,s2Step213ExitFAfter,s2Step213ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step213ExitFv_checked : planRowResizeLog s2Step213ExitFvBefore s2Step213ExitFvRow 121 []=
    some (s2Step213ExitFvAfter,s2Step213ExitFvOut,shrinkRow 770 s2Step213ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step213ExitFvBefore s2Step213ExitFvRow 121 s2Step213ExitFv_distinct s2Step213ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step213ExitFvRow.payload.take 121) s2Step213ExitFvRow.sign=s2Step213ExitFvOut := by decide +kernel
  have hi : s2Step213ExitFvRow.payload.drop 121=s2Step213ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step213ExitFv_retired] at result
  exact result

private def s2Step213ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private theorem s2Step213ExitG_Incoming : rowsOwned s2Step213ExitGBefore [s2Step213ExitGRow,s2Step213ExitFRow,s2Step213ExitFvRow,s2Step213ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step213ExitGRow,s2Step213ExitFRow,s2Step213ExitFvRow,s2Step213ExitGvRow] 0 s2Step213ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step213ExitGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step213ExitG_Outgoing : rowsOwned s2Step213ExitGvAfter [s2Step213ExitGOut,s2Step213ExitFOut,s2Step213ExitFvOut,s2Step213ExitGvOut] :=
  hmrRows_owned_drop s2Step213ExitGvAfter [s2Step213ExitGOut,s2Step213ExitFOut,s2Step213ExitFvOut,s2Step213ExitGvOut] 0 s2Step213ExitBank_outgoingOwned

private theorem s2Step213ExitG_distinct : (s2Step213ExitGRow.sign::s2Step213ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step213ExitG_owned : (s2Step213ExitGRow.sign::s2Step213ExitGRow.payload).toFinset⊆s2Step213ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step213ExitGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step213ExitG_retired : s2Step213ExitGBefore.retireSet s2Step213ExitGExtra.toFinset=s2Step213ExitGAfter := by
  unfold Arena.retireSet s2Step213ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step213ExitGBefore,s2Step213ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step213ExitG_checked : planRowResizeLog s2Step213ExitGBefore s2Step213ExitGRow 162 []=
    some (s2Step213ExitGAfter,s2Step213ExitGOut,shrinkRow 769 s2Step213ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step213ExitGBefore s2Step213ExitGRow 162 s2Step213ExitG_distinct s2Step213ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step213ExitGRow.payload.take 162) s2Step213ExitGRow.sign=s2Step213ExitGOut := by decide +kernel
  have hi : s2Step213ExitGRow.payload.drop 162=s2Step213ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step213ExitG_retired] at result
  exact result

private def s2Step213ExitGvBefore : Arena := s2Step213ExitFvAfter

private theorem s2Step213ExitGv_Incoming : rowsOwned s2Step213ExitGvBefore [s2Step213ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step213ExitGRow,s2Step213ExitFRow,s2Step213ExitFvRow,s2Step213ExitGvRow] 3 s2Step213ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step213ExitGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step213ExitGv_Outgoing : rowsOwned s2Step213ExitGvAfter [s2Step213ExitGvOut] :=
  hmrRows_owned_drop s2Step213ExitGvAfter [s2Step213ExitGOut,s2Step213ExitFOut,s2Step213ExitFvOut,s2Step213ExitGvOut] 3 s2Step213ExitBank_outgoingOwned

private theorem s2Step213ExitGv_distinct : (s2Step213ExitGvRow.sign::s2Step213ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step213ExitGv_owned : (s2Step213ExitGvRow.sign::s2Step213ExitGvRow.payload).toFinset⊆s2Step213ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step213ExitGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step213ExitGv_retired : s2Step213ExitGvBefore.retireSet s2Step213ExitGvExtra.toFinset=s2Step213ExitGvAfter := by
  unfold Arena.retireSet s2Step213ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step213ExitGvBefore,s2Step213ExitFvAfter,s2Step213ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step213ExitGv_checked : planRowResizeLog s2Step213ExitGvBefore s2Step213ExitGvRow 121 []=
    some (s2Step213ExitGvAfter,s2Step213ExitGvOut,shrinkRow 771 s2Step213ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step213ExitGvBefore s2Step213ExitGvRow 121 s2Step213ExitGv_distinct s2Step213ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step213ExitGvRow.payload.take 121) s2Step213ExitGvRow.sign=s2Step213ExitGvOut := by decide +kernel
  have hi : s2Step213ExitGvRow.payload.drop 121=s2Step213ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step213ExitGv_retired] at result
  exact result

private theorem s2Step213ExitBank_rows : planWindowRowsLog s2Step213ExitGBefore [(s2Step213ExitGRow,162),(s2Step213ExitFRow,163),(s2Step213ExitFvRow,121),(s2Step213ExitGvRow,121)] [[],[],[],[]]=
    some (s2Step213ExitGvAfter,[s2Step213ExitGOut,s2Step213ExitFOut,s2Step213ExitFvOut,s2Step213ExitGvOut],(shrinkRow 769 s2Step213ExitGExtra ++ (shrinkRow 768 s2Step213ExitFExtra ++ (shrinkRow 770 s2Step213ExitFvExtra ++ (shrinkRow 771 s2Step213ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step213ExitGvAfter [] []=some (s2Step213ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step213ExitGvBefore s2Step213ExitGvAfter s2Step213ExitGvAfter
    s2Step213ExitGvRow s2Step213ExitGvOut 121 [] [] [] []
    (shrinkRow 771 s2Step213ExitGvExtra) ([]) s2Step213ExitGv_Incoming s2Step213ExitGv_checked h4 s2Step213ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step213ExitFvBefore s2Step213ExitFvAfter s2Step213ExitGvAfter
    s2Step213ExitFvRow s2Step213ExitFvOut 121 [] [(s2Step213ExitGvRow,121)] [[]] [s2Step213ExitGvOut]
    (shrinkRow 770 s2Step213ExitFvExtra) ((shrinkRow 771 s2Step213ExitGvExtra ++ [])) s2Step213ExitFv_Incoming s2Step213ExitFv_checked h3 s2Step213ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step213ExitFBefore s2Step213ExitFAfter s2Step213ExitGvAfter
    s2Step213ExitFRow s2Step213ExitFOut 163 [] [(s2Step213ExitFvRow,121),(s2Step213ExitGvRow,121)] [[],[]] [s2Step213ExitFvOut,s2Step213ExitGvOut]
    (shrinkRow 768 s2Step213ExitFExtra) ((shrinkRow 770 s2Step213ExitFvExtra ++ (shrinkRow 771 s2Step213ExitGvExtra ++ []))) s2Step213ExitF_Incoming s2Step213ExitF_checked h2 s2Step213ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step213ExitGBefore s2Step213ExitGAfter s2Step213ExitGvAfter
    s2Step213ExitGRow s2Step213ExitGOut 162 [] [(s2Step213ExitFRow,163),(s2Step213ExitFvRow,121),(s2Step213ExitGvRow,121)] [[],[],[]] [s2Step213ExitFOut,s2Step213ExitFvOut,s2Step213ExitGvOut]
    (shrinkRow 769 s2Step213ExitGExtra) ((shrinkRow 768 s2Step213ExitFExtra ++ (shrinkRow 770 s2Step213ExitFvExtra ++ (shrinkRow 771 s2Step213ExitGvExtra ++ [])))) s2Step213ExitG_Incoming s2Step213ExitG_checked h1 s2Step213ExitG_Outgoing
  exact h0

private theorem s2Step213ExitBank_checked : compileHmrBankResizeLog .exit s2Step213ExitGBefore ⟨s2Step213ExitFRow,s2Step213ExitGRow,s2Step213ExitFvRow,s2Step213ExitGvRow⟩ ⟨163,162,121,121⟩ [[],[],[],[]]=
    some (s2Step213ExitGvAfter,⟨s2Step213ExitFOut,s2Step213ExitGOut,s2Step213ExitFvOut,s2Step213ExitGvOut⟩,(shrinkRow 769 s2Step213ExitGExtra ++ (shrinkRow 768 s2Step213ExitFExtra ++ (shrinkRow 770 s2Step213ExitFvExtra ++ (shrinkRow 771 s2Step213ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step213ExitBank_rows]
  rfl

private theorem s2Step213Add0_apart : Disjoint s2Step213Add0Arena.live s2Step213Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step213Add0Arena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step213Add0_card : s2Step213Add0Arena.live.card=889 := by
  decide +kernel

private theorem s2Step213Add0_borrowed : s2Step213Add0Arena.checkBorrow (hmrHybridCount s2Step213Add0Arena s2Step213Add0B.length) s2Step213Add0Work=some s2Step213Add0During := by
  have len : s2Step213Add0Work.length=hmrHybridCount s2Step213Add0Arena s2Step213Add0B.length := by
    rw [hmrHybridCount,s2Step213Add0_card]
    decide +kernel
  have nd : s2Step213Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step213Add0Arena s2Step213Add0During s2Step213Add0Work.toFinset s2Step213Add0_bounded s2Step213Add0_apart rfl

private theorem s2Step213Add0_distinct : (815::801::783::(s2Step213Add0A++s2Step213Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step213Add0_owned : (815::801::783::(s2Step213Add0A++s2Step213Add0B)).toFinset⊆s2Step213Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step213Add0Arena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step213Add0_checked : compileHmrHybridCinLog s2Step213Add0Arena 801 815 783 s2Step213Add0A s2Step213Add0B s2Step213Add0Work=some s2Step213Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step213Add0Arena s2Step213Add0During 801 815 783 s2Step213Add0A s2Step213Add0B s2Step213Add0Work
    (by decide +kernel) (by decide +kernel) s2Step213Add0_distinct
    (fun q hq => s2Step213Add0_owned (List.mem_toFinset.mpr hq)) s2Step213Add0_borrowed

private theorem s2Step213Add1_apart : Disjoint s2Step213Add1Arena.live s2Step213Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step213Add1Arena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step213Add1_card : s2Step213Add1Arena.live.card=889 := by
  decide +kernel

private theorem s2Step213Add1_borrowed : s2Step213Add1Arena.checkBorrow (hmrHybridCount s2Step213Add1Arena s2Step213Add1B.length) s2Step213Add1Work=some s2Step213Add1During := by
  have len : s2Step213Add1Work.length=hmrHybridCount s2Step213Add1Arena s2Step213Add1B.length := by
    rw [hmrHybridCount,s2Step213Add1_card]
    decide +kernel
  have nd : s2Step213Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step213Add1Arena s2Step213Add1During s2Step213Add1Work.toFinset s2Step213Add1_bounded s2Step213Add1_apart rfl

private theorem s2Step213Add1_distinct : (815::801::783::(s2Step213Add1A++s2Step213Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step213Add1_owned : (815::801::783::(s2Step213Add1A++s2Step213Add1B)).toFinset⊆s2Step213Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step213Add1Arena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step213Add1_checked : compileHmrHybridCinLog s2Step213Add1Arena 801 815 783 s2Step213Add1A s2Step213Add1B s2Step213Add1Work=some s2Step213Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step213Add1Arena s2Step213Add1During 801 815 783 s2Step213Add1A s2Step213Add1B s2Step213Add1Work
    (by decide +kernel) (by decide +kernel) s2Step213Add1_distinct
    (fun q hq => s2Step213Add1_owned (List.mem_toFinset.mpr hq)) s2Step213Add1_borrowed

private theorem s2Step213F4_apart : Disjoint (s2Step213Add0A++s2Step213Add0B).toFinset (s2Step213Add1A++s2Step213Add1B).toFinset := by
  have nd : ((s2Step213Add0A++s2Step213Add0B)++(s2Step213Add1A++s2Step213Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step213F4_carry : s2Step213F4FlagArena.checkBorrow 1 [783]=some s2Step213Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step213F4FlagArena,s2Step213HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step213F4FlagArena,s2Step213HeadFvAfter,s2Step213Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step213F4_distinct : (851::801::815::783::((s2Step213Add0A++s2Step213Add1A)++(s2Step213Add0B++s2Step213Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step213F4_flag : s2Step213HeadFvAfter.checkBorrow 1 [815]=some s2Step213F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step213HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step213F4_owned : (851::801::((s2Step213Add0A++s2Step213Add1A)++(s2Step213Add0B++s2Step213Add1B))).toFinset⊆s2Step213HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step213HeadFvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step213F4_checked : compileHmrHybridF4Log s2Step213HeadFvAfter 851 801 s2Step213Add0A s2Step213Add0B s2Step213Add1A s2Step213Add1B [815] [783] s2Step213Add0Work s2Step213Add1Work=some s2Step213F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step213HeadFvAfter s2Step213F4FlagArena s2Step213Add0Arena s2Step213Add0During s2Step213Add1During 851 801
    s2Step213Add0A s2Step213Add0B s2Step213Add1A s2Step213Add1B [815] [783] s2Step213Add0Work s2Step213Add1Work
    (fun q hq => s2Step213F4_owned (List.mem_toFinset.mpr hq)) s2Step213F4_flag s2Step213F4_carry
    s2Step213F4_distinct s2Step213F4_apart s2Step213Add0_checked s2Step213Add1_checked

private theorem s2Step213Front_branch : s2Step213FrontSigmaArena.checkBorrow 1 [801]=some s2Step213HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step213FrontSigmaArena,s2Step213EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step213FrontSigmaArena,s2Step213EntryGvAfter,s2Step213HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step213Front_entry : HmrFrontEntryValid s2Step213EntryFBefore s2Step213FrontBank 163 121 ⟨163,162,121,121⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step213FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step213EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step213EntryFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<851) ∨ (852≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step213FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step213Front_sigma : s2Step213EntryGvAfter.checkBorrow 1 [851]=some s2Step213FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step213EntryGvAfter,arenaWires]
  · rfl

private def s2Step213HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step213HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step213HeadFBefore : Arena := s2Step213HeadGAfter

private def s2Step213HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674],768⟩

private def s2Step213HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781],770⟩

private def s2Step213HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 796],769⟩

private def s2Step213HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822],771⟩

private theorem s2Step213HeadBank_incomingDistinct : ([s2Step213HeadGRow,s2Step213HeadFRow,s2Step213HeadGvRow,s2Step213HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step213HeadF_Incoming : rowsOwned s2Step213HeadFBefore [s2Step213HeadFRow,s2Step213HeadGvRow,s2Step213HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step213HeadGRow,s2Step213HeadFRow,s2Step213HeadGvRow,s2Step213HeadFvRow] 1 s2Step213HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step213HeadFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step213HeadBank_outgoingOwned : rowsOwned s2Step213HeadFvAfter [s2Step213HeadGOut,s2Step213HeadFOut,s2Step213HeadGvOut,s2Step213HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step213HeadFvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step213HeadF_Outgoing : rowsOwned s2Step213HeadFvAfter [s2Step213HeadFOut,s2Step213HeadGvOut,s2Step213HeadFvOut] :=
  hmrRows_owned_drop s2Step213HeadFvAfter [s2Step213HeadGOut,s2Step213HeadFOut,s2Step213HeadGvOut,s2Step213HeadFvOut] 1 s2Step213HeadBank_outgoingOwned

private theorem s2Step213HeadF_distinct : (s2Step213HeadFRow.sign::s2Step213HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step213HeadF_owned : (s2Step213HeadFRow.sign::s2Step213HeadFRow.payload).toFinset⊆s2Step213HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step213HeadFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step213HeadF_reserved : s2Step213HeadFBefore.reserve s2Step213HeadFFresh.toFinset=some s2Step213HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step213HeadFFresh,arenaWires]
  · norm_num [s2Step213HeadFBefore,s2Step213HeadGAfter,s2Step213HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step213HeadFAfter,s2Step213HeadFBefore,s2Step213HeadGAfter,s2Step213HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step213HeadF_checked : planRowResizeLog s2Step213HeadFBefore s2Step213HeadFRow 164 s2Step213HeadFFresh=
    some (s2Step213HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 839],768⟩,growRow 768 s2Step213HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step213HeadFBefore s2Step213HeadFAfter s2Step213HeadFRow 164 s2Step213HeadFFresh
    s2Step213HeadF_distinct s2Step213HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step213HeadF_reserved
  have rowEq : WindowRow.mk (s2Step213HeadFRow.payload++s2Step213HeadFFresh) s2Step213HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 839],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step213HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step213HeadFvBefore : Arena := s2Step213HeadGvAfter

private theorem s2Step213HeadFv_Incoming : rowsOwned s2Step213HeadFvBefore [s2Step213HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step213HeadGRow,s2Step213HeadFRow,s2Step213HeadGvRow,s2Step213HeadFvRow] 3 s2Step213HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step213HeadFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step213HeadFv_Outgoing : rowsOwned s2Step213HeadFvAfter [s2Step213HeadFvOut] :=
  hmrRows_owned_drop s2Step213HeadFvAfter [s2Step213HeadGOut,s2Step213HeadFOut,s2Step213HeadGvOut,s2Step213HeadFvOut] 3 s2Step213HeadBank_outgoingOwned

private theorem s2Step213HeadFv_distinct : (s2Step213HeadFvRow.sign::s2Step213HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step213HeadFv_owned : (s2Step213HeadFvRow.sign::s2Step213HeadFvRow.payload).toFinset⊆s2Step213HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step213HeadFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step213HeadFv_reserved : s2Step213HeadFvBefore.reserve s2Step213HeadFvFresh.toFinset=some s2Step213HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step213HeadFvFresh,arenaWires]
  · norm_num [s2Step213HeadFvBefore,s2Step213HeadGvAfter,s2Step213HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step213HeadFvAfter,s2Step213HeadFvBefore,s2Step213HeadGvAfter,s2Step213HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step213HeadFv_checked : planRowResizeLog s2Step213HeadFvBefore s2Step213HeadFvRow 122 s2Step213HeadFvFresh=
    some (s2Step213HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 789],770⟩,growRow 770 s2Step213HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step213HeadFvBefore s2Step213HeadFvAfter s2Step213HeadFvRow 122 s2Step213HeadFvFresh
    s2Step213HeadFv_distinct s2Step213HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step213HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step213HeadFvRow.payload++s2Step213HeadFvFresh) s2Step213HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 789],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step213HeadG_Incoming : rowsOwned s2Step213HeadGBefore [s2Step213HeadGRow,s2Step213HeadFRow,s2Step213HeadGvRow,s2Step213HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step213HeadGRow,s2Step213HeadFRow,s2Step213HeadGvRow,s2Step213HeadFvRow] 0 s2Step213HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step213HeadGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step213HeadG_Outgoing : rowsOwned s2Step213HeadFvAfter [s2Step213HeadGOut,s2Step213HeadFOut,s2Step213HeadGvOut,s2Step213HeadFvOut] :=
  hmrRows_owned_drop s2Step213HeadFvAfter [s2Step213HeadGOut,s2Step213HeadFOut,s2Step213HeadGvOut,s2Step213HeadFvOut] 0 s2Step213HeadBank_outgoingOwned

private theorem s2Step213HeadG_distinct : (s2Step213HeadGRow.sign::s2Step213HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step213HeadG_owned : (s2Step213HeadGRow.sign::s2Step213HeadGRow.payload).toFinset⊆s2Step213HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step213HeadGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step213HeadG_reserved : s2Step213HeadGBefore.reserve s2Step213HeadGFresh.toFinset=some s2Step213HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step213HeadGFresh,arenaWires]
  · norm_num [s2Step213HeadGBefore,s2Step213HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step213HeadGAfter,s2Step213HeadGBefore,s2Step213HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step213HeadG_checked : planRowResizeLog s2Step213HeadGBefore s2Step213HeadGRow 164 s2Step213HeadGFresh=
    some (s2Step213HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 796, 791],769⟩,growRow 769 s2Step213HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step213HeadGBefore s2Step213HeadGAfter s2Step213HeadGRow 164 s2Step213HeadGFresh
    s2Step213HeadG_distinct s2Step213HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step213HeadG_reserved
  have rowEq : WindowRow.mk (s2Step213HeadGRow.payload++s2Step213HeadGFresh) s2Step213HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 796, 791],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step213HeadGvBefore : Arena := s2Step213HeadFAfter

private theorem s2Step213HeadGv_Incoming : rowsOwned s2Step213HeadGvBefore [s2Step213HeadGvRow,s2Step213HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step213HeadGRow,s2Step213HeadFRow,s2Step213HeadGvRow,s2Step213HeadFvRow] 2 s2Step213HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step213HeadGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step213HeadGv_Outgoing : rowsOwned s2Step213HeadFvAfter [s2Step213HeadGvOut,s2Step213HeadFvOut] :=
  hmrRows_owned_drop s2Step213HeadFvAfter [s2Step213HeadGOut,s2Step213HeadFOut,s2Step213HeadGvOut,s2Step213HeadFvOut] 2 s2Step213HeadBank_outgoingOwned

private theorem s2Step213HeadGv_distinct : (s2Step213HeadGvRow.sign::s2Step213HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step213HeadGv_owned : (s2Step213HeadGvRow.sign::s2Step213HeadGvRow.payload).toFinset⊆s2Step213HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step213HeadGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step213HeadGv_reserved : s2Step213HeadGvBefore.reserve s2Step213HeadGvFresh.toFinset=some s2Step213HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step213HeadGvFresh,arenaWires]
  · norm_num [s2Step213HeadGvBefore,s2Step213HeadFAfter,s2Step213HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step213HeadGvAfter,s2Step213HeadGvBefore,s2Step213HeadFAfter,s2Step213HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step213HeadGv_checked : planRowResizeLog s2Step213HeadGvBefore s2Step213HeadGvRow 122 s2Step213HeadGvFresh=
    some (s2Step213HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 845],771⟩,growRow 771 s2Step213HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step213HeadGvBefore s2Step213HeadGvAfter s2Step213HeadGvRow 122 s2Step213HeadGvFresh
    s2Step213HeadGv_distinct s2Step213HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step213HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step213HeadGvRow.payload++s2Step213HeadGvFresh) s2Step213HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 845],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step213HeadBank_rows : planWindowRowsLog s2Step213HeadGBefore [(s2Step213HeadGRow,164),(s2Step213HeadFRow,164),(s2Step213HeadGvRow,122),(s2Step213HeadFvRow,122)] [s2Step213HeadGFresh,s2Step213HeadFFresh,s2Step213HeadGvFresh,s2Step213HeadFvFresh]=
    some (s2Step213HeadFvAfter,[s2Step213HeadGOut,s2Step213HeadFOut,s2Step213HeadGvOut,s2Step213HeadFvOut],(growRow 769 s2Step213HeadGFresh ++ (growRow 768 s2Step213HeadFFresh ++ (growRow 771 s2Step213HeadGvFresh ++ (growRow 770 s2Step213HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step213HeadFvAfter [] []=some (s2Step213HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step213HeadFvBefore s2Step213HeadFvAfter s2Step213HeadFvAfter
    s2Step213HeadFvRow s2Step213HeadFvOut 122 s2Step213HeadFvFresh [] [] []
    (growRow 770 s2Step213HeadFvFresh) ([]) s2Step213HeadFv_Incoming s2Step213HeadFv_checked h4 s2Step213HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step213HeadGvBefore s2Step213HeadGvAfter s2Step213HeadFvAfter
    s2Step213HeadGvRow s2Step213HeadGvOut 122 s2Step213HeadGvFresh [(s2Step213HeadFvRow,122)] [s2Step213HeadFvFresh] [s2Step213HeadFvOut]
    (growRow 771 s2Step213HeadGvFresh) ((growRow 770 s2Step213HeadFvFresh ++ [])) s2Step213HeadGv_Incoming s2Step213HeadGv_checked h3 s2Step213HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step213HeadFBefore s2Step213HeadFAfter s2Step213HeadFvAfter
    s2Step213HeadFRow s2Step213HeadFOut 164 s2Step213HeadFFresh [(s2Step213HeadGvRow,122),(s2Step213HeadFvRow,122)] [s2Step213HeadGvFresh,s2Step213HeadFvFresh] [s2Step213HeadGvOut,s2Step213HeadFvOut]
    (growRow 768 s2Step213HeadFFresh) ((growRow 771 s2Step213HeadGvFresh ++ (growRow 770 s2Step213HeadFvFresh ++ []))) s2Step213HeadF_Incoming s2Step213HeadF_checked h2 s2Step213HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step213HeadGBefore s2Step213HeadGAfter s2Step213HeadFvAfter
    s2Step213HeadGRow s2Step213HeadGOut 164 s2Step213HeadGFresh [(s2Step213HeadFRow,164),(s2Step213HeadGvRow,122),(s2Step213HeadFvRow,122)] [s2Step213HeadFFresh,s2Step213HeadGvFresh,s2Step213HeadFvFresh] [s2Step213HeadFOut,s2Step213HeadGvOut,s2Step213HeadFvOut]
    (growRow 769 s2Step213HeadGFresh) ((growRow 768 s2Step213HeadFFresh ++ (growRow 771 s2Step213HeadGvFresh ++ (growRow 770 s2Step213HeadFvFresh ++ [])))) s2Step213HeadG_Incoming s2Step213HeadG_checked h1 s2Step213HeadG_Outgoing
  exact h0

private theorem s2Step213HeadBank_checked : compileHmrBankResizeLog .headroom s2Step213HeadGBefore ⟨s2Step213HeadFRow,s2Step213HeadGRow,s2Step213HeadFvRow,s2Step213HeadGvRow⟩ ⟨164,164,122,122⟩ [s2Step213HeadGFresh,s2Step213HeadFFresh,s2Step213HeadGvFresh,s2Step213HeadFvFresh]=
    some (s2Step213HeadFvAfter,⟨s2Step213HeadFOut,s2Step213HeadGOut,s2Step213HeadFvOut,s2Step213HeadGvOut⟩,(growRow 769 s2Step213HeadGFresh ++ (growRow 768 s2Step213HeadFFresh ++ (growRow 771 s2Step213HeadGvFresh ++ (growRow 770 s2Step213HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step213HeadBank_rows]
  rfl

private theorem s2Step213Front_checked : compileHmrSourceFrontLog s2Step213EntryFBefore s2Step213FrontBank 163 121 ⟨163,162,121,121⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step213FrontLog=some s2Step213FrontPlan := by
  have pairEq : s2Step213FrontPair=⟨s2Step213HeadFRow,s2Step213HeadGRow,s2Step213HeadFvRow,s2Step213HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step213FrontHead=⟨s2Step213ExitFRow,s2Step213ExitGRow,s2Step213ExitFvRow,s2Step213ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step213Add0A=s2Step213FrontHead.f.wires := by decide +kernel
  have gEq : s2Step213Add0B=s2Step213FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step213Add1A=s2Step213FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step213Add1B=s2Step213FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step213EntryFBefore s2Step213FrontBank 163 121 ⟨163,162,121,121⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step213FrontLog s2Step213FrontPlan
  · exact s2Step213Front_entry
  · exact s2Step213EntryBank_checked
  · exact s2Step213Front_sigma
  · rfl
  · exact s2Step213Front_branch
  · rfl
  · simpa only [s2Step213FrontPlan,pairEq] using s2Step213HeadBank_checked
  · simpa only [s2Step213FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step213F4_checked
  · exact s2Step213Counter_checked
  · rfl
  · simpa only [s2Step213FrontPlan,headEq] using s2Step213ExitBank_checked

private theorem s2Step213Complete_explicit_checked : compileHmrEarlyStepLog s2Step213EntryFBefore s2Step213FrontBank 163 121 ⟨163,162,121,121⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step213CompleteLog=some s2Step213CompletePlan := by
  let Q := s2Step213EarlyControlPlan
  have hq := s2Step213EarlyControl_plan_checked
  have fv1 : s2Step213CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step213CompleteOut.fv.payload[2]?.getD s2Step213CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step213CompleteOut.fv.payload[3]?.getD s2Step213CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step213CompleteOut.fv.payload[4]?.getD s2Step213CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step213EntryFBefore s2Step213EarlyControlArena s2Step213FrontBank 163 121 ⟨163,162,121,121⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step213CompleteLog s2Step213FrontPlan Q
    s2Step213Front_checked s2Step213Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step213Complete_owned s2Step213Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step213EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 851 s2Step213CompleteOut.fv.second (s2Step213CompleteOut.fv.payload[2]?.getD s2Step213CompleteOut.fv.sign) (s2Step213CompleteOut.fv.payload[3]?.getD s2Step213CompleteOut.fv.sign) (s2Step213CompleteOut.fv.payload[4]?.getD s2Step213CompleteOut.fv.sign) 801 47 s2Step213EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep213Arena : Arena := s2Step213EntryFBefore
def s2PrivateStep213Bank : WindowBank := s2Step213FrontBank
def s2PrivateStep213Spec : HmrSourceWalkStepLog := ⟨163,121,⟨163,162,121,121⟩,47,.early s2Step213CompleteLog⟩
def s2PrivateStep213Plan : HmrSourceStepPlan := .early s2Step213CompletePlan
theorem s2PrivateStep213_source : s2PrivateStep213Spec=s2ObservedLogs208[5] := rfl
theorem s2PrivateStep213_checked : compileHmrSourceStepLog s2PrivateStep213Arena s2PrivateStep213Bank
    s2PrivateStep213Spec.fgWidth s2PrivateStep213Spec.vWidth s2PrivateStep213Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897]
    6 498 213 s2PrivateStep213Spec.need none s2PrivateStep213Spec.log=some s2PrivateStep213Plan := by
  change compileHmrSourceStepLog s2Step213EntryFBefore s2Step213FrontBank 163 121 ⟨163,162,121,121⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 6 498 213 47 none (.early s2Step213CompleteLog)=some (.early s2Step213CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 213<498)]
  rw [s2Step213Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
