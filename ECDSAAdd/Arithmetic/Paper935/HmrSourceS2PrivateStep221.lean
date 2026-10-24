import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep219
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

private def s2Step221CompleteMoves : List (Wire × Wire) := [(811,671)]

private def s2Step221EarlyControlLog : HmrEarlyControlLog := ⟨[811, 801, 808, 790, 804],[814],[882],[826, 842, 885, 891, 894, 895],[]⟩

private def s2Step221FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [790], [], [798]],[[804], [808], [801], [783]],[[], [], [], []]⟩,[797],[796],[814],[882],[826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[814, 882, 826, 842]⟩

private def s2Step221CompleteLog : HmrEarlyStepLog := ⟨s2Step221FrontLog,s2Step221CompleteMoves,s2Step221EarlyControlLog⟩

private def s2Step221ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670],768⟩

private def s2Step221ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783],770⟩

private def s2Step221ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158],769⟩

private def s2Step221ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798],771⟩

private def s2Step221FrontOut : WindowBank := ⟨s2Step221ExitFOut,s2Step221ExitGOut,s2Step221ExitFvOut,s2Step221ExitGvOut⟩

private def s2Step221CompleteOut : WindowBank := s2Step221FrontOut.repacked s2Step221CompleteMoves

private def s2Step221EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step221EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step221EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step221EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step221EarlyControlPositiveArena,[814],s2Step221EarlyControlEqualityArena,[882],⟨⟨797,false⟩,[⟨⟨814,false⟩,882⟩]⟩⟩

private def s2Step221EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step221EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step221EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step221EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step221EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step221EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step221EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,811⟩,⟨⟨774,false⟩,801⟩,⟨⟨775,false⟩,808⟩,⟨⟨776,false⟩,790⟩,⟨⟨777,false⟩,804⟩]⟩

private def s2Step221EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step221EarlyControlZeroArena,s2Step221EarlyControlZeroPlan,s2Step221EarlyControlClassPlan,s2Step221EarlyControlFlagArena,s2Step221EarlyControlFittedArena,s2Step221EarlyControlHistoryArena,s2Step221EarlyControlSigmaArena,s2Step221EarlyControlOutputArena,s2Step221EarlyControlLog⟩

private def s2Step221CounterWork : List Wire := [814, 882, 826, 842]

private theorem s2Step221Counter_bounded : s2Step221CounterWork.toFinset⊆arenaWires := by norm_num [s2Step221CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step221HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step221CounterDuring : Arena := ⟨s2Step221HeadFvAfter.live∪s2Step221CounterWork.toFinset,Finset.union_subset s2Step221HeadFvAfter.bounded s2Step221Counter_bounded⟩

private def s2Step221EntryFFresh : List Wire := []

private def s2Step221EntryFvFresh : List Wire := []

private def s2Step221EntryGFresh : List Wire := [790]

private def s2Step221EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step221EntryGvFresh : List Wire := [798]

private def s2Step221ExitFExtra : List Wire := [671, 808]

private def s2Step221ExitGExtra : List Wire := [790, 804]

private def s2Step221ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<671) ∨ (672≤q ∧ q<790) ∨ (791≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step221ExitGvExtra : List Wire := [801]

private def s2Step221Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step221Add0Work : List Wire := [826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step221Add0_bounded : s2Step221Add0Work.toFinset⊆arenaWires := by
  have h : s2Step221Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step221Add0During : Arena := ⟨s2Step221Add0Arena.live∪s2Step221Add0Work.toFinset,Finset.union_subset s2Step221Add0Arena.bounded s2Step221Add0_bounded⟩

private def s2Step221Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step221Add1Work : List Wire := [826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step221Add1_bounded : s2Step221Add1Work.toFinset⊆arenaWires := by
  have h : s2Step221Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step221Add1During : Arena := ⟨s2Step221Add1Arena.live∪s2Step221Add1Work.toFinset,Finset.union_subset s2Step221Add1Arena.bounded s2Step221Add1_bounded⟩

private def s2Step221F4FlagArena : Arena := ⟨s2Step221HeadFvAfter.live∪{814},Finset.union_subset s2Step221HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step221F4Plan : HmrHybridF4Plan := ⟨s2Step221F4FlagArena,[814],s2Step221Add0Arena,[882],s2Step221Add0During,s2Step221Add0Work,s2Step221Add1During,s2Step221Add1Work⟩

private def s2Step221HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 808],768⟩

private def s2Step221HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783],770⟩

private def s2Step221HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 790, 804],769⟩

private def s2Step221HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 801],771⟩

private def s2Step221FrontHead : WindowBank := ⟨s2Step221HeadFOut,s2Step221HeadGOut,s2Step221HeadFvOut,s2Step221HeadGvOut⟩

private def s2Step221EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671],768⟩

private def s2Step221EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845],770⟩

private def s2Step221EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 790],769⟩

private def s2Step221EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798],771⟩

private def s2Step221FrontPair : WindowBank := ⟨s2Step221EntryFOut,s2Step221EntryGOut,s2Step221EntryFvOut,s2Step221EntryGvOut⟩

private def s2Step221FrontSigmaArena : Arena := ⟨s2Step221EntryGvAfter.live∪{797},Finset.union_subset s2Step221EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step221HeadFFresh : List Wire := [808]

private def s2Step221HeadFvFresh : List Wire := [783]

private def s2Step221HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step221HeadGFresh : List Wire := [804]

private def s2Step221HeadGvFresh : List Wire := [801]

private def s2Step221FrontPlan : HmrSourceFront := ⟨s2Step221EntryGvAfter,s2Step221FrontPair,(growRow 768 s2Step221EntryFFresh ++ (growRow 769 s2Step221EntryGFresh ++ (growRow 770 s2Step221EntryFvFresh ++ (growRow 771 s2Step221EntryGvFresh ++ [])))),s2Step221FrontSigmaArena,[797],s2Step221HeadGBefore,[796],
  s2Step221HeadFvAfter,s2Step221FrontHead,(growRow 769 s2Step221HeadGFresh ++ (growRow 768 s2Step221HeadFFresh ++ (growRow 771 s2Step221HeadGvFresh ++ (growRow 770 s2Step221HeadFvFresh ++ [])))),s2Step221F4Plan,s2Step221CounterDuring,s2Step221CounterWork,s2Step221ExitGvAfter,s2Step221FrontOut,(shrinkRow 769 s2Step221ExitGExtra ++ (shrinkRow 768 s2Step221ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step221ExitGvExtra ++ []))))⟩

private def s2Step221CompletePlan : HmrEarlyStepPlan := ⟨s2Step221FrontPlan,s2Step221EarlyControlArena,s2Step221EarlyControlPlan,s2Step221CompleteMoves⟩

private theorem s2Step221Complete_apart : List.Disjoint (s2Step221CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [797, 796, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] := by
  have nd : ((s2Step221CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[797, 796, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step221Complete_owned : (s2Step221CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step221EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step221EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private def s2Step221CompleteMoveArena : Arena := ⟨s2Step221ExitGvAfter.live∪{671},Finset.union_subset s2Step221ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step221Complete_repack : s2Step221ExitGvAfter.checkRepack s2Step221CompleteMoves=some s2Step221EarlyControlArena := by
  have owned : 811∈s2Step221ExitGvAfter.live := by norm_num [s2Step221ExitGvAfter,arenaWires]
  have reserve : s2Step221ExitGvAfter.reserve {671}=some s2Step221CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step221ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step221CompleteMoveArena.retireSet {811}=s2Step221EarlyControlArena := by
    unfold Arena.retireSet s2Step221EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step221CompleteMoveArena,s2Step221ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step221CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step221CompleteMoveArena.retireSet {811}).checkRepack []=some s2Step221EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step221EarlyControl_branchOwned : ([796] : List Wire).toFinset⊆s2Step221EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step221EarlyControlSigmaArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step221EarlyControl_branch : compileHmrBranchRetirement s2Step221EarlyControlSigmaArena 796=some s2Step221EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step221EarlyControl_branchOwned
  · ext q
    simp [s2Step221EarlyControlOutputArena,s2Step221EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step221EarlyControl_classEqualityBorrow : s2Step221EarlyControlPositiveArena.checkBorrow (([797, 814] : List Wire).length-1) s2Step221EarlyControlLog.classWork=some s2Step221EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step221EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step221EarlyControlPositiveArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step221EarlyControlEqualityArena,s2Step221EarlyControlPositiveArena,s2Step221EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step221EarlyControl_classEqualityOwned : ([797, 814] : List Wire).toFinset⊆s2Step221EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step221EarlyControlPositiveArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step221EarlyControl_classEquality : compileHmrEqualityLog s2Step221EarlyControlPositiveArena [797, 814] 0 s2Step221EarlyControlLog.classWork=some (s2Step221EarlyControlEqualityArena,s2Step221EarlyControlLog.classWork,s2Step221EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step221EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step221EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step221EarlyControl_classOwned : ([777, 804, 797] : List Wire).toFinset⊆s2Step221EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step221EarlyControlZeroArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step221EarlyControl_positiveBorrow : s2Step221EarlyControlZeroArena.checkBorrow (1) s2Step221EarlyControlLog.positiveWork=some s2Step221EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step221EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step221EarlyControlZeroArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step221EarlyControlPositiveArena,s2Step221EarlyControlZeroArena,s2Step221EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step221EarlyControl_class : compileHmrSourceClassLog s2Step221EarlyControlZeroArena false 777 s2Step221EarlyControlZeroPlan.top 0 797 s2Step221EarlyControlLog.positiveWork s2Step221EarlyControlLog.classWork=some s2Step221EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step221EarlyControlClassPlan s2Step221EarlyControlZeroArena false 777 s2Step221EarlyControlZeroPlan.top 0 797
  constructor
  · decide +kernel
  · exact s2Step221EarlyControl_classOwned
  · exact s2Step221EarlyControl_positiveBorrow
  · exact s2Step221EarlyControl_classEquality

private theorem s2Step221EarlyControl_entryRecordOwned : ([796, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step221EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step221EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step221EarlyControl_entrySigmaOwned : ([797, 254] : List Wire).toFinset⊆s2Step221EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step221EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step221EarlyControl_fitBorrow : s2Step221EarlyControlFlagArena.checkBorrow ((47-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).length)) s2Step221EarlyControlLog.recordFresh=some s2Step221EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step221EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step221EarlyControlFlagArena (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step221EarlyControlFittedArena,s2Step221EarlyControlFlagArena,s2Step221EarlyControlLog,arenaWires]

private theorem s2Step221EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step221EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step221EarlyControlFlagArena (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step221EarlyControl_fit : compileHmrRecordGrowLog s2Step221EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step221EarlyControlLog.recordFresh=some s2Step221EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step221EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step221EarlyControl_fitBorrow

private theorem s2Step221EarlyControl_flagsBorrow : s2Step221EarlyControlEqualityArena.checkBorrow (6) s2Step221EarlyControlLog.flagWork=some s2Step221EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step221EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step221EarlyControlEqualityArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step221EarlyControlFlagArena,s2Step221EarlyControlEqualityArena,s2Step221EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step221EarlyControl_flagsOwned : ([882, 253, 252, 251] : List Wire).toFinset⊆s2Step221EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step221EarlyControlEqualityArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step221EarlyControl_flags : compileHmrFlagsLog s2Step221EarlyControlClassPlan.equalityArena s2Step221EarlyControlClassPlan.equality.top 253 252 251 s2Step221EarlyControlLog.flagWork=some s2Step221EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step221EarlyControl_flagsOwned⟩
  · exact s2Step221EarlyControl_flagsBorrow

private theorem s2Step221EarlyControl_historyBorrow : s2Step221EarlyControlArena.checkBorrow ((47-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).length)) s2Step221EarlyControlLog.recordFresh=some s2Step221EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step221EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step221EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step221EarlyControlHistoryArena,s2Step221EarlyControlArena,s2Step221EarlyControlLog,arenaWires]

private theorem s2Step221EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step221EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step221EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step221EarlyControl_history : compileHmrRecordGrowLog s2Step221EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step221EarlyControlLog.recordFresh=some s2Step221EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step221EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step221EarlyControl_historyBorrow

private theorem s2Step221EarlyControl_sigmaOwned : ([254, 797] : List Wire).toFinset⊆s2Step221EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step221EarlyControlHistoryArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step221EarlyControl_sigmaReleaseOwned : ([797] : List Wire).toFinset⊆s2Step221EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step221EarlyControlHistoryArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step221EarlyControl_sigmaRelease : s2Step221EarlyControlHistoryArena.release {797} (fun _ => false)=some s2Step221EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step221EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step221EarlyControlSigmaArena,s2Step221EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step221EarlyControl_sigma : compileHmrSigmaDropLog s2Step221EarlyControlHistoryArena false 0 0 254 797 []=some s2Step221EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step221EarlyControl_sigmaOwned⟩
  · exact s2Step221EarlyControl_sigmaRelease

private theorem s2Step221EarlyControl_zeroBorrow : s2Step221EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step221EarlyControlLog.zeroWork=some s2Step221EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step221EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step221EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step221EarlyControlZeroArena,s2Step221EarlyControlArena,s2Step221EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step221EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step221EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step221EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step221EarlyControl_zero : compileHmrEqualityLog s2Step221EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step221EarlyControlLog.zeroWork=some (s2Step221EarlyControlZeroArena,s2Step221EarlyControlLog.zeroWork,s2Step221EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step221EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step221EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step221EarlyControl_logged : s2Step221EarlyControlPlan.Logged s2Step221EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 797 254 253 252 251 796 47 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step221EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step221EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step221EarlyControl_zero
  · exact s2Step221EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step221EarlyControl_flags
  · exact s2Step221EarlyControl_fit
  · exact s2Step221EarlyControl_history
  · exact s2Step221EarlyControl_sigma
  · exact s2Step221EarlyControl_branch

private theorem s2Step221EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step221EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 797 254 253 252 251 796 47 s2Step221EarlyControlLog=some s2Step221EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step221EarlyControlPlan s2Step221EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 797 254 253 252 251 796 47 s2Step221EarlyControl_logged

private def s2Step221EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step221EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671],768⟩

private def s2Step221EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845],770⟩

private def s2Step221EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158],769⟩

private def s2Step221EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778],771⟩

private def s2Step221FrontBank : WindowBank := ⟨s2Step221EntryFRow,s2Step221EntryGRow,s2Step221EntryFvRow,s2Step221EntryGvRow⟩

private def s2Step221Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 808, 768]

private def s2Step221Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 790, 804, 769]

private def s2Step221Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 770]

private def s2Step221Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 801, 771]

private theorem s2Step221Counter_apart : Disjoint s2Step221HeadFvAfter.live s2Step221CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step221HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step221Counter_borrowed : s2Step221HeadFvAfter.checkBorrow 4 s2Step221CounterWork=some s2Step221CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step221HeadFvAfter s2Step221CounterDuring s2Step221CounterWork.toFinset s2Step221Counter_bounded s2Step221Counter_apart rfl

private theorem s2Step221Counter_owned : (797::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step221HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step221HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step221Counter_checked : compileHmrCounterStepLog s2Step221HeadFvAfter true 797 [772, 773, 774, 775, 776, 777] s2Step221CounterWork=some s2Step221CounterDuring := by
  have owned : ∀q∈797::[772, 773, 774, 775, 776, 777],q∈s2Step221HeadFvAfter.live := fun q hq => s2Step221Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step221Counter_borrowed

private def s2Step221EntryFAfter : Arena := s2Step221EntryFBefore

private theorem s2Step221EntryBank_incomingDistinct : ([s2Step221EntryFRow,s2Step221EntryGRow,s2Step221EntryFvRow,s2Step221EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step221EntryF_Incoming : rowsOwned s2Step221EntryFBefore [s2Step221EntryFRow,s2Step221EntryGRow,s2Step221EntryFvRow,s2Step221EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step221EntryFRow,s2Step221EntryGRow,s2Step221EntryFvRow,s2Step221EntryGvRow] 0 s2Step221EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step221EntryFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step221EntryBank_outgoingOwned : rowsOwned s2Step221EntryGvAfter [s2Step221EntryFOut,s2Step221EntryGOut,s2Step221EntryFvOut,s2Step221EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step221EntryGvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step221EntryF_Outgoing : rowsOwned s2Step221EntryGvAfter [s2Step221EntryFOut,s2Step221EntryGOut,s2Step221EntryFvOut,s2Step221EntryGvOut] :=
  hmrRows_owned_drop s2Step221EntryGvAfter [s2Step221EntryFOut,s2Step221EntryGOut,s2Step221EntryFvOut,s2Step221EntryGvOut] 0 s2Step221EntryBank_outgoingOwned

private theorem s2Step221EntryF_distinct : (s2Step221EntryFRow.sign::s2Step221EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step221EntryF_owned : (s2Step221EntryFRow.sign::s2Step221EntryFRow.payload).toFinset⊆s2Step221EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step221EntryFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step221EntryF_reserved : s2Step221EntryFBefore.reserve s2Step221EntryFFresh.toFinset=some s2Step221EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step221EntryFFresh,arenaWires]
  · norm_num [s2Step221EntryFBefore,s2Step221EntryFFresh,arenaWires]
  · simp only [s2Step221EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step221EntryF_checked : planRowResizeLog s2Step221EntryFBefore s2Step221EntryFRow 160 s2Step221EntryFFresh=
    some (s2Step221EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671],768⟩,growRow 768 s2Step221EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step221EntryFBefore s2Step221EntryFAfter s2Step221EntryFRow 160 s2Step221EntryFFresh
    s2Step221EntryF_distinct s2Step221EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step221EntryF_reserved
  have rowEq : WindowRow.mk (s2Step221EntryFRow.payload++s2Step221EntryFFresh) s2Step221EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step221EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step221EntryFvAfter : Arena := s2Step221EntryGAfter

private def s2Step221EntryFvBefore : Arena := s2Step221EntryGAfter

private theorem s2Step221EntryFv_Incoming : rowsOwned s2Step221EntryFvBefore [s2Step221EntryFvRow,s2Step221EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step221EntryFRow,s2Step221EntryGRow,s2Step221EntryFvRow,s2Step221EntryGvRow] 2 s2Step221EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step221EntryFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step221EntryFv_Outgoing : rowsOwned s2Step221EntryGvAfter [s2Step221EntryFvOut,s2Step221EntryGvOut] :=
  hmrRows_owned_drop s2Step221EntryGvAfter [s2Step221EntryFOut,s2Step221EntryGOut,s2Step221EntryFvOut,s2Step221EntryGvOut] 2 s2Step221EntryBank_outgoingOwned

private theorem s2Step221EntryFv_distinct : (s2Step221EntryFvRow.sign::s2Step221EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step221EntryFv_owned : (s2Step221EntryFvRow.sign::s2Step221EntryFvRow.payload).toFinset⊆s2Step221EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step221EntryFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step221EntryFv_reserved : s2Step221EntryFvBefore.reserve s2Step221EntryFvFresh.toFinset=some s2Step221EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step221EntryFvFresh,arenaWires]
  · norm_num [s2Step221EntryFvBefore,s2Step221EntryGAfter,s2Step221EntryFvFresh,arenaWires]
  · simp only [s2Step221EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step221EntryFv_checked : planRowResizeLog s2Step221EntryFvBefore s2Step221EntryFvRow 125 s2Step221EntryFvFresh=
    some (s2Step221EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845],770⟩,growRow 770 s2Step221EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step221EntryFvBefore s2Step221EntryFvAfter s2Step221EntryFvRow 125 s2Step221EntryFvFresh
    s2Step221EntryFv_distinct s2Step221EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step221EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step221EntryFvRow.payload++s2Step221EntryFvFresh) s2Step221EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step221EntryGBefore : Arena := s2Step221EntryFBefore

private theorem s2Step221EntryG_Incoming : rowsOwned s2Step221EntryGBefore [s2Step221EntryGRow,s2Step221EntryFvRow,s2Step221EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step221EntryFRow,s2Step221EntryGRow,s2Step221EntryFvRow,s2Step221EntryGvRow] 1 s2Step221EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step221EntryGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step221EntryG_Outgoing : rowsOwned s2Step221EntryGvAfter [s2Step221EntryGOut,s2Step221EntryFvOut,s2Step221EntryGvOut] :=
  hmrRows_owned_drop s2Step221EntryGvAfter [s2Step221EntryFOut,s2Step221EntryGOut,s2Step221EntryFvOut,s2Step221EntryGvOut] 1 s2Step221EntryBank_outgoingOwned

private theorem s2Step221EntryG_distinct : (s2Step221EntryGRow.sign::s2Step221EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step221EntryG_owned : (s2Step221EntryGRow.sign::s2Step221EntryGRow.payload).toFinset⊆s2Step221EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step221EntryGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step221EntryG_reserved : s2Step221EntryGBefore.reserve s2Step221EntryGFresh.toFinset=some s2Step221EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step221EntryGFresh,arenaWires]
  · norm_num [s2Step221EntryGBefore,s2Step221EntryFBefore,s2Step221EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step221EntryGAfter,s2Step221EntryGBefore,s2Step221EntryFBefore,s2Step221EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step221EntryG_checked : planRowResizeLog s2Step221EntryGBefore s2Step221EntryGRow 160 s2Step221EntryGFresh=
    some (s2Step221EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 790],769⟩,growRow 769 s2Step221EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step221EntryGBefore s2Step221EntryGAfter s2Step221EntryGRow 160 s2Step221EntryGFresh
    s2Step221EntryG_distinct s2Step221EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step221EntryG_reserved
  have rowEq : WindowRow.mk (s2Step221EntryGRow.payload++s2Step221EntryGFresh) s2Step221EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 790],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step221EntryGvBefore : Arena := s2Step221EntryGAfter

private theorem s2Step221EntryGv_Incoming : rowsOwned s2Step221EntryGvBefore [s2Step221EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step221EntryFRow,s2Step221EntryGRow,s2Step221EntryFvRow,s2Step221EntryGvRow] 3 s2Step221EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step221EntryGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step221EntryGv_Outgoing : rowsOwned s2Step221EntryGvAfter [s2Step221EntryGvOut] :=
  hmrRows_owned_drop s2Step221EntryGvAfter [s2Step221EntryFOut,s2Step221EntryGOut,s2Step221EntryFvOut,s2Step221EntryGvOut] 3 s2Step221EntryBank_outgoingOwned

private theorem s2Step221EntryGv_distinct : (s2Step221EntryGvRow.sign::s2Step221EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step221EntryGv_owned : (s2Step221EntryGvRow.sign::s2Step221EntryGvRow.payload).toFinset⊆s2Step221EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step221EntryGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step221EntryGv_reserved : s2Step221EntryGvBefore.reserve s2Step221EntryGvFresh.toFinset=some s2Step221EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step221EntryGvFresh,arenaWires]
  · norm_num [s2Step221EntryGvBefore,s2Step221EntryGAfter,s2Step221EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step221EntryGvAfter,s2Step221EntryGvBefore,s2Step221EntryGAfter,s2Step221EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step221EntryGv_checked : planRowResizeLog s2Step221EntryGvBefore s2Step221EntryGvRow 125 s2Step221EntryGvFresh=
    some (s2Step221EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798],771⟩,growRow 771 s2Step221EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step221EntryGvBefore s2Step221EntryGvAfter s2Step221EntryGvRow 125 s2Step221EntryGvFresh
    s2Step221EntryGv_distinct s2Step221EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step221EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step221EntryGvRow.payload++s2Step221EntryGvFresh) s2Step221EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step221EntryBank_rows : planWindowRowsLog s2Step221EntryFBefore [(s2Step221EntryFRow,160),(s2Step221EntryGRow,160),(s2Step221EntryFvRow,125),(s2Step221EntryGvRow,125)] [s2Step221EntryFFresh,s2Step221EntryGFresh,s2Step221EntryFvFresh,s2Step221EntryGvFresh]=
    some (s2Step221EntryGvAfter,[s2Step221EntryFOut,s2Step221EntryGOut,s2Step221EntryFvOut,s2Step221EntryGvOut],(growRow 768 s2Step221EntryFFresh ++ (growRow 769 s2Step221EntryGFresh ++ (growRow 770 s2Step221EntryFvFresh ++ (growRow 771 s2Step221EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step221EntryGvAfter [] []=some (s2Step221EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step221EntryGvBefore s2Step221EntryGvAfter s2Step221EntryGvAfter
    s2Step221EntryGvRow s2Step221EntryGvOut 125 s2Step221EntryGvFresh [] [] []
    (growRow 771 s2Step221EntryGvFresh) ([]) s2Step221EntryGv_Incoming s2Step221EntryGv_checked h4 s2Step221EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step221EntryFvBefore s2Step221EntryFvAfter s2Step221EntryGvAfter
    s2Step221EntryFvRow s2Step221EntryFvOut 125 s2Step221EntryFvFresh [(s2Step221EntryGvRow,125)] [s2Step221EntryGvFresh] [s2Step221EntryGvOut]
    (growRow 770 s2Step221EntryFvFresh) ((growRow 771 s2Step221EntryGvFresh ++ [])) s2Step221EntryFv_Incoming s2Step221EntryFv_checked h3 s2Step221EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step221EntryGBefore s2Step221EntryGAfter s2Step221EntryGvAfter
    s2Step221EntryGRow s2Step221EntryGOut 160 s2Step221EntryGFresh [(s2Step221EntryFvRow,125),(s2Step221EntryGvRow,125)] [s2Step221EntryFvFresh,s2Step221EntryGvFresh] [s2Step221EntryFvOut,s2Step221EntryGvOut]
    (growRow 769 s2Step221EntryGFresh) ((growRow 770 s2Step221EntryFvFresh ++ (growRow 771 s2Step221EntryGvFresh ++ []))) s2Step221EntryG_Incoming s2Step221EntryG_checked h2 s2Step221EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step221EntryFBefore s2Step221EntryFAfter s2Step221EntryGvAfter
    s2Step221EntryFRow s2Step221EntryFOut 160 s2Step221EntryFFresh [(s2Step221EntryGRow,160),(s2Step221EntryFvRow,125),(s2Step221EntryGvRow,125)] [s2Step221EntryGFresh,s2Step221EntryFvFresh,s2Step221EntryGvFresh] [s2Step221EntryGOut,s2Step221EntryFvOut,s2Step221EntryGvOut]
    (growRow 768 s2Step221EntryFFresh) ((growRow 769 s2Step221EntryGFresh ++ (growRow 770 s2Step221EntryFvFresh ++ (growRow 771 s2Step221EntryGvFresh ++ [])))) s2Step221EntryF_Incoming s2Step221EntryF_checked h1 s2Step221EntryF_Outgoing
  exact h0

private theorem s2Step221EntryBank_checked : compileHmrBankResizeLog .entry s2Step221EntryFBefore ⟨s2Step221EntryFRow,s2Step221EntryGRow,s2Step221EntryFvRow,s2Step221EntryGvRow⟩ ⟨160,160,125,125⟩ [s2Step221EntryFFresh,s2Step221EntryGFresh,s2Step221EntryFvFresh,s2Step221EntryGvFresh]=
    some (s2Step221EntryGvAfter,⟨s2Step221EntryFOut,s2Step221EntryGOut,s2Step221EntryFvOut,s2Step221EntryGvOut⟩,(growRow 768 s2Step221EntryFFresh ++ (growRow 769 s2Step221EntryGFresh ++ (growRow 770 s2Step221EntryFvFresh ++ (growRow 771 s2Step221EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step221EntryBank_rows]
  rfl

private def s2Step221ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<671) ∨ (672≤q ∧ q<790) ∨ (791≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step221ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<804) ∨ (805≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step221ExitFBefore : Arena := s2Step221ExitGAfter

private def s2Step221ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 808],768⟩

private def s2Step221ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783],770⟩

private def s2Step221ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 790, 804],769⟩

private def s2Step221ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 801],771⟩

private theorem s2Step221ExitBank_incomingDistinct : ([s2Step221ExitGRow,s2Step221ExitFRow,s2Step221ExitFvRow,s2Step221ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step221ExitF_Incoming : rowsOwned s2Step221ExitFBefore [s2Step221ExitFRow,s2Step221ExitFvRow,s2Step221ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step221ExitGRow,s2Step221ExitFRow,s2Step221ExitFvRow,s2Step221ExitGvRow] 1 s2Step221ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step221ExitFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<804) ∨ (805≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step221ExitBank_outgoingOwned : rowsOwned s2Step221ExitGvAfter [s2Step221ExitGOut,s2Step221ExitFOut,s2Step221ExitFvOut,s2Step221ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step221ExitGvAfter (fun q => (0≤q ∧ q<671) ∨ (672≤q ∧ q<790) ∨ (791≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step221ExitF_Outgoing : rowsOwned s2Step221ExitGvAfter [s2Step221ExitFOut,s2Step221ExitFvOut,s2Step221ExitGvOut] :=
  hmrRows_owned_drop s2Step221ExitGvAfter [s2Step221ExitGOut,s2Step221ExitFOut,s2Step221ExitFvOut,s2Step221ExitGvOut] 1 s2Step221ExitBank_outgoingOwned

private theorem s2Step221ExitF_distinct : (s2Step221ExitFRow.sign::s2Step221ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step221ExitF_owned : (s2Step221ExitFRow.sign::s2Step221ExitFRow.payload).toFinset⊆s2Step221ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step221ExitFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<804) ∨ (805≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step221ExitF_retired : s2Step221ExitFBefore.retireSet s2Step221ExitFExtra.toFinset=s2Step221ExitFAfter := by
  unfold Arena.retireSet s2Step221ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step221ExitFBefore,s2Step221ExitGAfter,s2Step221ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step221ExitF_checked : planRowResizeLog s2Step221ExitFBefore s2Step221ExitFRow 159 []=
    some (s2Step221ExitFAfter,s2Step221ExitFOut,shrinkRow 768 s2Step221ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step221ExitFBefore s2Step221ExitFRow 159 s2Step221ExitF_distinct s2Step221ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step221ExitFRow.payload.take 159) s2Step221ExitFRow.sign=s2Step221ExitFOut := by decide +kernel
  have hi : s2Step221ExitFRow.payload.drop 159=s2Step221ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step221ExitF_retired] at result
  exact result

private def s2Step221ExitFvAfter : Arena := s2Step221ExitFAfter

private def s2Step221ExitFvBefore : Arena := s2Step221ExitFAfter

private theorem s2Step221ExitFv_Incoming : rowsOwned s2Step221ExitFvBefore [s2Step221ExitFvRow,s2Step221ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step221ExitGRow,s2Step221ExitFRow,s2Step221ExitFvRow,s2Step221ExitGvRow] 2 s2Step221ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step221ExitFvBefore (fun q => (0≤q ∧ q<671) ∨ (672≤q ∧ q<790) ∨ (791≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step221ExitFv_Outgoing : rowsOwned s2Step221ExitGvAfter [s2Step221ExitFvOut,s2Step221ExitGvOut] :=
  hmrRows_owned_drop s2Step221ExitGvAfter [s2Step221ExitGOut,s2Step221ExitFOut,s2Step221ExitFvOut,s2Step221ExitGvOut] 2 s2Step221ExitBank_outgoingOwned

private theorem s2Step221ExitFv_distinct : (s2Step221ExitFvRow.sign::s2Step221ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step221ExitFv_owned : (s2Step221ExitFvRow.sign::s2Step221ExitFvRow.payload).toFinset⊆s2Step221ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step221ExitFvBefore (fun q => (0≤q ∧ q<671) ∨ (672≤q ∧ q<790) ∨ (791≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step221ExitFv_reserved : s2Step221ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step221ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step221ExitFv_checked : planRowResizeLog s2Step221ExitFvBefore s2Step221ExitFvRow 126 []=
    some (s2Step221ExitFvAfter,s2Step221ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step221ExitFvBefore s2Step221ExitFvAfter s2Step221ExitFvRow 126 []
    s2Step221ExitFv_distinct s2Step221ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step221ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step221ExitFvRow.payload++[]) s2Step221ExitFvRow.sign=s2Step221ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step221ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private theorem s2Step221ExitG_Incoming : rowsOwned s2Step221ExitGBefore [s2Step221ExitGRow,s2Step221ExitFRow,s2Step221ExitFvRow,s2Step221ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step221ExitGRow,s2Step221ExitFRow,s2Step221ExitFvRow,s2Step221ExitGvRow] 0 s2Step221ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step221ExitGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step221ExitG_Outgoing : rowsOwned s2Step221ExitGvAfter [s2Step221ExitGOut,s2Step221ExitFOut,s2Step221ExitFvOut,s2Step221ExitGvOut] :=
  hmrRows_owned_drop s2Step221ExitGvAfter [s2Step221ExitGOut,s2Step221ExitFOut,s2Step221ExitFvOut,s2Step221ExitGvOut] 0 s2Step221ExitBank_outgoingOwned

private theorem s2Step221ExitG_distinct : (s2Step221ExitGRow.sign::s2Step221ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step221ExitG_owned : (s2Step221ExitGRow.sign::s2Step221ExitGRow.payload).toFinset⊆s2Step221ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step221ExitGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step221ExitG_retired : s2Step221ExitGBefore.retireSet s2Step221ExitGExtra.toFinset=s2Step221ExitGAfter := by
  unfold Arena.retireSet s2Step221ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step221ExitGBefore,s2Step221ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step221ExitG_checked : planRowResizeLog s2Step221ExitGBefore s2Step221ExitGRow 159 []=
    some (s2Step221ExitGAfter,s2Step221ExitGOut,shrinkRow 769 s2Step221ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step221ExitGBefore s2Step221ExitGRow 159 s2Step221ExitG_distinct s2Step221ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step221ExitGRow.payload.take 159) s2Step221ExitGRow.sign=s2Step221ExitGOut := by decide +kernel
  have hi : s2Step221ExitGRow.payload.drop 159=s2Step221ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step221ExitG_retired] at result
  exact result

private def s2Step221ExitGvBefore : Arena := s2Step221ExitFAfter

private theorem s2Step221ExitGv_Incoming : rowsOwned s2Step221ExitGvBefore [s2Step221ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step221ExitGRow,s2Step221ExitFRow,s2Step221ExitFvRow,s2Step221ExitGvRow] 3 s2Step221ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step221ExitGvBefore (fun q => (0≤q ∧ q<671) ∨ (672≤q ∧ q<790) ∨ (791≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step221ExitGv_Outgoing : rowsOwned s2Step221ExitGvAfter [s2Step221ExitGvOut] :=
  hmrRows_owned_drop s2Step221ExitGvAfter [s2Step221ExitGOut,s2Step221ExitFOut,s2Step221ExitFvOut,s2Step221ExitGvOut] 3 s2Step221ExitBank_outgoingOwned

private theorem s2Step221ExitGv_distinct : (s2Step221ExitGvRow.sign::s2Step221ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step221ExitGv_owned : (s2Step221ExitGvRow.sign::s2Step221ExitGvRow.payload).toFinset⊆s2Step221ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step221ExitGvBefore (fun q => (0≤q ∧ q<671) ∨ (672≤q ∧ q<790) ∨ (791≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step221ExitGv_retired : s2Step221ExitGvBefore.retireSet s2Step221ExitGvExtra.toFinset=s2Step221ExitGvAfter := by
  unfold Arena.retireSet s2Step221ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step221ExitGvBefore,s2Step221ExitFAfter,s2Step221ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step221ExitGv_checked : planRowResizeLog s2Step221ExitGvBefore s2Step221ExitGvRow 125 []=
    some (s2Step221ExitGvAfter,s2Step221ExitGvOut,shrinkRow 771 s2Step221ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step221ExitGvBefore s2Step221ExitGvRow 125 s2Step221ExitGv_distinct s2Step221ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step221ExitGvRow.payload.take 125) s2Step221ExitGvRow.sign=s2Step221ExitGvOut := by decide +kernel
  have hi : s2Step221ExitGvRow.payload.drop 125=s2Step221ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step221ExitGv_retired] at result
  exact result

private theorem s2Step221ExitBank_rows : planWindowRowsLog s2Step221ExitGBefore [(s2Step221ExitGRow,159),(s2Step221ExitFRow,159),(s2Step221ExitFvRow,126),(s2Step221ExitGvRow,125)] [[],[],[],[]]=
    some (s2Step221ExitGvAfter,[s2Step221ExitGOut,s2Step221ExitFOut,s2Step221ExitFvOut,s2Step221ExitGvOut],(shrinkRow 769 s2Step221ExitGExtra ++ (shrinkRow 768 s2Step221ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step221ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step221ExitGvAfter [] []=some (s2Step221ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step221ExitGvBefore s2Step221ExitGvAfter s2Step221ExitGvAfter
    s2Step221ExitGvRow s2Step221ExitGvOut 125 [] [] [] []
    (shrinkRow 771 s2Step221ExitGvExtra) ([]) s2Step221ExitGv_Incoming s2Step221ExitGv_checked h4 s2Step221ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step221ExitFvBefore s2Step221ExitFvAfter s2Step221ExitGvAfter
    s2Step221ExitFvRow s2Step221ExitFvOut 126 [] [(s2Step221ExitGvRow,125)] [[]] [s2Step221ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step221ExitGvExtra ++ [])) s2Step221ExitFv_Incoming s2Step221ExitFv_checked h3 s2Step221ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step221ExitFBefore s2Step221ExitFAfter s2Step221ExitGvAfter
    s2Step221ExitFRow s2Step221ExitFOut 159 [] [(s2Step221ExitFvRow,126),(s2Step221ExitGvRow,125)] [[],[]] [s2Step221ExitFvOut,s2Step221ExitGvOut]
    (shrinkRow 768 s2Step221ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step221ExitGvExtra ++ []))) s2Step221ExitF_Incoming s2Step221ExitF_checked h2 s2Step221ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step221ExitGBefore s2Step221ExitGAfter s2Step221ExitGvAfter
    s2Step221ExitGRow s2Step221ExitGOut 159 [] [(s2Step221ExitFRow,159),(s2Step221ExitFvRow,126),(s2Step221ExitGvRow,125)] [[],[],[]] [s2Step221ExitFOut,s2Step221ExitFvOut,s2Step221ExitGvOut]
    (shrinkRow 769 s2Step221ExitGExtra) ((shrinkRow 768 s2Step221ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step221ExitGvExtra ++ [])))) s2Step221ExitG_Incoming s2Step221ExitG_checked h1 s2Step221ExitG_Outgoing
  exact h0

private theorem s2Step221ExitBank_checked : compileHmrBankResizeLog .exit s2Step221ExitGBefore ⟨s2Step221ExitFRow,s2Step221ExitGRow,s2Step221ExitFvRow,s2Step221ExitGvRow⟩ ⟨159,159,126,125⟩ [[],[],[],[]]=
    some (s2Step221ExitGvAfter,⟨s2Step221ExitFOut,s2Step221ExitGOut,s2Step221ExitFvOut,s2Step221ExitGvOut⟩,(shrinkRow 769 s2Step221ExitGExtra ++ (shrinkRow 768 s2Step221ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step221ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step221ExitBank_rows]
  rfl

private theorem s2Step221Add0_apart : Disjoint s2Step221Add0Arena.live s2Step221Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step221Add0Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step221Add0_card : s2Step221Add0Arena.live.card=891 := by
  decide +kernel

private theorem s2Step221Add0_borrowed : s2Step221Add0Arena.checkBorrow (hmrHybridCount s2Step221Add0Arena s2Step221Add0B.length) s2Step221Add0Work=some s2Step221Add0During := by
  have len : s2Step221Add0Work.length=hmrHybridCount s2Step221Add0Arena s2Step221Add0B.length := by
    rw [hmrHybridCount,s2Step221Add0_card]
    decide +kernel
  have nd : s2Step221Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step221Add0Arena s2Step221Add0During s2Step221Add0Work.toFinset s2Step221Add0_bounded s2Step221Add0_apart rfl

private theorem s2Step221Add0_distinct : (814::796::882::(s2Step221Add0A++s2Step221Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step221Add0_owned : (814::796::882::(s2Step221Add0A++s2Step221Add0B)).toFinset⊆s2Step221Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step221Add0Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step221Add0_checked : compileHmrHybridCinLog s2Step221Add0Arena 796 814 882 s2Step221Add0A s2Step221Add0B s2Step221Add0Work=some s2Step221Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step221Add0Arena s2Step221Add0During 796 814 882 s2Step221Add0A s2Step221Add0B s2Step221Add0Work
    (by decide +kernel) (by decide +kernel) s2Step221Add0_distinct
    (fun q hq => s2Step221Add0_owned (List.mem_toFinset.mpr hq)) s2Step221Add0_borrowed

private theorem s2Step221Add1_apart : Disjoint s2Step221Add1Arena.live s2Step221Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step221Add1Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step221Add1_card : s2Step221Add1Arena.live.card=891 := by
  decide +kernel

private theorem s2Step221Add1_borrowed : s2Step221Add1Arena.checkBorrow (hmrHybridCount s2Step221Add1Arena s2Step221Add1B.length) s2Step221Add1Work=some s2Step221Add1During := by
  have len : s2Step221Add1Work.length=hmrHybridCount s2Step221Add1Arena s2Step221Add1B.length := by
    rw [hmrHybridCount,s2Step221Add1_card]
    decide +kernel
  have nd : s2Step221Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step221Add1Arena s2Step221Add1During s2Step221Add1Work.toFinset s2Step221Add1_bounded s2Step221Add1_apart rfl

private theorem s2Step221Add1_distinct : (814::796::882::(s2Step221Add1A++s2Step221Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step221Add1_owned : (814::796::882::(s2Step221Add1A++s2Step221Add1B)).toFinset⊆s2Step221Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step221Add1Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step221Add1_checked : compileHmrHybridCinLog s2Step221Add1Arena 796 814 882 s2Step221Add1A s2Step221Add1B s2Step221Add1Work=some s2Step221Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step221Add1Arena s2Step221Add1During 796 814 882 s2Step221Add1A s2Step221Add1B s2Step221Add1Work
    (by decide +kernel) (by decide +kernel) s2Step221Add1_distinct
    (fun q hq => s2Step221Add1_owned (List.mem_toFinset.mpr hq)) s2Step221Add1_borrowed

private theorem s2Step221F4_apart : Disjoint (s2Step221Add0A++s2Step221Add0B).toFinset (s2Step221Add1A++s2Step221Add1B).toFinset := by
  have nd : ((s2Step221Add0A++s2Step221Add0B)++(s2Step221Add1A++s2Step221Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step221F4_carry : s2Step221F4FlagArena.checkBorrow 1 [882]=some s2Step221Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step221F4FlagArena,s2Step221HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step221F4FlagArena,s2Step221HeadFvAfter,s2Step221Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step221F4_distinct : (797::796::814::882::((s2Step221Add0A++s2Step221Add1A)++(s2Step221Add0B++s2Step221Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step221F4_flag : s2Step221HeadFvAfter.checkBorrow 1 [814]=some s2Step221F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step221HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step221F4_owned : (797::796::((s2Step221Add0A++s2Step221Add1A)++(s2Step221Add0B++s2Step221Add1B))).toFinset⊆s2Step221HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step221HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step221F4_checked : compileHmrHybridF4Log s2Step221HeadFvAfter 797 796 s2Step221Add0A s2Step221Add0B s2Step221Add1A s2Step221Add1B [814] [882] s2Step221Add0Work s2Step221Add1Work=some s2Step221F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step221HeadFvAfter s2Step221F4FlagArena s2Step221Add0Arena s2Step221Add0During s2Step221Add1During 797 796
    s2Step221Add0A s2Step221Add0B s2Step221Add1A s2Step221Add1B [814] [882] s2Step221Add0Work s2Step221Add1Work
    (fun q hq => s2Step221F4_owned (List.mem_toFinset.mpr hq)) s2Step221F4_flag s2Step221F4_carry
    s2Step221F4_distinct s2Step221F4_apart s2Step221Add0_checked s2Step221Add1_checked

private theorem s2Step221Front_branch : s2Step221FrontSigmaArena.checkBorrow 1 [796]=some s2Step221HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step221FrontSigmaArena,s2Step221EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step221FrontSigmaArena,s2Step221EntryGvAfter,s2Step221HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step221Front_entry : HmrFrontEntryValid s2Step221EntryFBefore s2Step221FrontBank 160 125 ⟨159,159,126,125⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step221FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step221EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step221EntryFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step221FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step221Front_sigma : s2Step221EntryGvAfter.checkBorrow 1 [797]=some s2Step221FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step221EntryGvAfter,arenaWires]
  · rfl

private def s2Step221HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step221HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<801) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step221HeadFBefore : Arena := s2Step221HeadGAfter

private def s2Step221HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671],768⟩

private def s2Step221HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845],770⟩

private def s2Step221HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 790],769⟩

private def s2Step221HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798],771⟩

private theorem s2Step221HeadBank_incomingDistinct : ([s2Step221HeadGRow,s2Step221HeadFRow,s2Step221HeadGvRow,s2Step221HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step221HeadF_Incoming : rowsOwned s2Step221HeadFBefore [s2Step221HeadFRow,s2Step221HeadGvRow,s2Step221HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step221HeadGRow,s2Step221HeadFRow,s2Step221HeadGvRow,s2Step221HeadFvRow] 1 s2Step221HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step221HeadFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<801) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step221HeadBank_outgoingOwned : rowsOwned s2Step221HeadFvAfter [s2Step221HeadGOut,s2Step221HeadFOut,s2Step221HeadGvOut,s2Step221HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step221HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step221HeadF_Outgoing : rowsOwned s2Step221HeadFvAfter [s2Step221HeadFOut,s2Step221HeadGvOut,s2Step221HeadFvOut] :=
  hmrRows_owned_drop s2Step221HeadFvAfter [s2Step221HeadGOut,s2Step221HeadFOut,s2Step221HeadGvOut,s2Step221HeadFvOut] 1 s2Step221HeadBank_outgoingOwned

private theorem s2Step221HeadF_distinct : (s2Step221HeadFRow.sign::s2Step221HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step221HeadF_owned : (s2Step221HeadFRow.sign::s2Step221HeadFRow.payload).toFinset⊆s2Step221HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step221HeadFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<801) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step221HeadF_reserved : s2Step221HeadFBefore.reserve s2Step221HeadFFresh.toFinset=some s2Step221HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step221HeadFFresh,arenaWires]
  · norm_num [s2Step221HeadFBefore,s2Step221HeadGAfter,s2Step221HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step221HeadFAfter,s2Step221HeadFBefore,s2Step221HeadGAfter,s2Step221HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step221HeadF_checked : planRowResizeLog s2Step221HeadFBefore s2Step221HeadFRow 161 s2Step221HeadFFresh=
    some (s2Step221HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 808],768⟩,growRow 768 s2Step221HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step221HeadFBefore s2Step221HeadFAfter s2Step221HeadFRow 161 s2Step221HeadFFresh
    s2Step221HeadF_distinct s2Step221HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step221HeadF_reserved
  have rowEq : WindowRow.mk (s2Step221HeadFRow.payload++s2Step221HeadFFresh) s2Step221HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 808],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step221HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step221HeadFvBefore : Arena := s2Step221HeadGvAfter

private theorem s2Step221HeadFv_Incoming : rowsOwned s2Step221HeadFvBefore [s2Step221HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step221HeadGRow,s2Step221HeadFRow,s2Step221HeadGvRow,s2Step221HeadFvRow] 3 s2Step221HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step221HeadFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step221HeadFv_Outgoing : rowsOwned s2Step221HeadFvAfter [s2Step221HeadFvOut] :=
  hmrRows_owned_drop s2Step221HeadFvAfter [s2Step221HeadGOut,s2Step221HeadFOut,s2Step221HeadGvOut,s2Step221HeadFvOut] 3 s2Step221HeadBank_outgoingOwned

private theorem s2Step221HeadFv_distinct : (s2Step221HeadFvRow.sign::s2Step221HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step221HeadFv_owned : (s2Step221HeadFvRow.sign::s2Step221HeadFvRow.payload).toFinset⊆s2Step221HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step221HeadFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step221HeadFv_reserved : s2Step221HeadFvBefore.reserve s2Step221HeadFvFresh.toFinset=some s2Step221HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step221HeadFvFresh,arenaWires]
  · norm_num [s2Step221HeadFvBefore,s2Step221HeadGvAfter,s2Step221HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step221HeadFvAfter,s2Step221HeadFvBefore,s2Step221HeadGvAfter,s2Step221HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step221HeadFv_checked : planRowResizeLog s2Step221HeadFvBefore s2Step221HeadFvRow 126 s2Step221HeadFvFresh=
    some (s2Step221HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783],770⟩,growRow 770 s2Step221HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step221HeadFvBefore s2Step221HeadFvAfter s2Step221HeadFvRow 126 s2Step221HeadFvFresh
    s2Step221HeadFv_distinct s2Step221HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step221HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step221HeadFvRow.payload++s2Step221HeadFvFresh) s2Step221HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step221HeadG_Incoming : rowsOwned s2Step221HeadGBefore [s2Step221HeadGRow,s2Step221HeadFRow,s2Step221HeadGvRow,s2Step221HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step221HeadGRow,s2Step221HeadFRow,s2Step221HeadGvRow,s2Step221HeadFvRow] 0 s2Step221HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step221HeadGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step221HeadG_Outgoing : rowsOwned s2Step221HeadFvAfter [s2Step221HeadGOut,s2Step221HeadFOut,s2Step221HeadGvOut,s2Step221HeadFvOut] :=
  hmrRows_owned_drop s2Step221HeadFvAfter [s2Step221HeadGOut,s2Step221HeadFOut,s2Step221HeadGvOut,s2Step221HeadFvOut] 0 s2Step221HeadBank_outgoingOwned

private theorem s2Step221HeadG_distinct : (s2Step221HeadGRow.sign::s2Step221HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step221HeadG_owned : (s2Step221HeadGRow.sign::s2Step221HeadGRow.payload).toFinset⊆s2Step221HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step221HeadGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step221HeadG_reserved : s2Step221HeadGBefore.reserve s2Step221HeadGFresh.toFinset=some s2Step221HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step221HeadGFresh,arenaWires]
  · norm_num [s2Step221HeadGBefore,s2Step221HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step221HeadGAfter,s2Step221HeadGBefore,s2Step221HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step221HeadG_checked : planRowResizeLog s2Step221HeadGBefore s2Step221HeadGRow 161 s2Step221HeadGFresh=
    some (s2Step221HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 790, 804],769⟩,growRow 769 s2Step221HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step221HeadGBefore s2Step221HeadGAfter s2Step221HeadGRow 161 s2Step221HeadGFresh
    s2Step221HeadG_distinct s2Step221HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step221HeadG_reserved
  have rowEq : WindowRow.mk (s2Step221HeadGRow.payload++s2Step221HeadGFresh) s2Step221HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 790, 804],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step221HeadGvBefore : Arena := s2Step221HeadFAfter

private theorem s2Step221HeadGv_Incoming : rowsOwned s2Step221HeadGvBefore [s2Step221HeadGvRow,s2Step221HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step221HeadGRow,s2Step221HeadFRow,s2Step221HeadGvRow,s2Step221HeadFvRow] 2 s2Step221HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step221HeadGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step221HeadGv_Outgoing : rowsOwned s2Step221HeadFvAfter [s2Step221HeadGvOut,s2Step221HeadFvOut] :=
  hmrRows_owned_drop s2Step221HeadFvAfter [s2Step221HeadGOut,s2Step221HeadFOut,s2Step221HeadGvOut,s2Step221HeadFvOut] 2 s2Step221HeadBank_outgoingOwned

private theorem s2Step221HeadGv_distinct : (s2Step221HeadGvRow.sign::s2Step221HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step221HeadGv_owned : (s2Step221HeadGvRow.sign::s2Step221HeadGvRow.payload).toFinset⊆s2Step221HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step221HeadGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step221HeadGv_reserved : s2Step221HeadGvBefore.reserve s2Step221HeadGvFresh.toFinset=some s2Step221HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step221HeadGvFresh,arenaWires]
  · norm_num [s2Step221HeadGvBefore,s2Step221HeadFAfter,s2Step221HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step221HeadGvAfter,s2Step221HeadGvBefore,s2Step221HeadFAfter,s2Step221HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step221HeadGv_checked : planRowResizeLog s2Step221HeadGvBefore s2Step221HeadGvRow 126 s2Step221HeadGvFresh=
    some (s2Step221HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 801],771⟩,growRow 771 s2Step221HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step221HeadGvBefore s2Step221HeadGvAfter s2Step221HeadGvRow 126 s2Step221HeadGvFresh
    s2Step221HeadGv_distinct s2Step221HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step221HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step221HeadGvRow.payload++s2Step221HeadGvFresh) s2Step221HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 801],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step221HeadBank_rows : planWindowRowsLog s2Step221HeadGBefore [(s2Step221HeadGRow,161),(s2Step221HeadFRow,161),(s2Step221HeadGvRow,126),(s2Step221HeadFvRow,126)] [s2Step221HeadGFresh,s2Step221HeadFFresh,s2Step221HeadGvFresh,s2Step221HeadFvFresh]=
    some (s2Step221HeadFvAfter,[s2Step221HeadGOut,s2Step221HeadFOut,s2Step221HeadGvOut,s2Step221HeadFvOut],(growRow 769 s2Step221HeadGFresh ++ (growRow 768 s2Step221HeadFFresh ++ (growRow 771 s2Step221HeadGvFresh ++ (growRow 770 s2Step221HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step221HeadFvAfter [] []=some (s2Step221HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step221HeadFvBefore s2Step221HeadFvAfter s2Step221HeadFvAfter
    s2Step221HeadFvRow s2Step221HeadFvOut 126 s2Step221HeadFvFresh [] [] []
    (growRow 770 s2Step221HeadFvFresh) ([]) s2Step221HeadFv_Incoming s2Step221HeadFv_checked h4 s2Step221HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step221HeadGvBefore s2Step221HeadGvAfter s2Step221HeadFvAfter
    s2Step221HeadGvRow s2Step221HeadGvOut 126 s2Step221HeadGvFresh [(s2Step221HeadFvRow,126)] [s2Step221HeadFvFresh] [s2Step221HeadFvOut]
    (growRow 771 s2Step221HeadGvFresh) ((growRow 770 s2Step221HeadFvFresh ++ [])) s2Step221HeadGv_Incoming s2Step221HeadGv_checked h3 s2Step221HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step221HeadFBefore s2Step221HeadFAfter s2Step221HeadFvAfter
    s2Step221HeadFRow s2Step221HeadFOut 161 s2Step221HeadFFresh [(s2Step221HeadGvRow,126),(s2Step221HeadFvRow,126)] [s2Step221HeadGvFresh,s2Step221HeadFvFresh] [s2Step221HeadGvOut,s2Step221HeadFvOut]
    (growRow 768 s2Step221HeadFFresh) ((growRow 771 s2Step221HeadGvFresh ++ (growRow 770 s2Step221HeadFvFresh ++ []))) s2Step221HeadF_Incoming s2Step221HeadF_checked h2 s2Step221HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step221HeadGBefore s2Step221HeadGAfter s2Step221HeadFvAfter
    s2Step221HeadGRow s2Step221HeadGOut 161 s2Step221HeadGFresh [(s2Step221HeadFRow,161),(s2Step221HeadGvRow,126),(s2Step221HeadFvRow,126)] [s2Step221HeadFFresh,s2Step221HeadGvFresh,s2Step221HeadFvFresh] [s2Step221HeadFOut,s2Step221HeadGvOut,s2Step221HeadFvOut]
    (growRow 769 s2Step221HeadGFresh) ((growRow 768 s2Step221HeadFFresh ++ (growRow 771 s2Step221HeadGvFresh ++ (growRow 770 s2Step221HeadFvFresh ++ [])))) s2Step221HeadG_Incoming s2Step221HeadG_checked h1 s2Step221HeadG_Outgoing
  exact h0

private theorem s2Step221HeadBank_checked : compileHmrBankResizeLog .headroom s2Step221HeadGBefore ⟨s2Step221HeadFRow,s2Step221HeadGRow,s2Step221HeadFvRow,s2Step221HeadGvRow⟩ ⟨161,161,126,126⟩ [s2Step221HeadGFresh,s2Step221HeadFFresh,s2Step221HeadGvFresh,s2Step221HeadFvFresh]=
    some (s2Step221HeadFvAfter,⟨s2Step221HeadFOut,s2Step221HeadGOut,s2Step221HeadFvOut,s2Step221HeadGvOut⟩,(growRow 769 s2Step221HeadGFresh ++ (growRow 768 s2Step221HeadFFresh ++ (growRow 771 s2Step221HeadGvFresh ++ (growRow 770 s2Step221HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step221HeadBank_rows]
  rfl

private theorem s2Step221Front_checked : compileHmrSourceFrontLog s2Step221EntryFBefore s2Step221FrontBank 160 125 ⟨159,159,126,125⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step221FrontLog=some s2Step221FrontPlan := by
  have pairEq : s2Step221FrontPair=⟨s2Step221HeadFRow,s2Step221HeadGRow,s2Step221HeadFvRow,s2Step221HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step221FrontHead=⟨s2Step221ExitFRow,s2Step221ExitGRow,s2Step221ExitFvRow,s2Step221ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step221Add0A=s2Step221FrontHead.f.wires := by decide +kernel
  have gEq : s2Step221Add0B=s2Step221FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step221Add1A=s2Step221FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step221Add1B=s2Step221FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step221EntryFBefore s2Step221FrontBank 160 125 ⟨159,159,126,125⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step221FrontLog s2Step221FrontPlan
  · exact s2Step221Front_entry
  · exact s2Step221EntryBank_checked
  · exact s2Step221Front_sigma
  · rfl
  · exact s2Step221Front_branch
  · rfl
  · simpa only [s2Step221FrontPlan,pairEq] using s2Step221HeadBank_checked
  · simpa only [s2Step221FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step221F4_checked
  · exact s2Step221Counter_checked
  · rfl
  · simpa only [s2Step221FrontPlan,headEq] using s2Step221ExitBank_checked

private theorem s2Step221Complete_explicit_checked : compileHmrEarlyStepLog s2Step221EntryFBefore s2Step221FrontBank 160 125 ⟨159,159,126,125⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step221CompleteLog=some s2Step221CompletePlan := by
  let Q := s2Step221EarlyControlPlan
  have hq := s2Step221EarlyControl_plan_checked
  have fv1 : s2Step221CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step221CompleteOut.fv.payload[2]?.getD s2Step221CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step221CompleteOut.fv.payload[3]?.getD s2Step221CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step221CompleteOut.fv.payload[4]?.getD s2Step221CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step221EntryFBefore s2Step221EarlyControlArena s2Step221FrontBank 160 125 ⟨159,159,126,125⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step221CompleteLog s2Step221FrontPlan Q
    s2Step221Front_checked s2Step221Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step221Complete_owned s2Step221Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step221EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 797 s2Step221CompleteOut.fv.second (s2Step221CompleteOut.fv.payload[2]?.getD s2Step221CompleteOut.fv.sign) (s2Step221CompleteOut.fv.payload[3]?.getD s2Step221CompleteOut.fv.sign) (s2Step221CompleteOut.fv.payload[4]?.getD s2Step221CompleteOut.fv.sign) 796 47 s2Step221EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep221Arena : Arena := s2Step221EntryFBefore
def s2PrivateStep221Bank : WindowBank := s2Step221FrontBank
def s2PrivateStep221Spec : HmrSourceWalkStepLog := ⟨160,125,⟨159,159,126,125⟩,47,.early s2Step221CompleteLog⟩
def s2PrivateStep221Plan : HmrSourceStepPlan := .early s2Step221CompletePlan
theorem s2PrivateStep221_source : s2PrivateStep221Spec=s2ObservedLogs208[13] := rfl
theorem s2PrivateStep221_checked : compileHmrSourceStepLog s2PrivateStep221Arena s2PrivateStep221Bank
    s2PrivateStep221Spec.fgWidth s2PrivateStep221Spec.vWidth s2PrivateStep221Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897]
    6 498 221 s2PrivateStep221Spec.need none s2PrivateStep221Spec.log=some s2PrivateStep221Plan := by
  change compileHmrSourceStepLog s2Step221EntryFBefore s2Step221FrontBank 160 125 ⟨159,159,126,125⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 6 498 221 47 none (.early s2Step221CompleteLog)=some (.early s2Step221CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 221<498)]
  rw [s2Step221Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
