import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep215
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

private def s2Step217CompleteMoves : List (Wire × Wire) := [(778,673)]

private def s2Step217EarlyControlLog : HmrEarlyControlLog := ⟨[778, 845, 801, 798, 815],[814],[882],[826, 842, 885, 891, 894, 895],[]⟩

private def s2Step217FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [796], [], [839]],[[815], [798], [845], [801]],[[], [], [], []]⟩,[790],[783],[814],[882],[826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[814, 882, 826, 842]⟩

private def s2Step217CompleteLog : HmrEarlyStepLog := ⟨s2Step217FrontLog,s2Step217CompleteMoves,s2Step217EarlyControlLog⟩

private def s2Step217ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672],768⟩

private def s2Step217ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789],770⟩

private def s2Step217ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 796],769⟩

private def s2Step217ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839],771⟩

private def s2Step217FrontOut : WindowBank := ⟨s2Step217ExitFOut,s2Step217ExitGOut,s2Step217ExitFvOut,s2Step217ExitGvOut⟩

private def s2Step217CompleteOut : WindowBank := s2Step217FrontOut.repacked s2Step217CompleteMoves

private def s2Step217EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step217EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step217EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step217EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step217EarlyControlPositiveArena,[814],s2Step217EarlyControlEqualityArena,[882],⟨⟨790,false⟩,[⟨⟨814,false⟩,882⟩]⟩⟩

private def s2Step217EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step217EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step217EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step217EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step217EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step217EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step217EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,778⟩,⟨⟨774,false⟩,845⟩,⟨⟨775,false⟩,801⟩,⟨⟨776,false⟩,798⟩,⟨⟨777,false⟩,815⟩]⟩

private def s2Step217EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step217EarlyControlZeroArena,s2Step217EarlyControlZeroPlan,s2Step217EarlyControlClassPlan,s2Step217EarlyControlFlagArena,s2Step217EarlyControlFittedArena,s2Step217EarlyControlHistoryArena,s2Step217EarlyControlSigmaArena,s2Step217EarlyControlOutputArena,s2Step217EarlyControlLog⟩

private def s2Step217CounterWork : List Wire := [814, 882, 826, 842]

private theorem s2Step217Counter_bounded : s2Step217CounterWork.toFinset⊆arenaWires := by norm_num [s2Step217CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step217HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step217CounterDuring : Arena := ⟨s2Step217HeadFvAfter.live∪s2Step217CounterWork.toFinset,Finset.union_subset s2Step217HeadFvAfter.bounded s2Step217Counter_bounded⟩

private def s2Step217EntryFFresh : List Wire := []

private def s2Step217EntryFvFresh : List Wire := []

private def s2Step217EntryGFresh : List Wire := [796]

private def s2Step217EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step217EntryGvFresh : List Wire := [839]

private def s2Step217ExitFExtra : List Wire := [673, 798]

private def s2Step217ExitFvExtra : List Wire := [801]

private def s2Step217ExitGExtra : List Wire := [815]

private def s2Step217ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<673) ∨ (674≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step217ExitGvExtra : List Wire := [845]

private def s2Step217Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step217Add0Work : List Wire := [826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step217Add0_bounded : s2Step217Add0Work.toFinset⊆arenaWires := by
  have h : s2Step217Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step217Add0During : Arena := ⟨s2Step217Add0Arena.live∪s2Step217Add0Work.toFinset,Finset.union_subset s2Step217Add0Arena.bounded s2Step217Add0_bounded⟩

private def s2Step217Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step217Add1Work : List Wire := [826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step217Add1_bounded : s2Step217Add1Work.toFinset⊆arenaWires := by
  have h : s2Step217Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step217Add1During : Arena := ⟨s2Step217Add1Arena.live∪s2Step217Add1Work.toFinset,Finset.union_subset s2Step217Add1Arena.bounded s2Step217Add1_bounded⟩

private def s2Step217F4FlagArena : Arena := ⟨s2Step217HeadFvAfter.live∪{814},Finset.union_subset s2Step217HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step217F4Plan : HmrHybridF4Plan := ⟨s2Step217F4FlagArena,[814],s2Step217Add0Arena,[882],s2Step217Add0During,s2Step217Add0Work,s2Step217Add1During,s2Step217Add1Work⟩

private def s2Step217HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 798],768⟩

private def s2Step217HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 801],770⟩

private def s2Step217HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 796, 815],769⟩

private def s2Step217HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 845],771⟩

private def s2Step217FrontHead : WindowBank := ⟨s2Step217HeadFOut,s2Step217HeadGOut,s2Step217HeadFvOut,s2Step217HeadGvOut⟩

private def s2Step217EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673],768⟩

private def s2Step217EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789],770⟩

private def s2Step217EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 796],769⟩

private def s2Step217EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839],771⟩

private def s2Step217FrontPair : WindowBank := ⟨s2Step217EntryFOut,s2Step217EntryGOut,s2Step217EntryFvOut,s2Step217EntryGvOut⟩

private def s2Step217FrontSigmaArena : Arena := ⟨s2Step217EntryGvAfter.live∪{790},Finset.union_subset s2Step217EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step217HeadFFresh : List Wire := [798]

private def s2Step217HeadFvFresh : List Wire := [801]

private def s2Step217HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step217HeadGFresh : List Wire := [815]

private def s2Step217HeadGvFresh : List Wire := [845]

private def s2Step217FrontPlan : HmrSourceFront := ⟨s2Step217EntryGvAfter,s2Step217FrontPair,(growRow 768 s2Step217EntryFFresh ++ (growRow 769 s2Step217EntryGFresh ++ (growRow 770 s2Step217EntryFvFresh ++ (growRow 771 s2Step217EntryGvFresh ++ [])))),s2Step217FrontSigmaArena,[790],s2Step217HeadGBefore,[783],
  s2Step217HeadFvAfter,s2Step217FrontHead,(growRow 769 s2Step217HeadGFresh ++ (growRow 768 s2Step217HeadFFresh ++ (growRow 771 s2Step217HeadGvFresh ++ (growRow 770 s2Step217HeadFvFresh ++ [])))),s2Step217F4Plan,s2Step217CounterDuring,s2Step217CounterWork,s2Step217ExitGvAfter,s2Step217FrontOut,(shrinkRow 769 s2Step217ExitGExtra ++ (shrinkRow 768 s2Step217ExitFExtra ++ (shrinkRow 770 s2Step217ExitFvExtra ++ (shrinkRow 771 s2Step217ExitGvExtra ++ []))))⟩

private def s2Step217CompletePlan : HmrEarlyStepPlan := ⟨s2Step217FrontPlan,s2Step217EarlyControlArena,s2Step217EarlyControlPlan,s2Step217CompleteMoves⟩

private theorem s2Step217Complete_apart : List.Disjoint (s2Step217CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [790, 783, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] := by
  have nd : ((s2Step217CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[790, 783, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step217Complete_owned : (s2Step217CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step217EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step217EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private def s2Step217CompleteMoveArena : Arena := ⟨s2Step217ExitGvAfter.live∪{673},Finset.union_subset s2Step217ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step217Complete_repack : s2Step217ExitGvAfter.checkRepack s2Step217CompleteMoves=some s2Step217EarlyControlArena := by
  have owned : 778∈s2Step217ExitGvAfter.live := by norm_num [s2Step217ExitGvAfter,arenaWires]
  have reserve : s2Step217ExitGvAfter.reserve {673}=some s2Step217CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step217ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step217CompleteMoveArena.retireSet {778}=s2Step217EarlyControlArena := by
    unfold Arena.retireSet s2Step217EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step217CompleteMoveArena,s2Step217ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step217CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step217CompleteMoveArena.retireSet {778}).checkRepack []=some s2Step217EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step217EarlyControl_branchOwned : ([783] : List Wire).toFinset⊆s2Step217EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step217EarlyControlSigmaArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step217EarlyControl_branch : compileHmrBranchRetirement s2Step217EarlyControlSigmaArena 783=some s2Step217EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step217EarlyControl_branchOwned
  · ext q
    simp [s2Step217EarlyControlOutputArena,s2Step217EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step217EarlyControl_classEqualityBorrow : s2Step217EarlyControlPositiveArena.checkBorrow (([790, 814] : List Wire).length-1) s2Step217EarlyControlLog.classWork=some s2Step217EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step217EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step217EarlyControlPositiveArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step217EarlyControlEqualityArena,s2Step217EarlyControlPositiveArena,s2Step217EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step217EarlyControl_classEqualityOwned : ([790, 814] : List Wire).toFinset⊆s2Step217EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step217EarlyControlPositiveArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step217EarlyControl_classEquality : compileHmrEqualityLog s2Step217EarlyControlPositiveArena [790, 814] 0 s2Step217EarlyControlLog.classWork=some (s2Step217EarlyControlEqualityArena,s2Step217EarlyControlLog.classWork,s2Step217EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step217EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step217EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step217EarlyControl_classOwned : ([777, 815, 790] : List Wire).toFinset⊆s2Step217EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step217EarlyControlZeroArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step217EarlyControl_positiveBorrow : s2Step217EarlyControlZeroArena.checkBorrow (1) s2Step217EarlyControlLog.positiveWork=some s2Step217EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step217EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step217EarlyControlZeroArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step217EarlyControlPositiveArena,s2Step217EarlyControlZeroArena,s2Step217EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step217EarlyControl_class : compileHmrSourceClassLog s2Step217EarlyControlZeroArena false 777 s2Step217EarlyControlZeroPlan.top 0 790 s2Step217EarlyControlLog.positiveWork s2Step217EarlyControlLog.classWork=some s2Step217EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step217EarlyControlClassPlan s2Step217EarlyControlZeroArena false 777 s2Step217EarlyControlZeroPlan.top 0 790
  constructor
  · decide +kernel
  · exact s2Step217EarlyControl_classOwned
  · exact s2Step217EarlyControl_positiveBorrow
  · exact s2Step217EarlyControl_classEquality

private theorem s2Step217EarlyControl_entryRecordOwned : ([783, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step217EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step217EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step217EarlyControl_entrySigmaOwned : ([790, 254] : List Wire).toFinset⊆s2Step217EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step217EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step217EarlyControl_fitBorrow : s2Step217EarlyControlFlagArena.checkBorrow ((47-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).length)) s2Step217EarlyControlLog.recordFresh=some s2Step217EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step217EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step217EarlyControlFlagArena (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step217EarlyControlFittedArena,s2Step217EarlyControlFlagArena,s2Step217EarlyControlLog,arenaWires]

private theorem s2Step217EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step217EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step217EarlyControlFlagArena (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step217EarlyControl_fit : compileHmrRecordGrowLog s2Step217EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step217EarlyControlLog.recordFresh=some s2Step217EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step217EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step217EarlyControl_fitBorrow

private theorem s2Step217EarlyControl_flagsBorrow : s2Step217EarlyControlEqualityArena.checkBorrow (6) s2Step217EarlyControlLog.flagWork=some s2Step217EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step217EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step217EarlyControlEqualityArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step217EarlyControlFlagArena,s2Step217EarlyControlEqualityArena,s2Step217EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step217EarlyControl_flagsOwned : ([882, 253, 252, 251] : List Wire).toFinset⊆s2Step217EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step217EarlyControlEqualityArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step217EarlyControl_flags : compileHmrFlagsLog s2Step217EarlyControlClassPlan.equalityArena s2Step217EarlyControlClassPlan.equality.top 253 252 251 s2Step217EarlyControlLog.flagWork=some s2Step217EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step217EarlyControl_flagsOwned⟩
  · exact s2Step217EarlyControl_flagsBorrow

private theorem s2Step217EarlyControl_historyBorrow : s2Step217EarlyControlArena.checkBorrow ((47-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).length)) s2Step217EarlyControlLog.recordFresh=some s2Step217EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step217EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step217EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step217EarlyControlHistoryArena,s2Step217EarlyControlArena,s2Step217EarlyControlLog,arenaWires]

private theorem s2Step217EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step217EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step217EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step217EarlyControl_history : compileHmrRecordGrowLog s2Step217EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step217EarlyControlLog.recordFresh=some s2Step217EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step217EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step217EarlyControl_historyBorrow

private theorem s2Step217EarlyControl_sigmaOwned : ([254, 790] : List Wire).toFinset⊆s2Step217EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step217EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step217EarlyControl_sigmaReleaseOwned : ([790] : List Wire).toFinset⊆s2Step217EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step217EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step217EarlyControl_sigmaRelease : s2Step217EarlyControlHistoryArena.release {790} (fun _ => false)=some s2Step217EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step217EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step217EarlyControlSigmaArena,s2Step217EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step217EarlyControl_sigma : compileHmrSigmaDropLog s2Step217EarlyControlHistoryArena false 0 0 254 790 []=some s2Step217EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step217EarlyControl_sigmaOwned⟩
  · exact s2Step217EarlyControl_sigmaRelease

private theorem s2Step217EarlyControl_zeroBorrow : s2Step217EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step217EarlyControlLog.zeroWork=some s2Step217EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step217EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step217EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step217EarlyControlZeroArena,s2Step217EarlyControlArena,s2Step217EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step217EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step217EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step217EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step217EarlyControl_zero : compileHmrEqualityLog s2Step217EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step217EarlyControlLog.zeroWork=some (s2Step217EarlyControlZeroArena,s2Step217EarlyControlLog.zeroWork,s2Step217EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step217EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step217EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step217EarlyControl_logged : s2Step217EarlyControlPlan.Logged s2Step217EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 790 254 253 252 251 783 47 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step217EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step217EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step217EarlyControl_zero
  · exact s2Step217EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step217EarlyControl_flags
  · exact s2Step217EarlyControl_fit
  · exact s2Step217EarlyControl_history
  · exact s2Step217EarlyControl_sigma
  · exact s2Step217EarlyControl_branch

private theorem s2Step217EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step217EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 790 254 253 252 251 783 47 s2Step217EarlyControlLog=some s2Step217EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step217EarlyControlPlan s2Step217EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 790 254 253 252 251 783 47 s2Step217EarlyControl_logged

private def s2Step217EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step217EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673],768⟩

private def s2Step217EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789],770⟩

private def s2Step217EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160],769⟩

private def s2Step217EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851],771⟩

private def s2Step217FrontBank : WindowBank := ⟨s2Step217EntryFRow,s2Step217EntryGRow,s2Step217EntryFvRow,s2Step217EntryGvRow⟩

private def s2Step217Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 798, 768]

private def s2Step217Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 796, 815, 769]

private def s2Step217Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 801, 770]

private def s2Step217Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 845, 771]

private theorem s2Step217Counter_apart : Disjoint s2Step217HeadFvAfter.live s2Step217CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step217HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step217Counter_borrowed : s2Step217HeadFvAfter.checkBorrow 4 s2Step217CounterWork=some s2Step217CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step217HeadFvAfter s2Step217CounterDuring s2Step217CounterWork.toFinset s2Step217Counter_bounded s2Step217Counter_apart rfl

private theorem s2Step217Counter_owned : (790::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step217HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step217HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step217Counter_checked : compileHmrCounterStepLog s2Step217HeadFvAfter true 790 [772, 773, 774, 775, 776, 777] s2Step217CounterWork=some s2Step217CounterDuring := by
  have owned : ∀q∈790::[772, 773, 774, 775, 776, 777],q∈s2Step217HeadFvAfter.live := fun q hq => s2Step217Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step217Counter_borrowed

private def s2Step217EntryFAfter : Arena := s2Step217EntryFBefore

private theorem s2Step217EntryBank_incomingDistinct : ([s2Step217EntryFRow,s2Step217EntryGRow,s2Step217EntryFvRow,s2Step217EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step217EntryF_Incoming : rowsOwned s2Step217EntryFBefore [s2Step217EntryFRow,s2Step217EntryGRow,s2Step217EntryFvRow,s2Step217EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step217EntryFRow,s2Step217EntryGRow,s2Step217EntryFvRow,s2Step217EntryGvRow] 0 s2Step217EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step217EntryFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step217EntryBank_outgoingOwned : rowsOwned s2Step217EntryGvAfter [s2Step217EntryFOut,s2Step217EntryGOut,s2Step217EntryFvOut,s2Step217EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step217EntryGvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step217EntryF_Outgoing : rowsOwned s2Step217EntryGvAfter [s2Step217EntryFOut,s2Step217EntryGOut,s2Step217EntryFvOut,s2Step217EntryGvOut] :=
  hmrRows_owned_drop s2Step217EntryGvAfter [s2Step217EntryFOut,s2Step217EntryGOut,s2Step217EntryFvOut,s2Step217EntryGvOut] 0 s2Step217EntryBank_outgoingOwned

private theorem s2Step217EntryF_distinct : (s2Step217EntryFRow.sign::s2Step217EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step217EntryF_owned : (s2Step217EntryFRow.sign::s2Step217EntryFRow.payload).toFinset⊆s2Step217EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step217EntryFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step217EntryF_reserved : s2Step217EntryFBefore.reserve s2Step217EntryFFresh.toFinset=some s2Step217EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step217EntryFFresh,arenaWires]
  · norm_num [s2Step217EntryFBefore,s2Step217EntryFFresh,arenaWires]
  · simp only [s2Step217EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step217EntryF_checked : planRowResizeLog s2Step217EntryFBefore s2Step217EntryFRow 162 s2Step217EntryFFresh=
    some (s2Step217EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673],768⟩,growRow 768 s2Step217EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step217EntryFBefore s2Step217EntryFAfter s2Step217EntryFRow 162 s2Step217EntryFFresh
    s2Step217EntryF_distinct s2Step217EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step217EntryF_reserved
  have rowEq : WindowRow.mk (s2Step217EntryFRow.payload++s2Step217EntryFFresh) s2Step217EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step217EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step217EntryFvAfter : Arena := s2Step217EntryGAfter

private def s2Step217EntryFvBefore : Arena := s2Step217EntryGAfter

private theorem s2Step217EntryFv_Incoming : rowsOwned s2Step217EntryFvBefore [s2Step217EntryFvRow,s2Step217EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step217EntryFRow,s2Step217EntryGRow,s2Step217EntryFvRow,s2Step217EntryGvRow] 2 s2Step217EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step217EntryFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step217EntryFv_Outgoing : rowsOwned s2Step217EntryGvAfter [s2Step217EntryFvOut,s2Step217EntryGvOut] :=
  hmrRows_owned_drop s2Step217EntryGvAfter [s2Step217EntryFOut,s2Step217EntryGOut,s2Step217EntryFvOut,s2Step217EntryGvOut] 2 s2Step217EntryBank_outgoingOwned

private theorem s2Step217EntryFv_distinct : (s2Step217EntryFvRow.sign::s2Step217EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step217EntryFv_owned : (s2Step217EntryFvRow.sign::s2Step217EntryFvRow.payload).toFinset⊆s2Step217EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step217EntryFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step217EntryFv_reserved : s2Step217EntryFvBefore.reserve s2Step217EntryFvFresh.toFinset=some s2Step217EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step217EntryFvFresh,arenaWires]
  · norm_num [s2Step217EntryFvBefore,s2Step217EntryGAfter,s2Step217EntryFvFresh,arenaWires]
  · simp only [s2Step217EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step217EntryFv_checked : planRowResizeLog s2Step217EntryFvBefore s2Step217EntryFvRow 123 s2Step217EntryFvFresh=
    some (s2Step217EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789],770⟩,growRow 770 s2Step217EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step217EntryFvBefore s2Step217EntryFvAfter s2Step217EntryFvRow 123 s2Step217EntryFvFresh
    s2Step217EntryFv_distinct s2Step217EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step217EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step217EntryFvRow.payload++s2Step217EntryFvFresh) s2Step217EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step217EntryGBefore : Arena := s2Step217EntryFBefore

private theorem s2Step217EntryG_Incoming : rowsOwned s2Step217EntryGBefore [s2Step217EntryGRow,s2Step217EntryFvRow,s2Step217EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step217EntryFRow,s2Step217EntryGRow,s2Step217EntryFvRow,s2Step217EntryGvRow] 1 s2Step217EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step217EntryGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step217EntryG_Outgoing : rowsOwned s2Step217EntryGvAfter [s2Step217EntryGOut,s2Step217EntryFvOut,s2Step217EntryGvOut] :=
  hmrRows_owned_drop s2Step217EntryGvAfter [s2Step217EntryFOut,s2Step217EntryGOut,s2Step217EntryFvOut,s2Step217EntryGvOut] 1 s2Step217EntryBank_outgoingOwned

private theorem s2Step217EntryG_distinct : (s2Step217EntryGRow.sign::s2Step217EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step217EntryG_owned : (s2Step217EntryGRow.sign::s2Step217EntryGRow.payload).toFinset⊆s2Step217EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step217EntryGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step217EntryG_reserved : s2Step217EntryGBefore.reserve s2Step217EntryGFresh.toFinset=some s2Step217EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step217EntryGFresh,arenaWires]
  · norm_num [s2Step217EntryGBefore,s2Step217EntryFBefore,s2Step217EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step217EntryGAfter,s2Step217EntryGBefore,s2Step217EntryFBefore,s2Step217EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step217EntryG_checked : planRowResizeLog s2Step217EntryGBefore s2Step217EntryGRow 162 s2Step217EntryGFresh=
    some (s2Step217EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 796],769⟩,growRow 769 s2Step217EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step217EntryGBefore s2Step217EntryGAfter s2Step217EntryGRow 162 s2Step217EntryGFresh
    s2Step217EntryG_distinct s2Step217EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step217EntryG_reserved
  have rowEq : WindowRow.mk (s2Step217EntryGRow.payload++s2Step217EntryGFresh) s2Step217EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 796],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step217EntryGvBefore : Arena := s2Step217EntryGAfter

private theorem s2Step217EntryGv_Incoming : rowsOwned s2Step217EntryGvBefore [s2Step217EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step217EntryFRow,s2Step217EntryGRow,s2Step217EntryFvRow,s2Step217EntryGvRow] 3 s2Step217EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step217EntryGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step217EntryGv_Outgoing : rowsOwned s2Step217EntryGvAfter [s2Step217EntryGvOut] :=
  hmrRows_owned_drop s2Step217EntryGvAfter [s2Step217EntryFOut,s2Step217EntryGOut,s2Step217EntryFvOut,s2Step217EntryGvOut] 3 s2Step217EntryBank_outgoingOwned

private theorem s2Step217EntryGv_distinct : (s2Step217EntryGvRow.sign::s2Step217EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step217EntryGv_owned : (s2Step217EntryGvRow.sign::s2Step217EntryGvRow.payload).toFinset⊆s2Step217EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step217EntryGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step217EntryGv_reserved : s2Step217EntryGvBefore.reserve s2Step217EntryGvFresh.toFinset=some s2Step217EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step217EntryGvFresh,arenaWires]
  · norm_num [s2Step217EntryGvBefore,s2Step217EntryGAfter,s2Step217EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step217EntryGvAfter,s2Step217EntryGvBefore,s2Step217EntryGAfter,s2Step217EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step217EntryGv_checked : planRowResizeLog s2Step217EntryGvBefore s2Step217EntryGvRow 123 s2Step217EntryGvFresh=
    some (s2Step217EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839],771⟩,growRow 771 s2Step217EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step217EntryGvBefore s2Step217EntryGvAfter s2Step217EntryGvRow 123 s2Step217EntryGvFresh
    s2Step217EntryGv_distinct s2Step217EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step217EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step217EntryGvRow.payload++s2Step217EntryGvFresh) s2Step217EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step217EntryBank_rows : planWindowRowsLog s2Step217EntryFBefore [(s2Step217EntryFRow,162),(s2Step217EntryGRow,162),(s2Step217EntryFvRow,123),(s2Step217EntryGvRow,123)] [s2Step217EntryFFresh,s2Step217EntryGFresh,s2Step217EntryFvFresh,s2Step217EntryGvFresh]=
    some (s2Step217EntryGvAfter,[s2Step217EntryFOut,s2Step217EntryGOut,s2Step217EntryFvOut,s2Step217EntryGvOut],(growRow 768 s2Step217EntryFFresh ++ (growRow 769 s2Step217EntryGFresh ++ (growRow 770 s2Step217EntryFvFresh ++ (growRow 771 s2Step217EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step217EntryGvAfter [] []=some (s2Step217EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step217EntryGvBefore s2Step217EntryGvAfter s2Step217EntryGvAfter
    s2Step217EntryGvRow s2Step217EntryGvOut 123 s2Step217EntryGvFresh [] [] []
    (growRow 771 s2Step217EntryGvFresh) ([]) s2Step217EntryGv_Incoming s2Step217EntryGv_checked h4 s2Step217EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step217EntryFvBefore s2Step217EntryFvAfter s2Step217EntryGvAfter
    s2Step217EntryFvRow s2Step217EntryFvOut 123 s2Step217EntryFvFresh [(s2Step217EntryGvRow,123)] [s2Step217EntryGvFresh] [s2Step217EntryGvOut]
    (growRow 770 s2Step217EntryFvFresh) ((growRow 771 s2Step217EntryGvFresh ++ [])) s2Step217EntryFv_Incoming s2Step217EntryFv_checked h3 s2Step217EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step217EntryGBefore s2Step217EntryGAfter s2Step217EntryGvAfter
    s2Step217EntryGRow s2Step217EntryGOut 162 s2Step217EntryGFresh [(s2Step217EntryFvRow,123),(s2Step217EntryGvRow,123)] [s2Step217EntryFvFresh,s2Step217EntryGvFresh] [s2Step217EntryFvOut,s2Step217EntryGvOut]
    (growRow 769 s2Step217EntryGFresh) ((growRow 770 s2Step217EntryFvFresh ++ (growRow 771 s2Step217EntryGvFresh ++ []))) s2Step217EntryG_Incoming s2Step217EntryG_checked h2 s2Step217EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step217EntryFBefore s2Step217EntryFAfter s2Step217EntryGvAfter
    s2Step217EntryFRow s2Step217EntryFOut 162 s2Step217EntryFFresh [(s2Step217EntryGRow,162),(s2Step217EntryFvRow,123),(s2Step217EntryGvRow,123)] [s2Step217EntryGFresh,s2Step217EntryFvFresh,s2Step217EntryGvFresh] [s2Step217EntryGOut,s2Step217EntryFvOut,s2Step217EntryGvOut]
    (growRow 768 s2Step217EntryFFresh) ((growRow 769 s2Step217EntryGFresh ++ (growRow 770 s2Step217EntryFvFresh ++ (growRow 771 s2Step217EntryGvFresh ++ [])))) s2Step217EntryF_Incoming s2Step217EntryF_checked h1 s2Step217EntryF_Outgoing
  exact h0

private theorem s2Step217EntryBank_checked : compileHmrBankResizeLog .entry s2Step217EntryFBefore ⟨s2Step217EntryFRow,s2Step217EntryGRow,s2Step217EntryFvRow,s2Step217EntryGvRow⟩ ⟨162,162,123,123⟩ [s2Step217EntryFFresh,s2Step217EntryGFresh,s2Step217EntryFvFresh,s2Step217EntryGvFresh]=
    some (s2Step217EntryGvAfter,⟨s2Step217EntryFOut,s2Step217EntryGOut,s2Step217EntryFvOut,s2Step217EntryGvOut⟩,(growRow 768 s2Step217EntryFFresh ++ (growRow 769 s2Step217EntryGFresh ++ (growRow 770 s2Step217EntryFvFresh ++ (growRow 771 s2Step217EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step217EntryBank_rows]
  rfl

private def s2Step217ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<673) ∨ (674≤q ∧ q<798) ∨ (799≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step217ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step217ExitFBefore : Arena := s2Step217ExitGAfter

private def s2Step217ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 798],768⟩

private def s2Step217ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 801],770⟩

private def s2Step217ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 796, 815],769⟩

private def s2Step217ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 845],771⟩

private theorem s2Step217ExitBank_incomingDistinct : ([s2Step217ExitGRow,s2Step217ExitFRow,s2Step217ExitFvRow,s2Step217ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step217ExitF_Incoming : rowsOwned s2Step217ExitFBefore [s2Step217ExitFRow,s2Step217ExitFvRow,s2Step217ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step217ExitGRow,s2Step217ExitFRow,s2Step217ExitFvRow,s2Step217ExitGvRow] 1 s2Step217ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step217ExitFBefore (fun q => (0≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step217ExitBank_outgoingOwned : rowsOwned s2Step217ExitGvAfter [s2Step217ExitGOut,s2Step217ExitFOut,s2Step217ExitFvOut,s2Step217ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step217ExitGvAfter (fun q => (0≤q ∧ q<673) ∨ (674≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step217ExitF_Outgoing : rowsOwned s2Step217ExitGvAfter [s2Step217ExitFOut,s2Step217ExitFvOut,s2Step217ExitGvOut] :=
  hmrRows_owned_drop s2Step217ExitGvAfter [s2Step217ExitGOut,s2Step217ExitFOut,s2Step217ExitFvOut,s2Step217ExitGvOut] 1 s2Step217ExitBank_outgoingOwned

private theorem s2Step217ExitF_distinct : (s2Step217ExitFRow.sign::s2Step217ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step217ExitF_owned : (s2Step217ExitFRow.sign::s2Step217ExitFRow.payload).toFinset⊆s2Step217ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step217ExitFBefore (fun q => (0≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step217ExitF_retired : s2Step217ExitFBefore.retireSet s2Step217ExitFExtra.toFinset=s2Step217ExitFAfter := by
  unfold Arena.retireSet s2Step217ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step217ExitFBefore,s2Step217ExitGAfter,s2Step217ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step217ExitF_checked : planRowResizeLog s2Step217ExitFBefore s2Step217ExitFRow 161 []=
    some (s2Step217ExitFAfter,s2Step217ExitFOut,shrinkRow 768 s2Step217ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step217ExitFBefore s2Step217ExitFRow 161 s2Step217ExitF_distinct s2Step217ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step217ExitFRow.payload.take 161) s2Step217ExitFRow.sign=s2Step217ExitFOut := by decide +kernel
  have hi : s2Step217ExitFRow.payload.drop 161=s2Step217ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step217ExitF_retired] at result
  exact result

private def s2Step217ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<673) ∨ (674≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step217ExitFvBefore : Arena := s2Step217ExitFAfter

private theorem s2Step217ExitFv_Incoming : rowsOwned s2Step217ExitFvBefore [s2Step217ExitFvRow,s2Step217ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step217ExitGRow,s2Step217ExitFRow,s2Step217ExitFvRow,s2Step217ExitGvRow] 2 s2Step217ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step217ExitFvBefore (fun q => (0≤q ∧ q<673) ∨ (674≤q ∧ q<798) ∨ (799≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step217ExitFv_Outgoing : rowsOwned s2Step217ExitGvAfter [s2Step217ExitFvOut,s2Step217ExitGvOut] :=
  hmrRows_owned_drop s2Step217ExitGvAfter [s2Step217ExitGOut,s2Step217ExitFOut,s2Step217ExitFvOut,s2Step217ExitGvOut] 2 s2Step217ExitBank_outgoingOwned

private theorem s2Step217ExitFv_distinct : (s2Step217ExitFvRow.sign::s2Step217ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step217ExitFv_owned : (s2Step217ExitFvRow.sign::s2Step217ExitFvRow.payload).toFinset⊆s2Step217ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step217ExitFvBefore (fun q => (0≤q ∧ q<673) ∨ (674≤q ∧ q<798) ∨ (799≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step217ExitFv_retired : s2Step217ExitFvBefore.retireSet s2Step217ExitFvExtra.toFinset=s2Step217ExitFvAfter := by
  unfold Arena.retireSet s2Step217ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step217ExitFvBefore,s2Step217ExitFAfter,s2Step217ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step217ExitFv_checked : planRowResizeLog s2Step217ExitFvBefore s2Step217ExitFvRow 123 []=
    some (s2Step217ExitFvAfter,s2Step217ExitFvOut,shrinkRow 770 s2Step217ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step217ExitFvBefore s2Step217ExitFvRow 123 s2Step217ExitFv_distinct s2Step217ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step217ExitFvRow.payload.take 123) s2Step217ExitFvRow.sign=s2Step217ExitFvOut := by decide +kernel
  have hi : s2Step217ExitFvRow.payload.drop 123=s2Step217ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step217ExitFv_retired] at result
  exact result

private def s2Step217ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private theorem s2Step217ExitG_Incoming : rowsOwned s2Step217ExitGBefore [s2Step217ExitGRow,s2Step217ExitFRow,s2Step217ExitFvRow,s2Step217ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step217ExitGRow,s2Step217ExitFRow,s2Step217ExitFvRow,s2Step217ExitGvRow] 0 s2Step217ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step217ExitGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step217ExitG_Outgoing : rowsOwned s2Step217ExitGvAfter [s2Step217ExitGOut,s2Step217ExitFOut,s2Step217ExitFvOut,s2Step217ExitGvOut] :=
  hmrRows_owned_drop s2Step217ExitGvAfter [s2Step217ExitGOut,s2Step217ExitFOut,s2Step217ExitFvOut,s2Step217ExitGvOut] 0 s2Step217ExitBank_outgoingOwned

private theorem s2Step217ExitG_distinct : (s2Step217ExitGRow.sign::s2Step217ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step217ExitG_owned : (s2Step217ExitGRow.sign::s2Step217ExitGRow.payload).toFinset⊆s2Step217ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step217ExitGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step217ExitG_retired : s2Step217ExitGBefore.retireSet s2Step217ExitGExtra.toFinset=s2Step217ExitGAfter := by
  unfold Arena.retireSet s2Step217ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step217ExitGBefore,s2Step217ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step217ExitG_checked : planRowResizeLog s2Step217ExitGBefore s2Step217ExitGRow 162 []=
    some (s2Step217ExitGAfter,s2Step217ExitGOut,shrinkRow 769 s2Step217ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step217ExitGBefore s2Step217ExitGRow 162 s2Step217ExitG_distinct s2Step217ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step217ExitGRow.payload.take 162) s2Step217ExitGRow.sign=s2Step217ExitGOut := by decide +kernel
  have hi : s2Step217ExitGRow.payload.drop 162=s2Step217ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step217ExitG_retired] at result
  exact result

private def s2Step217ExitGvBefore : Arena := s2Step217ExitFvAfter

private theorem s2Step217ExitGv_Incoming : rowsOwned s2Step217ExitGvBefore [s2Step217ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step217ExitGRow,s2Step217ExitFRow,s2Step217ExitFvRow,s2Step217ExitGvRow] 3 s2Step217ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step217ExitGvBefore (fun q => (0≤q ∧ q<673) ∨ (674≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step217ExitGv_Outgoing : rowsOwned s2Step217ExitGvAfter [s2Step217ExitGvOut] :=
  hmrRows_owned_drop s2Step217ExitGvAfter [s2Step217ExitGOut,s2Step217ExitFOut,s2Step217ExitFvOut,s2Step217ExitGvOut] 3 s2Step217ExitBank_outgoingOwned

private theorem s2Step217ExitGv_distinct : (s2Step217ExitGvRow.sign::s2Step217ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step217ExitGv_owned : (s2Step217ExitGvRow.sign::s2Step217ExitGvRow.payload).toFinset⊆s2Step217ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step217ExitGvBefore (fun q => (0≤q ∧ q<673) ∨ (674≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step217ExitGv_retired : s2Step217ExitGvBefore.retireSet s2Step217ExitGvExtra.toFinset=s2Step217ExitGvAfter := by
  unfold Arena.retireSet s2Step217ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step217ExitGvBefore,s2Step217ExitFvAfter,s2Step217ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step217ExitGv_checked : planRowResizeLog s2Step217ExitGvBefore s2Step217ExitGvRow 123 []=
    some (s2Step217ExitGvAfter,s2Step217ExitGvOut,shrinkRow 771 s2Step217ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step217ExitGvBefore s2Step217ExitGvRow 123 s2Step217ExitGv_distinct s2Step217ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step217ExitGvRow.payload.take 123) s2Step217ExitGvRow.sign=s2Step217ExitGvOut := by decide +kernel
  have hi : s2Step217ExitGvRow.payload.drop 123=s2Step217ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step217ExitGv_retired] at result
  exact result

private theorem s2Step217ExitBank_rows : planWindowRowsLog s2Step217ExitGBefore [(s2Step217ExitGRow,162),(s2Step217ExitFRow,161),(s2Step217ExitFvRow,123),(s2Step217ExitGvRow,123)] [[],[],[],[]]=
    some (s2Step217ExitGvAfter,[s2Step217ExitGOut,s2Step217ExitFOut,s2Step217ExitFvOut,s2Step217ExitGvOut],(shrinkRow 769 s2Step217ExitGExtra ++ (shrinkRow 768 s2Step217ExitFExtra ++ (shrinkRow 770 s2Step217ExitFvExtra ++ (shrinkRow 771 s2Step217ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step217ExitGvAfter [] []=some (s2Step217ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step217ExitGvBefore s2Step217ExitGvAfter s2Step217ExitGvAfter
    s2Step217ExitGvRow s2Step217ExitGvOut 123 [] [] [] []
    (shrinkRow 771 s2Step217ExitGvExtra) ([]) s2Step217ExitGv_Incoming s2Step217ExitGv_checked h4 s2Step217ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step217ExitFvBefore s2Step217ExitFvAfter s2Step217ExitGvAfter
    s2Step217ExitFvRow s2Step217ExitFvOut 123 [] [(s2Step217ExitGvRow,123)] [[]] [s2Step217ExitGvOut]
    (shrinkRow 770 s2Step217ExitFvExtra) ((shrinkRow 771 s2Step217ExitGvExtra ++ [])) s2Step217ExitFv_Incoming s2Step217ExitFv_checked h3 s2Step217ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step217ExitFBefore s2Step217ExitFAfter s2Step217ExitGvAfter
    s2Step217ExitFRow s2Step217ExitFOut 161 [] [(s2Step217ExitFvRow,123),(s2Step217ExitGvRow,123)] [[],[]] [s2Step217ExitFvOut,s2Step217ExitGvOut]
    (shrinkRow 768 s2Step217ExitFExtra) ((shrinkRow 770 s2Step217ExitFvExtra ++ (shrinkRow 771 s2Step217ExitGvExtra ++ []))) s2Step217ExitF_Incoming s2Step217ExitF_checked h2 s2Step217ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step217ExitGBefore s2Step217ExitGAfter s2Step217ExitGvAfter
    s2Step217ExitGRow s2Step217ExitGOut 162 [] [(s2Step217ExitFRow,161),(s2Step217ExitFvRow,123),(s2Step217ExitGvRow,123)] [[],[],[]] [s2Step217ExitFOut,s2Step217ExitFvOut,s2Step217ExitGvOut]
    (shrinkRow 769 s2Step217ExitGExtra) ((shrinkRow 768 s2Step217ExitFExtra ++ (shrinkRow 770 s2Step217ExitFvExtra ++ (shrinkRow 771 s2Step217ExitGvExtra ++ [])))) s2Step217ExitG_Incoming s2Step217ExitG_checked h1 s2Step217ExitG_Outgoing
  exact h0

private theorem s2Step217ExitBank_checked : compileHmrBankResizeLog .exit s2Step217ExitGBefore ⟨s2Step217ExitFRow,s2Step217ExitGRow,s2Step217ExitFvRow,s2Step217ExitGvRow⟩ ⟨161,162,123,123⟩ [[],[],[],[]]=
    some (s2Step217ExitGvAfter,⟨s2Step217ExitFOut,s2Step217ExitGOut,s2Step217ExitFvOut,s2Step217ExitGvOut⟩,(shrinkRow 769 s2Step217ExitGExtra ++ (shrinkRow 768 s2Step217ExitFExtra ++ (shrinkRow 770 s2Step217ExitFvExtra ++ (shrinkRow 771 s2Step217ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step217ExitBank_rows]
  rfl

private theorem s2Step217Add0_apart : Disjoint s2Step217Add0Arena.live s2Step217Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step217Add0Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step217Add0_card : s2Step217Add0Arena.live.card=891 := by
  decide +kernel

private theorem s2Step217Add0_borrowed : s2Step217Add0Arena.checkBorrow (hmrHybridCount s2Step217Add0Arena s2Step217Add0B.length) s2Step217Add0Work=some s2Step217Add0During := by
  have len : s2Step217Add0Work.length=hmrHybridCount s2Step217Add0Arena s2Step217Add0B.length := by
    rw [hmrHybridCount,s2Step217Add0_card]
    decide +kernel
  have nd : s2Step217Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step217Add0Arena s2Step217Add0During s2Step217Add0Work.toFinset s2Step217Add0_bounded s2Step217Add0_apart rfl

private theorem s2Step217Add0_distinct : (814::783::882::(s2Step217Add0A++s2Step217Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step217Add0_owned : (814::783::882::(s2Step217Add0A++s2Step217Add0B)).toFinset⊆s2Step217Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step217Add0Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step217Add0_checked : compileHmrHybridCinLog s2Step217Add0Arena 783 814 882 s2Step217Add0A s2Step217Add0B s2Step217Add0Work=some s2Step217Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step217Add0Arena s2Step217Add0During 783 814 882 s2Step217Add0A s2Step217Add0B s2Step217Add0Work
    (by decide +kernel) (by decide +kernel) s2Step217Add0_distinct
    (fun q hq => s2Step217Add0_owned (List.mem_toFinset.mpr hq)) s2Step217Add0_borrowed

private theorem s2Step217Add1_apart : Disjoint s2Step217Add1Arena.live s2Step217Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step217Add1Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step217Add1_card : s2Step217Add1Arena.live.card=891 := by
  decide +kernel

private theorem s2Step217Add1_borrowed : s2Step217Add1Arena.checkBorrow (hmrHybridCount s2Step217Add1Arena s2Step217Add1B.length) s2Step217Add1Work=some s2Step217Add1During := by
  have len : s2Step217Add1Work.length=hmrHybridCount s2Step217Add1Arena s2Step217Add1B.length := by
    rw [hmrHybridCount,s2Step217Add1_card]
    decide +kernel
  have nd : s2Step217Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step217Add1Arena s2Step217Add1During s2Step217Add1Work.toFinset s2Step217Add1_bounded s2Step217Add1_apart rfl

private theorem s2Step217Add1_distinct : (814::783::882::(s2Step217Add1A++s2Step217Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step217Add1_owned : (814::783::882::(s2Step217Add1A++s2Step217Add1B)).toFinset⊆s2Step217Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step217Add1Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step217Add1_checked : compileHmrHybridCinLog s2Step217Add1Arena 783 814 882 s2Step217Add1A s2Step217Add1B s2Step217Add1Work=some s2Step217Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step217Add1Arena s2Step217Add1During 783 814 882 s2Step217Add1A s2Step217Add1B s2Step217Add1Work
    (by decide +kernel) (by decide +kernel) s2Step217Add1_distinct
    (fun q hq => s2Step217Add1_owned (List.mem_toFinset.mpr hq)) s2Step217Add1_borrowed

private theorem s2Step217F4_apart : Disjoint (s2Step217Add0A++s2Step217Add0B).toFinset (s2Step217Add1A++s2Step217Add1B).toFinset := by
  have nd : ((s2Step217Add0A++s2Step217Add0B)++(s2Step217Add1A++s2Step217Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step217F4_carry : s2Step217F4FlagArena.checkBorrow 1 [882]=some s2Step217Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step217F4FlagArena,s2Step217HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step217F4FlagArena,s2Step217HeadFvAfter,s2Step217Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step217F4_distinct : (790::783::814::882::((s2Step217Add0A++s2Step217Add1A)++(s2Step217Add0B++s2Step217Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step217F4_flag : s2Step217HeadFvAfter.checkBorrow 1 [814]=some s2Step217F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step217HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step217F4_owned : (790::783::((s2Step217Add0A++s2Step217Add1A)++(s2Step217Add0B++s2Step217Add1B))).toFinset⊆s2Step217HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step217HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step217F4_checked : compileHmrHybridF4Log s2Step217HeadFvAfter 790 783 s2Step217Add0A s2Step217Add0B s2Step217Add1A s2Step217Add1B [814] [882] s2Step217Add0Work s2Step217Add1Work=some s2Step217F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step217HeadFvAfter s2Step217F4FlagArena s2Step217Add0Arena s2Step217Add0During s2Step217Add1During 790 783
    s2Step217Add0A s2Step217Add0B s2Step217Add1A s2Step217Add1B [814] [882] s2Step217Add0Work s2Step217Add1Work
    (fun q hq => s2Step217F4_owned (List.mem_toFinset.mpr hq)) s2Step217F4_flag s2Step217F4_carry
    s2Step217F4_distinct s2Step217F4_apart s2Step217Add0_checked s2Step217Add1_checked

private theorem s2Step217Front_branch : s2Step217FrontSigmaArena.checkBorrow 1 [783]=some s2Step217HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step217FrontSigmaArena,s2Step217EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step217FrontSigmaArena,s2Step217EntryGvAfter,s2Step217HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step217Front_entry : HmrFrontEntryValid s2Step217EntryFBefore s2Step217FrontBank 162 123 ⟨161,162,123,123⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step217FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step217EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step217EntryFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step217FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step217Front_sigma : s2Step217EntryGvAfter.checkBorrow 1 [790]=some s2Step217FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step217EntryGvAfter,arenaWires]
  · rfl

private def s2Step217HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step217HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step217HeadFBefore : Arena := s2Step217HeadGAfter

private def s2Step217HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673],768⟩

private def s2Step217HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789],770⟩

private def s2Step217HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 796],769⟩

private def s2Step217HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839],771⟩

private theorem s2Step217HeadBank_incomingDistinct : ([s2Step217HeadGRow,s2Step217HeadFRow,s2Step217HeadGvRow,s2Step217HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step217HeadF_Incoming : rowsOwned s2Step217HeadFBefore [s2Step217HeadFRow,s2Step217HeadGvRow,s2Step217HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step217HeadGRow,s2Step217HeadFRow,s2Step217HeadGvRow,s2Step217HeadFvRow] 1 s2Step217HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step217HeadFBefore (fun q => (0≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step217HeadBank_outgoingOwned : rowsOwned s2Step217HeadFvAfter [s2Step217HeadGOut,s2Step217HeadFOut,s2Step217HeadGvOut,s2Step217HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step217HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step217HeadF_Outgoing : rowsOwned s2Step217HeadFvAfter [s2Step217HeadFOut,s2Step217HeadGvOut,s2Step217HeadFvOut] :=
  hmrRows_owned_drop s2Step217HeadFvAfter [s2Step217HeadGOut,s2Step217HeadFOut,s2Step217HeadGvOut,s2Step217HeadFvOut] 1 s2Step217HeadBank_outgoingOwned

private theorem s2Step217HeadF_distinct : (s2Step217HeadFRow.sign::s2Step217HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step217HeadF_owned : (s2Step217HeadFRow.sign::s2Step217HeadFRow.payload).toFinset⊆s2Step217HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step217HeadFBefore (fun q => (0≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step217HeadF_reserved : s2Step217HeadFBefore.reserve s2Step217HeadFFresh.toFinset=some s2Step217HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step217HeadFFresh,arenaWires]
  · norm_num [s2Step217HeadFBefore,s2Step217HeadGAfter,s2Step217HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step217HeadFAfter,s2Step217HeadFBefore,s2Step217HeadGAfter,s2Step217HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step217HeadF_checked : planRowResizeLog s2Step217HeadFBefore s2Step217HeadFRow 163 s2Step217HeadFFresh=
    some (s2Step217HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 798],768⟩,growRow 768 s2Step217HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step217HeadFBefore s2Step217HeadFAfter s2Step217HeadFRow 163 s2Step217HeadFFresh
    s2Step217HeadF_distinct s2Step217HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step217HeadF_reserved
  have rowEq : WindowRow.mk (s2Step217HeadFRow.payload++s2Step217HeadFFresh) s2Step217HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 798],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step217HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step217HeadFvBefore : Arena := s2Step217HeadGvAfter

private theorem s2Step217HeadFv_Incoming : rowsOwned s2Step217HeadFvBefore [s2Step217HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step217HeadGRow,s2Step217HeadFRow,s2Step217HeadGvRow,s2Step217HeadFvRow] 3 s2Step217HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step217HeadFvBefore (fun q => (0≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step217HeadFv_Outgoing : rowsOwned s2Step217HeadFvAfter [s2Step217HeadFvOut] :=
  hmrRows_owned_drop s2Step217HeadFvAfter [s2Step217HeadGOut,s2Step217HeadFOut,s2Step217HeadGvOut,s2Step217HeadFvOut] 3 s2Step217HeadBank_outgoingOwned

private theorem s2Step217HeadFv_distinct : (s2Step217HeadFvRow.sign::s2Step217HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step217HeadFv_owned : (s2Step217HeadFvRow.sign::s2Step217HeadFvRow.payload).toFinset⊆s2Step217HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step217HeadFvBefore (fun q => (0≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step217HeadFv_reserved : s2Step217HeadFvBefore.reserve s2Step217HeadFvFresh.toFinset=some s2Step217HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step217HeadFvFresh,arenaWires]
  · norm_num [s2Step217HeadFvBefore,s2Step217HeadGvAfter,s2Step217HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step217HeadFvAfter,s2Step217HeadFvBefore,s2Step217HeadGvAfter,s2Step217HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step217HeadFv_checked : planRowResizeLog s2Step217HeadFvBefore s2Step217HeadFvRow 124 s2Step217HeadFvFresh=
    some (s2Step217HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 801],770⟩,growRow 770 s2Step217HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step217HeadFvBefore s2Step217HeadFvAfter s2Step217HeadFvRow 124 s2Step217HeadFvFresh
    s2Step217HeadFv_distinct s2Step217HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step217HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step217HeadFvRow.payload++s2Step217HeadFvFresh) s2Step217HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 801],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step217HeadG_Incoming : rowsOwned s2Step217HeadGBefore [s2Step217HeadGRow,s2Step217HeadFRow,s2Step217HeadGvRow,s2Step217HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step217HeadGRow,s2Step217HeadFRow,s2Step217HeadGvRow,s2Step217HeadFvRow] 0 s2Step217HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step217HeadGBefore (fun q => (0≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step217HeadG_Outgoing : rowsOwned s2Step217HeadFvAfter [s2Step217HeadGOut,s2Step217HeadFOut,s2Step217HeadGvOut,s2Step217HeadFvOut] :=
  hmrRows_owned_drop s2Step217HeadFvAfter [s2Step217HeadGOut,s2Step217HeadFOut,s2Step217HeadGvOut,s2Step217HeadFvOut] 0 s2Step217HeadBank_outgoingOwned

private theorem s2Step217HeadG_distinct : (s2Step217HeadGRow.sign::s2Step217HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step217HeadG_owned : (s2Step217HeadGRow.sign::s2Step217HeadGRow.payload).toFinset⊆s2Step217HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step217HeadGBefore (fun q => (0≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step217HeadG_reserved : s2Step217HeadGBefore.reserve s2Step217HeadGFresh.toFinset=some s2Step217HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step217HeadGFresh,arenaWires]
  · norm_num [s2Step217HeadGBefore,s2Step217HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step217HeadGAfter,s2Step217HeadGBefore,s2Step217HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step217HeadG_checked : planRowResizeLog s2Step217HeadGBefore s2Step217HeadGRow 163 s2Step217HeadGFresh=
    some (s2Step217HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 796, 815],769⟩,growRow 769 s2Step217HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step217HeadGBefore s2Step217HeadGAfter s2Step217HeadGRow 163 s2Step217HeadGFresh
    s2Step217HeadG_distinct s2Step217HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step217HeadG_reserved
  have rowEq : WindowRow.mk (s2Step217HeadGRow.payload++s2Step217HeadGFresh) s2Step217HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 796, 815],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step217HeadGvBefore : Arena := s2Step217HeadFAfter

private theorem s2Step217HeadGv_Incoming : rowsOwned s2Step217HeadGvBefore [s2Step217HeadGvRow,s2Step217HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step217HeadGRow,s2Step217HeadFRow,s2Step217HeadGvRow,s2Step217HeadFvRow] 2 s2Step217HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step217HeadGvBefore (fun q => (0≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step217HeadGv_Outgoing : rowsOwned s2Step217HeadFvAfter [s2Step217HeadGvOut,s2Step217HeadFvOut] :=
  hmrRows_owned_drop s2Step217HeadFvAfter [s2Step217HeadGOut,s2Step217HeadFOut,s2Step217HeadGvOut,s2Step217HeadFvOut] 2 s2Step217HeadBank_outgoingOwned

private theorem s2Step217HeadGv_distinct : (s2Step217HeadGvRow.sign::s2Step217HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step217HeadGv_owned : (s2Step217HeadGvRow.sign::s2Step217HeadGvRow.payload).toFinset⊆s2Step217HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step217HeadGvBefore (fun q => (0≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step217HeadGv_reserved : s2Step217HeadGvBefore.reserve s2Step217HeadGvFresh.toFinset=some s2Step217HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step217HeadGvFresh,arenaWires]
  · norm_num [s2Step217HeadGvBefore,s2Step217HeadFAfter,s2Step217HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step217HeadGvAfter,s2Step217HeadGvBefore,s2Step217HeadFAfter,s2Step217HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step217HeadGv_checked : planRowResizeLog s2Step217HeadGvBefore s2Step217HeadGvRow 124 s2Step217HeadGvFresh=
    some (s2Step217HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 845],771⟩,growRow 771 s2Step217HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step217HeadGvBefore s2Step217HeadGvAfter s2Step217HeadGvRow 124 s2Step217HeadGvFresh
    s2Step217HeadGv_distinct s2Step217HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step217HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step217HeadGvRow.payload++s2Step217HeadGvFresh) s2Step217HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 845],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step217HeadBank_rows : planWindowRowsLog s2Step217HeadGBefore [(s2Step217HeadGRow,163),(s2Step217HeadFRow,163),(s2Step217HeadGvRow,124),(s2Step217HeadFvRow,124)] [s2Step217HeadGFresh,s2Step217HeadFFresh,s2Step217HeadGvFresh,s2Step217HeadFvFresh]=
    some (s2Step217HeadFvAfter,[s2Step217HeadGOut,s2Step217HeadFOut,s2Step217HeadGvOut,s2Step217HeadFvOut],(growRow 769 s2Step217HeadGFresh ++ (growRow 768 s2Step217HeadFFresh ++ (growRow 771 s2Step217HeadGvFresh ++ (growRow 770 s2Step217HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step217HeadFvAfter [] []=some (s2Step217HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step217HeadFvBefore s2Step217HeadFvAfter s2Step217HeadFvAfter
    s2Step217HeadFvRow s2Step217HeadFvOut 124 s2Step217HeadFvFresh [] [] []
    (growRow 770 s2Step217HeadFvFresh) ([]) s2Step217HeadFv_Incoming s2Step217HeadFv_checked h4 s2Step217HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step217HeadGvBefore s2Step217HeadGvAfter s2Step217HeadFvAfter
    s2Step217HeadGvRow s2Step217HeadGvOut 124 s2Step217HeadGvFresh [(s2Step217HeadFvRow,124)] [s2Step217HeadFvFresh] [s2Step217HeadFvOut]
    (growRow 771 s2Step217HeadGvFresh) ((growRow 770 s2Step217HeadFvFresh ++ [])) s2Step217HeadGv_Incoming s2Step217HeadGv_checked h3 s2Step217HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step217HeadFBefore s2Step217HeadFAfter s2Step217HeadFvAfter
    s2Step217HeadFRow s2Step217HeadFOut 163 s2Step217HeadFFresh [(s2Step217HeadGvRow,124),(s2Step217HeadFvRow,124)] [s2Step217HeadGvFresh,s2Step217HeadFvFresh] [s2Step217HeadGvOut,s2Step217HeadFvOut]
    (growRow 768 s2Step217HeadFFresh) ((growRow 771 s2Step217HeadGvFresh ++ (growRow 770 s2Step217HeadFvFresh ++ []))) s2Step217HeadF_Incoming s2Step217HeadF_checked h2 s2Step217HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step217HeadGBefore s2Step217HeadGAfter s2Step217HeadFvAfter
    s2Step217HeadGRow s2Step217HeadGOut 163 s2Step217HeadGFresh [(s2Step217HeadFRow,163),(s2Step217HeadGvRow,124),(s2Step217HeadFvRow,124)] [s2Step217HeadFFresh,s2Step217HeadGvFresh,s2Step217HeadFvFresh] [s2Step217HeadFOut,s2Step217HeadGvOut,s2Step217HeadFvOut]
    (growRow 769 s2Step217HeadGFresh) ((growRow 768 s2Step217HeadFFresh ++ (growRow 771 s2Step217HeadGvFresh ++ (growRow 770 s2Step217HeadFvFresh ++ [])))) s2Step217HeadG_Incoming s2Step217HeadG_checked h1 s2Step217HeadG_Outgoing
  exact h0

private theorem s2Step217HeadBank_checked : compileHmrBankResizeLog .headroom s2Step217HeadGBefore ⟨s2Step217HeadFRow,s2Step217HeadGRow,s2Step217HeadFvRow,s2Step217HeadGvRow⟩ ⟨163,163,124,124⟩ [s2Step217HeadGFresh,s2Step217HeadFFresh,s2Step217HeadGvFresh,s2Step217HeadFvFresh]=
    some (s2Step217HeadFvAfter,⟨s2Step217HeadFOut,s2Step217HeadGOut,s2Step217HeadFvOut,s2Step217HeadGvOut⟩,(growRow 769 s2Step217HeadGFresh ++ (growRow 768 s2Step217HeadFFresh ++ (growRow 771 s2Step217HeadGvFresh ++ (growRow 770 s2Step217HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step217HeadBank_rows]
  rfl

private theorem s2Step217Front_checked : compileHmrSourceFrontLog s2Step217EntryFBefore s2Step217FrontBank 162 123 ⟨161,162,123,123⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step217FrontLog=some s2Step217FrontPlan := by
  have pairEq : s2Step217FrontPair=⟨s2Step217HeadFRow,s2Step217HeadGRow,s2Step217HeadFvRow,s2Step217HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step217FrontHead=⟨s2Step217ExitFRow,s2Step217ExitGRow,s2Step217ExitFvRow,s2Step217ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step217Add0A=s2Step217FrontHead.f.wires := by decide +kernel
  have gEq : s2Step217Add0B=s2Step217FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step217Add1A=s2Step217FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step217Add1B=s2Step217FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step217EntryFBefore s2Step217FrontBank 162 123 ⟨161,162,123,123⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step217FrontLog s2Step217FrontPlan
  · exact s2Step217Front_entry
  · exact s2Step217EntryBank_checked
  · exact s2Step217Front_sigma
  · rfl
  · exact s2Step217Front_branch
  · rfl
  · simpa only [s2Step217FrontPlan,pairEq] using s2Step217HeadBank_checked
  · simpa only [s2Step217FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step217F4_checked
  · exact s2Step217Counter_checked
  · rfl
  · simpa only [s2Step217FrontPlan,headEq] using s2Step217ExitBank_checked

private theorem s2Step217Complete_explicit_checked : compileHmrEarlyStepLog s2Step217EntryFBefore s2Step217FrontBank 162 123 ⟨161,162,123,123⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step217CompleteLog=some s2Step217CompletePlan := by
  let Q := s2Step217EarlyControlPlan
  have hq := s2Step217EarlyControl_plan_checked
  have fv1 : s2Step217CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step217CompleteOut.fv.payload[2]?.getD s2Step217CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step217CompleteOut.fv.payload[3]?.getD s2Step217CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step217CompleteOut.fv.payload[4]?.getD s2Step217CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step217EntryFBefore s2Step217EarlyControlArena s2Step217FrontBank 162 123 ⟨161,162,123,123⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step217CompleteLog s2Step217FrontPlan Q
    s2Step217Front_checked s2Step217Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step217Complete_owned s2Step217Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step217EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 790 s2Step217CompleteOut.fv.second (s2Step217CompleteOut.fv.payload[2]?.getD s2Step217CompleteOut.fv.sign) (s2Step217CompleteOut.fv.payload[3]?.getD s2Step217CompleteOut.fv.sign) (s2Step217CompleteOut.fv.payload[4]?.getD s2Step217CompleteOut.fv.sign) 783 47 s2Step217EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep217Arena : Arena := s2Step217EntryFBefore
def s2PrivateStep217Bank : WindowBank := s2Step217FrontBank
def s2PrivateStep217Spec : HmrSourceWalkStepLog := ⟨162,123,⟨161,162,123,123⟩,47,.early s2Step217CompleteLog⟩
def s2PrivateStep217Plan : HmrSourceStepPlan := .early s2Step217CompletePlan
theorem s2PrivateStep217_source : s2PrivateStep217Spec=s2ObservedLogs208[9] := rfl
theorem s2PrivateStep217_checked : compileHmrSourceStepLog s2PrivateStep217Arena s2PrivateStep217Bank
    s2PrivateStep217Spec.fgWidth s2PrivateStep217Spec.vWidth s2PrivateStep217Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897]
    6 498 217 s2PrivateStep217Spec.need none s2PrivateStep217Spec.log=some s2PrivateStep217Plan := by
  change compileHmrSourceStepLog s2Step217EntryFBefore s2Step217FrontBank 162 123 ⟨161,162,123,123⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 6 498 217 47 none (.early s2Step217CompleteLog)=some (.early s2Step217CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 217<498)]
  rw [s2Step217Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
