import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep206
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

private def s2Step208CompleteMoves : List (Wire × Wire) := []

private def s2Step208EarlyControlLog : HmrEarlyControlLog := ⟨[781, 783, 789, 845, 822],[814],[882],[826, 842, 885, 891, 894, 895],[]⟩

private def s2Step208FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [783], [], []],[[789], [781], [816], [779]],[[], [], [], []]⟩,[841],[796],[845],[822],[814, 882, 826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[814, 882, 826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[845, 822, 814, 882]⟩

private def s2Step208CompleteLog : HmrEarlyStepLog := ⟨s2Step208FrontLog,s2Step208CompleteMoves,s2Step208EarlyControlLog⟩

private def s2Step208ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677],768⟩

private def s2Step208ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779],770⟩

private def s2Step208ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164],769⟩

private def s2Step208ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816],771⟩

private def s2Step208FrontOut : WindowBank := ⟨s2Step208ExitFOut,s2Step208ExitGOut,s2Step208ExitFvOut,s2Step208ExitGvOut⟩

private def s2Step208CompleteOut : WindowBank := s2Step208FrontOut.repacked s2Step208CompleteMoves

private def s2Step208EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step208EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step208EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step208EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step208EarlyControlPositiveArena,[814],s2Step208EarlyControlEqualityArena,[882],⟨⟨841,false⟩,[⟨⟨814,false⟩,882⟩]⟩⟩

private def s2Step208EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step208EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step208EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step208EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step208EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step208EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step208EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,781⟩,⟨⟨774,false⟩,783⟩,⟨⟨775,false⟩,789⟩,⟨⟨776,false⟩,845⟩,⟨⟨777,false⟩,822⟩]⟩

private def s2Step208EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step208EarlyControlZeroArena,s2Step208EarlyControlZeroPlan,s2Step208EarlyControlClassPlan,s2Step208EarlyControlFlagArena,s2Step208EarlyControlFittedArena,s2Step208EarlyControlHistoryArena,s2Step208EarlyControlSigmaArena,s2Step208EarlyControlOutputArena,s2Step208EarlyControlLog⟩

private def s2Step208CounterWork : List Wire := [845, 822, 814, 882]

private theorem s2Step208Counter_bounded : s2Step208CounterWork.toFinset⊆arenaWires := by norm_num [s2Step208CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step208HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step208CounterDuring : Arena := ⟨s2Step208HeadFvAfter.live∪s2Step208CounterWork.toFinset,Finset.union_subset s2Step208HeadFvAfter.bounded s2Step208Counter_bounded⟩

private def s2Step208EntryFFresh : List Wire := []

private def s2Step208EntryFvFresh : List Wire := []

private def s2Step208EntryGFresh : List Wire := [783]

private def s2Step208EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step208EntryGvAfter : Arena := s2Step208EntryGAfter

private def s2Step208EntryGvFresh : List Wire := []

private def s2Step208ExitFExtra : List Wire := [781]

private def s2Step208ExitGExtra : List Wire := [783, 789]

private def s2Step208ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step208ExitGvAfter : Arena := s2Step208ExitFAfter

private def s2Step208Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step208Add0Work : List Wire := [814, 882, 826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step208Add0_bounded : s2Step208Add0Work.toFinset⊆arenaWires := by
  have h : s2Step208Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step208Add0During : Arena := ⟨s2Step208Add0Arena.live∪s2Step208Add0Work.toFinset,Finset.union_subset s2Step208Add0Arena.bounded s2Step208Add0_bounded⟩

private def s2Step208Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step208Add1Work : List Wire := [814, 882, 826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step208Add1_bounded : s2Step208Add1Work.toFinset⊆arenaWires := by
  have h : s2Step208Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step208Add1During : Arena := ⟨s2Step208Add1Arena.live∪s2Step208Add1Work.toFinset,Finset.union_subset s2Step208Add1Arena.bounded s2Step208Add1_bounded⟩

private def s2Step208F4FlagArena : Arena := ⟨s2Step208HeadFvAfter.live∪{845},Finset.union_subset s2Step208HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step208F4Plan : HmrHybridF4Plan := ⟨s2Step208F4FlagArena,[845],s2Step208Add0Arena,[822],s2Step208Add0During,s2Step208Add0Work,s2Step208Add1During,s2Step208Add1Work⟩

private def s2Step208HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 781],768⟩

private def s2Step208HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779],770⟩

private def s2Step208HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 783, 789],769⟩

private def s2Step208HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816],771⟩

private def s2Step208FrontHead : WindowBank := ⟨s2Step208HeadFOut,s2Step208HeadGOut,s2Step208HeadFvOut,s2Step208HeadGvOut⟩

private def s2Step208EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677],768⟩

private def s2Step208EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879],770⟩

private def s2Step208EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 783],769⟩

private def s2Step208EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844],771⟩

private def s2Step208FrontPair : WindowBank := ⟨s2Step208EntryFOut,s2Step208EntryGOut,s2Step208EntryFvOut,s2Step208EntryGvOut⟩

private def s2Step208FrontSigmaArena : Arena := ⟨s2Step208EntryGvAfter.live∪{841},Finset.union_subset s2Step208EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step208HeadFFresh : List Wire := [781]

private def s2Step208HeadFvFresh : List Wire := [779]

private def s2Step208HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step208HeadGFresh : List Wire := [789]

private def s2Step208HeadGvFresh : List Wire := [816]

private def s2Step208FrontPlan : HmrSourceFront := ⟨s2Step208EntryGvAfter,s2Step208FrontPair,(growRow 768 s2Step208EntryFFresh ++ (growRow 769 s2Step208EntryGFresh ++ (growRow 770 s2Step208EntryFvFresh ++ (growRow 771 s2Step208EntryGvFresh ++ [])))),s2Step208FrontSigmaArena,[841],s2Step208HeadGBefore,[796],
  s2Step208HeadFvAfter,s2Step208FrontHead,(growRow 769 s2Step208HeadGFresh ++ (growRow 768 s2Step208HeadFFresh ++ (growRow 771 s2Step208HeadGvFresh ++ (growRow 770 s2Step208HeadFvFresh ++ [])))),s2Step208F4Plan,s2Step208CounterDuring,s2Step208CounterWork,s2Step208ExitGvAfter,s2Step208FrontOut,(shrinkRow 769 s2Step208ExitGExtra ++ (shrinkRow 768 s2Step208ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ []))))⟩

private def s2Step208CompletePlan : HmrEarlyStepPlan := ⟨s2Step208FrontPlan,s2Step208EarlyControlArena,s2Step208EarlyControlPlan,s2Step208CompleteMoves⟩

private theorem s2Step208Complete_apart : List.Disjoint (s2Step208CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [841, 796, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] := by
  have nd : ((s2Step208CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[841, 796, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step208Complete_owned : (s2Step208CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step208EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step208EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step208Complete_repack : s2Step208ExitGvAfter.checkRepack s2Step208CompleteMoves=some s2Step208EarlyControlArena := by rfl

private theorem s2Step208EarlyControl_branchOwned : ([796] : List Wire).toFinset⊆s2Step208EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step208EarlyControlSigmaArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step208EarlyControl_branch : compileHmrBranchRetirement s2Step208EarlyControlSigmaArena 796=some s2Step208EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step208EarlyControl_branchOwned
  · ext q
    simp [s2Step208EarlyControlOutputArena,s2Step208EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step208EarlyControl_classEqualityBorrow : s2Step208EarlyControlPositiveArena.checkBorrow (([841, 814] : List Wire).length-1) s2Step208EarlyControlLog.classWork=some s2Step208EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step208EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step208EarlyControlPositiveArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step208EarlyControlEqualityArena,s2Step208EarlyControlPositiveArena,s2Step208EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step208EarlyControl_classEqualityOwned : ([841, 814] : List Wire).toFinset⊆s2Step208EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step208EarlyControlPositiveArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step208EarlyControl_classEquality : compileHmrEqualityLog s2Step208EarlyControlPositiveArena [841, 814] 0 s2Step208EarlyControlLog.classWork=some (s2Step208EarlyControlEqualityArena,s2Step208EarlyControlLog.classWork,s2Step208EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step208EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step208EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step208EarlyControl_classOwned : ([777, 822, 841] : List Wire).toFinset⊆s2Step208EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step208EarlyControlZeroArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step208EarlyControl_positiveBorrow : s2Step208EarlyControlZeroArena.checkBorrow (1) s2Step208EarlyControlLog.positiveWork=some s2Step208EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step208EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step208EarlyControlZeroArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step208EarlyControlPositiveArena,s2Step208EarlyControlZeroArena,s2Step208EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step208EarlyControl_class : compileHmrSourceClassLog s2Step208EarlyControlZeroArena false 777 s2Step208EarlyControlZeroPlan.top 0 841 s2Step208EarlyControlLog.positiveWork s2Step208EarlyControlLog.classWork=some s2Step208EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step208EarlyControlClassPlan s2Step208EarlyControlZeroArena false 777 s2Step208EarlyControlZeroPlan.top 0 841
  constructor
  · decide +kernel
  · exact s2Step208EarlyControl_classOwned
  · exact s2Step208EarlyControl_positiveBorrow
  · exact s2Step208EarlyControl_classEquality

private theorem s2Step208EarlyControl_entryRecordOwned : ([796, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step208EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step208EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step208EarlyControl_entrySigmaOwned : ([841, 254] : List Wire).toFinset⊆s2Step208EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step208EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step208EarlyControl_fitBorrow : s2Step208EarlyControlFlagArena.checkBorrow ((47-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).length)) s2Step208EarlyControlLog.recordFresh=some s2Step208EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step208EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step208EarlyControlFlagArena (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step208EarlyControlFittedArena,s2Step208EarlyControlFlagArena,s2Step208EarlyControlLog,arenaWires]

private theorem s2Step208EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step208EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step208EarlyControlFlagArena (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step208EarlyControl_fit : compileHmrRecordGrowLog s2Step208EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step208EarlyControlLog.recordFresh=some s2Step208EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step208EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step208EarlyControl_fitBorrow

private theorem s2Step208EarlyControl_flagsBorrow : s2Step208EarlyControlEqualityArena.checkBorrow (6) s2Step208EarlyControlLog.flagWork=some s2Step208EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step208EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step208EarlyControlEqualityArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step208EarlyControlFlagArena,s2Step208EarlyControlEqualityArena,s2Step208EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step208EarlyControl_flagsOwned : ([882, 253, 252, 251] : List Wire).toFinset⊆s2Step208EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step208EarlyControlEqualityArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step208EarlyControl_flags : compileHmrFlagsLog s2Step208EarlyControlClassPlan.equalityArena s2Step208EarlyControlClassPlan.equality.top 253 252 251 s2Step208EarlyControlLog.flagWork=some s2Step208EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step208EarlyControl_flagsOwned⟩
  · exact s2Step208EarlyControl_flagsBorrow

private theorem s2Step208EarlyControl_historyBorrow : s2Step208EarlyControlArena.checkBorrow ((47-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).length)) s2Step208EarlyControlLog.recordFresh=some s2Step208EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step208EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step208EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step208EarlyControlHistoryArena,s2Step208EarlyControlArena,s2Step208EarlyControlLog,arenaWires]

private theorem s2Step208EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step208EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step208EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step208EarlyControl_history : compileHmrRecordGrowLog s2Step208EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step208EarlyControlLog.recordFresh=some s2Step208EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step208EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step208EarlyControl_historyBorrow

private theorem s2Step208EarlyControl_sigmaOwned : ([254, 841] : List Wire).toFinset⊆s2Step208EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step208EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step208EarlyControl_sigmaReleaseOwned : ([841] : List Wire).toFinset⊆s2Step208EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step208EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step208EarlyControl_sigmaRelease : s2Step208EarlyControlHistoryArena.release {841} (fun _ => false)=some s2Step208EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step208EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step208EarlyControlSigmaArena,s2Step208EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step208EarlyControl_sigma : compileHmrSigmaDropLog s2Step208EarlyControlHistoryArena false 0 0 254 841 []=some s2Step208EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step208EarlyControl_sigmaOwned⟩
  · exact s2Step208EarlyControl_sigmaRelease

private theorem s2Step208EarlyControl_zeroBorrow : s2Step208EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step208EarlyControlLog.zeroWork=some s2Step208EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step208EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step208EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step208EarlyControlZeroArena,s2Step208EarlyControlArena,s2Step208EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step208EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step208EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step208EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step208EarlyControl_zero : compileHmrEqualityLog s2Step208EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step208EarlyControlLog.zeroWork=some (s2Step208EarlyControlZeroArena,s2Step208EarlyControlLog.zeroWork,s2Step208EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step208EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step208EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step208EarlyControl_logged : s2Step208EarlyControlPlan.Logged s2Step208EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 841 254 253 252 251 796 47 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step208EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step208EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step208EarlyControl_zero
  · exact s2Step208EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step208EarlyControl_flags
  · exact s2Step208EarlyControl_fit
  · exact s2Step208EarlyControl_history
  · exact s2Step208EarlyControl_sigma
  · exact s2Step208EarlyControl_branch

private theorem s2Step208EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step208EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 841 254 253 252 251 796 47 s2Step208EarlyControlLog=some s2Step208EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step208EarlyControlPlan s2Step208EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 841 254 253 252 251 796 47 s2Step208EarlyControl_logged

private def s2Step208EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step208EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677],768⟩

private def s2Step208EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879],770⟩

private def s2Step208EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164],769⟩

private def s2Step208EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844],771⟩

private def s2Step208FrontBank : WindowBank := ⟨s2Step208EntryFRow,s2Step208EntryGRow,s2Step208EntryFvRow,s2Step208EntryGvRow⟩

private def s2Step208Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 781, 768]

private def s2Step208Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 783, 789, 769]

private def s2Step208Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 770]

private def s2Step208Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 771]

private theorem s2Step208Counter_apart : Disjoint s2Step208HeadFvAfter.live s2Step208CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step208HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step208Counter_borrowed : s2Step208HeadFvAfter.checkBorrow 4 s2Step208CounterWork=some s2Step208CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step208HeadFvAfter s2Step208CounterDuring s2Step208CounterWork.toFinset s2Step208Counter_bounded s2Step208Counter_apart rfl

private theorem s2Step208Counter_owned : (841::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step208HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step208HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step208Counter_checked : compileHmrCounterStepLog s2Step208HeadFvAfter true 841 [772, 773, 774, 775, 776, 777] s2Step208CounterWork=some s2Step208CounterDuring := by
  have owned : ∀q∈841::[772, 773, 774, 775, 776, 777],q∈s2Step208HeadFvAfter.live := fun q hq => s2Step208Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step208Counter_borrowed

private def s2Step208EntryFAfter : Arena := s2Step208EntryFBefore

private theorem s2Step208EntryBank_incomingDistinct : ([s2Step208EntryFRow,s2Step208EntryGRow,s2Step208EntryFvRow,s2Step208EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step208EntryF_Incoming : rowsOwned s2Step208EntryFBefore [s2Step208EntryFRow,s2Step208EntryGRow,s2Step208EntryFvRow,s2Step208EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step208EntryFRow,s2Step208EntryGRow,s2Step208EntryFvRow,s2Step208EntryGvRow] 0 s2Step208EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step208EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step208EntryBank_outgoingOwned : rowsOwned s2Step208EntryGvAfter [s2Step208EntryFOut,s2Step208EntryGOut,s2Step208EntryFvOut,s2Step208EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step208EntryGvAfter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step208EntryF_Outgoing : rowsOwned s2Step208EntryGvAfter [s2Step208EntryFOut,s2Step208EntryGOut,s2Step208EntryFvOut,s2Step208EntryGvOut] :=
  hmrRows_owned_drop s2Step208EntryGvAfter [s2Step208EntryFOut,s2Step208EntryGOut,s2Step208EntryFvOut,s2Step208EntryGvOut] 0 s2Step208EntryBank_outgoingOwned

private theorem s2Step208EntryF_distinct : (s2Step208EntryFRow.sign::s2Step208EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step208EntryF_owned : (s2Step208EntryFRow.sign::s2Step208EntryFRow.payload).toFinset⊆s2Step208EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step208EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step208EntryF_reserved : s2Step208EntryFBefore.reserve s2Step208EntryFFresh.toFinset=some s2Step208EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step208EntryFFresh,arenaWires]
  · norm_num [s2Step208EntryFBefore,s2Step208EntryFFresh,arenaWires]
  · simp only [s2Step208EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step208EntryF_checked : planRowResizeLog s2Step208EntryFBefore s2Step208EntryFRow 166 s2Step208EntryFFresh=
    some (s2Step208EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677],768⟩,growRow 768 s2Step208EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step208EntryFBefore s2Step208EntryFAfter s2Step208EntryFRow 166 s2Step208EntryFFresh
    s2Step208EntryF_distinct s2Step208EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step208EntryF_reserved
  have rowEq : WindowRow.mk (s2Step208EntryFRow.payload++s2Step208EntryFFresh) s2Step208EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step208EntryFvAfter : Arena := s2Step208EntryGAfter

private def s2Step208EntryFvBefore : Arena := s2Step208EntryGAfter

private theorem s2Step208EntryFv_Incoming : rowsOwned s2Step208EntryFvBefore [s2Step208EntryFvRow,s2Step208EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step208EntryFRow,s2Step208EntryGRow,s2Step208EntryFvRow,s2Step208EntryGvRow] 2 s2Step208EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step208EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step208EntryFv_Outgoing : rowsOwned s2Step208EntryGvAfter [s2Step208EntryFvOut,s2Step208EntryGvOut] :=
  hmrRows_owned_drop s2Step208EntryGvAfter [s2Step208EntryFOut,s2Step208EntryGOut,s2Step208EntryFvOut,s2Step208EntryGvOut] 2 s2Step208EntryBank_outgoingOwned

private theorem s2Step208EntryFv_distinct : (s2Step208EntryFvRow.sign::s2Step208EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step208EntryFv_owned : (s2Step208EntryFvRow.sign::s2Step208EntryFvRow.payload).toFinset⊆s2Step208EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step208EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step208EntryFv_reserved : s2Step208EntryFvBefore.reserve s2Step208EntryFvFresh.toFinset=some s2Step208EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step208EntryFvFresh,arenaWires]
  · norm_num [s2Step208EntryFvBefore,s2Step208EntryGAfter,s2Step208EntryFvFresh,arenaWires]
  · simp only [s2Step208EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step208EntryFv_checked : planRowResizeLog s2Step208EntryFvBefore s2Step208EntryFvRow 118 s2Step208EntryFvFresh=
    some (s2Step208EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879],770⟩,growRow 770 s2Step208EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step208EntryFvBefore s2Step208EntryFvAfter s2Step208EntryFvRow 118 s2Step208EntryFvFresh
    s2Step208EntryFv_distinct s2Step208EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step208EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step208EntryFvRow.payload++s2Step208EntryFvFresh) s2Step208EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step208EntryGBefore : Arena := s2Step208EntryFBefore

private theorem s2Step208EntryG_Incoming : rowsOwned s2Step208EntryGBefore [s2Step208EntryGRow,s2Step208EntryFvRow,s2Step208EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step208EntryFRow,s2Step208EntryGRow,s2Step208EntryFvRow,s2Step208EntryGvRow] 1 s2Step208EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step208EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step208EntryG_Outgoing : rowsOwned s2Step208EntryGvAfter [s2Step208EntryGOut,s2Step208EntryFvOut,s2Step208EntryGvOut] :=
  hmrRows_owned_drop s2Step208EntryGvAfter [s2Step208EntryFOut,s2Step208EntryGOut,s2Step208EntryFvOut,s2Step208EntryGvOut] 1 s2Step208EntryBank_outgoingOwned

private theorem s2Step208EntryG_distinct : (s2Step208EntryGRow.sign::s2Step208EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step208EntryG_owned : (s2Step208EntryGRow.sign::s2Step208EntryGRow.payload).toFinset⊆s2Step208EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step208EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step208EntryG_reserved : s2Step208EntryGBefore.reserve s2Step208EntryGFresh.toFinset=some s2Step208EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step208EntryGFresh,arenaWires]
  · norm_num [s2Step208EntryGBefore,s2Step208EntryFBefore,s2Step208EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step208EntryGAfter,s2Step208EntryGBefore,s2Step208EntryFBefore,s2Step208EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step208EntryG_checked : planRowResizeLog s2Step208EntryGBefore s2Step208EntryGRow 166 s2Step208EntryGFresh=
    some (s2Step208EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 783],769⟩,growRow 769 s2Step208EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step208EntryGBefore s2Step208EntryGAfter s2Step208EntryGRow 166 s2Step208EntryGFresh
    s2Step208EntryG_distinct s2Step208EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step208EntryG_reserved
  have rowEq : WindowRow.mk (s2Step208EntryGRow.payload++s2Step208EntryGFresh) s2Step208EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 783],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step208EntryGvBefore : Arena := s2Step208EntryGAfter

private theorem s2Step208EntryGv_Incoming : rowsOwned s2Step208EntryGvBefore [s2Step208EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step208EntryFRow,s2Step208EntryGRow,s2Step208EntryFvRow,s2Step208EntryGvRow] 3 s2Step208EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step208EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step208EntryGv_Outgoing : rowsOwned s2Step208EntryGvAfter [s2Step208EntryGvOut] :=
  hmrRows_owned_drop s2Step208EntryGvAfter [s2Step208EntryFOut,s2Step208EntryGOut,s2Step208EntryFvOut,s2Step208EntryGvOut] 3 s2Step208EntryBank_outgoingOwned

private theorem s2Step208EntryGv_distinct : (s2Step208EntryGvRow.sign::s2Step208EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step208EntryGv_owned : (s2Step208EntryGvRow.sign::s2Step208EntryGvRow.payload).toFinset⊆s2Step208EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step208EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step208EntryGv_reserved : s2Step208EntryGvBefore.reserve s2Step208EntryGvFresh.toFinset=some s2Step208EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step208EntryGvFresh,arenaWires]
  · norm_num [s2Step208EntryGvBefore,s2Step208EntryGAfter,s2Step208EntryGvFresh,arenaWires]
  · simp only [s2Step208EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step208EntryGv_checked : planRowResizeLog s2Step208EntryGvBefore s2Step208EntryGvRow 118 s2Step208EntryGvFresh=
    some (s2Step208EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844],771⟩,growRow 771 s2Step208EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step208EntryGvBefore s2Step208EntryGvAfter s2Step208EntryGvRow 118 s2Step208EntryGvFresh
    s2Step208EntryGv_distinct s2Step208EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step208EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step208EntryGvRow.payload++s2Step208EntryGvFresh) s2Step208EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step208EntryBank_rows : planWindowRowsLog s2Step208EntryFBefore [(s2Step208EntryFRow,166),(s2Step208EntryGRow,166),(s2Step208EntryFvRow,118),(s2Step208EntryGvRow,118)] [s2Step208EntryFFresh,s2Step208EntryGFresh,s2Step208EntryFvFresh,s2Step208EntryGvFresh]=
    some (s2Step208EntryGvAfter,[s2Step208EntryFOut,s2Step208EntryGOut,s2Step208EntryFvOut,s2Step208EntryGvOut],(growRow 768 s2Step208EntryFFresh ++ (growRow 769 s2Step208EntryGFresh ++ (growRow 770 s2Step208EntryFvFresh ++ (growRow 771 s2Step208EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step208EntryGvAfter [] []=some (s2Step208EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step208EntryGvBefore s2Step208EntryGvAfter s2Step208EntryGvAfter
    s2Step208EntryGvRow s2Step208EntryGvOut 118 s2Step208EntryGvFresh [] [] []
    (growRow 771 s2Step208EntryGvFresh) ([]) s2Step208EntryGv_Incoming s2Step208EntryGv_checked h4 s2Step208EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step208EntryFvBefore s2Step208EntryFvAfter s2Step208EntryGvAfter
    s2Step208EntryFvRow s2Step208EntryFvOut 118 s2Step208EntryFvFresh [(s2Step208EntryGvRow,118)] [s2Step208EntryGvFresh] [s2Step208EntryGvOut]
    (growRow 770 s2Step208EntryFvFresh) ((growRow 771 s2Step208EntryGvFresh ++ [])) s2Step208EntryFv_Incoming s2Step208EntryFv_checked h3 s2Step208EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step208EntryGBefore s2Step208EntryGAfter s2Step208EntryGvAfter
    s2Step208EntryGRow s2Step208EntryGOut 166 s2Step208EntryGFresh [(s2Step208EntryFvRow,118),(s2Step208EntryGvRow,118)] [s2Step208EntryFvFresh,s2Step208EntryGvFresh] [s2Step208EntryFvOut,s2Step208EntryGvOut]
    (growRow 769 s2Step208EntryGFresh) ((growRow 770 s2Step208EntryFvFresh ++ (growRow 771 s2Step208EntryGvFresh ++ []))) s2Step208EntryG_Incoming s2Step208EntryG_checked h2 s2Step208EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step208EntryFBefore s2Step208EntryFAfter s2Step208EntryGvAfter
    s2Step208EntryFRow s2Step208EntryFOut 166 s2Step208EntryFFresh [(s2Step208EntryGRow,166),(s2Step208EntryFvRow,118),(s2Step208EntryGvRow,118)] [s2Step208EntryGFresh,s2Step208EntryFvFresh,s2Step208EntryGvFresh] [s2Step208EntryGOut,s2Step208EntryFvOut,s2Step208EntryGvOut]
    (growRow 768 s2Step208EntryFFresh) ((growRow 769 s2Step208EntryGFresh ++ (growRow 770 s2Step208EntryFvFresh ++ (growRow 771 s2Step208EntryGvFresh ++ [])))) s2Step208EntryF_Incoming s2Step208EntryF_checked h1 s2Step208EntryF_Outgoing
  exact h0

private theorem s2Step208EntryBank_checked : compileHmrBankResizeLog .entry s2Step208EntryFBefore ⟨s2Step208EntryFRow,s2Step208EntryGRow,s2Step208EntryFvRow,s2Step208EntryGvRow⟩ ⟨166,166,118,118⟩ [s2Step208EntryFFresh,s2Step208EntryGFresh,s2Step208EntryFvFresh,s2Step208EntryGvFresh]=
    some (s2Step208EntryGvAfter,⟨s2Step208EntryFOut,s2Step208EntryGOut,s2Step208EntryFvOut,s2Step208EntryGvOut⟩,(growRow 768 s2Step208EntryFFresh ++ (growRow 769 s2Step208EntryGFresh ++ (growRow 770 s2Step208EntryFvFresh ++ (growRow 771 s2Step208EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step208EntryBank_rows]
  rfl

private def s2Step208ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step208ExitFBefore : Arena := s2Step208ExitGAfter

private def s2Step208ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 781],768⟩

private def s2Step208ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779],770⟩

private def s2Step208ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 783, 789],769⟩

private def s2Step208ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816],771⟩

private theorem s2Step208ExitBank_incomingDistinct : ([s2Step208ExitGRow,s2Step208ExitFRow,s2Step208ExitFvRow,s2Step208ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step208ExitF_Incoming : rowsOwned s2Step208ExitFBefore [s2Step208ExitFRow,s2Step208ExitFvRow,s2Step208ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step208ExitGRow,s2Step208ExitFRow,s2Step208ExitFvRow,s2Step208ExitGvRow] 1 s2Step208ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step208ExitFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step208ExitBank_outgoingOwned : rowsOwned s2Step208ExitGvAfter [s2Step208ExitGOut,s2Step208ExitFOut,s2Step208ExitFvOut,s2Step208ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step208ExitGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step208ExitF_Outgoing : rowsOwned s2Step208ExitGvAfter [s2Step208ExitFOut,s2Step208ExitFvOut,s2Step208ExitGvOut] :=
  hmrRows_owned_drop s2Step208ExitGvAfter [s2Step208ExitGOut,s2Step208ExitFOut,s2Step208ExitFvOut,s2Step208ExitGvOut] 1 s2Step208ExitBank_outgoingOwned

private theorem s2Step208ExitF_distinct : (s2Step208ExitFRow.sign::s2Step208ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step208ExitF_owned : (s2Step208ExitFRow.sign::s2Step208ExitFRow.payload).toFinset⊆s2Step208ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step208ExitFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step208ExitF_retired : s2Step208ExitFBefore.retireSet s2Step208ExitFExtra.toFinset=s2Step208ExitFAfter := by
  unfold Arena.retireSet s2Step208ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step208ExitFBefore,s2Step208ExitGAfter,s2Step208ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step208ExitF_checked : planRowResizeLog s2Step208ExitFBefore s2Step208ExitFRow 166 []=
    some (s2Step208ExitFAfter,s2Step208ExitFOut,shrinkRow 768 s2Step208ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step208ExitFBefore s2Step208ExitFRow 166 s2Step208ExitF_distinct s2Step208ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step208ExitFRow.payload.take 166) s2Step208ExitFRow.sign=s2Step208ExitFOut := by decide +kernel
  have hi : s2Step208ExitFRow.payload.drop 166=s2Step208ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step208ExitF_retired] at result
  exact result

private def s2Step208ExitFvAfter : Arena := s2Step208ExitFAfter

private def s2Step208ExitFvBefore : Arena := s2Step208ExitFAfter

private theorem s2Step208ExitFv_Incoming : rowsOwned s2Step208ExitFvBefore [s2Step208ExitFvRow,s2Step208ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step208ExitGRow,s2Step208ExitFRow,s2Step208ExitFvRow,s2Step208ExitGvRow] 2 s2Step208ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step208ExitFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step208ExitFv_Outgoing : rowsOwned s2Step208ExitGvAfter [s2Step208ExitFvOut,s2Step208ExitGvOut] :=
  hmrRows_owned_drop s2Step208ExitGvAfter [s2Step208ExitGOut,s2Step208ExitFOut,s2Step208ExitFvOut,s2Step208ExitGvOut] 2 s2Step208ExitBank_outgoingOwned

private theorem s2Step208ExitFv_distinct : (s2Step208ExitFvRow.sign::s2Step208ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step208ExitFv_owned : (s2Step208ExitFvRow.sign::s2Step208ExitFvRow.payload).toFinset⊆s2Step208ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step208ExitFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step208ExitFv_reserved : s2Step208ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step208ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step208ExitFv_checked : planRowResizeLog s2Step208ExitFvBefore s2Step208ExitFvRow 119 []=
    some (s2Step208ExitFvAfter,s2Step208ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step208ExitFvBefore s2Step208ExitFvAfter s2Step208ExitFvRow 119 []
    s2Step208ExitFv_distinct s2Step208ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step208ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step208ExitFvRow.payload++[]) s2Step208ExitFvRow.sign=s2Step208ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step208ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private theorem s2Step208ExitG_Incoming : rowsOwned s2Step208ExitGBefore [s2Step208ExitGRow,s2Step208ExitFRow,s2Step208ExitFvRow,s2Step208ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step208ExitGRow,s2Step208ExitFRow,s2Step208ExitFvRow,s2Step208ExitGvRow] 0 s2Step208ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step208ExitGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step208ExitG_Outgoing : rowsOwned s2Step208ExitGvAfter [s2Step208ExitGOut,s2Step208ExitFOut,s2Step208ExitFvOut,s2Step208ExitGvOut] :=
  hmrRows_owned_drop s2Step208ExitGvAfter [s2Step208ExitGOut,s2Step208ExitFOut,s2Step208ExitFvOut,s2Step208ExitGvOut] 0 s2Step208ExitBank_outgoingOwned

private theorem s2Step208ExitG_distinct : (s2Step208ExitGRow.sign::s2Step208ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step208ExitG_owned : (s2Step208ExitGRow.sign::s2Step208ExitGRow.payload).toFinset⊆s2Step208ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step208ExitGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step208ExitG_retired : s2Step208ExitGBefore.retireSet s2Step208ExitGExtra.toFinset=s2Step208ExitGAfter := by
  unfold Arena.retireSet s2Step208ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step208ExitGBefore,s2Step208ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step208ExitG_checked : planRowResizeLog s2Step208ExitGBefore s2Step208ExitGRow 165 []=
    some (s2Step208ExitGAfter,s2Step208ExitGOut,shrinkRow 769 s2Step208ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step208ExitGBefore s2Step208ExitGRow 165 s2Step208ExitG_distinct s2Step208ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step208ExitGRow.payload.take 165) s2Step208ExitGRow.sign=s2Step208ExitGOut := by decide +kernel
  have hi : s2Step208ExitGRow.payload.drop 165=s2Step208ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step208ExitG_retired] at result
  exact result

private def s2Step208ExitGvBefore : Arena := s2Step208ExitFAfter

private theorem s2Step208ExitGv_Incoming : rowsOwned s2Step208ExitGvBefore [s2Step208ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step208ExitGRow,s2Step208ExitFRow,s2Step208ExitFvRow,s2Step208ExitGvRow] 3 s2Step208ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step208ExitGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step208ExitGv_Outgoing : rowsOwned s2Step208ExitGvAfter [s2Step208ExitGvOut] :=
  hmrRows_owned_drop s2Step208ExitGvAfter [s2Step208ExitGOut,s2Step208ExitFOut,s2Step208ExitFvOut,s2Step208ExitGvOut] 3 s2Step208ExitBank_outgoingOwned

private theorem s2Step208ExitGv_distinct : (s2Step208ExitGvRow.sign::s2Step208ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step208ExitGv_owned : (s2Step208ExitGvRow.sign::s2Step208ExitGvRow.payload).toFinset⊆s2Step208ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step208ExitGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step208ExitGv_reserved : s2Step208ExitGvBefore.reserve (∅ : Finset Wire)=some s2Step208ExitGvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step208ExitGv_checked : planRowResizeLog s2Step208ExitGvBefore s2Step208ExitGvRow 119 []=
    some (s2Step208ExitGvAfter,s2Step208ExitGvOut,growRow 771 []) := by
  have result := planRowResizeLog_of_growth s2Step208ExitGvBefore s2Step208ExitGvAfter s2Step208ExitGvRow 119 []
    s2Step208ExitGv_distinct s2Step208ExitGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step208ExitGv_reserved
  have rowEq : WindowRow.mk (s2Step208ExitGvRow.payload++[]) s2Step208ExitGvRow.sign=s2Step208ExitGvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step208ExitBank_rows : planWindowRowsLog s2Step208ExitGBefore [(s2Step208ExitGRow,165),(s2Step208ExitFRow,166),(s2Step208ExitFvRow,119),(s2Step208ExitGvRow,119)] [[],[],[],[]]=
    some (s2Step208ExitGvAfter,[s2Step208ExitGOut,s2Step208ExitFOut,s2Step208ExitFvOut,s2Step208ExitGvOut],(shrinkRow 769 s2Step208ExitGExtra ++ (shrinkRow 768 s2Step208ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ []))))) := by
  have h4 : planWindowRowsLog s2Step208ExitGvAfter [] []=some (s2Step208ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step208ExitGvBefore s2Step208ExitGvAfter s2Step208ExitGvAfter
    s2Step208ExitGvRow s2Step208ExitGvOut 119 [] [] [] []
    (growRow 771 []) ([]) s2Step208ExitGv_Incoming s2Step208ExitGv_checked h4 s2Step208ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step208ExitFvBefore s2Step208ExitFvAfter s2Step208ExitGvAfter
    s2Step208ExitFvRow s2Step208ExitFvOut 119 [] [(s2Step208ExitGvRow,119)] [[]] [s2Step208ExitGvOut]
    (growRow 770 []) ((growRow 771 [] ++ [])) s2Step208ExitFv_Incoming s2Step208ExitFv_checked h3 s2Step208ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step208ExitFBefore s2Step208ExitFAfter s2Step208ExitGvAfter
    s2Step208ExitFRow s2Step208ExitFOut 166 [] [(s2Step208ExitFvRow,119),(s2Step208ExitGvRow,119)] [[],[]] [s2Step208ExitFvOut,s2Step208ExitGvOut]
    (shrinkRow 768 s2Step208ExitFExtra) ((growRow 770 [] ++ (growRow 771 [] ++ []))) s2Step208ExitF_Incoming s2Step208ExitF_checked h2 s2Step208ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step208ExitGBefore s2Step208ExitGAfter s2Step208ExitGvAfter
    s2Step208ExitGRow s2Step208ExitGOut 165 [] [(s2Step208ExitFRow,166),(s2Step208ExitFvRow,119),(s2Step208ExitGvRow,119)] [[],[],[]] [s2Step208ExitFOut,s2Step208ExitFvOut,s2Step208ExitGvOut]
    (shrinkRow 769 s2Step208ExitGExtra) ((shrinkRow 768 s2Step208ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ [])))) s2Step208ExitG_Incoming s2Step208ExitG_checked h1 s2Step208ExitG_Outgoing
  exact h0

private theorem s2Step208ExitBank_checked : compileHmrBankResizeLog .exit s2Step208ExitGBefore ⟨s2Step208ExitFRow,s2Step208ExitGRow,s2Step208ExitFvRow,s2Step208ExitGvRow⟩ ⟨166,165,119,119⟩ [[],[],[],[]]=
    some (s2Step208ExitGvAfter,⟨s2Step208ExitFOut,s2Step208ExitGOut,s2Step208ExitFvOut,s2Step208ExitGvOut⟩,(shrinkRow 769 s2Step208ExitGExtra ++ (shrinkRow 768 s2Step208ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step208ExitBank_rows]
  rfl

private theorem s2Step208Add0_apart : Disjoint s2Step208Add0Arena.live s2Step208Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step208Add0Arena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step208Add0_card : s2Step208Add0Arena.live.card=889 := by
  decide +kernel

private theorem s2Step208Add0_borrowed : s2Step208Add0Arena.checkBorrow (hmrHybridCount s2Step208Add0Arena s2Step208Add0B.length) s2Step208Add0Work=some s2Step208Add0During := by
  have len : s2Step208Add0Work.length=hmrHybridCount s2Step208Add0Arena s2Step208Add0B.length := by
    rw [hmrHybridCount,s2Step208Add0_card]
    decide +kernel
  have nd : s2Step208Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step208Add0Arena s2Step208Add0During s2Step208Add0Work.toFinset s2Step208Add0_bounded s2Step208Add0_apart rfl

private theorem s2Step208Add0_distinct : (845::796::822::(s2Step208Add0A++s2Step208Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step208Add0_owned : (845::796::822::(s2Step208Add0A++s2Step208Add0B)).toFinset⊆s2Step208Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step208Add0Arena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step208Add0_checked : compileHmrHybridCinLog s2Step208Add0Arena 796 845 822 s2Step208Add0A s2Step208Add0B s2Step208Add0Work=some s2Step208Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step208Add0Arena s2Step208Add0During 796 845 822 s2Step208Add0A s2Step208Add0B s2Step208Add0Work
    (by decide +kernel) (by decide +kernel) s2Step208Add0_distinct
    (fun q hq => s2Step208Add0_owned (List.mem_toFinset.mpr hq)) s2Step208Add0_borrowed

private theorem s2Step208Add1_apart : Disjoint s2Step208Add1Arena.live s2Step208Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step208Add1Arena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step208Add1_card : s2Step208Add1Arena.live.card=889 := by
  decide +kernel

private theorem s2Step208Add1_borrowed : s2Step208Add1Arena.checkBorrow (hmrHybridCount s2Step208Add1Arena s2Step208Add1B.length) s2Step208Add1Work=some s2Step208Add1During := by
  have len : s2Step208Add1Work.length=hmrHybridCount s2Step208Add1Arena s2Step208Add1B.length := by
    rw [hmrHybridCount,s2Step208Add1_card]
    decide +kernel
  have nd : s2Step208Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step208Add1Arena s2Step208Add1During s2Step208Add1Work.toFinset s2Step208Add1_bounded s2Step208Add1_apart rfl

private theorem s2Step208Add1_distinct : (845::796::822::(s2Step208Add1A++s2Step208Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step208Add1_owned : (845::796::822::(s2Step208Add1A++s2Step208Add1B)).toFinset⊆s2Step208Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step208Add1Arena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step208Add1_checked : compileHmrHybridCinLog s2Step208Add1Arena 796 845 822 s2Step208Add1A s2Step208Add1B s2Step208Add1Work=some s2Step208Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step208Add1Arena s2Step208Add1During 796 845 822 s2Step208Add1A s2Step208Add1B s2Step208Add1Work
    (by decide +kernel) (by decide +kernel) s2Step208Add1_distinct
    (fun q hq => s2Step208Add1_owned (List.mem_toFinset.mpr hq)) s2Step208Add1_borrowed

private theorem s2Step208F4_apart : Disjoint (s2Step208Add0A++s2Step208Add0B).toFinset (s2Step208Add1A++s2Step208Add1B).toFinset := by
  have nd : ((s2Step208Add0A++s2Step208Add0B)++(s2Step208Add1A++s2Step208Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step208F4_carry : s2Step208F4FlagArena.checkBorrow 1 [822]=some s2Step208Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step208F4FlagArena,s2Step208HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step208F4FlagArena,s2Step208HeadFvAfter,s2Step208Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step208F4_distinct : (841::796::845::822::((s2Step208Add0A++s2Step208Add1A)++(s2Step208Add0B++s2Step208Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step208F4_flag : s2Step208HeadFvAfter.checkBorrow 1 [845]=some s2Step208F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step208HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step208F4_owned : (841::796::((s2Step208Add0A++s2Step208Add1A)++(s2Step208Add0B++s2Step208Add1B))).toFinset⊆s2Step208HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step208HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step208F4_checked : compileHmrHybridF4Log s2Step208HeadFvAfter 841 796 s2Step208Add0A s2Step208Add0B s2Step208Add1A s2Step208Add1B [845] [822] s2Step208Add0Work s2Step208Add1Work=some s2Step208F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step208HeadFvAfter s2Step208F4FlagArena s2Step208Add0Arena s2Step208Add0During s2Step208Add1During 841 796
    s2Step208Add0A s2Step208Add0B s2Step208Add1A s2Step208Add1B [845] [822] s2Step208Add0Work s2Step208Add1Work
    (fun q hq => s2Step208F4_owned (List.mem_toFinset.mpr hq)) s2Step208F4_flag s2Step208F4_carry
    s2Step208F4_distinct s2Step208F4_apart s2Step208Add0_checked s2Step208Add1_checked

private theorem s2Step208Front_branch : s2Step208FrontSigmaArena.checkBorrow 1 [796]=some s2Step208HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step208FrontSigmaArena,s2Step208EntryGvAfter,s2Step208EntryGAfter,arenaWires]
  · ext q
    simp only [s2Step208FrontSigmaArena,s2Step208EntryGvAfter,s2Step208EntryGAfter,s2Step208HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step208Front_entry : HmrFrontEntryValid s2Step208EntryFBefore s2Step208FrontBank 166 118 ⟨166,165,119,119⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step208FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step208EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step208EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step208FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step208Front_sigma : s2Step208EntryGvAfter.checkBorrow 1 [841]=some s2Step208FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step208EntryGvAfter,s2Step208EntryGAfter,arenaWires]
  · rfl

private def s2Step208HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step208HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step208HeadFBefore : Arena := s2Step208HeadGAfter

private def s2Step208HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677],768⟩

private def s2Step208HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879],770⟩

private def s2Step208HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 783],769⟩

private def s2Step208HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844],771⟩

private theorem s2Step208HeadBank_incomingDistinct : ([s2Step208HeadGRow,s2Step208HeadFRow,s2Step208HeadGvRow,s2Step208HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step208HeadF_Incoming : rowsOwned s2Step208HeadFBefore [s2Step208HeadFRow,s2Step208HeadGvRow,s2Step208HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step208HeadGRow,s2Step208HeadFRow,s2Step208HeadGvRow,s2Step208HeadFvRow] 1 s2Step208HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step208HeadFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step208HeadBank_outgoingOwned : rowsOwned s2Step208HeadFvAfter [s2Step208HeadGOut,s2Step208HeadFOut,s2Step208HeadGvOut,s2Step208HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step208HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step208HeadF_Outgoing : rowsOwned s2Step208HeadFvAfter [s2Step208HeadFOut,s2Step208HeadGvOut,s2Step208HeadFvOut] :=
  hmrRows_owned_drop s2Step208HeadFvAfter [s2Step208HeadGOut,s2Step208HeadFOut,s2Step208HeadGvOut,s2Step208HeadFvOut] 1 s2Step208HeadBank_outgoingOwned

private theorem s2Step208HeadF_distinct : (s2Step208HeadFRow.sign::s2Step208HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step208HeadF_owned : (s2Step208HeadFRow.sign::s2Step208HeadFRow.payload).toFinset⊆s2Step208HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step208HeadFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step208HeadF_reserved : s2Step208HeadFBefore.reserve s2Step208HeadFFresh.toFinset=some s2Step208HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step208HeadFFresh,arenaWires]
  · norm_num [s2Step208HeadFBefore,s2Step208HeadGAfter,s2Step208HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step208HeadFAfter,s2Step208HeadFBefore,s2Step208HeadGAfter,s2Step208HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step208HeadF_checked : planRowResizeLog s2Step208HeadFBefore s2Step208HeadFRow 167 s2Step208HeadFFresh=
    some (s2Step208HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 781],768⟩,growRow 768 s2Step208HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step208HeadFBefore s2Step208HeadFAfter s2Step208HeadFRow 167 s2Step208HeadFFresh
    s2Step208HeadF_distinct s2Step208HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step208HeadF_reserved
  have rowEq : WindowRow.mk (s2Step208HeadFRow.payload++s2Step208HeadFFresh) s2Step208HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 781],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step208HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step208HeadFvBefore : Arena := s2Step208HeadGvAfter

private theorem s2Step208HeadFv_Incoming : rowsOwned s2Step208HeadFvBefore [s2Step208HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step208HeadGRow,s2Step208HeadFRow,s2Step208HeadGvRow,s2Step208HeadFvRow] 3 s2Step208HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step208HeadFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step208HeadFv_Outgoing : rowsOwned s2Step208HeadFvAfter [s2Step208HeadFvOut] :=
  hmrRows_owned_drop s2Step208HeadFvAfter [s2Step208HeadGOut,s2Step208HeadFOut,s2Step208HeadGvOut,s2Step208HeadFvOut] 3 s2Step208HeadBank_outgoingOwned

private theorem s2Step208HeadFv_distinct : (s2Step208HeadFvRow.sign::s2Step208HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step208HeadFv_owned : (s2Step208HeadFvRow.sign::s2Step208HeadFvRow.payload).toFinset⊆s2Step208HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step208HeadFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step208HeadFv_reserved : s2Step208HeadFvBefore.reserve s2Step208HeadFvFresh.toFinset=some s2Step208HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step208HeadFvFresh,arenaWires]
  · norm_num [s2Step208HeadFvBefore,s2Step208HeadGvAfter,s2Step208HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step208HeadFvAfter,s2Step208HeadFvBefore,s2Step208HeadGvAfter,s2Step208HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step208HeadFv_checked : planRowResizeLog s2Step208HeadFvBefore s2Step208HeadFvRow 119 s2Step208HeadFvFresh=
    some (s2Step208HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779],770⟩,growRow 770 s2Step208HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step208HeadFvBefore s2Step208HeadFvAfter s2Step208HeadFvRow 119 s2Step208HeadFvFresh
    s2Step208HeadFv_distinct s2Step208HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step208HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step208HeadFvRow.payload++s2Step208HeadFvFresh) s2Step208HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step208HeadG_Incoming : rowsOwned s2Step208HeadGBefore [s2Step208HeadGRow,s2Step208HeadFRow,s2Step208HeadGvRow,s2Step208HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step208HeadGRow,s2Step208HeadFRow,s2Step208HeadGvRow,s2Step208HeadFvRow] 0 s2Step208HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step208HeadGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step208HeadG_Outgoing : rowsOwned s2Step208HeadFvAfter [s2Step208HeadGOut,s2Step208HeadFOut,s2Step208HeadGvOut,s2Step208HeadFvOut] :=
  hmrRows_owned_drop s2Step208HeadFvAfter [s2Step208HeadGOut,s2Step208HeadFOut,s2Step208HeadGvOut,s2Step208HeadFvOut] 0 s2Step208HeadBank_outgoingOwned

private theorem s2Step208HeadG_distinct : (s2Step208HeadGRow.sign::s2Step208HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step208HeadG_owned : (s2Step208HeadGRow.sign::s2Step208HeadGRow.payload).toFinset⊆s2Step208HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step208HeadGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step208HeadG_reserved : s2Step208HeadGBefore.reserve s2Step208HeadGFresh.toFinset=some s2Step208HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step208HeadGFresh,arenaWires]
  · norm_num [s2Step208HeadGBefore,s2Step208HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step208HeadGAfter,s2Step208HeadGBefore,s2Step208HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step208HeadG_checked : planRowResizeLog s2Step208HeadGBefore s2Step208HeadGRow 167 s2Step208HeadGFresh=
    some (s2Step208HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 783, 789],769⟩,growRow 769 s2Step208HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step208HeadGBefore s2Step208HeadGAfter s2Step208HeadGRow 167 s2Step208HeadGFresh
    s2Step208HeadG_distinct s2Step208HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step208HeadG_reserved
  have rowEq : WindowRow.mk (s2Step208HeadGRow.payload++s2Step208HeadGFresh) s2Step208HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 783, 789],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step208HeadGvBefore : Arena := s2Step208HeadFAfter

private theorem s2Step208HeadGv_Incoming : rowsOwned s2Step208HeadGvBefore [s2Step208HeadGvRow,s2Step208HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step208HeadGRow,s2Step208HeadFRow,s2Step208HeadGvRow,s2Step208HeadFvRow] 2 s2Step208HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step208HeadGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step208HeadGv_Outgoing : rowsOwned s2Step208HeadFvAfter [s2Step208HeadGvOut,s2Step208HeadFvOut] :=
  hmrRows_owned_drop s2Step208HeadFvAfter [s2Step208HeadGOut,s2Step208HeadFOut,s2Step208HeadGvOut,s2Step208HeadFvOut] 2 s2Step208HeadBank_outgoingOwned

private theorem s2Step208HeadGv_distinct : (s2Step208HeadGvRow.sign::s2Step208HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step208HeadGv_owned : (s2Step208HeadGvRow.sign::s2Step208HeadGvRow.payload).toFinset⊆s2Step208HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step208HeadGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step208HeadGv_reserved : s2Step208HeadGvBefore.reserve s2Step208HeadGvFresh.toFinset=some s2Step208HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step208HeadGvFresh,arenaWires]
  · norm_num [s2Step208HeadGvBefore,s2Step208HeadFAfter,s2Step208HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step208HeadGvAfter,s2Step208HeadGvBefore,s2Step208HeadFAfter,s2Step208HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step208HeadGv_checked : planRowResizeLog s2Step208HeadGvBefore s2Step208HeadGvRow 119 s2Step208HeadGvFresh=
    some (s2Step208HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816],771⟩,growRow 771 s2Step208HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step208HeadGvBefore s2Step208HeadGvAfter s2Step208HeadGvRow 119 s2Step208HeadGvFresh
    s2Step208HeadGv_distinct s2Step208HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step208HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step208HeadGvRow.payload++s2Step208HeadGvFresh) s2Step208HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step208HeadBank_rows : planWindowRowsLog s2Step208HeadGBefore [(s2Step208HeadGRow,167),(s2Step208HeadFRow,167),(s2Step208HeadGvRow,119),(s2Step208HeadFvRow,119)] [s2Step208HeadGFresh,s2Step208HeadFFresh,s2Step208HeadGvFresh,s2Step208HeadFvFresh]=
    some (s2Step208HeadFvAfter,[s2Step208HeadGOut,s2Step208HeadFOut,s2Step208HeadGvOut,s2Step208HeadFvOut],(growRow 769 s2Step208HeadGFresh ++ (growRow 768 s2Step208HeadFFresh ++ (growRow 771 s2Step208HeadGvFresh ++ (growRow 770 s2Step208HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step208HeadFvAfter [] []=some (s2Step208HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step208HeadFvBefore s2Step208HeadFvAfter s2Step208HeadFvAfter
    s2Step208HeadFvRow s2Step208HeadFvOut 119 s2Step208HeadFvFresh [] [] []
    (growRow 770 s2Step208HeadFvFresh) ([]) s2Step208HeadFv_Incoming s2Step208HeadFv_checked h4 s2Step208HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step208HeadGvBefore s2Step208HeadGvAfter s2Step208HeadFvAfter
    s2Step208HeadGvRow s2Step208HeadGvOut 119 s2Step208HeadGvFresh [(s2Step208HeadFvRow,119)] [s2Step208HeadFvFresh] [s2Step208HeadFvOut]
    (growRow 771 s2Step208HeadGvFresh) ((growRow 770 s2Step208HeadFvFresh ++ [])) s2Step208HeadGv_Incoming s2Step208HeadGv_checked h3 s2Step208HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step208HeadFBefore s2Step208HeadFAfter s2Step208HeadFvAfter
    s2Step208HeadFRow s2Step208HeadFOut 167 s2Step208HeadFFresh [(s2Step208HeadGvRow,119),(s2Step208HeadFvRow,119)] [s2Step208HeadGvFresh,s2Step208HeadFvFresh] [s2Step208HeadGvOut,s2Step208HeadFvOut]
    (growRow 768 s2Step208HeadFFresh) ((growRow 771 s2Step208HeadGvFresh ++ (growRow 770 s2Step208HeadFvFresh ++ []))) s2Step208HeadF_Incoming s2Step208HeadF_checked h2 s2Step208HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step208HeadGBefore s2Step208HeadGAfter s2Step208HeadFvAfter
    s2Step208HeadGRow s2Step208HeadGOut 167 s2Step208HeadGFresh [(s2Step208HeadFRow,167),(s2Step208HeadGvRow,119),(s2Step208HeadFvRow,119)] [s2Step208HeadFFresh,s2Step208HeadGvFresh,s2Step208HeadFvFresh] [s2Step208HeadFOut,s2Step208HeadGvOut,s2Step208HeadFvOut]
    (growRow 769 s2Step208HeadGFresh) ((growRow 768 s2Step208HeadFFresh ++ (growRow 771 s2Step208HeadGvFresh ++ (growRow 770 s2Step208HeadFvFresh ++ [])))) s2Step208HeadG_Incoming s2Step208HeadG_checked h1 s2Step208HeadG_Outgoing
  exact h0

private theorem s2Step208HeadBank_checked : compileHmrBankResizeLog .headroom s2Step208HeadGBefore ⟨s2Step208HeadFRow,s2Step208HeadGRow,s2Step208HeadFvRow,s2Step208HeadGvRow⟩ ⟨167,167,119,119⟩ [s2Step208HeadGFresh,s2Step208HeadFFresh,s2Step208HeadGvFresh,s2Step208HeadFvFresh]=
    some (s2Step208HeadFvAfter,⟨s2Step208HeadFOut,s2Step208HeadGOut,s2Step208HeadFvOut,s2Step208HeadGvOut⟩,(growRow 769 s2Step208HeadGFresh ++ (growRow 768 s2Step208HeadFFresh ++ (growRow 771 s2Step208HeadGvFresh ++ (growRow 770 s2Step208HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step208HeadBank_rows]
  rfl

private theorem s2Step208Front_checked : compileHmrSourceFrontLog s2Step208EntryFBefore s2Step208FrontBank 166 118 ⟨166,165,119,119⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step208FrontLog=some s2Step208FrontPlan := by
  have pairEq : s2Step208FrontPair=⟨s2Step208HeadFRow,s2Step208HeadGRow,s2Step208HeadFvRow,s2Step208HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step208FrontHead=⟨s2Step208ExitFRow,s2Step208ExitGRow,s2Step208ExitFvRow,s2Step208ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step208Add0A=s2Step208FrontHead.f.wires := by decide +kernel
  have gEq : s2Step208Add0B=s2Step208FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step208Add1A=s2Step208FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step208Add1B=s2Step208FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step208EntryFBefore s2Step208FrontBank 166 118 ⟨166,165,119,119⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step208FrontLog s2Step208FrontPlan
  · exact s2Step208Front_entry
  · exact s2Step208EntryBank_checked
  · exact s2Step208Front_sigma
  · rfl
  · exact s2Step208Front_branch
  · rfl
  · simpa only [s2Step208FrontPlan,pairEq] using s2Step208HeadBank_checked
  · simpa only [s2Step208FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step208F4_checked
  · exact s2Step208Counter_checked
  · rfl
  · simpa only [s2Step208FrontPlan,headEq] using s2Step208ExitBank_checked

private theorem s2Step208Complete_explicit_checked : compileHmrEarlyStepLog s2Step208EntryFBefore s2Step208FrontBank 166 118 ⟨166,165,119,119⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step208CompleteLog=some s2Step208CompletePlan := by
  let Q := s2Step208EarlyControlPlan
  have hq := s2Step208EarlyControl_plan_checked
  have fv1 : s2Step208CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step208CompleteOut.fv.payload[2]?.getD s2Step208CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step208CompleteOut.fv.payload[3]?.getD s2Step208CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step208CompleteOut.fv.payload[4]?.getD s2Step208CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step208EntryFBefore s2Step208EarlyControlArena s2Step208FrontBank 166 118 ⟨166,165,119,119⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step208CompleteLog s2Step208FrontPlan Q
    s2Step208Front_checked s2Step208Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step208Complete_owned s2Step208Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step208EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 841 s2Step208CompleteOut.fv.second (s2Step208CompleteOut.fv.payload[2]?.getD s2Step208CompleteOut.fv.sign) (s2Step208CompleteOut.fv.payload[3]?.getD s2Step208CompleteOut.fv.sign) (s2Step208CompleteOut.fv.payload[4]?.getD s2Step208CompleteOut.fv.sign) 796 47 s2Step208EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep208Arena : Arena := s2Step208EntryFBefore
def s2PrivateStep208Bank : WindowBank := s2Step208FrontBank
def s2PrivateStep208Spec : HmrSourceWalkStepLog := ⟨166,118,⟨166,165,119,119⟩,47,.early s2Step208CompleteLog⟩
def s2PrivateStep208Plan : HmrSourceStepPlan := .early s2Step208CompletePlan
theorem s2PrivateStep208_source : s2PrivateStep208Spec=s2ObservedLogs208[0] := rfl
theorem s2PrivateStep208_checked : compileHmrSourceStepLog s2PrivateStep208Arena s2PrivateStep208Bank
    s2PrivateStep208Spec.fgWidth s2PrivateStep208Spec.vWidth s2PrivateStep208Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897]
    6 498 208 s2PrivateStep208Spec.need none s2PrivateStep208Spec.log=some s2PrivateStep208Plan := by
  change compileHmrSourceStepLog s2Step208EntryFBefore s2Step208FrontBank 166 118 ⟨166,165,119,119⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 6 498 208 47 none (.early s2Step208CompleteLog)=some (.early s2Step208CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 208<498)]
  rw [s2Step208Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
