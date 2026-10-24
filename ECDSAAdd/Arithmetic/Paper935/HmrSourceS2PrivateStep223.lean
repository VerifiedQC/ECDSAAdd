import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep221
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

private def s2Step223CompleteMoves : List (Wire × Wire) := [(849,670)]

private def s2Step223EarlyControlLog : HmrEarlyControlLog := ⟨[849, 808, 804, 811, 790],[814],[882],[826, 842, 885, 891, 894, 895],[]⟩

private def s2Step223FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [811], [], []],[[790], [804], [808], [801]],[[], [], [], []]⟩,[797],[780],[814],[882],[826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[814, 882, 826, 842]⟩

private def s2Step223CompleteLog : HmrEarlyStepLog := ⟨s2Step223FrontLog,s2Step223CompleteMoves,s2Step223EarlyControlLog⟩

private def s2Step223ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669],768⟩

private def s2Step223ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801],770⟩

private def s2Step223ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157],769⟩

private def s2Step223ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796],771⟩

private def s2Step223FrontOut : WindowBank := ⟨s2Step223ExitFOut,s2Step223ExitGOut,s2Step223ExitFvOut,s2Step223ExitGvOut⟩

private def s2Step223CompleteOut : WindowBank := s2Step223FrontOut.repacked s2Step223CompleteMoves

private def s2Step223EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step223EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step223EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step223EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step223EarlyControlPositiveArena,[814],s2Step223EarlyControlEqualityArena,[882],⟨⟨797,false⟩,[⟨⟨814,false⟩,882⟩]⟩⟩

private def s2Step223EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step223EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step223EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step223EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step223EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step223EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step223EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,849⟩,⟨⟨774,false⟩,808⟩,⟨⟨775,false⟩,804⟩,⟨⟨776,false⟩,811⟩,⟨⟨777,false⟩,790⟩]⟩

private def s2Step223EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step223EarlyControlZeroArena,s2Step223EarlyControlZeroPlan,s2Step223EarlyControlClassPlan,s2Step223EarlyControlFlagArena,s2Step223EarlyControlFittedArena,s2Step223EarlyControlHistoryArena,s2Step223EarlyControlSigmaArena,s2Step223EarlyControlOutputArena,s2Step223EarlyControlLog⟩

private def s2Step223CounterWork : List Wire := [814, 882, 826, 842]

private theorem s2Step223Counter_bounded : s2Step223CounterWork.toFinset⊆arenaWires := by norm_num [s2Step223CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step223HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step223CounterDuring : Arena := ⟨s2Step223HeadFvAfter.live∪s2Step223CounterWork.toFinset,Finset.union_subset s2Step223HeadFvAfter.bounded s2Step223Counter_bounded⟩

private def s2Step223EntryFFresh : List Wire := []

private def s2Step223EntryFvFresh : List Wire := []

private def s2Step223EntryGFresh : List Wire := [811]

private def s2Step223EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step223EntryGvAfter : Arena := s2Step223EntryGAfter

private def s2Step223EntryGvFresh : List Wire := []

private def s2Step223ExitFExtra : List Wire := [670, 804]

private def s2Step223ExitGExtra : List Wire := [811, 790]

private def s2Step223ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<670) ∨ (671≤q ∧ q<790) ∨ (791≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step223ExitGvExtra : List Wire := [808]

private def s2Step223Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step223Add0Work : List Wire := [826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step223Add0_bounded : s2Step223Add0Work.toFinset⊆arenaWires := by
  have h : s2Step223Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step223Add0During : Arena := ⟨s2Step223Add0Arena.live∪s2Step223Add0Work.toFinset,Finset.union_subset s2Step223Add0Arena.bounded s2Step223Add0_bounded⟩

private def s2Step223Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step223Add1Work : List Wire := [826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step223Add1_bounded : s2Step223Add1Work.toFinset⊆arenaWires := by
  have h : s2Step223Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step223Add1During : Arena := ⟨s2Step223Add1Arena.live∪s2Step223Add1Work.toFinset,Finset.union_subset s2Step223Add1Arena.bounded s2Step223Add1_bounded⟩

private def s2Step223F4FlagArena : Arena := ⟨s2Step223HeadFvAfter.live∪{814},Finset.union_subset s2Step223HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step223F4Plan : HmrHybridF4Plan := ⟨s2Step223F4FlagArena,[814],s2Step223Add0Arena,[882],s2Step223Add0During,s2Step223Add0Work,s2Step223Add1During,s2Step223Add1Work⟩

private def s2Step223HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 804],768⟩

private def s2Step223HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801],770⟩

private def s2Step223HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 811, 790],769⟩

private def s2Step223HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 808],771⟩

private def s2Step223FrontHead : WindowBank := ⟨s2Step223HeadFOut,s2Step223HeadGOut,s2Step223HeadFvOut,s2Step223HeadGvOut⟩

private def s2Step223EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670],768⟩

private def s2Step223EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783],770⟩

private def s2Step223EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 811],769⟩

private def s2Step223EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796],771⟩

private def s2Step223FrontPair : WindowBank := ⟨s2Step223EntryFOut,s2Step223EntryGOut,s2Step223EntryFvOut,s2Step223EntryGvOut⟩

private def s2Step223FrontSigmaArena : Arena := ⟨s2Step223EntryGvAfter.live∪{797},Finset.union_subset s2Step223EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step223HeadFFresh : List Wire := [804]

private def s2Step223HeadFvFresh : List Wire := [801]

private def s2Step223HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step223HeadGFresh : List Wire := [790]

private def s2Step223HeadGvFresh : List Wire := [808]

private def s2Step223FrontPlan : HmrSourceFront := ⟨s2Step223EntryGvAfter,s2Step223FrontPair,(growRow 768 s2Step223EntryFFresh ++ (growRow 769 s2Step223EntryGFresh ++ (growRow 770 s2Step223EntryFvFresh ++ (growRow 771 s2Step223EntryGvFresh ++ [])))),s2Step223FrontSigmaArena,[797],s2Step223HeadGBefore,[780],
  s2Step223HeadFvAfter,s2Step223FrontHead,(growRow 769 s2Step223HeadGFresh ++ (growRow 768 s2Step223HeadFFresh ++ (growRow 771 s2Step223HeadGvFresh ++ (growRow 770 s2Step223HeadFvFresh ++ [])))),s2Step223F4Plan,s2Step223CounterDuring,s2Step223CounterWork,s2Step223ExitGvAfter,s2Step223FrontOut,(shrinkRow 769 s2Step223ExitGExtra ++ (shrinkRow 768 s2Step223ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step223ExitGvExtra ++ []))))⟩

private def s2Step223CompletePlan : HmrEarlyStepPlan := ⟨s2Step223FrontPlan,s2Step223EarlyControlArena,s2Step223EarlyControlPlan,s2Step223CompleteMoves⟩

private theorem s2Step223Complete_apart : List.Disjoint (s2Step223CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [797, 780, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] := by
  have nd : ((s2Step223CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[797, 780, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step223Complete_owned : (s2Step223CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step223EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step223EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private def s2Step223CompleteMoveArena : Arena := ⟨s2Step223ExitGvAfter.live∪{670},Finset.union_subset s2Step223ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step223Complete_repack : s2Step223ExitGvAfter.checkRepack s2Step223CompleteMoves=some s2Step223EarlyControlArena := by
  have owned : 849∈s2Step223ExitGvAfter.live := by norm_num [s2Step223ExitGvAfter,arenaWires]
  have reserve : s2Step223ExitGvAfter.reserve {670}=some s2Step223CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step223ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step223CompleteMoveArena.retireSet {849}=s2Step223EarlyControlArena := by
    unfold Arena.retireSet s2Step223EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step223CompleteMoveArena,s2Step223ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step223CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step223CompleteMoveArena.retireSet {849}).checkRepack []=some s2Step223EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step223EarlyControl_branchOwned : ([780] : List Wire).toFinset⊆s2Step223EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step223EarlyControlSigmaArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step223EarlyControl_branch : compileHmrBranchRetirement s2Step223EarlyControlSigmaArena 780=some s2Step223EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step223EarlyControl_branchOwned
  · ext q
    simp [s2Step223EarlyControlOutputArena,s2Step223EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step223EarlyControl_classEqualityBorrow : s2Step223EarlyControlPositiveArena.checkBorrow (([797, 814] : List Wire).length-1) s2Step223EarlyControlLog.classWork=some s2Step223EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step223EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step223EarlyControlPositiveArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step223EarlyControlEqualityArena,s2Step223EarlyControlPositiveArena,s2Step223EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step223EarlyControl_classEqualityOwned : ([797, 814] : List Wire).toFinset⊆s2Step223EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step223EarlyControlPositiveArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step223EarlyControl_classEquality : compileHmrEqualityLog s2Step223EarlyControlPositiveArena [797, 814] 0 s2Step223EarlyControlLog.classWork=some (s2Step223EarlyControlEqualityArena,s2Step223EarlyControlLog.classWork,s2Step223EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step223EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step223EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step223EarlyControl_classOwned : ([777, 790, 797] : List Wire).toFinset⊆s2Step223EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step223EarlyControlZeroArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step223EarlyControl_positiveBorrow : s2Step223EarlyControlZeroArena.checkBorrow (1) s2Step223EarlyControlLog.positiveWork=some s2Step223EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step223EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step223EarlyControlZeroArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step223EarlyControlPositiveArena,s2Step223EarlyControlZeroArena,s2Step223EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step223EarlyControl_class : compileHmrSourceClassLog s2Step223EarlyControlZeroArena false 777 s2Step223EarlyControlZeroPlan.top 0 797 s2Step223EarlyControlLog.positiveWork s2Step223EarlyControlLog.classWork=some s2Step223EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step223EarlyControlClassPlan s2Step223EarlyControlZeroArena false 777 s2Step223EarlyControlZeroPlan.top 0 797
  constructor
  · decide +kernel
  · exact s2Step223EarlyControl_classOwned
  · exact s2Step223EarlyControl_positiveBorrow
  · exact s2Step223EarlyControl_classEquality

private theorem s2Step223EarlyControl_entryRecordOwned : ([780, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step223EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step223EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step223EarlyControl_entrySigmaOwned : ([797, 254] : List Wire).toFinset⊆s2Step223EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step223EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step223EarlyControl_fitBorrow : s2Step223EarlyControlFlagArena.checkBorrow ((47-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).length)) s2Step223EarlyControlLog.recordFresh=some s2Step223EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step223EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step223EarlyControlFlagArena (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step223EarlyControlFittedArena,s2Step223EarlyControlFlagArena,s2Step223EarlyControlLog,arenaWires]

private theorem s2Step223EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step223EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step223EarlyControlFlagArena (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step223EarlyControl_fit : compileHmrRecordGrowLog s2Step223EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step223EarlyControlLog.recordFresh=some s2Step223EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step223EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step223EarlyControl_fitBorrow

private theorem s2Step223EarlyControl_flagsBorrow : s2Step223EarlyControlEqualityArena.checkBorrow (6) s2Step223EarlyControlLog.flagWork=some s2Step223EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step223EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step223EarlyControlEqualityArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step223EarlyControlFlagArena,s2Step223EarlyControlEqualityArena,s2Step223EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step223EarlyControl_flagsOwned : ([882, 253, 252, 251] : List Wire).toFinset⊆s2Step223EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step223EarlyControlEqualityArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step223EarlyControl_flags : compileHmrFlagsLog s2Step223EarlyControlClassPlan.equalityArena s2Step223EarlyControlClassPlan.equality.top 253 252 251 s2Step223EarlyControlLog.flagWork=some s2Step223EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step223EarlyControl_flagsOwned⟩
  · exact s2Step223EarlyControl_flagsBorrow

private theorem s2Step223EarlyControl_historyBorrow : s2Step223EarlyControlArena.checkBorrow ((47-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).length)) s2Step223EarlyControlLog.recordFresh=some s2Step223EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step223EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step223EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step223EarlyControlHistoryArena,s2Step223EarlyControlArena,s2Step223EarlyControlLog,arenaWires]

private theorem s2Step223EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step223EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step223EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step223EarlyControl_history : compileHmrRecordGrowLog s2Step223EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step223EarlyControlLog.recordFresh=some s2Step223EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step223EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step223EarlyControl_historyBorrow

private theorem s2Step223EarlyControl_sigmaOwned : ([254, 797] : List Wire).toFinset⊆s2Step223EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step223EarlyControlHistoryArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step223EarlyControl_sigmaReleaseOwned : ([797] : List Wire).toFinset⊆s2Step223EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step223EarlyControlHistoryArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step223EarlyControl_sigmaRelease : s2Step223EarlyControlHistoryArena.release {797} (fun _ => false)=some s2Step223EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step223EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step223EarlyControlSigmaArena,s2Step223EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step223EarlyControl_sigma : compileHmrSigmaDropLog s2Step223EarlyControlHistoryArena false 0 0 254 797 []=some s2Step223EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step223EarlyControl_sigmaOwned⟩
  · exact s2Step223EarlyControl_sigmaRelease

private theorem s2Step223EarlyControl_zeroBorrow : s2Step223EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step223EarlyControlLog.zeroWork=some s2Step223EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step223EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step223EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step223EarlyControlZeroArena,s2Step223EarlyControlArena,s2Step223EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step223EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step223EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step223EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step223EarlyControl_zero : compileHmrEqualityLog s2Step223EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step223EarlyControlLog.zeroWork=some (s2Step223EarlyControlZeroArena,s2Step223EarlyControlLog.zeroWork,s2Step223EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step223EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step223EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step223EarlyControl_logged : s2Step223EarlyControlPlan.Logged s2Step223EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 797 254 253 252 251 780 47 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step223EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step223EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step223EarlyControl_zero
  · exact s2Step223EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step223EarlyControl_flags
  · exact s2Step223EarlyControl_fit
  · exact s2Step223EarlyControl_history
  · exact s2Step223EarlyControl_sigma
  · exact s2Step223EarlyControl_branch

private theorem s2Step223EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step223EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 797 254 253 252 251 780 47 s2Step223EarlyControlLog=some s2Step223EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step223EarlyControlPlan s2Step223EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 797 254 253 252 251 780 47 s2Step223EarlyControl_logged

private def s2Step223EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step223EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670],768⟩

private def s2Step223EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783],770⟩

private def s2Step223EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157],769⟩

private def s2Step223EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796],771⟩

private def s2Step223FrontBank : WindowBank := ⟨s2Step223EntryFRow,s2Step223EntryGRow,s2Step223EntryFvRow,s2Step223EntryGvRow⟩

private def s2Step223Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 804, 768]

private def s2Step223Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 811, 790, 769]

private def s2Step223Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 770]

private def s2Step223Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 808, 771]

private theorem s2Step223Counter_apart : Disjoint s2Step223HeadFvAfter.live s2Step223CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step223HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step223Counter_borrowed : s2Step223HeadFvAfter.checkBorrow 4 s2Step223CounterWork=some s2Step223CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step223HeadFvAfter s2Step223CounterDuring s2Step223CounterWork.toFinset s2Step223Counter_bounded s2Step223Counter_apart rfl

private theorem s2Step223Counter_owned : (797::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step223HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step223HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step223Counter_checked : compileHmrCounterStepLog s2Step223HeadFvAfter true 797 [772, 773, 774, 775, 776, 777] s2Step223CounterWork=some s2Step223CounterDuring := by
  have owned : ∀q∈797::[772, 773, 774, 775, 776, 777],q∈s2Step223HeadFvAfter.live := fun q hq => s2Step223Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step223Counter_borrowed

private def s2Step223EntryFAfter : Arena := s2Step223EntryFBefore

private theorem s2Step223EntryBank_incomingDistinct : ([s2Step223EntryFRow,s2Step223EntryGRow,s2Step223EntryFvRow,s2Step223EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step223EntryF_Incoming : rowsOwned s2Step223EntryFBefore [s2Step223EntryFRow,s2Step223EntryGRow,s2Step223EntryFvRow,s2Step223EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step223EntryFRow,s2Step223EntryGRow,s2Step223EntryFvRow,s2Step223EntryGvRow] 0 s2Step223EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step223EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step223EntryBank_outgoingOwned : rowsOwned s2Step223EntryGvAfter [s2Step223EntryFOut,s2Step223EntryGOut,s2Step223EntryFvOut,s2Step223EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step223EntryGvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step223EntryF_Outgoing : rowsOwned s2Step223EntryGvAfter [s2Step223EntryFOut,s2Step223EntryGOut,s2Step223EntryFvOut,s2Step223EntryGvOut] :=
  hmrRows_owned_drop s2Step223EntryGvAfter [s2Step223EntryFOut,s2Step223EntryGOut,s2Step223EntryFvOut,s2Step223EntryGvOut] 0 s2Step223EntryBank_outgoingOwned

private theorem s2Step223EntryF_distinct : (s2Step223EntryFRow.sign::s2Step223EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step223EntryF_owned : (s2Step223EntryFRow.sign::s2Step223EntryFRow.payload).toFinset⊆s2Step223EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step223EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step223EntryF_reserved : s2Step223EntryFBefore.reserve s2Step223EntryFFresh.toFinset=some s2Step223EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step223EntryFFresh,arenaWires]
  · norm_num [s2Step223EntryFBefore,s2Step223EntryFFresh,arenaWires]
  · simp only [s2Step223EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step223EntryF_checked : planRowResizeLog s2Step223EntryFBefore s2Step223EntryFRow 159 s2Step223EntryFFresh=
    some (s2Step223EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670],768⟩,growRow 768 s2Step223EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step223EntryFBefore s2Step223EntryFAfter s2Step223EntryFRow 159 s2Step223EntryFFresh
    s2Step223EntryF_distinct s2Step223EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step223EntryF_reserved
  have rowEq : WindowRow.mk (s2Step223EntryFRow.payload++s2Step223EntryFFresh) s2Step223EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step223EntryFvAfter : Arena := s2Step223EntryGAfter

private def s2Step223EntryFvBefore : Arena := s2Step223EntryGAfter

private theorem s2Step223EntryFv_Incoming : rowsOwned s2Step223EntryFvBefore [s2Step223EntryFvRow,s2Step223EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step223EntryFRow,s2Step223EntryGRow,s2Step223EntryFvRow,s2Step223EntryGvRow] 2 s2Step223EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step223EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step223EntryFv_Outgoing : rowsOwned s2Step223EntryGvAfter [s2Step223EntryFvOut,s2Step223EntryGvOut] :=
  hmrRows_owned_drop s2Step223EntryGvAfter [s2Step223EntryFOut,s2Step223EntryGOut,s2Step223EntryFvOut,s2Step223EntryGvOut] 2 s2Step223EntryBank_outgoingOwned

private theorem s2Step223EntryFv_distinct : (s2Step223EntryFvRow.sign::s2Step223EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step223EntryFv_owned : (s2Step223EntryFvRow.sign::s2Step223EntryFvRow.payload).toFinset⊆s2Step223EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step223EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step223EntryFv_reserved : s2Step223EntryFvBefore.reserve s2Step223EntryFvFresh.toFinset=some s2Step223EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step223EntryFvFresh,arenaWires]
  · norm_num [s2Step223EntryFvBefore,s2Step223EntryGAfter,s2Step223EntryFvFresh,arenaWires]
  · simp only [s2Step223EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step223EntryFv_checked : planRowResizeLog s2Step223EntryFvBefore s2Step223EntryFvRow 126 s2Step223EntryFvFresh=
    some (s2Step223EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783],770⟩,growRow 770 s2Step223EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step223EntryFvBefore s2Step223EntryFvAfter s2Step223EntryFvRow 126 s2Step223EntryFvFresh
    s2Step223EntryFv_distinct s2Step223EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step223EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step223EntryFvRow.payload++s2Step223EntryFvFresh) s2Step223EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step223EntryGBefore : Arena := s2Step223EntryFBefore

private theorem s2Step223EntryG_Incoming : rowsOwned s2Step223EntryGBefore [s2Step223EntryGRow,s2Step223EntryFvRow,s2Step223EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step223EntryFRow,s2Step223EntryGRow,s2Step223EntryFvRow,s2Step223EntryGvRow] 1 s2Step223EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step223EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step223EntryG_Outgoing : rowsOwned s2Step223EntryGvAfter [s2Step223EntryGOut,s2Step223EntryFvOut,s2Step223EntryGvOut] :=
  hmrRows_owned_drop s2Step223EntryGvAfter [s2Step223EntryFOut,s2Step223EntryGOut,s2Step223EntryFvOut,s2Step223EntryGvOut] 1 s2Step223EntryBank_outgoingOwned

private theorem s2Step223EntryG_distinct : (s2Step223EntryGRow.sign::s2Step223EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step223EntryG_owned : (s2Step223EntryGRow.sign::s2Step223EntryGRow.payload).toFinset⊆s2Step223EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step223EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step223EntryG_reserved : s2Step223EntryGBefore.reserve s2Step223EntryGFresh.toFinset=some s2Step223EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step223EntryGFresh,arenaWires]
  · norm_num [s2Step223EntryGBefore,s2Step223EntryFBefore,s2Step223EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step223EntryGAfter,s2Step223EntryGBefore,s2Step223EntryFBefore,s2Step223EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step223EntryG_checked : planRowResizeLog s2Step223EntryGBefore s2Step223EntryGRow 159 s2Step223EntryGFresh=
    some (s2Step223EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 811],769⟩,growRow 769 s2Step223EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step223EntryGBefore s2Step223EntryGAfter s2Step223EntryGRow 159 s2Step223EntryGFresh
    s2Step223EntryG_distinct s2Step223EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step223EntryG_reserved
  have rowEq : WindowRow.mk (s2Step223EntryGRow.payload++s2Step223EntryGFresh) s2Step223EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 811],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step223EntryGvBefore : Arena := s2Step223EntryGAfter

private theorem s2Step223EntryGv_Incoming : rowsOwned s2Step223EntryGvBefore [s2Step223EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step223EntryFRow,s2Step223EntryGRow,s2Step223EntryFvRow,s2Step223EntryGvRow] 3 s2Step223EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step223EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step223EntryGv_Outgoing : rowsOwned s2Step223EntryGvAfter [s2Step223EntryGvOut] :=
  hmrRows_owned_drop s2Step223EntryGvAfter [s2Step223EntryFOut,s2Step223EntryGOut,s2Step223EntryFvOut,s2Step223EntryGvOut] 3 s2Step223EntryBank_outgoingOwned

private theorem s2Step223EntryGv_distinct : (s2Step223EntryGvRow.sign::s2Step223EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step223EntryGv_owned : (s2Step223EntryGvRow.sign::s2Step223EntryGvRow.payload).toFinset⊆s2Step223EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step223EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step223EntryGv_reserved : s2Step223EntryGvBefore.reserve s2Step223EntryGvFresh.toFinset=some s2Step223EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step223EntryGvFresh,arenaWires]
  · norm_num [s2Step223EntryGvBefore,s2Step223EntryGAfter,s2Step223EntryGvFresh,arenaWires]
  · simp only [s2Step223EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step223EntryGv_checked : planRowResizeLog s2Step223EntryGvBefore s2Step223EntryGvRow 126 s2Step223EntryGvFresh=
    some (s2Step223EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796],771⟩,growRow 771 s2Step223EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step223EntryGvBefore s2Step223EntryGvAfter s2Step223EntryGvRow 126 s2Step223EntryGvFresh
    s2Step223EntryGv_distinct s2Step223EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step223EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step223EntryGvRow.payload++s2Step223EntryGvFresh) s2Step223EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step223EntryBank_rows : planWindowRowsLog s2Step223EntryFBefore [(s2Step223EntryFRow,159),(s2Step223EntryGRow,159),(s2Step223EntryFvRow,126),(s2Step223EntryGvRow,126)] [s2Step223EntryFFresh,s2Step223EntryGFresh,s2Step223EntryFvFresh,s2Step223EntryGvFresh]=
    some (s2Step223EntryGvAfter,[s2Step223EntryFOut,s2Step223EntryGOut,s2Step223EntryFvOut,s2Step223EntryGvOut],(growRow 768 s2Step223EntryFFresh ++ (growRow 769 s2Step223EntryGFresh ++ (growRow 770 s2Step223EntryFvFresh ++ (growRow 771 s2Step223EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step223EntryGvAfter [] []=some (s2Step223EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step223EntryGvBefore s2Step223EntryGvAfter s2Step223EntryGvAfter
    s2Step223EntryGvRow s2Step223EntryGvOut 126 s2Step223EntryGvFresh [] [] []
    (growRow 771 s2Step223EntryGvFresh) ([]) s2Step223EntryGv_Incoming s2Step223EntryGv_checked h4 s2Step223EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step223EntryFvBefore s2Step223EntryFvAfter s2Step223EntryGvAfter
    s2Step223EntryFvRow s2Step223EntryFvOut 126 s2Step223EntryFvFresh [(s2Step223EntryGvRow,126)] [s2Step223EntryGvFresh] [s2Step223EntryGvOut]
    (growRow 770 s2Step223EntryFvFresh) ((growRow 771 s2Step223EntryGvFresh ++ [])) s2Step223EntryFv_Incoming s2Step223EntryFv_checked h3 s2Step223EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step223EntryGBefore s2Step223EntryGAfter s2Step223EntryGvAfter
    s2Step223EntryGRow s2Step223EntryGOut 159 s2Step223EntryGFresh [(s2Step223EntryFvRow,126),(s2Step223EntryGvRow,126)] [s2Step223EntryFvFresh,s2Step223EntryGvFresh] [s2Step223EntryFvOut,s2Step223EntryGvOut]
    (growRow 769 s2Step223EntryGFresh) ((growRow 770 s2Step223EntryFvFresh ++ (growRow 771 s2Step223EntryGvFresh ++ []))) s2Step223EntryG_Incoming s2Step223EntryG_checked h2 s2Step223EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step223EntryFBefore s2Step223EntryFAfter s2Step223EntryGvAfter
    s2Step223EntryFRow s2Step223EntryFOut 159 s2Step223EntryFFresh [(s2Step223EntryGRow,159),(s2Step223EntryFvRow,126),(s2Step223EntryGvRow,126)] [s2Step223EntryGFresh,s2Step223EntryFvFresh,s2Step223EntryGvFresh] [s2Step223EntryGOut,s2Step223EntryFvOut,s2Step223EntryGvOut]
    (growRow 768 s2Step223EntryFFresh) ((growRow 769 s2Step223EntryGFresh ++ (growRow 770 s2Step223EntryFvFresh ++ (growRow 771 s2Step223EntryGvFresh ++ [])))) s2Step223EntryF_Incoming s2Step223EntryF_checked h1 s2Step223EntryF_Outgoing
  exact h0

private theorem s2Step223EntryBank_checked : compileHmrBankResizeLog .entry s2Step223EntryFBefore ⟨s2Step223EntryFRow,s2Step223EntryGRow,s2Step223EntryFvRow,s2Step223EntryGvRow⟩ ⟨159,159,126,126⟩ [s2Step223EntryFFresh,s2Step223EntryGFresh,s2Step223EntryFvFresh,s2Step223EntryGvFresh]=
    some (s2Step223EntryGvAfter,⟨s2Step223EntryFOut,s2Step223EntryGOut,s2Step223EntryFvOut,s2Step223EntryGvOut⟩,(growRow 768 s2Step223EntryFFresh ++ (growRow 769 s2Step223EntryGFresh ++ (growRow 770 s2Step223EntryFvFresh ++ (growRow 771 s2Step223EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step223EntryBank_rows]
  rfl

private def s2Step223ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<670) ∨ (671≤q ∧ q<790) ∨ (791≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step223ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step223ExitFBefore : Arena := s2Step223ExitGAfter

private def s2Step223ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 804],768⟩

private def s2Step223ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801],770⟩

private def s2Step223ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 811, 790],769⟩

private def s2Step223ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 808],771⟩

private theorem s2Step223ExitBank_incomingDistinct : ([s2Step223ExitGRow,s2Step223ExitFRow,s2Step223ExitFvRow,s2Step223ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step223ExitF_Incoming : rowsOwned s2Step223ExitFBefore [s2Step223ExitFRow,s2Step223ExitFvRow,s2Step223ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step223ExitGRow,s2Step223ExitFRow,s2Step223ExitFvRow,s2Step223ExitGvRow] 1 s2Step223ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step223ExitFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step223ExitBank_outgoingOwned : rowsOwned s2Step223ExitGvAfter [s2Step223ExitGOut,s2Step223ExitFOut,s2Step223ExitFvOut,s2Step223ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step223ExitGvAfter (fun q => (0≤q ∧ q<670) ∨ (671≤q ∧ q<790) ∨ (791≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step223ExitF_Outgoing : rowsOwned s2Step223ExitGvAfter [s2Step223ExitFOut,s2Step223ExitFvOut,s2Step223ExitGvOut] :=
  hmrRows_owned_drop s2Step223ExitGvAfter [s2Step223ExitGOut,s2Step223ExitFOut,s2Step223ExitFvOut,s2Step223ExitGvOut] 1 s2Step223ExitBank_outgoingOwned

private theorem s2Step223ExitF_distinct : (s2Step223ExitFRow.sign::s2Step223ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step223ExitF_owned : (s2Step223ExitFRow.sign::s2Step223ExitFRow.payload).toFinset⊆s2Step223ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step223ExitFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step223ExitF_retired : s2Step223ExitFBefore.retireSet s2Step223ExitFExtra.toFinset=s2Step223ExitFAfter := by
  unfold Arena.retireSet s2Step223ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step223ExitFBefore,s2Step223ExitGAfter,s2Step223ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step223ExitF_checked : planRowResizeLog s2Step223ExitFBefore s2Step223ExitFRow 158 []=
    some (s2Step223ExitFAfter,s2Step223ExitFOut,shrinkRow 768 s2Step223ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step223ExitFBefore s2Step223ExitFRow 158 s2Step223ExitF_distinct s2Step223ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step223ExitFRow.payload.take 158) s2Step223ExitFRow.sign=s2Step223ExitFOut := by decide +kernel
  have hi : s2Step223ExitFRow.payload.drop 158=s2Step223ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step223ExitF_retired] at result
  exact result

private def s2Step223ExitFvAfter : Arena := s2Step223ExitFAfter

private def s2Step223ExitFvBefore : Arena := s2Step223ExitFAfter

private theorem s2Step223ExitFv_Incoming : rowsOwned s2Step223ExitFvBefore [s2Step223ExitFvRow,s2Step223ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step223ExitGRow,s2Step223ExitFRow,s2Step223ExitFvRow,s2Step223ExitGvRow] 2 s2Step223ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step223ExitFvBefore (fun q => (0≤q ∧ q<670) ∨ (671≤q ∧ q<790) ∨ (791≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step223ExitFv_Outgoing : rowsOwned s2Step223ExitGvAfter [s2Step223ExitFvOut,s2Step223ExitGvOut] :=
  hmrRows_owned_drop s2Step223ExitGvAfter [s2Step223ExitGOut,s2Step223ExitFOut,s2Step223ExitFvOut,s2Step223ExitGvOut] 2 s2Step223ExitBank_outgoingOwned

private theorem s2Step223ExitFv_distinct : (s2Step223ExitFvRow.sign::s2Step223ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step223ExitFv_owned : (s2Step223ExitFvRow.sign::s2Step223ExitFvRow.payload).toFinset⊆s2Step223ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step223ExitFvBefore (fun q => (0≤q ∧ q<670) ∨ (671≤q ∧ q<790) ∨ (791≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step223ExitFv_reserved : s2Step223ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step223ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step223ExitFv_checked : planRowResizeLog s2Step223ExitFvBefore s2Step223ExitFvRow 127 []=
    some (s2Step223ExitFvAfter,s2Step223ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step223ExitFvBefore s2Step223ExitFvAfter s2Step223ExitFvRow 127 []
    s2Step223ExitFv_distinct s2Step223ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step223ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step223ExitFvRow.payload++[]) s2Step223ExitFvRow.sign=s2Step223ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step223ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private theorem s2Step223ExitG_Incoming : rowsOwned s2Step223ExitGBefore [s2Step223ExitGRow,s2Step223ExitFRow,s2Step223ExitFvRow,s2Step223ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step223ExitGRow,s2Step223ExitFRow,s2Step223ExitFvRow,s2Step223ExitGvRow] 0 s2Step223ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step223ExitGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step223ExitG_Outgoing : rowsOwned s2Step223ExitGvAfter [s2Step223ExitGOut,s2Step223ExitFOut,s2Step223ExitFvOut,s2Step223ExitGvOut] :=
  hmrRows_owned_drop s2Step223ExitGvAfter [s2Step223ExitGOut,s2Step223ExitFOut,s2Step223ExitFvOut,s2Step223ExitGvOut] 0 s2Step223ExitBank_outgoingOwned

private theorem s2Step223ExitG_distinct : (s2Step223ExitGRow.sign::s2Step223ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step223ExitG_owned : (s2Step223ExitGRow.sign::s2Step223ExitGRow.payload).toFinset⊆s2Step223ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step223ExitGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step223ExitG_retired : s2Step223ExitGBefore.retireSet s2Step223ExitGExtra.toFinset=s2Step223ExitGAfter := by
  unfold Arena.retireSet s2Step223ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step223ExitGBefore,s2Step223ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step223ExitG_checked : planRowResizeLog s2Step223ExitGBefore s2Step223ExitGRow 158 []=
    some (s2Step223ExitGAfter,s2Step223ExitGOut,shrinkRow 769 s2Step223ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step223ExitGBefore s2Step223ExitGRow 158 s2Step223ExitG_distinct s2Step223ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step223ExitGRow.payload.take 158) s2Step223ExitGRow.sign=s2Step223ExitGOut := by decide +kernel
  have hi : s2Step223ExitGRow.payload.drop 158=s2Step223ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step223ExitG_retired] at result
  exact result

private def s2Step223ExitGvBefore : Arena := s2Step223ExitFAfter

private theorem s2Step223ExitGv_Incoming : rowsOwned s2Step223ExitGvBefore [s2Step223ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step223ExitGRow,s2Step223ExitFRow,s2Step223ExitFvRow,s2Step223ExitGvRow] 3 s2Step223ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step223ExitGvBefore (fun q => (0≤q ∧ q<670) ∨ (671≤q ∧ q<790) ∨ (791≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step223ExitGv_Outgoing : rowsOwned s2Step223ExitGvAfter [s2Step223ExitGvOut] :=
  hmrRows_owned_drop s2Step223ExitGvAfter [s2Step223ExitGOut,s2Step223ExitFOut,s2Step223ExitFvOut,s2Step223ExitGvOut] 3 s2Step223ExitBank_outgoingOwned

private theorem s2Step223ExitGv_distinct : (s2Step223ExitGvRow.sign::s2Step223ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step223ExitGv_owned : (s2Step223ExitGvRow.sign::s2Step223ExitGvRow.payload).toFinset⊆s2Step223ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step223ExitGvBefore (fun q => (0≤q ∧ q<670) ∨ (671≤q ∧ q<790) ∨ (791≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step223ExitGv_retired : s2Step223ExitGvBefore.retireSet s2Step223ExitGvExtra.toFinset=s2Step223ExitGvAfter := by
  unfold Arena.retireSet s2Step223ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step223ExitGvBefore,s2Step223ExitFAfter,s2Step223ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step223ExitGv_checked : planRowResizeLog s2Step223ExitGvBefore s2Step223ExitGvRow 126 []=
    some (s2Step223ExitGvAfter,s2Step223ExitGvOut,shrinkRow 771 s2Step223ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step223ExitGvBefore s2Step223ExitGvRow 126 s2Step223ExitGv_distinct s2Step223ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step223ExitGvRow.payload.take 126) s2Step223ExitGvRow.sign=s2Step223ExitGvOut := by decide +kernel
  have hi : s2Step223ExitGvRow.payload.drop 126=s2Step223ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step223ExitGv_retired] at result
  exact result

private theorem s2Step223ExitBank_rows : planWindowRowsLog s2Step223ExitGBefore [(s2Step223ExitGRow,158),(s2Step223ExitFRow,158),(s2Step223ExitFvRow,127),(s2Step223ExitGvRow,126)] [[],[],[],[]]=
    some (s2Step223ExitGvAfter,[s2Step223ExitGOut,s2Step223ExitFOut,s2Step223ExitFvOut,s2Step223ExitGvOut],(shrinkRow 769 s2Step223ExitGExtra ++ (shrinkRow 768 s2Step223ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step223ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step223ExitGvAfter [] []=some (s2Step223ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step223ExitGvBefore s2Step223ExitGvAfter s2Step223ExitGvAfter
    s2Step223ExitGvRow s2Step223ExitGvOut 126 [] [] [] []
    (shrinkRow 771 s2Step223ExitGvExtra) ([]) s2Step223ExitGv_Incoming s2Step223ExitGv_checked h4 s2Step223ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step223ExitFvBefore s2Step223ExitFvAfter s2Step223ExitGvAfter
    s2Step223ExitFvRow s2Step223ExitFvOut 127 [] [(s2Step223ExitGvRow,126)] [[]] [s2Step223ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step223ExitGvExtra ++ [])) s2Step223ExitFv_Incoming s2Step223ExitFv_checked h3 s2Step223ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step223ExitFBefore s2Step223ExitFAfter s2Step223ExitGvAfter
    s2Step223ExitFRow s2Step223ExitFOut 158 [] [(s2Step223ExitFvRow,127),(s2Step223ExitGvRow,126)] [[],[]] [s2Step223ExitFvOut,s2Step223ExitGvOut]
    (shrinkRow 768 s2Step223ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step223ExitGvExtra ++ []))) s2Step223ExitF_Incoming s2Step223ExitF_checked h2 s2Step223ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step223ExitGBefore s2Step223ExitGAfter s2Step223ExitGvAfter
    s2Step223ExitGRow s2Step223ExitGOut 158 [] [(s2Step223ExitFRow,158),(s2Step223ExitFvRow,127),(s2Step223ExitGvRow,126)] [[],[],[]] [s2Step223ExitFOut,s2Step223ExitFvOut,s2Step223ExitGvOut]
    (shrinkRow 769 s2Step223ExitGExtra) ((shrinkRow 768 s2Step223ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step223ExitGvExtra ++ [])))) s2Step223ExitG_Incoming s2Step223ExitG_checked h1 s2Step223ExitG_Outgoing
  exact h0

private theorem s2Step223ExitBank_checked : compileHmrBankResizeLog .exit s2Step223ExitGBefore ⟨s2Step223ExitFRow,s2Step223ExitGRow,s2Step223ExitFvRow,s2Step223ExitGvRow⟩ ⟨158,158,127,126⟩ [[],[],[],[]]=
    some (s2Step223ExitGvAfter,⟨s2Step223ExitFOut,s2Step223ExitGOut,s2Step223ExitFvOut,s2Step223ExitGvOut⟩,(shrinkRow 769 s2Step223ExitGExtra ++ (shrinkRow 768 s2Step223ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step223ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step223ExitBank_rows]
  rfl

private theorem s2Step223Add0_apart : Disjoint s2Step223Add0Arena.live s2Step223Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step223Add0Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step223Add0_card : s2Step223Add0Arena.live.card=891 := by
  decide +kernel

private theorem s2Step223Add0_borrowed : s2Step223Add0Arena.checkBorrow (hmrHybridCount s2Step223Add0Arena s2Step223Add0B.length) s2Step223Add0Work=some s2Step223Add0During := by
  have len : s2Step223Add0Work.length=hmrHybridCount s2Step223Add0Arena s2Step223Add0B.length := by
    rw [hmrHybridCount,s2Step223Add0_card]
    decide +kernel
  have nd : s2Step223Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step223Add0Arena s2Step223Add0During s2Step223Add0Work.toFinset s2Step223Add0_bounded s2Step223Add0_apart rfl

private theorem s2Step223Add0_distinct : (814::780::882::(s2Step223Add0A++s2Step223Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step223Add0_owned : (814::780::882::(s2Step223Add0A++s2Step223Add0B)).toFinset⊆s2Step223Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step223Add0Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step223Add0_checked : compileHmrHybridCinLog s2Step223Add0Arena 780 814 882 s2Step223Add0A s2Step223Add0B s2Step223Add0Work=some s2Step223Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step223Add0Arena s2Step223Add0During 780 814 882 s2Step223Add0A s2Step223Add0B s2Step223Add0Work
    (by decide +kernel) (by decide +kernel) s2Step223Add0_distinct
    (fun q hq => s2Step223Add0_owned (List.mem_toFinset.mpr hq)) s2Step223Add0_borrowed

private theorem s2Step223Add1_apart : Disjoint s2Step223Add1Arena.live s2Step223Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step223Add1Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step223Add1_card : s2Step223Add1Arena.live.card=891 := by
  decide +kernel

private theorem s2Step223Add1_borrowed : s2Step223Add1Arena.checkBorrow (hmrHybridCount s2Step223Add1Arena s2Step223Add1B.length) s2Step223Add1Work=some s2Step223Add1During := by
  have len : s2Step223Add1Work.length=hmrHybridCount s2Step223Add1Arena s2Step223Add1B.length := by
    rw [hmrHybridCount,s2Step223Add1_card]
    decide +kernel
  have nd : s2Step223Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step223Add1Arena s2Step223Add1During s2Step223Add1Work.toFinset s2Step223Add1_bounded s2Step223Add1_apart rfl

private theorem s2Step223Add1_distinct : (814::780::882::(s2Step223Add1A++s2Step223Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step223Add1_owned : (814::780::882::(s2Step223Add1A++s2Step223Add1B)).toFinset⊆s2Step223Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step223Add1Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step223Add1_checked : compileHmrHybridCinLog s2Step223Add1Arena 780 814 882 s2Step223Add1A s2Step223Add1B s2Step223Add1Work=some s2Step223Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step223Add1Arena s2Step223Add1During 780 814 882 s2Step223Add1A s2Step223Add1B s2Step223Add1Work
    (by decide +kernel) (by decide +kernel) s2Step223Add1_distinct
    (fun q hq => s2Step223Add1_owned (List.mem_toFinset.mpr hq)) s2Step223Add1_borrowed

private theorem s2Step223F4_apart : Disjoint (s2Step223Add0A++s2Step223Add0B).toFinset (s2Step223Add1A++s2Step223Add1B).toFinset := by
  have nd : ((s2Step223Add0A++s2Step223Add0B)++(s2Step223Add1A++s2Step223Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step223F4_carry : s2Step223F4FlagArena.checkBorrow 1 [882]=some s2Step223Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step223F4FlagArena,s2Step223HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step223F4FlagArena,s2Step223HeadFvAfter,s2Step223Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step223F4_distinct : (797::780::814::882::((s2Step223Add0A++s2Step223Add1A)++(s2Step223Add0B++s2Step223Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step223F4_flag : s2Step223HeadFvAfter.checkBorrow 1 [814]=some s2Step223F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step223HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step223F4_owned : (797::780::((s2Step223Add0A++s2Step223Add1A)++(s2Step223Add0B++s2Step223Add1B))).toFinset⊆s2Step223HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step223HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step223F4_checked : compileHmrHybridF4Log s2Step223HeadFvAfter 797 780 s2Step223Add0A s2Step223Add0B s2Step223Add1A s2Step223Add1B [814] [882] s2Step223Add0Work s2Step223Add1Work=some s2Step223F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step223HeadFvAfter s2Step223F4FlagArena s2Step223Add0Arena s2Step223Add0During s2Step223Add1During 797 780
    s2Step223Add0A s2Step223Add0B s2Step223Add1A s2Step223Add1B [814] [882] s2Step223Add0Work s2Step223Add1Work
    (fun q hq => s2Step223F4_owned (List.mem_toFinset.mpr hq)) s2Step223F4_flag s2Step223F4_carry
    s2Step223F4_distinct s2Step223F4_apart s2Step223Add0_checked s2Step223Add1_checked

private theorem s2Step223Front_branch : s2Step223FrontSigmaArena.checkBorrow 1 [780]=some s2Step223HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step223FrontSigmaArena,s2Step223EntryGvAfter,s2Step223EntryGAfter,arenaWires]
  · ext q
    simp only [s2Step223FrontSigmaArena,s2Step223EntryGvAfter,s2Step223EntryGAfter,s2Step223HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step223Front_entry : HmrFrontEntryValid s2Step223EntryFBefore s2Step223FrontBank 159 126 ⟨158,158,127,126⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step223FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step223EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step223EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step223FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step223Front_sigma : s2Step223EntryGvAfter.checkBorrow 1 [797]=some s2Step223FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step223EntryGvAfter,s2Step223EntryGAfter,arenaWires]
  · rfl

private def s2Step223HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<801) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step223HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step223HeadFBefore : Arena := s2Step223HeadGAfter

private def s2Step223HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670],768⟩

private def s2Step223HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783],770⟩

private def s2Step223HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 811],769⟩

private def s2Step223HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796],771⟩

private theorem s2Step223HeadBank_incomingDistinct : ([s2Step223HeadGRow,s2Step223HeadFRow,s2Step223HeadGvRow,s2Step223HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step223HeadF_Incoming : rowsOwned s2Step223HeadFBefore [s2Step223HeadFRow,s2Step223HeadGvRow,s2Step223HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step223HeadGRow,s2Step223HeadFRow,s2Step223HeadGvRow,s2Step223HeadFvRow] 1 s2Step223HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step223HeadFBefore (fun q => (0≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step223HeadBank_outgoingOwned : rowsOwned s2Step223HeadFvAfter [s2Step223HeadGOut,s2Step223HeadFOut,s2Step223HeadGvOut,s2Step223HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step223HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step223HeadF_Outgoing : rowsOwned s2Step223HeadFvAfter [s2Step223HeadFOut,s2Step223HeadGvOut,s2Step223HeadFvOut] :=
  hmrRows_owned_drop s2Step223HeadFvAfter [s2Step223HeadGOut,s2Step223HeadFOut,s2Step223HeadGvOut,s2Step223HeadFvOut] 1 s2Step223HeadBank_outgoingOwned

private theorem s2Step223HeadF_distinct : (s2Step223HeadFRow.sign::s2Step223HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step223HeadF_owned : (s2Step223HeadFRow.sign::s2Step223HeadFRow.payload).toFinset⊆s2Step223HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step223HeadFBefore (fun q => (0≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step223HeadF_reserved : s2Step223HeadFBefore.reserve s2Step223HeadFFresh.toFinset=some s2Step223HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step223HeadFFresh,arenaWires]
  · norm_num [s2Step223HeadFBefore,s2Step223HeadGAfter,s2Step223HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step223HeadFAfter,s2Step223HeadFBefore,s2Step223HeadGAfter,s2Step223HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step223HeadF_checked : planRowResizeLog s2Step223HeadFBefore s2Step223HeadFRow 160 s2Step223HeadFFresh=
    some (s2Step223HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 804],768⟩,growRow 768 s2Step223HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step223HeadFBefore s2Step223HeadFAfter s2Step223HeadFRow 160 s2Step223HeadFFresh
    s2Step223HeadF_distinct s2Step223HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step223HeadF_reserved
  have rowEq : WindowRow.mk (s2Step223HeadFRow.payload++s2Step223HeadFFresh) s2Step223HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 804],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step223HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step223HeadFvBefore : Arena := s2Step223HeadGvAfter

private theorem s2Step223HeadFv_Incoming : rowsOwned s2Step223HeadFvBefore [s2Step223HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step223HeadGRow,s2Step223HeadFRow,s2Step223HeadGvRow,s2Step223HeadFvRow] 3 s2Step223HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step223HeadFvBefore (fun q => (0≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step223HeadFv_Outgoing : rowsOwned s2Step223HeadFvAfter [s2Step223HeadFvOut] :=
  hmrRows_owned_drop s2Step223HeadFvAfter [s2Step223HeadGOut,s2Step223HeadFOut,s2Step223HeadGvOut,s2Step223HeadFvOut] 3 s2Step223HeadBank_outgoingOwned

private theorem s2Step223HeadFv_distinct : (s2Step223HeadFvRow.sign::s2Step223HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step223HeadFv_owned : (s2Step223HeadFvRow.sign::s2Step223HeadFvRow.payload).toFinset⊆s2Step223HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step223HeadFvBefore (fun q => (0≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step223HeadFv_reserved : s2Step223HeadFvBefore.reserve s2Step223HeadFvFresh.toFinset=some s2Step223HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step223HeadFvFresh,arenaWires]
  · norm_num [s2Step223HeadFvBefore,s2Step223HeadGvAfter,s2Step223HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step223HeadFvAfter,s2Step223HeadFvBefore,s2Step223HeadGvAfter,s2Step223HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step223HeadFv_checked : planRowResizeLog s2Step223HeadFvBefore s2Step223HeadFvRow 127 s2Step223HeadFvFresh=
    some (s2Step223HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801],770⟩,growRow 770 s2Step223HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step223HeadFvBefore s2Step223HeadFvAfter s2Step223HeadFvRow 127 s2Step223HeadFvFresh
    s2Step223HeadFv_distinct s2Step223HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step223HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step223HeadFvRow.payload++s2Step223HeadFvFresh) s2Step223HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step223HeadG_Incoming : rowsOwned s2Step223HeadGBefore [s2Step223HeadGRow,s2Step223HeadFRow,s2Step223HeadGvRow,s2Step223HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step223HeadGRow,s2Step223HeadFRow,s2Step223HeadGvRow,s2Step223HeadFvRow] 0 s2Step223HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step223HeadGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step223HeadG_Outgoing : rowsOwned s2Step223HeadFvAfter [s2Step223HeadGOut,s2Step223HeadFOut,s2Step223HeadGvOut,s2Step223HeadFvOut] :=
  hmrRows_owned_drop s2Step223HeadFvAfter [s2Step223HeadGOut,s2Step223HeadFOut,s2Step223HeadGvOut,s2Step223HeadFvOut] 0 s2Step223HeadBank_outgoingOwned

private theorem s2Step223HeadG_distinct : (s2Step223HeadGRow.sign::s2Step223HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step223HeadG_owned : (s2Step223HeadGRow.sign::s2Step223HeadGRow.payload).toFinset⊆s2Step223HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step223HeadGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step223HeadG_reserved : s2Step223HeadGBefore.reserve s2Step223HeadGFresh.toFinset=some s2Step223HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step223HeadGFresh,arenaWires]
  · norm_num [s2Step223HeadGBefore,s2Step223HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step223HeadGAfter,s2Step223HeadGBefore,s2Step223HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step223HeadG_checked : planRowResizeLog s2Step223HeadGBefore s2Step223HeadGRow 160 s2Step223HeadGFresh=
    some (s2Step223HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 811, 790],769⟩,growRow 769 s2Step223HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step223HeadGBefore s2Step223HeadGAfter s2Step223HeadGRow 160 s2Step223HeadGFresh
    s2Step223HeadG_distinct s2Step223HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step223HeadG_reserved
  have rowEq : WindowRow.mk (s2Step223HeadGRow.payload++s2Step223HeadGFresh) s2Step223HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 811, 790],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step223HeadGvBefore : Arena := s2Step223HeadFAfter

private theorem s2Step223HeadGv_Incoming : rowsOwned s2Step223HeadGvBefore [s2Step223HeadGvRow,s2Step223HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step223HeadGRow,s2Step223HeadFRow,s2Step223HeadGvRow,s2Step223HeadFvRow] 2 s2Step223HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step223HeadGvBefore (fun q => (0≤q ∧ q<801) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step223HeadGv_Outgoing : rowsOwned s2Step223HeadFvAfter [s2Step223HeadGvOut,s2Step223HeadFvOut] :=
  hmrRows_owned_drop s2Step223HeadFvAfter [s2Step223HeadGOut,s2Step223HeadFOut,s2Step223HeadGvOut,s2Step223HeadFvOut] 2 s2Step223HeadBank_outgoingOwned

private theorem s2Step223HeadGv_distinct : (s2Step223HeadGvRow.sign::s2Step223HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step223HeadGv_owned : (s2Step223HeadGvRow.sign::s2Step223HeadGvRow.payload).toFinset⊆s2Step223HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step223HeadGvBefore (fun q => (0≤q ∧ q<801) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step223HeadGv_reserved : s2Step223HeadGvBefore.reserve s2Step223HeadGvFresh.toFinset=some s2Step223HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step223HeadGvFresh,arenaWires]
  · norm_num [s2Step223HeadGvBefore,s2Step223HeadFAfter,s2Step223HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step223HeadGvAfter,s2Step223HeadGvBefore,s2Step223HeadFAfter,s2Step223HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step223HeadGv_checked : planRowResizeLog s2Step223HeadGvBefore s2Step223HeadGvRow 127 s2Step223HeadGvFresh=
    some (s2Step223HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 808],771⟩,growRow 771 s2Step223HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step223HeadGvBefore s2Step223HeadGvAfter s2Step223HeadGvRow 127 s2Step223HeadGvFresh
    s2Step223HeadGv_distinct s2Step223HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step223HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step223HeadGvRow.payload++s2Step223HeadGvFresh) s2Step223HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 808],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step223HeadBank_rows : planWindowRowsLog s2Step223HeadGBefore [(s2Step223HeadGRow,160),(s2Step223HeadFRow,160),(s2Step223HeadGvRow,127),(s2Step223HeadFvRow,127)] [s2Step223HeadGFresh,s2Step223HeadFFresh,s2Step223HeadGvFresh,s2Step223HeadFvFresh]=
    some (s2Step223HeadFvAfter,[s2Step223HeadGOut,s2Step223HeadFOut,s2Step223HeadGvOut,s2Step223HeadFvOut],(growRow 769 s2Step223HeadGFresh ++ (growRow 768 s2Step223HeadFFresh ++ (growRow 771 s2Step223HeadGvFresh ++ (growRow 770 s2Step223HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step223HeadFvAfter [] []=some (s2Step223HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step223HeadFvBefore s2Step223HeadFvAfter s2Step223HeadFvAfter
    s2Step223HeadFvRow s2Step223HeadFvOut 127 s2Step223HeadFvFresh [] [] []
    (growRow 770 s2Step223HeadFvFresh) ([]) s2Step223HeadFv_Incoming s2Step223HeadFv_checked h4 s2Step223HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step223HeadGvBefore s2Step223HeadGvAfter s2Step223HeadFvAfter
    s2Step223HeadGvRow s2Step223HeadGvOut 127 s2Step223HeadGvFresh [(s2Step223HeadFvRow,127)] [s2Step223HeadFvFresh] [s2Step223HeadFvOut]
    (growRow 771 s2Step223HeadGvFresh) ((growRow 770 s2Step223HeadFvFresh ++ [])) s2Step223HeadGv_Incoming s2Step223HeadGv_checked h3 s2Step223HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step223HeadFBefore s2Step223HeadFAfter s2Step223HeadFvAfter
    s2Step223HeadFRow s2Step223HeadFOut 160 s2Step223HeadFFresh [(s2Step223HeadGvRow,127),(s2Step223HeadFvRow,127)] [s2Step223HeadGvFresh,s2Step223HeadFvFresh] [s2Step223HeadGvOut,s2Step223HeadFvOut]
    (growRow 768 s2Step223HeadFFresh) ((growRow 771 s2Step223HeadGvFresh ++ (growRow 770 s2Step223HeadFvFresh ++ []))) s2Step223HeadF_Incoming s2Step223HeadF_checked h2 s2Step223HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step223HeadGBefore s2Step223HeadGAfter s2Step223HeadFvAfter
    s2Step223HeadGRow s2Step223HeadGOut 160 s2Step223HeadGFresh [(s2Step223HeadFRow,160),(s2Step223HeadGvRow,127),(s2Step223HeadFvRow,127)] [s2Step223HeadFFresh,s2Step223HeadGvFresh,s2Step223HeadFvFresh] [s2Step223HeadFOut,s2Step223HeadGvOut,s2Step223HeadFvOut]
    (growRow 769 s2Step223HeadGFresh) ((growRow 768 s2Step223HeadFFresh ++ (growRow 771 s2Step223HeadGvFresh ++ (growRow 770 s2Step223HeadFvFresh ++ [])))) s2Step223HeadG_Incoming s2Step223HeadG_checked h1 s2Step223HeadG_Outgoing
  exact h0

private theorem s2Step223HeadBank_checked : compileHmrBankResizeLog .headroom s2Step223HeadGBefore ⟨s2Step223HeadFRow,s2Step223HeadGRow,s2Step223HeadFvRow,s2Step223HeadGvRow⟩ ⟨160,160,127,127⟩ [s2Step223HeadGFresh,s2Step223HeadFFresh,s2Step223HeadGvFresh,s2Step223HeadFvFresh]=
    some (s2Step223HeadFvAfter,⟨s2Step223HeadFOut,s2Step223HeadGOut,s2Step223HeadFvOut,s2Step223HeadGvOut⟩,(growRow 769 s2Step223HeadGFresh ++ (growRow 768 s2Step223HeadFFresh ++ (growRow 771 s2Step223HeadGvFresh ++ (growRow 770 s2Step223HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step223HeadBank_rows]
  rfl

private theorem s2Step223Front_checked : compileHmrSourceFrontLog s2Step223EntryFBefore s2Step223FrontBank 159 126 ⟨158,158,127,126⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step223FrontLog=some s2Step223FrontPlan := by
  have pairEq : s2Step223FrontPair=⟨s2Step223HeadFRow,s2Step223HeadGRow,s2Step223HeadFvRow,s2Step223HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step223FrontHead=⟨s2Step223ExitFRow,s2Step223ExitGRow,s2Step223ExitFvRow,s2Step223ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step223Add0A=s2Step223FrontHead.f.wires := by decide +kernel
  have gEq : s2Step223Add0B=s2Step223FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step223Add1A=s2Step223FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step223Add1B=s2Step223FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step223EntryFBefore s2Step223FrontBank 159 126 ⟨158,158,127,126⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step223FrontLog s2Step223FrontPlan
  · exact s2Step223Front_entry
  · exact s2Step223EntryBank_checked
  · exact s2Step223Front_sigma
  · rfl
  · exact s2Step223Front_branch
  · rfl
  · simpa only [s2Step223FrontPlan,pairEq] using s2Step223HeadBank_checked
  · simpa only [s2Step223FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step223F4_checked
  · exact s2Step223Counter_checked
  · rfl
  · simpa only [s2Step223FrontPlan,headEq] using s2Step223ExitBank_checked

private theorem s2Step223Complete_explicit_checked : compileHmrEarlyStepLog s2Step223EntryFBefore s2Step223FrontBank 159 126 ⟨158,158,127,126⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step223CompleteLog=some s2Step223CompletePlan := by
  let Q := s2Step223EarlyControlPlan
  have hq := s2Step223EarlyControl_plan_checked
  have fv1 : s2Step223CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step223CompleteOut.fv.payload[2]?.getD s2Step223CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step223CompleteOut.fv.payload[3]?.getD s2Step223CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step223CompleteOut.fv.payload[4]?.getD s2Step223CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step223EntryFBefore s2Step223EarlyControlArena s2Step223FrontBank 159 126 ⟨158,158,127,126⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step223CompleteLog s2Step223FrontPlan Q
    s2Step223Front_checked s2Step223Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step223Complete_owned s2Step223Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step223EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 797 s2Step223CompleteOut.fv.second (s2Step223CompleteOut.fv.payload[2]?.getD s2Step223CompleteOut.fv.sign) (s2Step223CompleteOut.fv.payload[3]?.getD s2Step223CompleteOut.fv.sign) (s2Step223CompleteOut.fv.payload[4]?.getD s2Step223CompleteOut.fv.sign) 780 47 s2Step223EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep223Arena : Arena := s2Step223EntryFBefore
def s2PrivateStep223Bank : WindowBank := s2Step223FrontBank
def s2PrivateStep223Spec : HmrSourceWalkStepLog := ⟨159,126,⟨158,158,127,126⟩,47,.early s2Step223CompleteLog⟩
def s2PrivateStep223Plan : HmrSourceStepPlan := .early s2Step223CompletePlan
theorem s2PrivateStep223_source : s2PrivateStep223Spec=s2ObservedLogs208[15] := rfl
theorem s2PrivateStep223_checked : compileHmrSourceStepLog s2PrivateStep223Arena s2PrivateStep223Bank
    s2PrivateStep223Spec.fgWidth s2PrivateStep223Spec.vWidth s2PrivateStep223Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897]
    6 498 223 s2PrivateStep223Spec.need none s2PrivateStep223Spec.log=some s2PrivateStep223Plan := by
  change compileHmrSourceStepLog s2Step223EntryFBefore s2Step223FrontBank 159 126 ⟨158,158,127,126⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 6 498 223 47 none (.early s2Step223CompleteLog)=some (.early s2Step223CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 223<498)]
  rw [s2Step223Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
