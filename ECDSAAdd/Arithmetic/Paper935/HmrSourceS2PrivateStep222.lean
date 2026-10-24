import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep220
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

private def s2Step222CompleteMoves : List (Wire × Wire) := [(780,158)]

private def s2Step222EarlyControlLog : HmrEarlyControlLog := ⟨[780, 790, 804, 808, 801],[814],[882],[826, 842, 885, 891, 894, 895],[]⟩

private def s2Step222FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [796]],[[801], [808], [790], [804]],[[], [], [], []]⟩,[797],[811],[814],[882],[826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[814, 882, 826, 842]⟩

private def s2Step222CompleteLog : HmrEarlyStepLog := ⟨s2Step222FrontLog,s2Step222CompleteMoves,s2Step222EarlyControlLog⟩

private def s2Step222ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670],768⟩

private def s2Step222ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783],770⟩

private def s2Step222ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157],769⟩

private def s2Step222ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796],771⟩

private def s2Step222FrontOut : WindowBank := ⟨s2Step222ExitFOut,s2Step222ExitGOut,s2Step222ExitFvOut,s2Step222ExitGvOut⟩

private def s2Step222CompleteOut : WindowBank := s2Step222FrontOut.repacked s2Step222CompleteMoves

private def s2Step222EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step222EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step222EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step222EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step222EarlyControlPositiveArena,[814],s2Step222EarlyControlEqualityArena,[882],⟨⟨797,false⟩,[⟨⟨814,false⟩,882⟩]⟩⟩

private def s2Step222EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step222EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step222EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step222EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step222EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step222EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step222EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,780⟩,⟨⟨774,false⟩,790⟩,⟨⟨775,false⟩,804⟩,⟨⟨776,false⟩,808⟩,⟨⟨777,false⟩,801⟩]⟩

private def s2Step222EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step222EarlyControlZeroArena,s2Step222EarlyControlZeroPlan,s2Step222EarlyControlClassPlan,s2Step222EarlyControlFlagArena,s2Step222EarlyControlFittedArena,s2Step222EarlyControlHistoryArena,s2Step222EarlyControlSigmaArena,s2Step222EarlyControlOutputArena,s2Step222EarlyControlLog⟩

private def s2Step222CounterWork : List Wire := [814, 882, 826, 842]

private theorem s2Step222Counter_bounded : s2Step222CounterWork.toFinset⊆arenaWires := by norm_num [s2Step222CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step222HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step222CounterDuring : Arena := ⟨s2Step222HeadFvAfter.live∪s2Step222CounterWork.toFinset,Finset.union_subset s2Step222HeadFvAfter.bounded s2Step222Counter_bounded⟩

private def s2Step222EntryFFresh : List Wire := []

private def s2Step222EntryFvFresh : List Wire := []

private def s2Step222EntryGFresh : List Wire := []

private def s2Step222EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step222EntryGvFresh : List Wire := [796]

private def s2Step222ExitFExtra : List Wire := [808]

private def s2Step222ExitFvExtra : List Wire := [804]

private def s2Step222ExitGExtra : List Wire := [158, 801]

private def s2Step222ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<158) ∨ (159≤q ∧ q<790) ∨ (791≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step222ExitGvExtra : List Wire := [790]

private def s2Step222Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step222Add0Work : List Wire := [826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step222Add0_bounded : s2Step222Add0Work.toFinset⊆arenaWires := by
  have h : s2Step222Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step222Add0During : Arena := ⟨s2Step222Add0Arena.live∪s2Step222Add0Work.toFinset,Finset.union_subset s2Step222Add0Arena.bounded s2Step222Add0_bounded⟩

private def s2Step222Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step222Add1Work : List Wire := [826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step222Add1_bounded : s2Step222Add1Work.toFinset⊆arenaWires := by
  have h : s2Step222Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step222Add1During : Arena := ⟨s2Step222Add1Arena.live∪s2Step222Add1Work.toFinset,Finset.union_subset s2Step222Add1Arena.bounded s2Step222Add1_bounded⟩

private def s2Step222F4FlagArena : Arena := ⟨s2Step222HeadFvAfter.live∪{814},Finset.union_subset s2Step222HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step222F4Plan : HmrHybridF4Plan := ⟨s2Step222F4FlagArena,[814],s2Step222Add0Arena,[882],s2Step222Add0During,s2Step222Add0Work,s2Step222Add1During,s2Step222Add1Work⟩

private def s2Step222HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 808],768⟩

private def s2Step222HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 804],770⟩

private def s2Step222HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 801],769⟩

private def s2Step222HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 790],771⟩

private def s2Step222FrontHead : WindowBank := ⟨s2Step222HeadFOut,s2Step222HeadGOut,s2Step222HeadFvOut,s2Step222HeadGvOut⟩

private def s2Step222EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670],768⟩

private def s2Step222EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783],770⟩

private def s2Step222EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158],769⟩

private def s2Step222EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796],771⟩

private def s2Step222FrontPair : WindowBank := ⟨s2Step222EntryFOut,s2Step222EntryGOut,s2Step222EntryFvOut,s2Step222EntryGvOut⟩

private def s2Step222FrontSigmaArena : Arena := ⟨s2Step222EntryGvAfter.live∪{797},Finset.union_subset s2Step222EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step222HeadFFresh : List Wire := [808]

private def s2Step222HeadFvFresh : List Wire := [804]

private def s2Step222HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step222HeadGFresh : List Wire := [801]

private def s2Step222HeadGvFresh : List Wire := [790]

private def s2Step222FrontPlan : HmrSourceFront := ⟨s2Step222EntryGvAfter,s2Step222FrontPair,(growRow 768 s2Step222EntryFFresh ++ (growRow 769 s2Step222EntryGFresh ++ (growRow 770 s2Step222EntryFvFresh ++ (growRow 771 s2Step222EntryGvFresh ++ [])))),s2Step222FrontSigmaArena,[797],s2Step222HeadGBefore,[811],
  s2Step222HeadFvAfter,s2Step222FrontHead,(growRow 769 s2Step222HeadGFresh ++ (growRow 768 s2Step222HeadFFresh ++ (growRow 771 s2Step222HeadGvFresh ++ (growRow 770 s2Step222HeadFvFresh ++ [])))),s2Step222F4Plan,s2Step222CounterDuring,s2Step222CounterWork,s2Step222ExitGvAfter,s2Step222FrontOut,(shrinkRow 769 s2Step222ExitGExtra ++ (shrinkRow 768 s2Step222ExitFExtra ++ (shrinkRow 770 s2Step222ExitFvExtra ++ (shrinkRow 771 s2Step222ExitGvExtra ++ []))))⟩

private def s2Step222CompletePlan : HmrEarlyStepPlan := ⟨s2Step222FrontPlan,s2Step222EarlyControlArena,s2Step222EarlyControlPlan,s2Step222CompleteMoves⟩

private theorem s2Step222Complete_apart : List.Disjoint (s2Step222CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [797, 811, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] := by
  have nd : ((s2Step222CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[797, 811, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step222Complete_owned : (s2Step222CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step222EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step222EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private def s2Step222CompleteMoveArena : Arena := ⟨s2Step222ExitGvAfter.live∪{158},Finset.union_subset s2Step222ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step222Complete_repack : s2Step222ExitGvAfter.checkRepack s2Step222CompleteMoves=some s2Step222EarlyControlArena := by
  have owned : 780∈s2Step222ExitGvAfter.live := by norm_num [s2Step222ExitGvAfter,arenaWires]
  have reserve : s2Step222ExitGvAfter.reserve {158}=some s2Step222CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step222ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step222CompleteMoveArena.retireSet {780}=s2Step222EarlyControlArena := by
    unfold Arena.retireSet s2Step222EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step222CompleteMoveArena,s2Step222ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step222CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step222CompleteMoveArena.retireSet {780}).checkRepack []=some s2Step222EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step222EarlyControl_branchOwned : ([811] : List Wire).toFinset⊆s2Step222EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step222EarlyControlSigmaArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step222EarlyControl_branch : compileHmrBranchRetirement s2Step222EarlyControlSigmaArena 811=some s2Step222EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step222EarlyControl_branchOwned
  · ext q
    simp [s2Step222EarlyControlOutputArena,s2Step222EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step222EarlyControl_classEqualityBorrow : s2Step222EarlyControlPositiveArena.checkBorrow (([797, 814] : List Wire).length-1) s2Step222EarlyControlLog.classWork=some s2Step222EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step222EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step222EarlyControlPositiveArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step222EarlyControlEqualityArena,s2Step222EarlyControlPositiveArena,s2Step222EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step222EarlyControl_classEqualityOwned : ([797, 814] : List Wire).toFinset⊆s2Step222EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step222EarlyControlPositiveArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step222EarlyControl_classEquality : compileHmrEqualityLog s2Step222EarlyControlPositiveArena [797, 814] 0 s2Step222EarlyControlLog.classWork=some (s2Step222EarlyControlEqualityArena,s2Step222EarlyControlLog.classWork,s2Step222EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step222EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step222EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step222EarlyControl_classOwned : ([777, 801, 797] : List Wire).toFinset⊆s2Step222EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step222EarlyControlZeroArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step222EarlyControl_positiveBorrow : s2Step222EarlyControlZeroArena.checkBorrow (1) s2Step222EarlyControlLog.positiveWork=some s2Step222EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step222EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step222EarlyControlZeroArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step222EarlyControlPositiveArena,s2Step222EarlyControlZeroArena,s2Step222EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step222EarlyControl_class : compileHmrSourceClassLog s2Step222EarlyControlZeroArena false 777 s2Step222EarlyControlZeroPlan.top 0 797 s2Step222EarlyControlLog.positiveWork s2Step222EarlyControlLog.classWork=some s2Step222EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step222EarlyControlClassPlan s2Step222EarlyControlZeroArena false 777 s2Step222EarlyControlZeroPlan.top 0 797
  constructor
  · decide +kernel
  · exact s2Step222EarlyControl_classOwned
  · exact s2Step222EarlyControl_positiveBorrow
  · exact s2Step222EarlyControl_classEquality

private theorem s2Step222EarlyControl_entryRecordOwned : ([811, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step222EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step222EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step222EarlyControl_entrySigmaOwned : ([797, 254] : List Wire).toFinset⊆s2Step222EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step222EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step222EarlyControl_fitBorrow : s2Step222EarlyControlFlagArena.checkBorrow ((47-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).length)) s2Step222EarlyControlLog.recordFresh=some s2Step222EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step222EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step222EarlyControlFlagArena (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step222EarlyControlFittedArena,s2Step222EarlyControlFlagArena,s2Step222EarlyControlLog,arenaWires]

private theorem s2Step222EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step222EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step222EarlyControlFlagArena (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step222EarlyControl_fit : compileHmrRecordGrowLog s2Step222EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step222EarlyControlLog.recordFresh=some s2Step222EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step222EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step222EarlyControl_fitBorrow

private theorem s2Step222EarlyControl_flagsBorrow : s2Step222EarlyControlEqualityArena.checkBorrow (6) s2Step222EarlyControlLog.flagWork=some s2Step222EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step222EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step222EarlyControlEqualityArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step222EarlyControlFlagArena,s2Step222EarlyControlEqualityArena,s2Step222EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step222EarlyControl_flagsOwned : ([882, 253, 252, 251] : List Wire).toFinset⊆s2Step222EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step222EarlyControlEqualityArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step222EarlyControl_flags : compileHmrFlagsLog s2Step222EarlyControlClassPlan.equalityArena s2Step222EarlyControlClassPlan.equality.top 253 252 251 s2Step222EarlyControlLog.flagWork=some s2Step222EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step222EarlyControl_flagsOwned⟩
  · exact s2Step222EarlyControl_flagsBorrow

private theorem s2Step222EarlyControl_historyBorrow : s2Step222EarlyControlArena.checkBorrow ((47-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).length)) s2Step222EarlyControlLog.recordFresh=some s2Step222EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step222EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step222EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step222EarlyControlHistoryArena,s2Step222EarlyControlArena,s2Step222EarlyControlLog,arenaWires]

private theorem s2Step222EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step222EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step222EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step222EarlyControl_history : compileHmrRecordGrowLog s2Step222EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step222EarlyControlLog.recordFresh=some s2Step222EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step222EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step222EarlyControl_historyBorrow

private theorem s2Step222EarlyControl_sigmaOwned : ([254, 797] : List Wire).toFinset⊆s2Step222EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step222EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step222EarlyControl_sigmaReleaseOwned : ([797] : List Wire).toFinset⊆s2Step222EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step222EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step222EarlyControl_sigmaRelease : s2Step222EarlyControlHistoryArena.release {797} (fun _ => false)=some s2Step222EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step222EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step222EarlyControlSigmaArena,s2Step222EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step222EarlyControl_sigma : compileHmrSigmaDropLog s2Step222EarlyControlHistoryArena false 0 0 254 797 []=some s2Step222EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step222EarlyControl_sigmaOwned⟩
  · exact s2Step222EarlyControl_sigmaRelease

private theorem s2Step222EarlyControl_zeroBorrow : s2Step222EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step222EarlyControlLog.zeroWork=some s2Step222EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step222EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step222EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step222EarlyControlZeroArena,s2Step222EarlyControlArena,s2Step222EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step222EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step222EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step222EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step222EarlyControl_zero : compileHmrEqualityLog s2Step222EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step222EarlyControlLog.zeroWork=some (s2Step222EarlyControlZeroArena,s2Step222EarlyControlLog.zeroWork,s2Step222EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step222EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step222EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step222EarlyControl_logged : s2Step222EarlyControlPlan.Logged s2Step222EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 797 254 253 252 251 811 47 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step222EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step222EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step222EarlyControl_zero
  · exact s2Step222EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step222EarlyControl_flags
  · exact s2Step222EarlyControl_fit
  · exact s2Step222EarlyControl_history
  · exact s2Step222EarlyControl_sigma
  · exact s2Step222EarlyControl_branch

private theorem s2Step222EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step222EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 797 254 253 252 251 811 47 s2Step222EarlyControlLog=some s2Step222EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step222EarlyControlPlan s2Step222EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 797 254 253 252 251 811 47 s2Step222EarlyControl_logged

private def s2Step222EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step222EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670],768⟩

private def s2Step222EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783],770⟩

private def s2Step222EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158],769⟩

private def s2Step222EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798],771⟩

private def s2Step222FrontBank : WindowBank := ⟨s2Step222EntryFRow,s2Step222EntryGRow,s2Step222EntryFvRow,s2Step222EntryGvRow⟩

private def s2Step222Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 808, 768]

private def s2Step222Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 801, 769]

private def s2Step222Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 804, 770]

private def s2Step222Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 790, 771]

private theorem s2Step222Counter_apart : Disjoint s2Step222HeadFvAfter.live s2Step222CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step222HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step222Counter_borrowed : s2Step222HeadFvAfter.checkBorrow 4 s2Step222CounterWork=some s2Step222CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step222HeadFvAfter s2Step222CounterDuring s2Step222CounterWork.toFinset s2Step222Counter_bounded s2Step222Counter_apart rfl

private theorem s2Step222Counter_owned : (797::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step222HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step222HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step222Counter_checked : compileHmrCounterStepLog s2Step222HeadFvAfter true 797 [772, 773, 774, 775, 776, 777] s2Step222CounterWork=some s2Step222CounterDuring := by
  have owned : ∀q∈797::[772, 773, 774, 775, 776, 777],q∈s2Step222HeadFvAfter.live := fun q hq => s2Step222Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step222Counter_borrowed

private def s2Step222EntryFAfter : Arena := s2Step222EntryFBefore

private theorem s2Step222EntryBank_incomingDistinct : ([s2Step222EntryFRow,s2Step222EntryGRow,s2Step222EntryFvRow,s2Step222EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step222EntryF_Incoming : rowsOwned s2Step222EntryFBefore [s2Step222EntryFRow,s2Step222EntryGRow,s2Step222EntryFvRow,s2Step222EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step222EntryFRow,s2Step222EntryGRow,s2Step222EntryFvRow,s2Step222EntryGvRow] 0 s2Step222EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step222EntryFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step222EntryBank_outgoingOwned : rowsOwned s2Step222EntryGvAfter [s2Step222EntryFOut,s2Step222EntryGOut,s2Step222EntryFvOut,s2Step222EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step222EntryGvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step222EntryF_Outgoing : rowsOwned s2Step222EntryGvAfter [s2Step222EntryFOut,s2Step222EntryGOut,s2Step222EntryFvOut,s2Step222EntryGvOut] :=
  hmrRows_owned_drop s2Step222EntryGvAfter [s2Step222EntryFOut,s2Step222EntryGOut,s2Step222EntryFvOut,s2Step222EntryGvOut] 0 s2Step222EntryBank_outgoingOwned

private theorem s2Step222EntryF_distinct : (s2Step222EntryFRow.sign::s2Step222EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step222EntryF_owned : (s2Step222EntryFRow.sign::s2Step222EntryFRow.payload).toFinset⊆s2Step222EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step222EntryFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step222EntryF_reserved : s2Step222EntryFBefore.reserve s2Step222EntryFFresh.toFinset=some s2Step222EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step222EntryFFresh,arenaWires]
  · norm_num [s2Step222EntryFBefore,s2Step222EntryFFresh,arenaWires]
  · simp only [s2Step222EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step222EntryF_checked : planRowResizeLog s2Step222EntryFBefore s2Step222EntryFRow 159 s2Step222EntryFFresh=
    some (s2Step222EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670],768⟩,growRow 768 s2Step222EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step222EntryFBefore s2Step222EntryFAfter s2Step222EntryFRow 159 s2Step222EntryFFresh
    s2Step222EntryF_distinct s2Step222EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step222EntryF_reserved
  have rowEq : WindowRow.mk (s2Step222EntryFRow.payload++s2Step222EntryFFresh) s2Step222EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step222EntryFvAfter : Arena := s2Step222EntryFBefore

private def s2Step222EntryFvBefore : Arena := s2Step222EntryFBefore

private theorem s2Step222EntryFv_Incoming : rowsOwned s2Step222EntryFvBefore [s2Step222EntryFvRow,s2Step222EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step222EntryFRow,s2Step222EntryGRow,s2Step222EntryFvRow,s2Step222EntryGvRow] 2 s2Step222EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step222EntryFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step222EntryFv_Outgoing : rowsOwned s2Step222EntryGvAfter [s2Step222EntryFvOut,s2Step222EntryGvOut] :=
  hmrRows_owned_drop s2Step222EntryGvAfter [s2Step222EntryFOut,s2Step222EntryGOut,s2Step222EntryFvOut,s2Step222EntryGvOut] 2 s2Step222EntryBank_outgoingOwned

private theorem s2Step222EntryFv_distinct : (s2Step222EntryFvRow.sign::s2Step222EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step222EntryFv_owned : (s2Step222EntryFvRow.sign::s2Step222EntryFvRow.payload).toFinset⊆s2Step222EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step222EntryFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step222EntryFv_reserved : s2Step222EntryFvBefore.reserve s2Step222EntryFvFresh.toFinset=some s2Step222EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step222EntryFvFresh,arenaWires]
  · norm_num [s2Step222EntryFvBefore,s2Step222EntryFBefore,s2Step222EntryFvFresh,arenaWires]
  · simp only [s2Step222EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step222EntryFv_checked : planRowResizeLog s2Step222EntryFvBefore s2Step222EntryFvRow 126 s2Step222EntryFvFresh=
    some (s2Step222EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783],770⟩,growRow 770 s2Step222EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step222EntryFvBefore s2Step222EntryFvAfter s2Step222EntryFvRow 126 s2Step222EntryFvFresh
    s2Step222EntryFv_distinct s2Step222EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step222EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step222EntryFvRow.payload++s2Step222EntryFvFresh) s2Step222EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step222EntryGAfter : Arena := s2Step222EntryFBefore

private def s2Step222EntryGBefore : Arena := s2Step222EntryFBefore

private theorem s2Step222EntryG_Incoming : rowsOwned s2Step222EntryGBefore [s2Step222EntryGRow,s2Step222EntryFvRow,s2Step222EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step222EntryFRow,s2Step222EntryGRow,s2Step222EntryFvRow,s2Step222EntryGvRow] 1 s2Step222EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step222EntryGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step222EntryG_Outgoing : rowsOwned s2Step222EntryGvAfter [s2Step222EntryGOut,s2Step222EntryFvOut,s2Step222EntryGvOut] :=
  hmrRows_owned_drop s2Step222EntryGvAfter [s2Step222EntryFOut,s2Step222EntryGOut,s2Step222EntryFvOut,s2Step222EntryGvOut] 1 s2Step222EntryBank_outgoingOwned

private theorem s2Step222EntryG_distinct : (s2Step222EntryGRow.sign::s2Step222EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step222EntryG_owned : (s2Step222EntryGRow.sign::s2Step222EntryGRow.payload).toFinset⊆s2Step222EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step222EntryGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step222EntryG_reserved : s2Step222EntryGBefore.reserve s2Step222EntryGFresh.toFinset=some s2Step222EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step222EntryGFresh,arenaWires]
  · norm_num [s2Step222EntryGBefore,s2Step222EntryFBefore,s2Step222EntryGFresh,arenaWires]
  · simp only [s2Step222EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step222EntryG_checked : planRowResizeLog s2Step222EntryGBefore s2Step222EntryGRow 159 s2Step222EntryGFresh=
    some (s2Step222EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158],769⟩,growRow 769 s2Step222EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step222EntryGBefore s2Step222EntryGAfter s2Step222EntryGRow 159 s2Step222EntryGFresh
    s2Step222EntryG_distinct s2Step222EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step222EntryG_reserved
  have rowEq : WindowRow.mk (s2Step222EntryGRow.payload++s2Step222EntryGFresh) s2Step222EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step222EntryGvBefore : Arena := s2Step222EntryFBefore

private theorem s2Step222EntryGv_Incoming : rowsOwned s2Step222EntryGvBefore [s2Step222EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step222EntryFRow,s2Step222EntryGRow,s2Step222EntryFvRow,s2Step222EntryGvRow] 3 s2Step222EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step222EntryGvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step222EntryGv_Outgoing : rowsOwned s2Step222EntryGvAfter [s2Step222EntryGvOut] :=
  hmrRows_owned_drop s2Step222EntryGvAfter [s2Step222EntryFOut,s2Step222EntryGOut,s2Step222EntryFvOut,s2Step222EntryGvOut] 3 s2Step222EntryBank_outgoingOwned

private theorem s2Step222EntryGv_distinct : (s2Step222EntryGvRow.sign::s2Step222EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step222EntryGv_owned : (s2Step222EntryGvRow.sign::s2Step222EntryGvRow.payload).toFinset⊆s2Step222EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step222EntryGvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step222EntryGv_reserved : s2Step222EntryGvBefore.reserve s2Step222EntryGvFresh.toFinset=some s2Step222EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step222EntryGvFresh,arenaWires]
  · norm_num [s2Step222EntryGvBefore,s2Step222EntryFBefore,s2Step222EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step222EntryGvAfter,s2Step222EntryGvBefore,s2Step222EntryFBefore,s2Step222EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step222EntryGv_checked : planRowResizeLog s2Step222EntryGvBefore s2Step222EntryGvRow 126 s2Step222EntryGvFresh=
    some (s2Step222EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796],771⟩,growRow 771 s2Step222EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step222EntryGvBefore s2Step222EntryGvAfter s2Step222EntryGvRow 126 s2Step222EntryGvFresh
    s2Step222EntryGv_distinct s2Step222EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step222EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step222EntryGvRow.payload++s2Step222EntryGvFresh) s2Step222EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step222EntryBank_rows : planWindowRowsLog s2Step222EntryFBefore [(s2Step222EntryFRow,159),(s2Step222EntryGRow,159),(s2Step222EntryFvRow,126),(s2Step222EntryGvRow,126)] [s2Step222EntryFFresh,s2Step222EntryGFresh,s2Step222EntryFvFresh,s2Step222EntryGvFresh]=
    some (s2Step222EntryGvAfter,[s2Step222EntryFOut,s2Step222EntryGOut,s2Step222EntryFvOut,s2Step222EntryGvOut],(growRow 768 s2Step222EntryFFresh ++ (growRow 769 s2Step222EntryGFresh ++ (growRow 770 s2Step222EntryFvFresh ++ (growRow 771 s2Step222EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step222EntryGvAfter [] []=some (s2Step222EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step222EntryGvBefore s2Step222EntryGvAfter s2Step222EntryGvAfter
    s2Step222EntryGvRow s2Step222EntryGvOut 126 s2Step222EntryGvFresh [] [] []
    (growRow 771 s2Step222EntryGvFresh) ([]) s2Step222EntryGv_Incoming s2Step222EntryGv_checked h4 s2Step222EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step222EntryFvBefore s2Step222EntryFvAfter s2Step222EntryGvAfter
    s2Step222EntryFvRow s2Step222EntryFvOut 126 s2Step222EntryFvFresh [(s2Step222EntryGvRow,126)] [s2Step222EntryGvFresh] [s2Step222EntryGvOut]
    (growRow 770 s2Step222EntryFvFresh) ((growRow 771 s2Step222EntryGvFresh ++ [])) s2Step222EntryFv_Incoming s2Step222EntryFv_checked h3 s2Step222EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step222EntryGBefore s2Step222EntryGAfter s2Step222EntryGvAfter
    s2Step222EntryGRow s2Step222EntryGOut 159 s2Step222EntryGFresh [(s2Step222EntryFvRow,126),(s2Step222EntryGvRow,126)] [s2Step222EntryFvFresh,s2Step222EntryGvFresh] [s2Step222EntryFvOut,s2Step222EntryGvOut]
    (growRow 769 s2Step222EntryGFresh) ((growRow 770 s2Step222EntryFvFresh ++ (growRow 771 s2Step222EntryGvFresh ++ []))) s2Step222EntryG_Incoming s2Step222EntryG_checked h2 s2Step222EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step222EntryFBefore s2Step222EntryFAfter s2Step222EntryGvAfter
    s2Step222EntryFRow s2Step222EntryFOut 159 s2Step222EntryFFresh [(s2Step222EntryGRow,159),(s2Step222EntryFvRow,126),(s2Step222EntryGvRow,126)] [s2Step222EntryGFresh,s2Step222EntryFvFresh,s2Step222EntryGvFresh] [s2Step222EntryGOut,s2Step222EntryFvOut,s2Step222EntryGvOut]
    (growRow 768 s2Step222EntryFFresh) ((growRow 769 s2Step222EntryGFresh ++ (growRow 770 s2Step222EntryFvFresh ++ (growRow 771 s2Step222EntryGvFresh ++ [])))) s2Step222EntryF_Incoming s2Step222EntryF_checked h1 s2Step222EntryF_Outgoing
  exact h0

private theorem s2Step222EntryBank_checked : compileHmrBankResizeLog .entry s2Step222EntryFBefore ⟨s2Step222EntryFRow,s2Step222EntryGRow,s2Step222EntryFvRow,s2Step222EntryGvRow⟩ ⟨159,159,126,126⟩ [s2Step222EntryFFresh,s2Step222EntryGFresh,s2Step222EntryFvFresh,s2Step222EntryGvFresh]=
    some (s2Step222EntryGvAfter,⟨s2Step222EntryFOut,s2Step222EntryGOut,s2Step222EntryFvOut,s2Step222EntryGvOut⟩,(growRow 768 s2Step222EntryFFresh ++ (growRow 769 s2Step222EntryGFresh ++ (growRow 770 s2Step222EntryFvFresh ++ (growRow 771 s2Step222EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step222EntryBank_rows]
  rfl

private def s2Step222ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<158) ∨ (159≤q ∧ q<801) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step222ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<158) ∨ (159≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step222ExitFBefore : Arena := s2Step222ExitGAfter

private def s2Step222ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 808],768⟩

private def s2Step222ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 804],770⟩

private def s2Step222ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 801],769⟩

private def s2Step222ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 790],771⟩

private theorem s2Step222ExitBank_incomingDistinct : ([s2Step222ExitGRow,s2Step222ExitFRow,s2Step222ExitFvRow,s2Step222ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step222ExitF_Incoming : rowsOwned s2Step222ExitFBefore [s2Step222ExitFRow,s2Step222ExitFvRow,s2Step222ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step222ExitGRow,s2Step222ExitFRow,s2Step222ExitFvRow,s2Step222ExitGvRow] 1 s2Step222ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step222ExitFBefore (fun q => (0≤q ∧ q<158) ∨ (159≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step222ExitBank_outgoingOwned : rowsOwned s2Step222ExitGvAfter [s2Step222ExitGOut,s2Step222ExitFOut,s2Step222ExitFvOut,s2Step222ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step222ExitGvAfter (fun q => (0≤q ∧ q<158) ∨ (159≤q ∧ q<790) ∨ (791≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step222ExitF_Outgoing : rowsOwned s2Step222ExitGvAfter [s2Step222ExitFOut,s2Step222ExitFvOut,s2Step222ExitGvOut] :=
  hmrRows_owned_drop s2Step222ExitGvAfter [s2Step222ExitGOut,s2Step222ExitFOut,s2Step222ExitFvOut,s2Step222ExitGvOut] 1 s2Step222ExitBank_outgoingOwned

private theorem s2Step222ExitF_distinct : (s2Step222ExitFRow.sign::s2Step222ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step222ExitF_owned : (s2Step222ExitFRow.sign::s2Step222ExitFRow.payload).toFinset⊆s2Step222ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step222ExitFBefore (fun q => (0≤q ∧ q<158) ∨ (159≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step222ExitF_retired : s2Step222ExitFBefore.retireSet s2Step222ExitFExtra.toFinset=s2Step222ExitFAfter := by
  unfold Arena.retireSet s2Step222ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step222ExitFBefore,s2Step222ExitGAfter,s2Step222ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step222ExitF_checked : planRowResizeLog s2Step222ExitFBefore s2Step222ExitFRow 159 []=
    some (s2Step222ExitFAfter,s2Step222ExitFOut,shrinkRow 768 s2Step222ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step222ExitFBefore s2Step222ExitFRow 159 s2Step222ExitF_distinct s2Step222ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step222ExitFRow.payload.take 159) s2Step222ExitFRow.sign=s2Step222ExitFOut := by decide +kernel
  have hi : s2Step222ExitFRow.payload.drop 159=s2Step222ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step222ExitF_retired] at result
  exact result

private def s2Step222ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<158) ∨ (159≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step222ExitFvBefore : Arena := s2Step222ExitFAfter

private theorem s2Step222ExitFv_Incoming : rowsOwned s2Step222ExitFvBefore [s2Step222ExitFvRow,s2Step222ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step222ExitGRow,s2Step222ExitFRow,s2Step222ExitFvRow,s2Step222ExitGvRow] 2 s2Step222ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step222ExitFvBefore (fun q => (0≤q ∧ q<158) ∨ (159≤q ∧ q<801) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step222ExitFv_Outgoing : rowsOwned s2Step222ExitGvAfter [s2Step222ExitFvOut,s2Step222ExitGvOut] :=
  hmrRows_owned_drop s2Step222ExitGvAfter [s2Step222ExitGOut,s2Step222ExitFOut,s2Step222ExitFvOut,s2Step222ExitGvOut] 2 s2Step222ExitBank_outgoingOwned

private theorem s2Step222ExitFv_distinct : (s2Step222ExitFvRow.sign::s2Step222ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step222ExitFv_owned : (s2Step222ExitFvRow.sign::s2Step222ExitFvRow.payload).toFinset⊆s2Step222ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step222ExitFvBefore (fun q => (0≤q ∧ q<158) ∨ (159≤q ∧ q<801) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step222ExitFv_retired : s2Step222ExitFvBefore.retireSet s2Step222ExitFvExtra.toFinset=s2Step222ExitFvAfter := by
  unfold Arena.retireSet s2Step222ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step222ExitFvBefore,s2Step222ExitFAfter,s2Step222ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step222ExitFv_checked : planRowResizeLog s2Step222ExitFvBefore s2Step222ExitFvRow 126 []=
    some (s2Step222ExitFvAfter,s2Step222ExitFvOut,shrinkRow 770 s2Step222ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step222ExitFvBefore s2Step222ExitFvRow 126 s2Step222ExitFv_distinct s2Step222ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step222ExitFvRow.payload.take 126) s2Step222ExitFvRow.sign=s2Step222ExitFvOut := by decide +kernel
  have hi : s2Step222ExitFvRow.payload.drop 126=s2Step222ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step222ExitFv_retired] at result
  exact result

private def s2Step222ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private theorem s2Step222ExitG_Incoming : rowsOwned s2Step222ExitGBefore [s2Step222ExitGRow,s2Step222ExitFRow,s2Step222ExitFvRow,s2Step222ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step222ExitGRow,s2Step222ExitFRow,s2Step222ExitFvRow,s2Step222ExitGvRow] 0 s2Step222ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step222ExitGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step222ExitG_Outgoing : rowsOwned s2Step222ExitGvAfter [s2Step222ExitGOut,s2Step222ExitFOut,s2Step222ExitFvOut,s2Step222ExitGvOut] :=
  hmrRows_owned_drop s2Step222ExitGvAfter [s2Step222ExitGOut,s2Step222ExitFOut,s2Step222ExitFvOut,s2Step222ExitGvOut] 0 s2Step222ExitBank_outgoingOwned

private theorem s2Step222ExitG_distinct : (s2Step222ExitGRow.sign::s2Step222ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step222ExitG_owned : (s2Step222ExitGRow.sign::s2Step222ExitGRow.payload).toFinset⊆s2Step222ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step222ExitGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step222ExitG_retired : s2Step222ExitGBefore.retireSet s2Step222ExitGExtra.toFinset=s2Step222ExitGAfter := by
  unfold Arena.retireSet s2Step222ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step222ExitGBefore,s2Step222ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step222ExitG_checked : planRowResizeLog s2Step222ExitGBefore s2Step222ExitGRow 158 []=
    some (s2Step222ExitGAfter,s2Step222ExitGOut,shrinkRow 769 s2Step222ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step222ExitGBefore s2Step222ExitGRow 158 s2Step222ExitG_distinct s2Step222ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step222ExitGRow.payload.take 158) s2Step222ExitGRow.sign=s2Step222ExitGOut := by decide +kernel
  have hi : s2Step222ExitGRow.payload.drop 158=s2Step222ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step222ExitG_retired] at result
  exact result

private def s2Step222ExitGvBefore : Arena := s2Step222ExitFvAfter

private theorem s2Step222ExitGv_Incoming : rowsOwned s2Step222ExitGvBefore [s2Step222ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step222ExitGRow,s2Step222ExitFRow,s2Step222ExitFvRow,s2Step222ExitGvRow] 3 s2Step222ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step222ExitGvBefore (fun q => (0≤q ∧ q<158) ∨ (159≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step222ExitGv_Outgoing : rowsOwned s2Step222ExitGvAfter [s2Step222ExitGvOut] :=
  hmrRows_owned_drop s2Step222ExitGvAfter [s2Step222ExitGOut,s2Step222ExitFOut,s2Step222ExitFvOut,s2Step222ExitGvOut] 3 s2Step222ExitBank_outgoingOwned

private theorem s2Step222ExitGv_distinct : (s2Step222ExitGvRow.sign::s2Step222ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step222ExitGv_owned : (s2Step222ExitGvRow.sign::s2Step222ExitGvRow.payload).toFinset⊆s2Step222ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step222ExitGvBefore (fun q => (0≤q ∧ q<158) ∨ (159≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step222ExitGv_retired : s2Step222ExitGvBefore.retireSet s2Step222ExitGvExtra.toFinset=s2Step222ExitGvAfter := by
  unfold Arena.retireSet s2Step222ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step222ExitGvBefore,s2Step222ExitFvAfter,s2Step222ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step222ExitGv_checked : planRowResizeLog s2Step222ExitGvBefore s2Step222ExitGvRow 126 []=
    some (s2Step222ExitGvAfter,s2Step222ExitGvOut,shrinkRow 771 s2Step222ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step222ExitGvBefore s2Step222ExitGvRow 126 s2Step222ExitGv_distinct s2Step222ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step222ExitGvRow.payload.take 126) s2Step222ExitGvRow.sign=s2Step222ExitGvOut := by decide +kernel
  have hi : s2Step222ExitGvRow.payload.drop 126=s2Step222ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step222ExitGv_retired] at result
  exact result

private theorem s2Step222ExitBank_rows : planWindowRowsLog s2Step222ExitGBefore [(s2Step222ExitGRow,158),(s2Step222ExitFRow,159),(s2Step222ExitFvRow,126),(s2Step222ExitGvRow,126)] [[],[],[],[]]=
    some (s2Step222ExitGvAfter,[s2Step222ExitGOut,s2Step222ExitFOut,s2Step222ExitFvOut,s2Step222ExitGvOut],(shrinkRow 769 s2Step222ExitGExtra ++ (shrinkRow 768 s2Step222ExitFExtra ++ (shrinkRow 770 s2Step222ExitFvExtra ++ (shrinkRow 771 s2Step222ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step222ExitGvAfter [] []=some (s2Step222ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step222ExitGvBefore s2Step222ExitGvAfter s2Step222ExitGvAfter
    s2Step222ExitGvRow s2Step222ExitGvOut 126 [] [] [] []
    (shrinkRow 771 s2Step222ExitGvExtra) ([]) s2Step222ExitGv_Incoming s2Step222ExitGv_checked h4 s2Step222ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step222ExitFvBefore s2Step222ExitFvAfter s2Step222ExitGvAfter
    s2Step222ExitFvRow s2Step222ExitFvOut 126 [] [(s2Step222ExitGvRow,126)] [[]] [s2Step222ExitGvOut]
    (shrinkRow 770 s2Step222ExitFvExtra) ((shrinkRow 771 s2Step222ExitGvExtra ++ [])) s2Step222ExitFv_Incoming s2Step222ExitFv_checked h3 s2Step222ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step222ExitFBefore s2Step222ExitFAfter s2Step222ExitGvAfter
    s2Step222ExitFRow s2Step222ExitFOut 159 [] [(s2Step222ExitFvRow,126),(s2Step222ExitGvRow,126)] [[],[]] [s2Step222ExitFvOut,s2Step222ExitGvOut]
    (shrinkRow 768 s2Step222ExitFExtra) ((shrinkRow 770 s2Step222ExitFvExtra ++ (shrinkRow 771 s2Step222ExitGvExtra ++ []))) s2Step222ExitF_Incoming s2Step222ExitF_checked h2 s2Step222ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step222ExitGBefore s2Step222ExitGAfter s2Step222ExitGvAfter
    s2Step222ExitGRow s2Step222ExitGOut 158 [] [(s2Step222ExitFRow,159),(s2Step222ExitFvRow,126),(s2Step222ExitGvRow,126)] [[],[],[]] [s2Step222ExitFOut,s2Step222ExitFvOut,s2Step222ExitGvOut]
    (shrinkRow 769 s2Step222ExitGExtra) ((shrinkRow 768 s2Step222ExitFExtra ++ (shrinkRow 770 s2Step222ExitFvExtra ++ (shrinkRow 771 s2Step222ExitGvExtra ++ [])))) s2Step222ExitG_Incoming s2Step222ExitG_checked h1 s2Step222ExitG_Outgoing
  exact h0

private theorem s2Step222ExitBank_checked : compileHmrBankResizeLog .exit s2Step222ExitGBefore ⟨s2Step222ExitFRow,s2Step222ExitGRow,s2Step222ExitFvRow,s2Step222ExitGvRow⟩ ⟨159,158,126,126⟩ [[],[],[],[]]=
    some (s2Step222ExitGvAfter,⟨s2Step222ExitFOut,s2Step222ExitGOut,s2Step222ExitFvOut,s2Step222ExitGvOut⟩,(shrinkRow 769 s2Step222ExitGExtra ++ (shrinkRow 768 s2Step222ExitFExtra ++ (shrinkRow 770 s2Step222ExitFvExtra ++ (shrinkRow 771 s2Step222ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step222ExitBank_rows]
  rfl

private theorem s2Step222Add0_apart : Disjoint s2Step222Add0Arena.live s2Step222Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step222Add0Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step222Add0_card : s2Step222Add0Arena.live.card=891 := by
  decide +kernel

private theorem s2Step222Add0_borrowed : s2Step222Add0Arena.checkBorrow (hmrHybridCount s2Step222Add0Arena s2Step222Add0B.length) s2Step222Add0Work=some s2Step222Add0During := by
  have len : s2Step222Add0Work.length=hmrHybridCount s2Step222Add0Arena s2Step222Add0B.length := by
    rw [hmrHybridCount,s2Step222Add0_card]
    decide +kernel
  have nd : s2Step222Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step222Add0Arena s2Step222Add0During s2Step222Add0Work.toFinset s2Step222Add0_bounded s2Step222Add0_apart rfl

private theorem s2Step222Add0_distinct : (814::811::882::(s2Step222Add0A++s2Step222Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step222Add0_owned : (814::811::882::(s2Step222Add0A++s2Step222Add0B)).toFinset⊆s2Step222Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step222Add0Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step222Add0_checked : compileHmrHybridCinLog s2Step222Add0Arena 811 814 882 s2Step222Add0A s2Step222Add0B s2Step222Add0Work=some s2Step222Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step222Add0Arena s2Step222Add0During 811 814 882 s2Step222Add0A s2Step222Add0B s2Step222Add0Work
    (by decide +kernel) (by decide +kernel) s2Step222Add0_distinct
    (fun q hq => s2Step222Add0_owned (List.mem_toFinset.mpr hq)) s2Step222Add0_borrowed

private theorem s2Step222Add1_apart : Disjoint s2Step222Add1Arena.live s2Step222Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step222Add1Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step222Add1_card : s2Step222Add1Arena.live.card=891 := by
  decide +kernel

private theorem s2Step222Add1_borrowed : s2Step222Add1Arena.checkBorrow (hmrHybridCount s2Step222Add1Arena s2Step222Add1B.length) s2Step222Add1Work=some s2Step222Add1During := by
  have len : s2Step222Add1Work.length=hmrHybridCount s2Step222Add1Arena s2Step222Add1B.length := by
    rw [hmrHybridCount,s2Step222Add1_card]
    decide +kernel
  have nd : s2Step222Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step222Add1Arena s2Step222Add1During s2Step222Add1Work.toFinset s2Step222Add1_bounded s2Step222Add1_apart rfl

private theorem s2Step222Add1_distinct : (814::811::882::(s2Step222Add1A++s2Step222Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step222Add1_owned : (814::811::882::(s2Step222Add1A++s2Step222Add1B)).toFinset⊆s2Step222Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step222Add1Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step222Add1_checked : compileHmrHybridCinLog s2Step222Add1Arena 811 814 882 s2Step222Add1A s2Step222Add1B s2Step222Add1Work=some s2Step222Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step222Add1Arena s2Step222Add1During 811 814 882 s2Step222Add1A s2Step222Add1B s2Step222Add1Work
    (by decide +kernel) (by decide +kernel) s2Step222Add1_distinct
    (fun q hq => s2Step222Add1_owned (List.mem_toFinset.mpr hq)) s2Step222Add1_borrowed

private theorem s2Step222F4_apart : Disjoint (s2Step222Add0A++s2Step222Add0B).toFinset (s2Step222Add1A++s2Step222Add1B).toFinset := by
  have nd : ((s2Step222Add0A++s2Step222Add0B)++(s2Step222Add1A++s2Step222Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step222F4_carry : s2Step222F4FlagArena.checkBorrow 1 [882]=some s2Step222Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step222F4FlagArena,s2Step222HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step222F4FlagArena,s2Step222HeadFvAfter,s2Step222Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step222F4_distinct : (797::811::814::882::((s2Step222Add0A++s2Step222Add1A)++(s2Step222Add0B++s2Step222Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step222F4_flag : s2Step222HeadFvAfter.checkBorrow 1 [814]=some s2Step222F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step222HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step222F4_owned : (797::811::((s2Step222Add0A++s2Step222Add1A)++(s2Step222Add0B++s2Step222Add1B))).toFinset⊆s2Step222HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step222HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step222F4_checked : compileHmrHybridF4Log s2Step222HeadFvAfter 797 811 s2Step222Add0A s2Step222Add0B s2Step222Add1A s2Step222Add1B [814] [882] s2Step222Add0Work s2Step222Add1Work=some s2Step222F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step222HeadFvAfter s2Step222F4FlagArena s2Step222Add0Arena s2Step222Add0During s2Step222Add1During 797 811
    s2Step222Add0A s2Step222Add0B s2Step222Add1A s2Step222Add1B [814] [882] s2Step222Add0Work s2Step222Add1Work
    (fun q hq => s2Step222F4_owned (List.mem_toFinset.mpr hq)) s2Step222F4_flag s2Step222F4_carry
    s2Step222F4_distinct s2Step222F4_apart s2Step222Add0_checked s2Step222Add1_checked

private theorem s2Step222Front_branch : s2Step222FrontSigmaArena.checkBorrow 1 [811]=some s2Step222HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step222FrontSigmaArena,s2Step222EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step222FrontSigmaArena,s2Step222EntryGvAfter,s2Step222HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step222Front_entry : HmrFrontEntryValid s2Step222EntryFBefore s2Step222FrontBank 159 126 ⟨159,158,126,126⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step222FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step222EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step222EntryFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step222FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step222Front_sigma : s2Step222EntryGvAfter.checkBorrow 1 [797]=some s2Step222FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step222EntryGvAfter,arenaWires]
  · rfl

private def s2Step222HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<804) ∨ (805≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step222HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step222HeadFBefore : Arena := s2Step222HeadGAfter

private def s2Step222HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670],768⟩

private def s2Step222HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783],770⟩

private def s2Step222HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158],769⟩

private def s2Step222HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796],771⟩

private theorem s2Step222HeadBank_incomingDistinct : ([s2Step222HeadGRow,s2Step222HeadFRow,s2Step222HeadGvRow,s2Step222HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step222HeadF_Incoming : rowsOwned s2Step222HeadFBefore [s2Step222HeadFRow,s2Step222HeadGvRow,s2Step222HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step222HeadGRow,s2Step222HeadFRow,s2Step222HeadGvRow,s2Step222HeadFvRow] 1 s2Step222HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step222HeadFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step222HeadBank_outgoingOwned : rowsOwned s2Step222HeadFvAfter [s2Step222HeadGOut,s2Step222HeadFOut,s2Step222HeadGvOut,s2Step222HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step222HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step222HeadF_Outgoing : rowsOwned s2Step222HeadFvAfter [s2Step222HeadFOut,s2Step222HeadGvOut,s2Step222HeadFvOut] :=
  hmrRows_owned_drop s2Step222HeadFvAfter [s2Step222HeadGOut,s2Step222HeadFOut,s2Step222HeadGvOut,s2Step222HeadFvOut] 1 s2Step222HeadBank_outgoingOwned

private theorem s2Step222HeadF_distinct : (s2Step222HeadFRow.sign::s2Step222HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step222HeadF_owned : (s2Step222HeadFRow.sign::s2Step222HeadFRow.payload).toFinset⊆s2Step222HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step222HeadFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step222HeadF_reserved : s2Step222HeadFBefore.reserve s2Step222HeadFFresh.toFinset=some s2Step222HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step222HeadFFresh,arenaWires]
  · norm_num [s2Step222HeadFBefore,s2Step222HeadGAfter,s2Step222HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step222HeadFAfter,s2Step222HeadFBefore,s2Step222HeadGAfter,s2Step222HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step222HeadF_checked : planRowResizeLog s2Step222HeadFBefore s2Step222HeadFRow 160 s2Step222HeadFFresh=
    some (s2Step222HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 808],768⟩,growRow 768 s2Step222HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step222HeadFBefore s2Step222HeadFAfter s2Step222HeadFRow 160 s2Step222HeadFFresh
    s2Step222HeadF_distinct s2Step222HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step222HeadF_reserved
  have rowEq : WindowRow.mk (s2Step222HeadFRow.payload++s2Step222HeadFFresh) s2Step222HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 808],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step222HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<804) ∨ (805≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step222HeadFvBefore : Arena := s2Step222HeadGvAfter

private theorem s2Step222HeadFv_Incoming : rowsOwned s2Step222HeadFvBefore [s2Step222HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step222HeadGRow,s2Step222HeadFRow,s2Step222HeadGvRow,s2Step222HeadFvRow] 3 s2Step222HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step222HeadFvBefore (fun q => (0≤q ∧ q<804) ∨ (805≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step222HeadFv_Outgoing : rowsOwned s2Step222HeadFvAfter [s2Step222HeadFvOut] :=
  hmrRows_owned_drop s2Step222HeadFvAfter [s2Step222HeadGOut,s2Step222HeadFOut,s2Step222HeadGvOut,s2Step222HeadFvOut] 3 s2Step222HeadBank_outgoingOwned

private theorem s2Step222HeadFv_distinct : (s2Step222HeadFvRow.sign::s2Step222HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step222HeadFv_owned : (s2Step222HeadFvRow.sign::s2Step222HeadFvRow.payload).toFinset⊆s2Step222HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step222HeadFvBefore (fun q => (0≤q ∧ q<804) ∨ (805≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step222HeadFv_reserved : s2Step222HeadFvBefore.reserve s2Step222HeadFvFresh.toFinset=some s2Step222HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step222HeadFvFresh,arenaWires]
  · norm_num [s2Step222HeadFvBefore,s2Step222HeadGvAfter,s2Step222HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step222HeadFvAfter,s2Step222HeadFvBefore,s2Step222HeadGvAfter,s2Step222HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step222HeadFv_checked : planRowResizeLog s2Step222HeadFvBefore s2Step222HeadFvRow 127 s2Step222HeadFvFresh=
    some (s2Step222HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 804],770⟩,growRow 770 s2Step222HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step222HeadFvBefore s2Step222HeadFvAfter s2Step222HeadFvRow 127 s2Step222HeadFvFresh
    s2Step222HeadFv_distinct s2Step222HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step222HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step222HeadFvRow.payload++s2Step222HeadFvFresh) s2Step222HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 804],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step222HeadG_Incoming : rowsOwned s2Step222HeadGBefore [s2Step222HeadGRow,s2Step222HeadFRow,s2Step222HeadGvRow,s2Step222HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step222HeadGRow,s2Step222HeadFRow,s2Step222HeadGvRow,s2Step222HeadFvRow] 0 s2Step222HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step222HeadGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step222HeadG_Outgoing : rowsOwned s2Step222HeadFvAfter [s2Step222HeadGOut,s2Step222HeadFOut,s2Step222HeadGvOut,s2Step222HeadFvOut] :=
  hmrRows_owned_drop s2Step222HeadFvAfter [s2Step222HeadGOut,s2Step222HeadFOut,s2Step222HeadGvOut,s2Step222HeadFvOut] 0 s2Step222HeadBank_outgoingOwned

private theorem s2Step222HeadG_distinct : (s2Step222HeadGRow.sign::s2Step222HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step222HeadG_owned : (s2Step222HeadGRow.sign::s2Step222HeadGRow.payload).toFinset⊆s2Step222HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step222HeadGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step222HeadG_reserved : s2Step222HeadGBefore.reserve s2Step222HeadGFresh.toFinset=some s2Step222HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step222HeadGFresh,arenaWires]
  · norm_num [s2Step222HeadGBefore,s2Step222HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step222HeadGAfter,s2Step222HeadGBefore,s2Step222HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step222HeadG_checked : planRowResizeLog s2Step222HeadGBefore s2Step222HeadGRow 160 s2Step222HeadGFresh=
    some (s2Step222HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 801],769⟩,growRow 769 s2Step222HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step222HeadGBefore s2Step222HeadGAfter s2Step222HeadGRow 160 s2Step222HeadGFresh
    s2Step222HeadG_distinct s2Step222HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step222HeadG_reserved
  have rowEq : WindowRow.mk (s2Step222HeadGRow.payload++s2Step222HeadGFresh) s2Step222HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 801],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step222HeadGvBefore : Arena := s2Step222HeadFAfter

private theorem s2Step222HeadGv_Incoming : rowsOwned s2Step222HeadGvBefore [s2Step222HeadGvRow,s2Step222HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step222HeadGRow,s2Step222HeadFRow,s2Step222HeadGvRow,s2Step222HeadFvRow] 2 s2Step222HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step222HeadGvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<804) ∨ (805≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step222HeadGv_Outgoing : rowsOwned s2Step222HeadFvAfter [s2Step222HeadGvOut,s2Step222HeadFvOut] :=
  hmrRows_owned_drop s2Step222HeadFvAfter [s2Step222HeadGOut,s2Step222HeadFOut,s2Step222HeadGvOut,s2Step222HeadFvOut] 2 s2Step222HeadBank_outgoingOwned

private theorem s2Step222HeadGv_distinct : (s2Step222HeadGvRow.sign::s2Step222HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step222HeadGv_owned : (s2Step222HeadGvRow.sign::s2Step222HeadGvRow.payload).toFinset⊆s2Step222HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step222HeadGvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<804) ∨ (805≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step222HeadGv_reserved : s2Step222HeadGvBefore.reserve s2Step222HeadGvFresh.toFinset=some s2Step222HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step222HeadGvFresh,arenaWires]
  · norm_num [s2Step222HeadGvBefore,s2Step222HeadFAfter,s2Step222HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step222HeadGvAfter,s2Step222HeadGvBefore,s2Step222HeadFAfter,s2Step222HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step222HeadGv_checked : planRowResizeLog s2Step222HeadGvBefore s2Step222HeadGvRow 127 s2Step222HeadGvFresh=
    some (s2Step222HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 790],771⟩,growRow 771 s2Step222HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step222HeadGvBefore s2Step222HeadGvAfter s2Step222HeadGvRow 127 s2Step222HeadGvFresh
    s2Step222HeadGv_distinct s2Step222HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step222HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step222HeadGvRow.payload++s2Step222HeadGvFresh) s2Step222HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 790],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step222HeadBank_rows : planWindowRowsLog s2Step222HeadGBefore [(s2Step222HeadGRow,160),(s2Step222HeadFRow,160),(s2Step222HeadGvRow,127),(s2Step222HeadFvRow,127)] [s2Step222HeadGFresh,s2Step222HeadFFresh,s2Step222HeadGvFresh,s2Step222HeadFvFresh]=
    some (s2Step222HeadFvAfter,[s2Step222HeadGOut,s2Step222HeadFOut,s2Step222HeadGvOut,s2Step222HeadFvOut],(growRow 769 s2Step222HeadGFresh ++ (growRow 768 s2Step222HeadFFresh ++ (growRow 771 s2Step222HeadGvFresh ++ (growRow 770 s2Step222HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step222HeadFvAfter [] []=some (s2Step222HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step222HeadFvBefore s2Step222HeadFvAfter s2Step222HeadFvAfter
    s2Step222HeadFvRow s2Step222HeadFvOut 127 s2Step222HeadFvFresh [] [] []
    (growRow 770 s2Step222HeadFvFresh) ([]) s2Step222HeadFv_Incoming s2Step222HeadFv_checked h4 s2Step222HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step222HeadGvBefore s2Step222HeadGvAfter s2Step222HeadFvAfter
    s2Step222HeadGvRow s2Step222HeadGvOut 127 s2Step222HeadGvFresh [(s2Step222HeadFvRow,127)] [s2Step222HeadFvFresh] [s2Step222HeadFvOut]
    (growRow 771 s2Step222HeadGvFresh) ((growRow 770 s2Step222HeadFvFresh ++ [])) s2Step222HeadGv_Incoming s2Step222HeadGv_checked h3 s2Step222HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step222HeadFBefore s2Step222HeadFAfter s2Step222HeadFvAfter
    s2Step222HeadFRow s2Step222HeadFOut 160 s2Step222HeadFFresh [(s2Step222HeadGvRow,127),(s2Step222HeadFvRow,127)] [s2Step222HeadGvFresh,s2Step222HeadFvFresh] [s2Step222HeadGvOut,s2Step222HeadFvOut]
    (growRow 768 s2Step222HeadFFresh) ((growRow 771 s2Step222HeadGvFresh ++ (growRow 770 s2Step222HeadFvFresh ++ []))) s2Step222HeadF_Incoming s2Step222HeadF_checked h2 s2Step222HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step222HeadGBefore s2Step222HeadGAfter s2Step222HeadFvAfter
    s2Step222HeadGRow s2Step222HeadGOut 160 s2Step222HeadGFresh [(s2Step222HeadFRow,160),(s2Step222HeadGvRow,127),(s2Step222HeadFvRow,127)] [s2Step222HeadFFresh,s2Step222HeadGvFresh,s2Step222HeadFvFresh] [s2Step222HeadFOut,s2Step222HeadGvOut,s2Step222HeadFvOut]
    (growRow 769 s2Step222HeadGFresh) ((growRow 768 s2Step222HeadFFresh ++ (growRow 771 s2Step222HeadGvFresh ++ (growRow 770 s2Step222HeadFvFresh ++ [])))) s2Step222HeadG_Incoming s2Step222HeadG_checked h1 s2Step222HeadG_Outgoing
  exact h0

private theorem s2Step222HeadBank_checked : compileHmrBankResizeLog .headroom s2Step222HeadGBefore ⟨s2Step222HeadFRow,s2Step222HeadGRow,s2Step222HeadFvRow,s2Step222HeadGvRow⟩ ⟨160,160,127,127⟩ [s2Step222HeadGFresh,s2Step222HeadFFresh,s2Step222HeadGvFresh,s2Step222HeadFvFresh]=
    some (s2Step222HeadFvAfter,⟨s2Step222HeadFOut,s2Step222HeadGOut,s2Step222HeadFvOut,s2Step222HeadGvOut⟩,(growRow 769 s2Step222HeadGFresh ++ (growRow 768 s2Step222HeadFFresh ++ (growRow 771 s2Step222HeadGvFresh ++ (growRow 770 s2Step222HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step222HeadBank_rows]
  rfl

private theorem s2Step222Front_checked : compileHmrSourceFrontLog s2Step222EntryFBefore s2Step222FrontBank 159 126 ⟨159,158,126,126⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step222FrontLog=some s2Step222FrontPlan := by
  have pairEq : s2Step222FrontPair=⟨s2Step222HeadFRow,s2Step222HeadGRow,s2Step222HeadFvRow,s2Step222HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step222FrontHead=⟨s2Step222ExitFRow,s2Step222ExitGRow,s2Step222ExitFvRow,s2Step222ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step222Add0A=s2Step222FrontHead.f.wires := by decide +kernel
  have gEq : s2Step222Add0B=s2Step222FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step222Add1A=s2Step222FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step222Add1B=s2Step222FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step222EntryFBefore s2Step222FrontBank 159 126 ⟨159,158,126,126⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step222FrontLog s2Step222FrontPlan
  · exact s2Step222Front_entry
  · exact s2Step222EntryBank_checked
  · exact s2Step222Front_sigma
  · rfl
  · exact s2Step222Front_branch
  · rfl
  · simpa only [s2Step222FrontPlan,pairEq] using s2Step222HeadBank_checked
  · simpa only [s2Step222FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step222F4_checked
  · exact s2Step222Counter_checked
  · rfl
  · simpa only [s2Step222FrontPlan,headEq] using s2Step222ExitBank_checked

private theorem s2Step222Complete_explicit_checked : compileHmrEarlyStepLog s2Step222EntryFBefore s2Step222FrontBank 159 126 ⟨159,158,126,126⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step222CompleteLog=some s2Step222CompletePlan := by
  let Q := s2Step222EarlyControlPlan
  have hq := s2Step222EarlyControl_plan_checked
  have fv1 : s2Step222CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step222CompleteOut.fv.payload[2]?.getD s2Step222CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step222CompleteOut.fv.payload[3]?.getD s2Step222CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step222CompleteOut.fv.payload[4]?.getD s2Step222CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step222EntryFBefore s2Step222EarlyControlArena s2Step222FrontBank 159 126 ⟨159,158,126,126⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step222CompleteLog s2Step222FrontPlan Q
    s2Step222Front_checked s2Step222Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step222Complete_owned s2Step222Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step222EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 797 s2Step222CompleteOut.fv.second (s2Step222CompleteOut.fv.payload[2]?.getD s2Step222CompleteOut.fv.sign) (s2Step222CompleteOut.fv.payload[3]?.getD s2Step222CompleteOut.fv.sign) (s2Step222CompleteOut.fv.payload[4]?.getD s2Step222CompleteOut.fv.sign) 811 47 s2Step222EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep222Arena : Arena := s2Step222EntryFBefore
def s2PrivateStep222Bank : WindowBank := s2Step222FrontBank
def s2PrivateStep222Spec : HmrSourceWalkStepLog := ⟨159,126,⟨159,158,126,126⟩,47,.early s2Step222CompleteLog⟩
def s2PrivateStep222Plan : HmrSourceStepPlan := .early s2Step222CompletePlan
theorem s2PrivateStep222_source : s2PrivateStep222Spec=s2ObservedLogs208[14] := rfl
theorem s2PrivateStep222_checked : compileHmrSourceStepLog s2PrivateStep222Arena s2PrivateStep222Bank
    s2PrivateStep222Spec.fgWidth s2PrivateStep222Spec.vWidth s2PrivateStep222Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897]
    6 498 222 s2PrivateStep222Spec.need none s2PrivateStep222Spec.log=some s2PrivateStep222Plan := by
  change compileHmrSourceStepLog s2Step222EntryFBefore s2Step222FrontBank 159 126 ⟨159,158,126,126⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 6 498 222 47 none (.early s2Step222CompleteLog)=some (.early s2Step222CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 222<498)]
  rw [s2Step222Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
