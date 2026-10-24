import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep205
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

private def s2Step207CompleteMoves : List (Wire × Wire) := [(796,165)]

private def s2Step207EarlyControlLog : HmrEarlyControlLog := ⟨[796, 789, 781, 816, 779],[845],[822],[814, 882, 826, 842, 885, 891],[]⟩

private def s2Step207FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[779], [816], [789], [781]],[[], [], [], []]⟩,[841],[783],[845],[822],[814, 882, 826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[814, 882, 826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[845, 822, 814, 882]⟩

private def s2Step207CompleteLog : HmrEarlyStepLog := ⟨s2Step207FrontLog,s2Step207CompleteMoves,s2Step207EarlyControlLog⟩

private def s2Step207ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677],768⟩

private def s2Step207ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879],770⟩

private def s2Step207ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164],769⟩

private def s2Step207ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844],771⟩

private def s2Step207FrontOut : WindowBank := ⟨s2Step207ExitFOut,s2Step207ExitGOut,s2Step207ExitFvOut,s2Step207ExitGvOut⟩

private def s2Step207CompleteOut : WindowBank := s2Step207FrontOut.repacked s2Step207CompleteMoves

private def s2Step207EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step207EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step207EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step207EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step207EarlyControlPositiveArena,[845],s2Step207EarlyControlEqualityArena,[822],⟨⟨841,false⟩,[⟨⟨845,false⟩,822⟩]⟩⟩

private def s2Step207EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step207EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step207EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step207EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step207EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step207EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step207EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,796⟩,⟨⟨774,false⟩,789⟩,⟨⟨775,false⟩,781⟩,⟨⟨776,false⟩,816⟩,⟨⟨777,false⟩,779⟩]⟩

private def s2Step207EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step207EarlyControlZeroArena,s2Step207EarlyControlZeroPlan,s2Step207EarlyControlClassPlan,s2Step207EarlyControlFlagArena,s2Step207EarlyControlFittedArena,s2Step207EarlyControlHistoryArena,s2Step207EarlyControlSigmaArena,s2Step207EarlyControlOutputArena,s2Step207EarlyControlLog⟩

private def s2Step207CounterWork : List Wire := [845, 822, 814, 882]

private theorem s2Step207Counter_bounded : s2Step207CounterWork.toFinset⊆arenaWires := by norm_num [s2Step207CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step207HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step207CounterDuring : Arena := ⟨s2Step207HeadFvAfter.live∪s2Step207CounterWork.toFinset,Finset.union_subset s2Step207HeadFvAfter.bounded s2Step207Counter_bounded⟩

private def s2Step207EntryFFresh : List Wire := []

private def s2Step207EntryFvFresh : List Wire := []

private def s2Step207EntryGFresh : List Wire := []

private def s2Step207EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step207EntryGvAfter : Arena := s2Step207EntryFBefore

private def s2Step207EntryGvFresh : List Wire := []

private def s2Step207ExitFExtra : List Wire := [816]

private def s2Step207ExitFvExtra : List Wire := [781]

private def s2Step207ExitGExtra : List Wire := [165, 779]

private def s2Step207ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<165) ∨ (166≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step207ExitGvExtra : List Wire := [789]

private def s2Step207Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step207Add0Work : List Wire := [814, 882, 826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step207Add0_bounded : s2Step207Add0Work.toFinset⊆arenaWires := by
  have h : s2Step207Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step207Add0During : Arena := ⟨s2Step207Add0Arena.live∪s2Step207Add0Work.toFinset,Finset.union_subset s2Step207Add0Arena.bounded s2Step207Add0_bounded⟩

private def s2Step207Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step207Add1Work : List Wire := [814, 882, 826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step207Add1_bounded : s2Step207Add1Work.toFinset⊆arenaWires := by
  have h : s2Step207Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step207Add1During : Arena := ⟨s2Step207Add1Arena.live∪s2Step207Add1Work.toFinset,Finset.union_subset s2Step207Add1Arena.bounded s2Step207Add1_bounded⟩

private def s2Step207F4FlagArena : Arena := ⟨s2Step207HeadFvAfter.live∪{845},Finset.union_subset s2Step207HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step207F4Plan : HmrHybridF4Plan := ⟨s2Step207F4FlagArena,[845],s2Step207Add0Arena,[822],s2Step207Add0During,s2Step207Add0Work,s2Step207Add1During,s2Step207Add1Work⟩

private def s2Step207HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 816],768⟩

private def s2Step207HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 781],770⟩

private def s2Step207HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 779],769⟩

private def s2Step207HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 789],771⟩

private def s2Step207FrontHead : WindowBank := ⟨s2Step207HeadFOut,s2Step207HeadGOut,s2Step207HeadFvOut,s2Step207HeadGvOut⟩

private def s2Step207EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677],768⟩

private def s2Step207EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879],770⟩

private def s2Step207EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165],769⟩

private def s2Step207EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844],771⟩

private def s2Step207FrontPair : WindowBank := ⟨s2Step207EntryFOut,s2Step207EntryGOut,s2Step207EntryFvOut,s2Step207EntryGvOut⟩

private def s2Step207FrontSigmaArena : Arena := ⟨s2Step207EntryGvAfter.live∪{841},Finset.union_subset s2Step207EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step207HeadFFresh : List Wire := [816]

private def s2Step207HeadFvFresh : List Wire := [781]

private def s2Step207HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step207HeadGFresh : List Wire := [779]

private def s2Step207HeadGvFresh : List Wire := [789]

private def s2Step207FrontPlan : HmrSourceFront := ⟨s2Step207EntryGvAfter,s2Step207FrontPair,(growRow 768 s2Step207EntryFFresh ++ (growRow 769 s2Step207EntryGFresh ++ (growRow 770 s2Step207EntryFvFresh ++ (growRow 771 s2Step207EntryGvFresh ++ [])))),s2Step207FrontSigmaArena,[841],s2Step207HeadGBefore,[783],
  s2Step207HeadFvAfter,s2Step207FrontHead,(growRow 769 s2Step207HeadGFresh ++ (growRow 768 s2Step207HeadFFresh ++ (growRow 771 s2Step207HeadGvFresh ++ (growRow 770 s2Step207HeadFvFresh ++ [])))),s2Step207F4Plan,s2Step207CounterDuring,s2Step207CounterWork,s2Step207ExitGvAfter,s2Step207FrontOut,(shrinkRow 769 s2Step207ExitGExtra ++ (shrinkRow 768 s2Step207ExitFExtra ++ (shrinkRow 770 s2Step207ExitFvExtra ++ (shrinkRow 771 s2Step207ExitGvExtra ++ []))))⟩

private def s2Step207CompletePlan : HmrEarlyStepPlan := ⟨s2Step207FrontPlan,s2Step207EarlyControlArena,s2Step207EarlyControlPlan,s2Step207CompleteMoves⟩

private theorem s2Step207Complete_apart : List.Disjoint (s2Step207CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [841, 783, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] := by
  have nd : ((s2Step207CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[841, 783, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step207Complete_owned : (s2Step207CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step207EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step207EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private def s2Step207CompleteMoveArena : Arena := ⟨s2Step207ExitGvAfter.live∪{165},Finset.union_subset s2Step207ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step207Complete_repack : s2Step207ExitGvAfter.checkRepack s2Step207CompleteMoves=some s2Step207EarlyControlArena := by
  have owned : 796∈s2Step207ExitGvAfter.live := by norm_num [s2Step207ExitGvAfter,arenaWires]
  have reserve : s2Step207ExitGvAfter.reserve {165}=some s2Step207CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step207ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step207CompleteMoveArena.retireSet {796}=s2Step207EarlyControlArena := by
    unfold Arena.retireSet s2Step207EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step207CompleteMoveArena,s2Step207ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step207CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step207CompleteMoveArena.retireSet {796}).checkRepack []=some s2Step207EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step207EarlyControl_branchOwned : ([783] : List Wire).toFinset⊆s2Step207EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step207EarlyControlSigmaArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step207EarlyControl_branch : compileHmrBranchRetirement s2Step207EarlyControlSigmaArena 783=some s2Step207EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step207EarlyControl_branchOwned
  · ext q
    simp [s2Step207EarlyControlOutputArena,s2Step207EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step207EarlyControl_classEqualityBorrow : s2Step207EarlyControlPositiveArena.checkBorrow (([841, 845] : List Wire).length-1) s2Step207EarlyControlLog.classWork=some s2Step207EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step207EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step207EarlyControlPositiveArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step207EarlyControlEqualityArena,s2Step207EarlyControlPositiveArena,s2Step207EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step207EarlyControl_classEqualityOwned : ([841, 845] : List Wire).toFinset⊆s2Step207EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step207EarlyControlPositiveArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step207EarlyControl_classEquality : compileHmrEqualityLog s2Step207EarlyControlPositiveArena [841, 845] 0 s2Step207EarlyControlLog.classWork=some (s2Step207EarlyControlEqualityArena,s2Step207EarlyControlLog.classWork,s2Step207EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step207EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step207EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step207EarlyControl_classOwned : ([777, 779, 841] : List Wire).toFinset⊆s2Step207EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step207EarlyControlZeroArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step207EarlyControl_positiveBorrow : s2Step207EarlyControlZeroArena.checkBorrow (1) s2Step207EarlyControlLog.positiveWork=some s2Step207EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step207EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step207EarlyControlZeroArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step207EarlyControlPositiveArena,s2Step207EarlyControlZeroArena,s2Step207EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step207EarlyControl_class : compileHmrSourceClassLog s2Step207EarlyControlZeroArena false 777 s2Step207EarlyControlZeroPlan.top 0 841 s2Step207EarlyControlLog.positiveWork s2Step207EarlyControlLog.classWork=some s2Step207EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step207EarlyControlClassPlan s2Step207EarlyControlZeroArena false 777 s2Step207EarlyControlZeroPlan.top 0 841
  constructor
  · decide +kernel
  · exact s2Step207EarlyControl_classOwned
  · exact s2Step207EarlyControl_positiveBorrow
  · exact s2Step207EarlyControl_classEquality

private theorem s2Step207EarlyControl_entryRecordOwned : ([783, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step207EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step207EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step207EarlyControl_entrySigmaOwned : ([841, 254] : List Wire).toFinset⊆s2Step207EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step207EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step207EarlyControl_fitBorrow : s2Step207EarlyControlFlagArena.checkBorrow ((47-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).length)) s2Step207EarlyControlLog.recordFresh=some s2Step207EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step207EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step207EarlyControlFlagArena (fun q => (0≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step207EarlyControlFittedArena,s2Step207EarlyControlFlagArena,s2Step207EarlyControlLog,arenaWires]

private theorem s2Step207EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step207EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step207EarlyControlFlagArena (fun q => (0≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step207EarlyControl_fit : compileHmrRecordGrowLog s2Step207EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step207EarlyControlLog.recordFresh=some s2Step207EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step207EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step207EarlyControl_fitBorrow

private theorem s2Step207EarlyControl_flagsBorrow : s2Step207EarlyControlEqualityArena.checkBorrow (6) s2Step207EarlyControlLog.flagWork=some s2Step207EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step207EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step207EarlyControlEqualityArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step207EarlyControlFlagArena,s2Step207EarlyControlEqualityArena,s2Step207EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step207EarlyControl_flagsOwned : ([822, 253, 252, 251] : List Wire).toFinset⊆s2Step207EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step207EarlyControlEqualityArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step207EarlyControl_flags : compileHmrFlagsLog s2Step207EarlyControlClassPlan.equalityArena s2Step207EarlyControlClassPlan.equality.top 253 252 251 s2Step207EarlyControlLog.flagWork=some s2Step207EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step207EarlyControl_flagsOwned⟩
  · exact s2Step207EarlyControl_flagsBorrow

private theorem s2Step207EarlyControl_historyBorrow : s2Step207EarlyControlArena.checkBorrow ((47-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).length)) s2Step207EarlyControlLog.recordFresh=some s2Step207EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step207EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step207EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step207EarlyControlHistoryArena,s2Step207EarlyControlArena,s2Step207EarlyControlLog,arenaWires]

private theorem s2Step207EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step207EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step207EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step207EarlyControl_history : compileHmrRecordGrowLog s2Step207EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step207EarlyControlLog.recordFresh=some s2Step207EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step207EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step207EarlyControl_historyBorrow

private theorem s2Step207EarlyControl_sigmaOwned : ([254, 841] : List Wire).toFinset⊆s2Step207EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step207EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step207EarlyControl_sigmaReleaseOwned : ([841] : List Wire).toFinset⊆s2Step207EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step207EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step207EarlyControl_sigmaRelease : s2Step207EarlyControlHistoryArena.release {841} (fun _ => false)=some s2Step207EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step207EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step207EarlyControlSigmaArena,s2Step207EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step207EarlyControl_sigma : compileHmrSigmaDropLog s2Step207EarlyControlHistoryArena false 0 0 254 841 []=some s2Step207EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step207EarlyControl_sigmaOwned⟩
  · exact s2Step207EarlyControl_sigmaRelease

private theorem s2Step207EarlyControl_zeroBorrow : s2Step207EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step207EarlyControlLog.zeroWork=some s2Step207EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step207EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step207EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step207EarlyControlZeroArena,s2Step207EarlyControlArena,s2Step207EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step207EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step207EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step207EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step207EarlyControl_zero : compileHmrEqualityLog s2Step207EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step207EarlyControlLog.zeroWork=some (s2Step207EarlyControlZeroArena,s2Step207EarlyControlLog.zeroWork,s2Step207EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step207EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step207EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step207EarlyControl_logged : s2Step207EarlyControlPlan.Logged s2Step207EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 841 254 253 252 251 783 47 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step207EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step207EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step207EarlyControl_zero
  · exact s2Step207EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step207EarlyControl_flags
  · exact s2Step207EarlyControl_fit
  · exact s2Step207EarlyControl_history
  · exact s2Step207EarlyControl_sigma
  · exact s2Step207EarlyControl_branch

private theorem s2Step207EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step207EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 841 254 253 252 251 783 47 s2Step207EarlyControlLog=some s2Step207EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step207EarlyControlPlan s2Step207EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 841 254 253 252 251 783 47 s2Step207EarlyControl_logged

private def s2Step207EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677],768⟩

private def s2Step207EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879],770⟩

private def s2Step207EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165],769⟩

private def s2Step207EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844],771⟩

private def s2Step207FrontBank : WindowBank := ⟨s2Step207EntryFRow,s2Step207EntryGRow,s2Step207EntryFvRow,s2Step207EntryGvRow⟩

private def s2Step207Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 816, 768]

private def s2Step207Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 779, 769]

private def s2Step207Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 781, 770]

private def s2Step207Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 789, 771]

private theorem s2Step207Counter_apart : Disjoint s2Step207HeadFvAfter.live s2Step207CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step207HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step207Counter_borrowed : s2Step207HeadFvAfter.checkBorrow 4 s2Step207CounterWork=some s2Step207CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step207HeadFvAfter s2Step207CounterDuring s2Step207CounterWork.toFinset s2Step207Counter_bounded s2Step207Counter_apart rfl

private theorem s2Step207Counter_owned : (841::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step207HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step207HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step207Counter_checked : compileHmrCounterStepLog s2Step207HeadFvAfter true 841 [772, 773, 774, 775, 776, 777] s2Step207CounterWork=some s2Step207CounterDuring := by
  have owned : ∀q∈841::[772, 773, 774, 775, 776, 777],q∈s2Step207HeadFvAfter.live := fun q hq => s2Step207Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step207Counter_borrowed

private def s2Step207EntryFAfter : Arena := s2Step207EntryFBefore

private theorem s2Step207EntryBank_incomingDistinct : ([s2Step207EntryFRow,s2Step207EntryGRow,s2Step207EntryFvRow,s2Step207EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step207EntryF_Incoming : rowsOwned s2Step207EntryFBefore [s2Step207EntryFRow,s2Step207EntryGRow,s2Step207EntryFvRow,s2Step207EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step207EntryFRow,s2Step207EntryGRow,s2Step207EntryFvRow,s2Step207EntryGvRow] 0 s2Step207EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step207EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step207EntryBank_outgoingOwned : rowsOwned s2Step207EntryGvAfter [s2Step207EntryFOut,s2Step207EntryGOut,s2Step207EntryFvOut,s2Step207EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step207EntryGvAfter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step207EntryF_Outgoing : rowsOwned s2Step207EntryGvAfter [s2Step207EntryFOut,s2Step207EntryGOut,s2Step207EntryFvOut,s2Step207EntryGvOut] :=
  hmrRows_owned_drop s2Step207EntryGvAfter [s2Step207EntryFOut,s2Step207EntryGOut,s2Step207EntryFvOut,s2Step207EntryGvOut] 0 s2Step207EntryBank_outgoingOwned

private theorem s2Step207EntryF_distinct : (s2Step207EntryFRow.sign::s2Step207EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step207EntryF_owned : (s2Step207EntryFRow.sign::s2Step207EntryFRow.payload).toFinset⊆s2Step207EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step207EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step207EntryF_reserved : s2Step207EntryFBefore.reserve s2Step207EntryFFresh.toFinset=some s2Step207EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step207EntryFFresh,arenaWires]
  · norm_num [s2Step207EntryFBefore,s2Step207EntryFFresh,arenaWires]
  · simp only [s2Step207EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step207EntryF_checked : planRowResizeLog s2Step207EntryFBefore s2Step207EntryFRow 166 s2Step207EntryFFresh=
    some (s2Step207EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677],768⟩,growRow 768 s2Step207EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step207EntryFBefore s2Step207EntryFAfter s2Step207EntryFRow 166 s2Step207EntryFFresh
    s2Step207EntryF_distinct s2Step207EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step207EntryF_reserved
  have rowEq : WindowRow.mk (s2Step207EntryFRow.payload++s2Step207EntryFFresh) s2Step207EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step207EntryFvAfter : Arena := s2Step207EntryFBefore

private def s2Step207EntryFvBefore : Arena := s2Step207EntryFBefore

private theorem s2Step207EntryFv_Incoming : rowsOwned s2Step207EntryFvBefore [s2Step207EntryFvRow,s2Step207EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step207EntryFRow,s2Step207EntryGRow,s2Step207EntryFvRow,s2Step207EntryGvRow] 2 s2Step207EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step207EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step207EntryFv_Outgoing : rowsOwned s2Step207EntryGvAfter [s2Step207EntryFvOut,s2Step207EntryGvOut] :=
  hmrRows_owned_drop s2Step207EntryGvAfter [s2Step207EntryFOut,s2Step207EntryGOut,s2Step207EntryFvOut,s2Step207EntryGvOut] 2 s2Step207EntryBank_outgoingOwned

private theorem s2Step207EntryFv_distinct : (s2Step207EntryFvRow.sign::s2Step207EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step207EntryFv_owned : (s2Step207EntryFvRow.sign::s2Step207EntryFvRow.payload).toFinset⊆s2Step207EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step207EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step207EntryFv_reserved : s2Step207EntryFvBefore.reserve s2Step207EntryFvFresh.toFinset=some s2Step207EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step207EntryFvFresh,arenaWires]
  · norm_num [s2Step207EntryFvBefore,s2Step207EntryFBefore,s2Step207EntryFvFresh,arenaWires]
  · simp only [s2Step207EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step207EntryFv_checked : planRowResizeLog s2Step207EntryFvBefore s2Step207EntryFvRow 118 s2Step207EntryFvFresh=
    some (s2Step207EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879],770⟩,growRow 770 s2Step207EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step207EntryFvBefore s2Step207EntryFvAfter s2Step207EntryFvRow 118 s2Step207EntryFvFresh
    s2Step207EntryFv_distinct s2Step207EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step207EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step207EntryFvRow.payload++s2Step207EntryFvFresh) s2Step207EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step207EntryGAfter : Arena := s2Step207EntryFBefore

private def s2Step207EntryGBefore : Arena := s2Step207EntryFBefore

private theorem s2Step207EntryG_Incoming : rowsOwned s2Step207EntryGBefore [s2Step207EntryGRow,s2Step207EntryFvRow,s2Step207EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step207EntryFRow,s2Step207EntryGRow,s2Step207EntryFvRow,s2Step207EntryGvRow] 1 s2Step207EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step207EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step207EntryG_Outgoing : rowsOwned s2Step207EntryGvAfter [s2Step207EntryGOut,s2Step207EntryFvOut,s2Step207EntryGvOut] :=
  hmrRows_owned_drop s2Step207EntryGvAfter [s2Step207EntryFOut,s2Step207EntryGOut,s2Step207EntryFvOut,s2Step207EntryGvOut] 1 s2Step207EntryBank_outgoingOwned

private theorem s2Step207EntryG_distinct : (s2Step207EntryGRow.sign::s2Step207EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step207EntryG_owned : (s2Step207EntryGRow.sign::s2Step207EntryGRow.payload).toFinset⊆s2Step207EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step207EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step207EntryG_reserved : s2Step207EntryGBefore.reserve s2Step207EntryGFresh.toFinset=some s2Step207EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step207EntryGFresh,arenaWires]
  · norm_num [s2Step207EntryGBefore,s2Step207EntryFBefore,s2Step207EntryGFresh,arenaWires]
  · simp only [s2Step207EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step207EntryG_checked : planRowResizeLog s2Step207EntryGBefore s2Step207EntryGRow 166 s2Step207EntryGFresh=
    some (s2Step207EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165],769⟩,growRow 769 s2Step207EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step207EntryGBefore s2Step207EntryGAfter s2Step207EntryGRow 166 s2Step207EntryGFresh
    s2Step207EntryG_distinct s2Step207EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step207EntryG_reserved
  have rowEq : WindowRow.mk (s2Step207EntryGRow.payload++s2Step207EntryGFresh) s2Step207EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step207EntryGvBefore : Arena := s2Step207EntryFBefore

private theorem s2Step207EntryGv_Incoming : rowsOwned s2Step207EntryGvBefore [s2Step207EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step207EntryFRow,s2Step207EntryGRow,s2Step207EntryFvRow,s2Step207EntryGvRow] 3 s2Step207EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step207EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step207EntryGv_Outgoing : rowsOwned s2Step207EntryGvAfter [s2Step207EntryGvOut] :=
  hmrRows_owned_drop s2Step207EntryGvAfter [s2Step207EntryFOut,s2Step207EntryGOut,s2Step207EntryFvOut,s2Step207EntryGvOut] 3 s2Step207EntryBank_outgoingOwned

private theorem s2Step207EntryGv_distinct : (s2Step207EntryGvRow.sign::s2Step207EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step207EntryGv_owned : (s2Step207EntryGvRow.sign::s2Step207EntryGvRow.payload).toFinset⊆s2Step207EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step207EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step207EntryGv_reserved : s2Step207EntryGvBefore.reserve s2Step207EntryGvFresh.toFinset=some s2Step207EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step207EntryGvFresh,arenaWires]
  · norm_num [s2Step207EntryGvBefore,s2Step207EntryFBefore,s2Step207EntryGvFresh,arenaWires]
  · simp only [s2Step207EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step207EntryGv_checked : planRowResizeLog s2Step207EntryGvBefore s2Step207EntryGvRow 118 s2Step207EntryGvFresh=
    some (s2Step207EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844],771⟩,growRow 771 s2Step207EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step207EntryGvBefore s2Step207EntryGvAfter s2Step207EntryGvRow 118 s2Step207EntryGvFresh
    s2Step207EntryGv_distinct s2Step207EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step207EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step207EntryGvRow.payload++s2Step207EntryGvFresh) s2Step207EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step207EntryBank_rows : planWindowRowsLog s2Step207EntryFBefore [(s2Step207EntryFRow,166),(s2Step207EntryGRow,166),(s2Step207EntryFvRow,118),(s2Step207EntryGvRow,118)] [s2Step207EntryFFresh,s2Step207EntryGFresh,s2Step207EntryFvFresh,s2Step207EntryGvFresh]=
    some (s2Step207EntryGvAfter,[s2Step207EntryFOut,s2Step207EntryGOut,s2Step207EntryFvOut,s2Step207EntryGvOut],(growRow 768 s2Step207EntryFFresh ++ (growRow 769 s2Step207EntryGFresh ++ (growRow 770 s2Step207EntryFvFresh ++ (growRow 771 s2Step207EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step207EntryGvAfter [] []=some (s2Step207EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step207EntryGvBefore s2Step207EntryGvAfter s2Step207EntryGvAfter
    s2Step207EntryGvRow s2Step207EntryGvOut 118 s2Step207EntryGvFresh [] [] []
    (growRow 771 s2Step207EntryGvFresh) ([]) s2Step207EntryGv_Incoming s2Step207EntryGv_checked h4 s2Step207EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step207EntryFvBefore s2Step207EntryFvAfter s2Step207EntryGvAfter
    s2Step207EntryFvRow s2Step207EntryFvOut 118 s2Step207EntryFvFresh [(s2Step207EntryGvRow,118)] [s2Step207EntryGvFresh] [s2Step207EntryGvOut]
    (growRow 770 s2Step207EntryFvFresh) ((growRow 771 s2Step207EntryGvFresh ++ [])) s2Step207EntryFv_Incoming s2Step207EntryFv_checked h3 s2Step207EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step207EntryGBefore s2Step207EntryGAfter s2Step207EntryGvAfter
    s2Step207EntryGRow s2Step207EntryGOut 166 s2Step207EntryGFresh [(s2Step207EntryFvRow,118),(s2Step207EntryGvRow,118)] [s2Step207EntryFvFresh,s2Step207EntryGvFresh] [s2Step207EntryFvOut,s2Step207EntryGvOut]
    (growRow 769 s2Step207EntryGFresh) ((growRow 770 s2Step207EntryFvFresh ++ (growRow 771 s2Step207EntryGvFresh ++ []))) s2Step207EntryG_Incoming s2Step207EntryG_checked h2 s2Step207EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step207EntryFBefore s2Step207EntryFAfter s2Step207EntryGvAfter
    s2Step207EntryFRow s2Step207EntryFOut 166 s2Step207EntryFFresh [(s2Step207EntryGRow,166),(s2Step207EntryFvRow,118),(s2Step207EntryGvRow,118)] [s2Step207EntryGFresh,s2Step207EntryFvFresh,s2Step207EntryGvFresh] [s2Step207EntryGOut,s2Step207EntryFvOut,s2Step207EntryGvOut]
    (growRow 768 s2Step207EntryFFresh) ((growRow 769 s2Step207EntryGFresh ++ (growRow 770 s2Step207EntryFvFresh ++ (growRow 771 s2Step207EntryGvFresh ++ [])))) s2Step207EntryF_Incoming s2Step207EntryF_checked h1 s2Step207EntryF_Outgoing
  exact h0

private theorem s2Step207EntryBank_checked : compileHmrBankResizeLog .entry s2Step207EntryFBefore ⟨s2Step207EntryFRow,s2Step207EntryGRow,s2Step207EntryFvRow,s2Step207EntryGvRow⟩ ⟨166,166,118,118⟩ [s2Step207EntryFFresh,s2Step207EntryGFresh,s2Step207EntryFvFresh,s2Step207EntryGvFresh]=
    some (s2Step207EntryGvAfter,⟨s2Step207EntryFOut,s2Step207EntryGOut,s2Step207EntryFvOut,s2Step207EntryGvOut⟩,(growRow 768 s2Step207EntryFFresh ++ (growRow 769 s2Step207EntryGFresh ++ (growRow 770 s2Step207EntryFvFresh ++ (growRow 771 s2Step207EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step207EntryBank_rows]
  rfl

private def s2Step207ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<165) ∨ (166≤q ∧ q<779) ∨ (780≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step207ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<165) ∨ (166≤q ∧ q<779) ∨ (780≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step207ExitFBefore : Arena := s2Step207ExitGAfter

private def s2Step207ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 816],768⟩

private def s2Step207ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 781],770⟩

private def s2Step207ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 779],769⟩

private def s2Step207ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 789],771⟩

private theorem s2Step207ExitBank_incomingDistinct : ([s2Step207ExitGRow,s2Step207ExitFRow,s2Step207ExitFvRow,s2Step207ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step207ExitF_Incoming : rowsOwned s2Step207ExitFBefore [s2Step207ExitFRow,s2Step207ExitFvRow,s2Step207ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step207ExitGRow,s2Step207ExitFRow,s2Step207ExitFvRow,s2Step207ExitGvRow] 1 s2Step207ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step207ExitFBefore (fun q => (0≤q ∧ q<165) ∨ (166≤q ∧ q<779) ∨ (780≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step207ExitBank_outgoingOwned : rowsOwned s2Step207ExitGvAfter [s2Step207ExitGOut,s2Step207ExitFOut,s2Step207ExitFvOut,s2Step207ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step207ExitGvAfter (fun q => (0≤q ∧ q<165) ∨ (166≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step207ExitF_Outgoing : rowsOwned s2Step207ExitGvAfter [s2Step207ExitFOut,s2Step207ExitFvOut,s2Step207ExitGvOut] :=
  hmrRows_owned_drop s2Step207ExitGvAfter [s2Step207ExitGOut,s2Step207ExitFOut,s2Step207ExitFvOut,s2Step207ExitGvOut] 1 s2Step207ExitBank_outgoingOwned

private theorem s2Step207ExitF_distinct : (s2Step207ExitFRow.sign::s2Step207ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step207ExitF_owned : (s2Step207ExitFRow.sign::s2Step207ExitFRow.payload).toFinset⊆s2Step207ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step207ExitFBefore (fun q => (0≤q ∧ q<165) ∨ (166≤q ∧ q<779) ∨ (780≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step207ExitF_retired : s2Step207ExitFBefore.retireSet s2Step207ExitFExtra.toFinset=s2Step207ExitFAfter := by
  unfold Arena.retireSet s2Step207ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step207ExitFBefore,s2Step207ExitGAfter,s2Step207ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step207ExitF_checked : planRowResizeLog s2Step207ExitFBefore s2Step207ExitFRow 166 []=
    some (s2Step207ExitFAfter,s2Step207ExitFOut,shrinkRow 768 s2Step207ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step207ExitFBefore s2Step207ExitFRow 166 s2Step207ExitF_distinct s2Step207ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step207ExitFRow.payload.take 166) s2Step207ExitFRow.sign=s2Step207ExitFOut := by decide +kernel
  have hi : s2Step207ExitFRow.payload.drop 166=s2Step207ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step207ExitF_retired] at result
  exact result

private def s2Step207ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<165) ∨ (166≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step207ExitFvBefore : Arena := s2Step207ExitFAfter

private theorem s2Step207ExitFv_Incoming : rowsOwned s2Step207ExitFvBefore [s2Step207ExitFvRow,s2Step207ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step207ExitGRow,s2Step207ExitFRow,s2Step207ExitFvRow,s2Step207ExitGvRow] 2 s2Step207ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step207ExitFvBefore (fun q => (0≤q ∧ q<165) ∨ (166≤q ∧ q<779) ∨ (780≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step207ExitFv_Outgoing : rowsOwned s2Step207ExitGvAfter [s2Step207ExitFvOut,s2Step207ExitGvOut] :=
  hmrRows_owned_drop s2Step207ExitGvAfter [s2Step207ExitGOut,s2Step207ExitFOut,s2Step207ExitFvOut,s2Step207ExitGvOut] 2 s2Step207ExitBank_outgoingOwned

private theorem s2Step207ExitFv_distinct : (s2Step207ExitFvRow.sign::s2Step207ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step207ExitFv_owned : (s2Step207ExitFvRow.sign::s2Step207ExitFvRow.payload).toFinset⊆s2Step207ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step207ExitFvBefore (fun q => (0≤q ∧ q<165) ∨ (166≤q ∧ q<779) ∨ (780≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step207ExitFv_retired : s2Step207ExitFvBefore.retireSet s2Step207ExitFvExtra.toFinset=s2Step207ExitFvAfter := by
  unfold Arena.retireSet s2Step207ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step207ExitFvBefore,s2Step207ExitFAfter,s2Step207ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step207ExitFv_checked : planRowResizeLog s2Step207ExitFvBefore s2Step207ExitFvRow 118 []=
    some (s2Step207ExitFvAfter,s2Step207ExitFvOut,shrinkRow 770 s2Step207ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step207ExitFvBefore s2Step207ExitFvRow 118 s2Step207ExitFv_distinct s2Step207ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step207ExitFvRow.payload.take 118) s2Step207ExitFvRow.sign=s2Step207ExitFvOut := by decide +kernel
  have hi : s2Step207ExitFvRow.payload.drop 118=s2Step207ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step207ExitFv_retired] at result
  exact result

private def s2Step207ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private theorem s2Step207ExitG_Incoming : rowsOwned s2Step207ExitGBefore [s2Step207ExitGRow,s2Step207ExitFRow,s2Step207ExitFvRow,s2Step207ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step207ExitGRow,s2Step207ExitFRow,s2Step207ExitFvRow,s2Step207ExitGvRow] 0 s2Step207ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step207ExitGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step207ExitG_Outgoing : rowsOwned s2Step207ExitGvAfter [s2Step207ExitGOut,s2Step207ExitFOut,s2Step207ExitFvOut,s2Step207ExitGvOut] :=
  hmrRows_owned_drop s2Step207ExitGvAfter [s2Step207ExitGOut,s2Step207ExitFOut,s2Step207ExitFvOut,s2Step207ExitGvOut] 0 s2Step207ExitBank_outgoingOwned

private theorem s2Step207ExitG_distinct : (s2Step207ExitGRow.sign::s2Step207ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step207ExitG_owned : (s2Step207ExitGRow.sign::s2Step207ExitGRow.payload).toFinset⊆s2Step207ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step207ExitGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step207ExitG_retired : s2Step207ExitGBefore.retireSet s2Step207ExitGExtra.toFinset=s2Step207ExitGAfter := by
  unfold Arena.retireSet s2Step207ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step207ExitGBefore,s2Step207ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step207ExitG_checked : planRowResizeLog s2Step207ExitGBefore s2Step207ExitGRow 165 []=
    some (s2Step207ExitGAfter,s2Step207ExitGOut,shrinkRow 769 s2Step207ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step207ExitGBefore s2Step207ExitGRow 165 s2Step207ExitG_distinct s2Step207ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step207ExitGRow.payload.take 165) s2Step207ExitGRow.sign=s2Step207ExitGOut := by decide +kernel
  have hi : s2Step207ExitGRow.payload.drop 165=s2Step207ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step207ExitG_retired] at result
  exact result

private def s2Step207ExitGvBefore : Arena := s2Step207ExitFvAfter

private theorem s2Step207ExitGv_Incoming : rowsOwned s2Step207ExitGvBefore [s2Step207ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step207ExitGRow,s2Step207ExitFRow,s2Step207ExitFvRow,s2Step207ExitGvRow] 3 s2Step207ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step207ExitGvBefore (fun q => (0≤q ∧ q<165) ∨ (166≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step207ExitGv_Outgoing : rowsOwned s2Step207ExitGvAfter [s2Step207ExitGvOut] :=
  hmrRows_owned_drop s2Step207ExitGvAfter [s2Step207ExitGOut,s2Step207ExitFOut,s2Step207ExitFvOut,s2Step207ExitGvOut] 3 s2Step207ExitBank_outgoingOwned

private theorem s2Step207ExitGv_distinct : (s2Step207ExitGvRow.sign::s2Step207ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step207ExitGv_owned : (s2Step207ExitGvRow.sign::s2Step207ExitGvRow.payload).toFinset⊆s2Step207ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step207ExitGvBefore (fun q => (0≤q ∧ q<165) ∨ (166≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step207ExitGv_retired : s2Step207ExitGvBefore.retireSet s2Step207ExitGvExtra.toFinset=s2Step207ExitGvAfter := by
  unfold Arena.retireSet s2Step207ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step207ExitGvBefore,s2Step207ExitFvAfter,s2Step207ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step207ExitGv_checked : planRowResizeLog s2Step207ExitGvBefore s2Step207ExitGvRow 118 []=
    some (s2Step207ExitGvAfter,s2Step207ExitGvOut,shrinkRow 771 s2Step207ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step207ExitGvBefore s2Step207ExitGvRow 118 s2Step207ExitGv_distinct s2Step207ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step207ExitGvRow.payload.take 118) s2Step207ExitGvRow.sign=s2Step207ExitGvOut := by decide +kernel
  have hi : s2Step207ExitGvRow.payload.drop 118=s2Step207ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step207ExitGv_retired] at result
  exact result

private theorem s2Step207ExitBank_rows : planWindowRowsLog s2Step207ExitGBefore [(s2Step207ExitGRow,165),(s2Step207ExitFRow,166),(s2Step207ExitFvRow,118),(s2Step207ExitGvRow,118)] [[],[],[],[]]=
    some (s2Step207ExitGvAfter,[s2Step207ExitGOut,s2Step207ExitFOut,s2Step207ExitFvOut,s2Step207ExitGvOut],(shrinkRow 769 s2Step207ExitGExtra ++ (shrinkRow 768 s2Step207ExitFExtra ++ (shrinkRow 770 s2Step207ExitFvExtra ++ (shrinkRow 771 s2Step207ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step207ExitGvAfter [] []=some (s2Step207ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step207ExitGvBefore s2Step207ExitGvAfter s2Step207ExitGvAfter
    s2Step207ExitGvRow s2Step207ExitGvOut 118 [] [] [] []
    (shrinkRow 771 s2Step207ExitGvExtra) ([]) s2Step207ExitGv_Incoming s2Step207ExitGv_checked h4 s2Step207ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step207ExitFvBefore s2Step207ExitFvAfter s2Step207ExitGvAfter
    s2Step207ExitFvRow s2Step207ExitFvOut 118 [] [(s2Step207ExitGvRow,118)] [[]] [s2Step207ExitGvOut]
    (shrinkRow 770 s2Step207ExitFvExtra) ((shrinkRow 771 s2Step207ExitGvExtra ++ [])) s2Step207ExitFv_Incoming s2Step207ExitFv_checked h3 s2Step207ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step207ExitFBefore s2Step207ExitFAfter s2Step207ExitGvAfter
    s2Step207ExitFRow s2Step207ExitFOut 166 [] [(s2Step207ExitFvRow,118),(s2Step207ExitGvRow,118)] [[],[]] [s2Step207ExitFvOut,s2Step207ExitGvOut]
    (shrinkRow 768 s2Step207ExitFExtra) ((shrinkRow 770 s2Step207ExitFvExtra ++ (shrinkRow 771 s2Step207ExitGvExtra ++ []))) s2Step207ExitF_Incoming s2Step207ExitF_checked h2 s2Step207ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step207ExitGBefore s2Step207ExitGAfter s2Step207ExitGvAfter
    s2Step207ExitGRow s2Step207ExitGOut 165 [] [(s2Step207ExitFRow,166),(s2Step207ExitFvRow,118),(s2Step207ExitGvRow,118)] [[],[],[]] [s2Step207ExitFOut,s2Step207ExitFvOut,s2Step207ExitGvOut]
    (shrinkRow 769 s2Step207ExitGExtra) ((shrinkRow 768 s2Step207ExitFExtra ++ (shrinkRow 770 s2Step207ExitFvExtra ++ (shrinkRow 771 s2Step207ExitGvExtra ++ [])))) s2Step207ExitG_Incoming s2Step207ExitG_checked h1 s2Step207ExitG_Outgoing
  exact h0

private theorem s2Step207ExitBank_checked : compileHmrBankResizeLog .exit s2Step207ExitGBefore ⟨s2Step207ExitFRow,s2Step207ExitGRow,s2Step207ExitFvRow,s2Step207ExitGvRow⟩ ⟨166,165,118,118⟩ [[],[],[],[]]=
    some (s2Step207ExitGvAfter,⟨s2Step207ExitFOut,s2Step207ExitGOut,s2Step207ExitFvOut,s2Step207ExitGvOut⟩,(shrinkRow 769 s2Step207ExitGExtra ++ (shrinkRow 768 s2Step207ExitFExtra ++ (shrinkRow 770 s2Step207ExitFvExtra ++ (shrinkRow 771 s2Step207ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step207ExitBank_rows]
  rfl

private theorem s2Step207Add0_apart : Disjoint s2Step207Add0Arena.live s2Step207Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step207Add0Arena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step207Add0_card : s2Step207Add0Arena.live.card=889 := by
  decide +kernel

private theorem s2Step207Add0_borrowed : s2Step207Add0Arena.checkBorrow (hmrHybridCount s2Step207Add0Arena s2Step207Add0B.length) s2Step207Add0Work=some s2Step207Add0During := by
  have len : s2Step207Add0Work.length=hmrHybridCount s2Step207Add0Arena s2Step207Add0B.length := by
    rw [hmrHybridCount,s2Step207Add0_card]
    decide +kernel
  have nd : s2Step207Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step207Add0Arena s2Step207Add0During s2Step207Add0Work.toFinset s2Step207Add0_bounded s2Step207Add0_apart rfl

private theorem s2Step207Add0_distinct : (845::783::822::(s2Step207Add0A++s2Step207Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step207Add0_owned : (845::783::822::(s2Step207Add0A++s2Step207Add0B)).toFinset⊆s2Step207Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step207Add0Arena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step207Add0_checked : compileHmrHybridCinLog s2Step207Add0Arena 783 845 822 s2Step207Add0A s2Step207Add0B s2Step207Add0Work=some s2Step207Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step207Add0Arena s2Step207Add0During 783 845 822 s2Step207Add0A s2Step207Add0B s2Step207Add0Work
    (by decide +kernel) (by decide +kernel) s2Step207Add0_distinct
    (fun q hq => s2Step207Add0_owned (List.mem_toFinset.mpr hq)) s2Step207Add0_borrowed

private theorem s2Step207Add1_apart : Disjoint s2Step207Add1Arena.live s2Step207Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step207Add1Arena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step207Add1_card : s2Step207Add1Arena.live.card=889 := by
  decide +kernel

private theorem s2Step207Add1_borrowed : s2Step207Add1Arena.checkBorrow (hmrHybridCount s2Step207Add1Arena s2Step207Add1B.length) s2Step207Add1Work=some s2Step207Add1During := by
  have len : s2Step207Add1Work.length=hmrHybridCount s2Step207Add1Arena s2Step207Add1B.length := by
    rw [hmrHybridCount,s2Step207Add1_card]
    decide +kernel
  have nd : s2Step207Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step207Add1Arena s2Step207Add1During s2Step207Add1Work.toFinset s2Step207Add1_bounded s2Step207Add1_apart rfl

private theorem s2Step207Add1_distinct : (845::783::822::(s2Step207Add1A++s2Step207Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step207Add1_owned : (845::783::822::(s2Step207Add1A++s2Step207Add1B)).toFinset⊆s2Step207Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step207Add1Arena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step207Add1_checked : compileHmrHybridCinLog s2Step207Add1Arena 783 845 822 s2Step207Add1A s2Step207Add1B s2Step207Add1Work=some s2Step207Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step207Add1Arena s2Step207Add1During 783 845 822 s2Step207Add1A s2Step207Add1B s2Step207Add1Work
    (by decide +kernel) (by decide +kernel) s2Step207Add1_distinct
    (fun q hq => s2Step207Add1_owned (List.mem_toFinset.mpr hq)) s2Step207Add1_borrowed

private theorem s2Step207F4_apart : Disjoint (s2Step207Add0A++s2Step207Add0B).toFinset (s2Step207Add1A++s2Step207Add1B).toFinset := by
  have nd : ((s2Step207Add0A++s2Step207Add0B)++(s2Step207Add1A++s2Step207Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step207F4_carry : s2Step207F4FlagArena.checkBorrow 1 [822]=some s2Step207Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step207F4FlagArena,s2Step207HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step207F4FlagArena,s2Step207HeadFvAfter,s2Step207Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step207F4_distinct : (841::783::845::822::((s2Step207Add0A++s2Step207Add1A)++(s2Step207Add0B++s2Step207Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step207F4_flag : s2Step207HeadFvAfter.checkBorrow 1 [845]=some s2Step207F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step207HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step207F4_owned : (841::783::((s2Step207Add0A++s2Step207Add1A)++(s2Step207Add0B++s2Step207Add1B))).toFinset⊆s2Step207HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step207HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step207F4_checked : compileHmrHybridF4Log s2Step207HeadFvAfter 841 783 s2Step207Add0A s2Step207Add0B s2Step207Add1A s2Step207Add1B [845] [822] s2Step207Add0Work s2Step207Add1Work=some s2Step207F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step207HeadFvAfter s2Step207F4FlagArena s2Step207Add0Arena s2Step207Add0During s2Step207Add1During 841 783
    s2Step207Add0A s2Step207Add0B s2Step207Add1A s2Step207Add1B [845] [822] s2Step207Add0Work s2Step207Add1Work
    (fun q hq => s2Step207F4_owned (List.mem_toFinset.mpr hq)) s2Step207F4_flag s2Step207F4_carry
    s2Step207F4_distinct s2Step207F4_apart s2Step207Add0_checked s2Step207Add1_checked

private theorem s2Step207Front_branch : s2Step207FrontSigmaArena.checkBorrow 1 [783]=some s2Step207HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step207FrontSigmaArena,s2Step207EntryGvAfter,s2Step207EntryFBefore,arenaWires]
  · ext q
    simp only [s2Step207FrontSigmaArena,s2Step207EntryGvAfter,s2Step207EntryFBefore,s2Step207HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step207Front_entry : HmrFrontEntryValid s2Step207EntryFBefore s2Step207FrontBank 166 118 ⟨166,165,118,118⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step207FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step207EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step207EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step207FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step207Front_sigma : s2Step207EntryGvAfter.checkBorrow 1 [841]=some s2Step207FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step207EntryGvAfter,s2Step207EntryFBefore,arenaWires]
  · rfl

private def s2Step207HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step207HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step207HeadFBefore : Arena := s2Step207HeadGAfter

private def s2Step207HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677],768⟩

private def s2Step207HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879],770⟩

private def s2Step207HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165],769⟩

private def s2Step207HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844],771⟩

private theorem s2Step207HeadBank_incomingDistinct : ([s2Step207HeadGRow,s2Step207HeadFRow,s2Step207HeadGvRow,s2Step207HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step207HeadF_Incoming : rowsOwned s2Step207HeadFBefore [s2Step207HeadFRow,s2Step207HeadGvRow,s2Step207HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step207HeadGRow,s2Step207HeadFRow,s2Step207HeadGvRow,s2Step207HeadFvRow] 1 s2Step207HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step207HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step207HeadBank_outgoingOwned : rowsOwned s2Step207HeadFvAfter [s2Step207HeadGOut,s2Step207HeadFOut,s2Step207HeadGvOut,s2Step207HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step207HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step207HeadF_Outgoing : rowsOwned s2Step207HeadFvAfter [s2Step207HeadFOut,s2Step207HeadGvOut,s2Step207HeadFvOut] :=
  hmrRows_owned_drop s2Step207HeadFvAfter [s2Step207HeadGOut,s2Step207HeadFOut,s2Step207HeadGvOut,s2Step207HeadFvOut] 1 s2Step207HeadBank_outgoingOwned

private theorem s2Step207HeadF_distinct : (s2Step207HeadFRow.sign::s2Step207HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step207HeadF_owned : (s2Step207HeadFRow.sign::s2Step207HeadFRow.payload).toFinset⊆s2Step207HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step207HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step207HeadF_reserved : s2Step207HeadFBefore.reserve s2Step207HeadFFresh.toFinset=some s2Step207HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step207HeadFFresh,arenaWires]
  · norm_num [s2Step207HeadFBefore,s2Step207HeadGAfter,s2Step207HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step207HeadFAfter,s2Step207HeadFBefore,s2Step207HeadGAfter,s2Step207HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step207HeadF_checked : planRowResizeLog s2Step207HeadFBefore s2Step207HeadFRow 167 s2Step207HeadFFresh=
    some (s2Step207HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 816],768⟩,growRow 768 s2Step207HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step207HeadFBefore s2Step207HeadFAfter s2Step207HeadFRow 167 s2Step207HeadFFresh
    s2Step207HeadF_distinct s2Step207HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step207HeadF_reserved
  have rowEq : WindowRow.mk (s2Step207HeadFRow.payload++s2Step207HeadFFresh) s2Step207HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 816],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step207HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step207HeadFvBefore : Arena := s2Step207HeadGvAfter

private theorem s2Step207HeadFv_Incoming : rowsOwned s2Step207HeadFvBefore [s2Step207HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step207HeadGRow,s2Step207HeadFRow,s2Step207HeadGvRow,s2Step207HeadFvRow] 3 s2Step207HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step207HeadFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step207HeadFv_Outgoing : rowsOwned s2Step207HeadFvAfter [s2Step207HeadFvOut] :=
  hmrRows_owned_drop s2Step207HeadFvAfter [s2Step207HeadGOut,s2Step207HeadFOut,s2Step207HeadGvOut,s2Step207HeadFvOut] 3 s2Step207HeadBank_outgoingOwned

private theorem s2Step207HeadFv_distinct : (s2Step207HeadFvRow.sign::s2Step207HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step207HeadFv_owned : (s2Step207HeadFvRow.sign::s2Step207HeadFvRow.payload).toFinset⊆s2Step207HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step207HeadFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step207HeadFv_reserved : s2Step207HeadFvBefore.reserve s2Step207HeadFvFresh.toFinset=some s2Step207HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step207HeadFvFresh,arenaWires]
  · norm_num [s2Step207HeadFvBefore,s2Step207HeadGvAfter,s2Step207HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step207HeadFvAfter,s2Step207HeadFvBefore,s2Step207HeadGvAfter,s2Step207HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step207HeadFv_checked : planRowResizeLog s2Step207HeadFvBefore s2Step207HeadFvRow 119 s2Step207HeadFvFresh=
    some (s2Step207HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 781],770⟩,growRow 770 s2Step207HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step207HeadFvBefore s2Step207HeadFvAfter s2Step207HeadFvRow 119 s2Step207HeadFvFresh
    s2Step207HeadFv_distinct s2Step207HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step207HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step207HeadFvRow.payload++s2Step207HeadFvFresh) s2Step207HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 781],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step207HeadG_Incoming : rowsOwned s2Step207HeadGBefore [s2Step207HeadGRow,s2Step207HeadFRow,s2Step207HeadGvRow,s2Step207HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step207HeadGRow,s2Step207HeadFRow,s2Step207HeadGvRow,s2Step207HeadFvRow] 0 s2Step207HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step207HeadGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step207HeadG_Outgoing : rowsOwned s2Step207HeadFvAfter [s2Step207HeadGOut,s2Step207HeadFOut,s2Step207HeadGvOut,s2Step207HeadFvOut] :=
  hmrRows_owned_drop s2Step207HeadFvAfter [s2Step207HeadGOut,s2Step207HeadFOut,s2Step207HeadGvOut,s2Step207HeadFvOut] 0 s2Step207HeadBank_outgoingOwned

private theorem s2Step207HeadG_distinct : (s2Step207HeadGRow.sign::s2Step207HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step207HeadG_owned : (s2Step207HeadGRow.sign::s2Step207HeadGRow.payload).toFinset⊆s2Step207HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step207HeadGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step207HeadG_reserved : s2Step207HeadGBefore.reserve s2Step207HeadGFresh.toFinset=some s2Step207HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step207HeadGFresh,arenaWires]
  · norm_num [s2Step207HeadGBefore,s2Step207HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step207HeadGAfter,s2Step207HeadGBefore,s2Step207HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step207HeadG_checked : planRowResizeLog s2Step207HeadGBefore s2Step207HeadGRow 167 s2Step207HeadGFresh=
    some (s2Step207HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 779],769⟩,growRow 769 s2Step207HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step207HeadGBefore s2Step207HeadGAfter s2Step207HeadGRow 167 s2Step207HeadGFresh
    s2Step207HeadG_distinct s2Step207HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step207HeadG_reserved
  have rowEq : WindowRow.mk (s2Step207HeadGRow.payload++s2Step207HeadGFresh) s2Step207HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 779],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step207HeadGvBefore : Arena := s2Step207HeadFAfter

private theorem s2Step207HeadGv_Incoming : rowsOwned s2Step207HeadGvBefore [s2Step207HeadGvRow,s2Step207HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step207HeadGRow,s2Step207HeadFRow,s2Step207HeadGvRow,s2Step207HeadFvRow] 2 s2Step207HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step207HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step207HeadGv_Outgoing : rowsOwned s2Step207HeadFvAfter [s2Step207HeadGvOut,s2Step207HeadFvOut] :=
  hmrRows_owned_drop s2Step207HeadFvAfter [s2Step207HeadGOut,s2Step207HeadFOut,s2Step207HeadGvOut,s2Step207HeadFvOut] 2 s2Step207HeadBank_outgoingOwned

private theorem s2Step207HeadGv_distinct : (s2Step207HeadGvRow.sign::s2Step207HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step207HeadGv_owned : (s2Step207HeadGvRow.sign::s2Step207HeadGvRow.payload).toFinset⊆s2Step207HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step207HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step207HeadGv_reserved : s2Step207HeadGvBefore.reserve s2Step207HeadGvFresh.toFinset=some s2Step207HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step207HeadGvFresh,arenaWires]
  · norm_num [s2Step207HeadGvBefore,s2Step207HeadFAfter,s2Step207HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step207HeadGvAfter,s2Step207HeadGvBefore,s2Step207HeadFAfter,s2Step207HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step207HeadGv_checked : planRowResizeLog s2Step207HeadGvBefore s2Step207HeadGvRow 119 s2Step207HeadGvFresh=
    some (s2Step207HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 789],771⟩,growRow 771 s2Step207HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step207HeadGvBefore s2Step207HeadGvAfter s2Step207HeadGvRow 119 s2Step207HeadGvFresh
    s2Step207HeadGv_distinct s2Step207HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step207HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step207HeadGvRow.payload++s2Step207HeadGvFresh) s2Step207HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 789],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step207HeadBank_rows : planWindowRowsLog s2Step207HeadGBefore [(s2Step207HeadGRow,167),(s2Step207HeadFRow,167),(s2Step207HeadGvRow,119),(s2Step207HeadFvRow,119)] [s2Step207HeadGFresh,s2Step207HeadFFresh,s2Step207HeadGvFresh,s2Step207HeadFvFresh]=
    some (s2Step207HeadFvAfter,[s2Step207HeadGOut,s2Step207HeadFOut,s2Step207HeadGvOut,s2Step207HeadFvOut],(growRow 769 s2Step207HeadGFresh ++ (growRow 768 s2Step207HeadFFresh ++ (growRow 771 s2Step207HeadGvFresh ++ (growRow 770 s2Step207HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step207HeadFvAfter [] []=some (s2Step207HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step207HeadFvBefore s2Step207HeadFvAfter s2Step207HeadFvAfter
    s2Step207HeadFvRow s2Step207HeadFvOut 119 s2Step207HeadFvFresh [] [] []
    (growRow 770 s2Step207HeadFvFresh) ([]) s2Step207HeadFv_Incoming s2Step207HeadFv_checked h4 s2Step207HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step207HeadGvBefore s2Step207HeadGvAfter s2Step207HeadFvAfter
    s2Step207HeadGvRow s2Step207HeadGvOut 119 s2Step207HeadGvFresh [(s2Step207HeadFvRow,119)] [s2Step207HeadFvFresh] [s2Step207HeadFvOut]
    (growRow 771 s2Step207HeadGvFresh) ((growRow 770 s2Step207HeadFvFresh ++ [])) s2Step207HeadGv_Incoming s2Step207HeadGv_checked h3 s2Step207HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step207HeadFBefore s2Step207HeadFAfter s2Step207HeadFvAfter
    s2Step207HeadFRow s2Step207HeadFOut 167 s2Step207HeadFFresh [(s2Step207HeadGvRow,119),(s2Step207HeadFvRow,119)] [s2Step207HeadGvFresh,s2Step207HeadFvFresh] [s2Step207HeadGvOut,s2Step207HeadFvOut]
    (growRow 768 s2Step207HeadFFresh) ((growRow 771 s2Step207HeadGvFresh ++ (growRow 770 s2Step207HeadFvFresh ++ []))) s2Step207HeadF_Incoming s2Step207HeadF_checked h2 s2Step207HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step207HeadGBefore s2Step207HeadGAfter s2Step207HeadFvAfter
    s2Step207HeadGRow s2Step207HeadGOut 167 s2Step207HeadGFresh [(s2Step207HeadFRow,167),(s2Step207HeadGvRow,119),(s2Step207HeadFvRow,119)] [s2Step207HeadFFresh,s2Step207HeadGvFresh,s2Step207HeadFvFresh] [s2Step207HeadFOut,s2Step207HeadGvOut,s2Step207HeadFvOut]
    (growRow 769 s2Step207HeadGFresh) ((growRow 768 s2Step207HeadFFresh ++ (growRow 771 s2Step207HeadGvFresh ++ (growRow 770 s2Step207HeadFvFresh ++ [])))) s2Step207HeadG_Incoming s2Step207HeadG_checked h1 s2Step207HeadG_Outgoing
  exact h0

private theorem s2Step207HeadBank_checked : compileHmrBankResizeLog .headroom s2Step207HeadGBefore ⟨s2Step207HeadFRow,s2Step207HeadGRow,s2Step207HeadFvRow,s2Step207HeadGvRow⟩ ⟨167,167,119,119⟩ [s2Step207HeadGFresh,s2Step207HeadFFresh,s2Step207HeadGvFresh,s2Step207HeadFvFresh]=
    some (s2Step207HeadFvAfter,⟨s2Step207HeadFOut,s2Step207HeadGOut,s2Step207HeadFvOut,s2Step207HeadGvOut⟩,(growRow 769 s2Step207HeadGFresh ++ (growRow 768 s2Step207HeadFFresh ++ (growRow 771 s2Step207HeadGvFresh ++ (growRow 770 s2Step207HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step207HeadBank_rows]
  rfl

private theorem s2Step207Front_checked : compileHmrSourceFrontLog s2Step207EntryFBefore s2Step207FrontBank 166 118 ⟨166,165,118,118⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step207FrontLog=some s2Step207FrontPlan := by
  have pairEq : s2Step207FrontPair=⟨s2Step207HeadFRow,s2Step207HeadGRow,s2Step207HeadFvRow,s2Step207HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step207FrontHead=⟨s2Step207ExitFRow,s2Step207ExitGRow,s2Step207ExitFvRow,s2Step207ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step207Add0A=s2Step207FrontHead.f.wires := by decide +kernel
  have gEq : s2Step207Add0B=s2Step207FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step207Add1A=s2Step207FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step207Add1B=s2Step207FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step207EntryFBefore s2Step207FrontBank 166 118 ⟨166,165,118,118⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step207FrontLog s2Step207FrontPlan
  · exact s2Step207Front_entry
  · exact s2Step207EntryBank_checked
  · exact s2Step207Front_sigma
  · rfl
  · exact s2Step207Front_branch
  · rfl
  · simpa only [s2Step207FrontPlan,pairEq] using s2Step207HeadBank_checked
  · simpa only [s2Step207FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step207F4_checked
  · exact s2Step207Counter_checked
  · rfl
  · simpa only [s2Step207FrontPlan,headEq] using s2Step207ExitBank_checked

private theorem s2Step207Complete_explicit_checked : compileHmrEarlyStepLog s2Step207EntryFBefore s2Step207FrontBank 166 118 ⟨166,165,118,118⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step207CompleteLog=some s2Step207CompletePlan := by
  let Q := s2Step207EarlyControlPlan
  have hq := s2Step207EarlyControl_plan_checked
  have fv1 : s2Step207CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step207CompleteOut.fv.payload[2]?.getD s2Step207CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step207CompleteOut.fv.payload[3]?.getD s2Step207CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step207CompleteOut.fv.payload[4]?.getD s2Step207CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step207EntryFBefore s2Step207EarlyControlArena s2Step207FrontBank 166 118 ⟨166,165,118,118⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step207CompleteLog s2Step207FrontPlan Q
    s2Step207Front_checked s2Step207Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step207Complete_owned s2Step207Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step207EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 841 s2Step207CompleteOut.fv.second (s2Step207CompleteOut.fv.payload[2]?.getD s2Step207CompleteOut.fv.sign) (s2Step207CompleteOut.fv.payload[3]?.getD s2Step207CompleteOut.fv.sign) (s2Step207CompleteOut.fv.payload[4]?.getD s2Step207CompleteOut.fv.sign) 783 47 s2Step207EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep207Arena : Arena := s2Step207EntryFBefore
def s2PrivateStep207Bank : WindowBank := s2Step207FrontBank
def s2PrivateStep207Spec : HmrSourceWalkStepLog := ⟨166,118,⟨166,165,118,118⟩,47,.early s2Step207CompleteLog⟩
def s2PrivateStep207Plan : HmrSourceStepPlan := .early s2Step207CompletePlan
theorem s2PrivateStep207_source : s2PrivateStep207Spec=s2ObservedLogs192[15] := rfl
theorem s2PrivateStep207_checked : compileHmrSourceStepLog s2PrivateStep207Arena s2PrivateStep207Bank
    s2PrivateStep207Spec.fgWidth s2PrivateStep207Spec.vWidth s2PrivateStep207Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897]
    6 498 207 s2PrivateStep207Spec.need none s2PrivateStep207Spec.log=some s2PrivateStep207Plan := by
  change compileHmrSourceStepLog s2Step207EntryFBefore s2Step207FrontBank 166 118 ⟨166,165,118,118⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 6 498 207 47 none (.early s2Step207CompleteLog)=some (.early s2Step207CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 207<498)]
  rw [s2Step207Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
