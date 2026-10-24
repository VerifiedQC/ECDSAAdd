import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep223
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

private def s2Step225CompleteMoves : List (Wire × Wire) := [(800,669)]

private def s2Step225EarlyControlLog : HmrEarlyControlLog := ⟨[800, 804, 808, 790, 849],[811],[814],[882, 826, 842, 885, 891, 894],[]⟩

private def s2Step225FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [849], [], []],[[811], [790], [804], [808]],[[], [], [], []]⟩,[797],[812],[814],[882],[826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[814, 882, 826, 842]⟩

private def s2Step225CompleteLog : HmrEarlyStepLog := ⟨s2Step225FrontLog,s2Step225CompleteMoves,s2Step225EarlyControlLog⟩

private def s2Step225ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668],768⟩

private def s2Step225ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801],770⟩

private def s2Step225ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156],769⟩

private def s2Step225ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780],771⟩

private def s2Step225FrontOut : WindowBank := ⟨s2Step225ExitFOut,s2Step225ExitGOut,s2Step225ExitFvOut,s2Step225ExitGvOut⟩

private def s2Step225CompleteOut : WindowBank := s2Step225FrontOut.repacked s2Step225CompleteMoves

private def s2Step225EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step225EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step225EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step225EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step225EarlyControlPositiveArena,[811],s2Step225EarlyControlEqualityArena,[814],⟨⟨797,false⟩,[⟨⟨811,false⟩,814⟩]⟩⟩

private def s2Step225EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<895) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step225EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<895) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step225EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step225EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step225EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step225EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step225EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,800⟩,⟨⟨774,false⟩,804⟩,⟨⟨775,false⟩,808⟩,⟨⟨776,false⟩,790⟩,⟨⟨777,false⟩,849⟩]⟩

private def s2Step225EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step225EarlyControlZeroArena,s2Step225EarlyControlZeroPlan,s2Step225EarlyControlClassPlan,s2Step225EarlyControlFlagArena,s2Step225EarlyControlFittedArena,s2Step225EarlyControlHistoryArena,s2Step225EarlyControlSigmaArena,s2Step225EarlyControlOutputArena,s2Step225EarlyControlLog⟩

private def s2Step225CounterWork : List Wire := [814, 882, 826, 842]

private theorem s2Step225Counter_bounded : s2Step225CounterWork.toFinset⊆arenaWires := by norm_num [s2Step225CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step225HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step225CounterDuring : Arena := ⟨s2Step225HeadFvAfter.live∪s2Step225CounterWork.toFinset,Finset.union_subset s2Step225HeadFvAfter.bounded s2Step225Counter_bounded⟩

private def s2Step225EntryFFresh : List Wire := []

private def s2Step225EntryFvFresh : List Wire := []

private def s2Step225EntryGFresh : List Wire := [849]

private def s2Step225EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step225EntryGvAfter : Arena := s2Step225EntryGAfter

private def s2Step225EntryGvFresh : List Wire := []

private def s2Step225ExitFExtra : List Wire := [669, 790]

private def s2Step225ExitFvExtra : List Wire := [808]

private def s2Step225ExitGExtra : List Wire := [849, 811]

private def s2Step225ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<669) ∨ (670≤q ∧ q<790) ∨ (791≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step225ExitGvExtra : List Wire := [804]

private def s2Step225Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step225Add0Work : List Wire := [826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step225Add0_bounded : s2Step225Add0Work.toFinset⊆arenaWires := by
  have h : s2Step225Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step225Add0During : Arena := ⟨s2Step225Add0Arena.live∪s2Step225Add0Work.toFinset,Finset.union_subset s2Step225Add0Arena.bounded s2Step225Add0_bounded⟩

private def s2Step225Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step225Add1Work : List Wire := [826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step225Add1_bounded : s2Step225Add1Work.toFinset⊆arenaWires := by
  have h : s2Step225Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step225Add1During : Arena := ⟨s2Step225Add1Arena.live∪s2Step225Add1Work.toFinset,Finset.union_subset s2Step225Add1Arena.bounded s2Step225Add1_bounded⟩

private def s2Step225F4FlagArena : Arena := ⟨s2Step225HeadFvAfter.live∪{814},Finset.union_subset s2Step225HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step225F4Plan : HmrHybridF4Plan := ⟨s2Step225F4FlagArena,[814],s2Step225Add0Arena,[882],s2Step225Add0During,s2Step225Add0Work,s2Step225Add1During,s2Step225Add1Work⟩

private def s2Step225HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 790],768⟩

private def s2Step225HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 808],770⟩

private def s2Step225HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 849, 811],769⟩

private def s2Step225HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 804],771⟩

private def s2Step225FrontHead : WindowBank := ⟨s2Step225HeadFOut,s2Step225HeadGOut,s2Step225HeadFvOut,s2Step225HeadGvOut⟩

private def s2Step225EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669],768⟩

private def s2Step225EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801],770⟩

private def s2Step225EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 849],769⟩

private def s2Step225EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780],771⟩

private def s2Step225FrontPair : WindowBank := ⟨s2Step225EntryFOut,s2Step225EntryGOut,s2Step225EntryFvOut,s2Step225EntryGvOut⟩

private def s2Step225FrontSigmaArena : Arena := ⟨s2Step225EntryGvAfter.live∪{797},Finset.union_subset s2Step225EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step225HeadFFresh : List Wire := [790]

private def s2Step225HeadFvFresh : List Wire := [808]

private def s2Step225HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step225HeadGFresh : List Wire := [811]

private def s2Step225HeadGvFresh : List Wire := [804]

private def s2Step225FrontPlan : HmrSourceFront := ⟨s2Step225EntryGvAfter,s2Step225FrontPair,(growRow 768 s2Step225EntryFFresh ++ (growRow 769 s2Step225EntryGFresh ++ (growRow 770 s2Step225EntryFvFresh ++ (growRow 771 s2Step225EntryGvFresh ++ [])))),s2Step225FrontSigmaArena,[797],s2Step225HeadGBefore,[812],
  s2Step225HeadFvAfter,s2Step225FrontHead,(growRow 769 s2Step225HeadGFresh ++ (growRow 768 s2Step225HeadFFresh ++ (growRow 771 s2Step225HeadGvFresh ++ (growRow 770 s2Step225HeadFvFresh ++ [])))),s2Step225F4Plan,s2Step225CounterDuring,s2Step225CounterWork,s2Step225ExitGvAfter,s2Step225FrontOut,(shrinkRow 769 s2Step225ExitGExtra ++ (shrinkRow 768 s2Step225ExitFExtra ++ (shrinkRow 770 s2Step225ExitFvExtra ++ (shrinkRow 771 s2Step225ExitGvExtra ++ []))))⟩

private def s2Step225CompletePlan : HmrEarlyStepPlan := ⟨s2Step225FrontPlan,s2Step225EarlyControlArena,s2Step225EarlyControlPlan,s2Step225CompleteMoves⟩

private theorem s2Step225Complete_apart : List.Disjoint (s2Step225CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [797, 812, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] := by
  have nd : ((s2Step225CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[797, 812, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step225Complete_owned : (s2Step225CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step225EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step225EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private def s2Step225CompleteMoveArena : Arena := ⟨s2Step225ExitGvAfter.live∪{669},Finset.union_subset s2Step225ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step225Complete_repack : s2Step225ExitGvAfter.checkRepack s2Step225CompleteMoves=some s2Step225EarlyControlArena := by
  have owned : 800∈s2Step225ExitGvAfter.live := by norm_num [s2Step225ExitGvAfter,arenaWires]
  have reserve : s2Step225ExitGvAfter.reserve {669}=some s2Step225CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step225ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step225CompleteMoveArena.retireSet {800}=s2Step225EarlyControlArena := by
    unfold Arena.retireSet s2Step225EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step225CompleteMoveArena,s2Step225ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step225CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step225CompleteMoveArena.retireSet {800}).checkRepack []=some s2Step225EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step225EarlyControl_branchOwned : ([812] : List Wire).toFinset⊆s2Step225EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step225EarlyControlSigmaArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step225EarlyControl_branch : compileHmrBranchRetirement s2Step225EarlyControlSigmaArena 812=some s2Step225EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step225EarlyControl_branchOwned
  · ext q
    simp [s2Step225EarlyControlOutputArena,s2Step225EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step225EarlyControl_classEqualityBorrow : s2Step225EarlyControlPositiveArena.checkBorrow (([797, 811] : List Wire).length-1) s2Step225EarlyControlLog.classWork=some s2Step225EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step225EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step225EarlyControlPositiveArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step225EarlyControlEqualityArena,s2Step225EarlyControlPositiveArena,s2Step225EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step225EarlyControl_classEqualityOwned : ([797, 811] : List Wire).toFinset⊆s2Step225EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step225EarlyControlPositiveArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step225EarlyControl_classEquality : compileHmrEqualityLog s2Step225EarlyControlPositiveArena [797, 811] 0 s2Step225EarlyControlLog.classWork=some (s2Step225EarlyControlEqualityArena,s2Step225EarlyControlLog.classWork,s2Step225EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step225EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step225EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step225EarlyControl_classOwned : ([777, 849, 797] : List Wire).toFinset⊆s2Step225EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step225EarlyControlZeroArena (fun q => (0≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step225EarlyControl_positiveBorrow : s2Step225EarlyControlZeroArena.checkBorrow (1) s2Step225EarlyControlLog.positiveWork=some s2Step225EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step225EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step225EarlyControlZeroArena (fun q => (0≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step225EarlyControlPositiveArena,s2Step225EarlyControlZeroArena,s2Step225EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step225EarlyControl_class : compileHmrSourceClassLog s2Step225EarlyControlZeroArena false 777 s2Step225EarlyControlZeroPlan.top 0 797 s2Step225EarlyControlLog.positiveWork s2Step225EarlyControlLog.classWork=some s2Step225EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step225EarlyControlClassPlan s2Step225EarlyControlZeroArena false 777 s2Step225EarlyControlZeroPlan.top 0 797
  constructor
  · decide +kernel
  · exact s2Step225EarlyControl_classOwned
  · exact s2Step225EarlyControl_positiveBorrow
  · exact s2Step225EarlyControl_classEquality

private theorem s2Step225EarlyControl_entryRecordOwned : ([812, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step225EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step225EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step225EarlyControl_entrySigmaOwned : ([797, 254] : List Wire).toFinset⊆s2Step225EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step225EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step225EarlyControl_fitBorrow : s2Step225EarlyControlFlagArena.checkBorrow ((47-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).length)) s2Step225EarlyControlLog.recordFresh=some s2Step225EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step225EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step225EarlyControlFlagArena (fun q => (0≤q ∧ q<895) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step225EarlyControlFittedArena,s2Step225EarlyControlFlagArena,s2Step225EarlyControlLog,arenaWires]

private theorem s2Step225EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step225EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step225EarlyControlFlagArena (fun q => (0≤q ∧ q<895) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step225EarlyControl_fit : compileHmrRecordGrowLog s2Step225EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step225EarlyControlLog.recordFresh=some s2Step225EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step225EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step225EarlyControl_fitBorrow

private theorem s2Step225EarlyControl_flagsBorrow : s2Step225EarlyControlEqualityArena.checkBorrow (6) s2Step225EarlyControlLog.flagWork=some s2Step225EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step225EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step225EarlyControlEqualityArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step225EarlyControlFlagArena,s2Step225EarlyControlEqualityArena,s2Step225EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step225EarlyControl_flagsOwned : ([814, 253, 252, 251] : List Wire).toFinset⊆s2Step225EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step225EarlyControlEqualityArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step225EarlyControl_flags : compileHmrFlagsLog s2Step225EarlyControlClassPlan.equalityArena s2Step225EarlyControlClassPlan.equality.top 253 252 251 s2Step225EarlyControlLog.flagWork=some s2Step225EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step225EarlyControl_flagsOwned⟩
  · exact s2Step225EarlyControl_flagsBorrow

private theorem s2Step225EarlyControl_historyBorrow : s2Step225EarlyControlArena.checkBorrow ((47-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).length)) s2Step225EarlyControlLog.recordFresh=some s2Step225EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step225EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step225EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step225EarlyControlHistoryArena,s2Step225EarlyControlArena,s2Step225EarlyControlLog,arenaWires]

private theorem s2Step225EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step225EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step225EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step225EarlyControl_history : compileHmrRecordGrowLog s2Step225EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step225EarlyControlLog.recordFresh=some s2Step225EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step225EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step225EarlyControl_historyBorrow

private theorem s2Step225EarlyControl_sigmaOwned : ([254, 797] : List Wire).toFinset⊆s2Step225EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step225EarlyControlHistoryArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step225EarlyControl_sigmaReleaseOwned : ([797] : List Wire).toFinset⊆s2Step225EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step225EarlyControlHistoryArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step225EarlyControl_sigmaRelease : s2Step225EarlyControlHistoryArena.release {797} (fun _ => false)=some s2Step225EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step225EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step225EarlyControlSigmaArena,s2Step225EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step225EarlyControl_sigma : compileHmrSigmaDropLog s2Step225EarlyControlHistoryArena false 0 0 254 797 []=some s2Step225EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step225EarlyControl_sigmaOwned⟩
  · exact s2Step225EarlyControl_sigmaRelease

private theorem s2Step225EarlyControl_zeroBorrow : s2Step225EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step225EarlyControlLog.zeroWork=some s2Step225EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step225EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step225EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step225EarlyControlZeroArena,s2Step225EarlyControlArena,s2Step225EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step225EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step225EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step225EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step225EarlyControl_zero : compileHmrEqualityLog s2Step225EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step225EarlyControlLog.zeroWork=some (s2Step225EarlyControlZeroArena,s2Step225EarlyControlLog.zeroWork,s2Step225EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step225EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step225EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step225EarlyControl_logged : s2Step225EarlyControlPlan.Logged s2Step225EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 797 254 253 252 251 812 47 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step225EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step225EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step225EarlyControl_zero
  · exact s2Step225EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step225EarlyControl_flags
  · exact s2Step225EarlyControl_fit
  · exact s2Step225EarlyControl_history
  · exact s2Step225EarlyControl_sigma
  · exact s2Step225EarlyControl_branch

private theorem s2Step225EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step225EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 797 254 253 252 251 812 47 s2Step225EarlyControlLog=some s2Step225EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step225EarlyControlPlan s2Step225EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 797 254 253 252 251 812 47 s2Step225EarlyControl_logged

private def s2Step225EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step225EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669],768⟩

private def s2Step225EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801],770⟩

private def s2Step225EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156],769⟩

private def s2Step225EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780],771⟩

private def s2Step225FrontBank : WindowBank := ⟨s2Step225EntryFRow,s2Step225EntryGRow,s2Step225EntryFvRow,s2Step225EntryGvRow⟩

private def s2Step225Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 790, 768]

private def s2Step225Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 849, 811, 769]

private def s2Step225Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 808, 770]

private def s2Step225Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 804, 771]

private theorem s2Step225Counter_apart : Disjoint s2Step225HeadFvAfter.live s2Step225CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step225HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step225Counter_borrowed : s2Step225HeadFvAfter.checkBorrow 4 s2Step225CounterWork=some s2Step225CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step225HeadFvAfter s2Step225CounterDuring s2Step225CounterWork.toFinset s2Step225Counter_bounded s2Step225Counter_apart rfl

private theorem s2Step225Counter_owned : (797::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step225HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step225HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step225Counter_checked : compileHmrCounterStepLog s2Step225HeadFvAfter true 797 [772, 773, 774, 775, 776, 777] s2Step225CounterWork=some s2Step225CounterDuring := by
  have owned : ∀q∈797::[772, 773, 774, 775, 776, 777],q∈s2Step225HeadFvAfter.live := fun q hq => s2Step225Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step225Counter_borrowed

private def s2Step225EntryFAfter : Arena := s2Step225EntryFBefore

private theorem s2Step225EntryBank_incomingDistinct : ([s2Step225EntryFRow,s2Step225EntryGRow,s2Step225EntryFvRow,s2Step225EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step225EntryF_Incoming : rowsOwned s2Step225EntryFBefore [s2Step225EntryFRow,s2Step225EntryGRow,s2Step225EntryFvRow,s2Step225EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step225EntryFRow,s2Step225EntryGRow,s2Step225EntryFvRow,s2Step225EntryGvRow] 0 s2Step225EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step225EntryFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step225EntryBank_outgoingOwned : rowsOwned s2Step225EntryGvAfter [s2Step225EntryFOut,s2Step225EntryGOut,s2Step225EntryFvOut,s2Step225EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step225EntryGvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step225EntryF_Outgoing : rowsOwned s2Step225EntryGvAfter [s2Step225EntryFOut,s2Step225EntryGOut,s2Step225EntryFvOut,s2Step225EntryGvOut] :=
  hmrRows_owned_drop s2Step225EntryGvAfter [s2Step225EntryFOut,s2Step225EntryGOut,s2Step225EntryFvOut,s2Step225EntryGvOut] 0 s2Step225EntryBank_outgoingOwned

private theorem s2Step225EntryF_distinct : (s2Step225EntryFRow.sign::s2Step225EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step225EntryF_owned : (s2Step225EntryFRow.sign::s2Step225EntryFRow.payload).toFinset⊆s2Step225EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step225EntryFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step225EntryF_reserved : s2Step225EntryFBefore.reserve s2Step225EntryFFresh.toFinset=some s2Step225EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step225EntryFFresh,arenaWires]
  · norm_num [s2Step225EntryFBefore,s2Step225EntryFFresh,arenaWires]
  · simp only [s2Step225EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step225EntryF_checked : planRowResizeLog s2Step225EntryFBefore s2Step225EntryFRow 158 s2Step225EntryFFresh=
    some (s2Step225EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669],768⟩,growRow 768 s2Step225EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step225EntryFBefore s2Step225EntryFAfter s2Step225EntryFRow 158 s2Step225EntryFFresh
    s2Step225EntryF_distinct s2Step225EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step225EntryF_reserved
  have rowEq : WindowRow.mk (s2Step225EntryFRow.payload++s2Step225EntryFFresh) s2Step225EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step225EntryFvAfter : Arena := s2Step225EntryGAfter

private def s2Step225EntryFvBefore : Arena := s2Step225EntryGAfter

private theorem s2Step225EntryFv_Incoming : rowsOwned s2Step225EntryFvBefore [s2Step225EntryFvRow,s2Step225EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step225EntryFRow,s2Step225EntryGRow,s2Step225EntryFvRow,s2Step225EntryGvRow] 2 s2Step225EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step225EntryFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step225EntryFv_Outgoing : rowsOwned s2Step225EntryGvAfter [s2Step225EntryFvOut,s2Step225EntryGvOut] :=
  hmrRows_owned_drop s2Step225EntryGvAfter [s2Step225EntryFOut,s2Step225EntryGOut,s2Step225EntryFvOut,s2Step225EntryGvOut] 2 s2Step225EntryBank_outgoingOwned

private theorem s2Step225EntryFv_distinct : (s2Step225EntryFvRow.sign::s2Step225EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step225EntryFv_owned : (s2Step225EntryFvRow.sign::s2Step225EntryFvRow.payload).toFinset⊆s2Step225EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step225EntryFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step225EntryFv_reserved : s2Step225EntryFvBefore.reserve s2Step225EntryFvFresh.toFinset=some s2Step225EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step225EntryFvFresh,arenaWires]
  · norm_num [s2Step225EntryFvBefore,s2Step225EntryGAfter,s2Step225EntryFvFresh,arenaWires]
  · simp only [s2Step225EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step225EntryFv_checked : planRowResizeLog s2Step225EntryFvBefore s2Step225EntryFvRow 127 s2Step225EntryFvFresh=
    some (s2Step225EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801],770⟩,growRow 770 s2Step225EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step225EntryFvBefore s2Step225EntryFvAfter s2Step225EntryFvRow 127 s2Step225EntryFvFresh
    s2Step225EntryFv_distinct s2Step225EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step225EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step225EntryFvRow.payload++s2Step225EntryFvFresh) s2Step225EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step225EntryGBefore : Arena := s2Step225EntryFBefore

private theorem s2Step225EntryG_Incoming : rowsOwned s2Step225EntryGBefore [s2Step225EntryGRow,s2Step225EntryFvRow,s2Step225EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step225EntryFRow,s2Step225EntryGRow,s2Step225EntryFvRow,s2Step225EntryGvRow] 1 s2Step225EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step225EntryGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step225EntryG_Outgoing : rowsOwned s2Step225EntryGvAfter [s2Step225EntryGOut,s2Step225EntryFvOut,s2Step225EntryGvOut] :=
  hmrRows_owned_drop s2Step225EntryGvAfter [s2Step225EntryFOut,s2Step225EntryGOut,s2Step225EntryFvOut,s2Step225EntryGvOut] 1 s2Step225EntryBank_outgoingOwned

private theorem s2Step225EntryG_distinct : (s2Step225EntryGRow.sign::s2Step225EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step225EntryG_owned : (s2Step225EntryGRow.sign::s2Step225EntryGRow.payload).toFinset⊆s2Step225EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step225EntryGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step225EntryG_reserved : s2Step225EntryGBefore.reserve s2Step225EntryGFresh.toFinset=some s2Step225EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step225EntryGFresh,arenaWires]
  · norm_num [s2Step225EntryGBefore,s2Step225EntryFBefore,s2Step225EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step225EntryGAfter,s2Step225EntryGBefore,s2Step225EntryFBefore,s2Step225EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step225EntryG_checked : planRowResizeLog s2Step225EntryGBefore s2Step225EntryGRow 158 s2Step225EntryGFresh=
    some (s2Step225EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 849],769⟩,growRow 769 s2Step225EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step225EntryGBefore s2Step225EntryGAfter s2Step225EntryGRow 158 s2Step225EntryGFresh
    s2Step225EntryG_distinct s2Step225EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step225EntryG_reserved
  have rowEq : WindowRow.mk (s2Step225EntryGRow.payload++s2Step225EntryGFresh) s2Step225EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 849],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step225EntryGvBefore : Arena := s2Step225EntryGAfter

private theorem s2Step225EntryGv_Incoming : rowsOwned s2Step225EntryGvBefore [s2Step225EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step225EntryFRow,s2Step225EntryGRow,s2Step225EntryFvRow,s2Step225EntryGvRow] 3 s2Step225EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step225EntryGvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step225EntryGv_Outgoing : rowsOwned s2Step225EntryGvAfter [s2Step225EntryGvOut] :=
  hmrRows_owned_drop s2Step225EntryGvAfter [s2Step225EntryFOut,s2Step225EntryGOut,s2Step225EntryFvOut,s2Step225EntryGvOut] 3 s2Step225EntryBank_outgoingOwned

private theorem s2Step225EntryGv_distinct : (s2Step225EntryGvRow.sign::s2Step225EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step225EntryGv_owned : (s2Step225EntryGvRow.sign::s2Step225EntryGvRow.payload).toFinset⊆s2Step225EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step225EntryGvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step225EntryGv_reserved : s2Step225EntryGvBefore.reserve s2Step225EntryGvFresh.toFinset=some s2Step225EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step225EntryGvFresh,arenaWires]
  · norm_num [s2Step225EntryGvBefore,s2Step225EntryGAfter,s2Step225EntryGvFresh,arenaWires]
  · simp only [s2Step225EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step225EntryGv_checked : planRowResizeLog s2Step225EntryGvBefore s2Step225EntryGvRow 127 s2Step225EntryGvFresh=
    some (s2Step225EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780],771⟩,growRow 771 s2Step225EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step225EntryGvBefore s2Step225EntryGvAfter s2Step225EntryGvRow 127 s2Step225EntryGvFresh
    s2Step225EntryGv_distinct s2Step225EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step225EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step225EntryGvRow.payload++s2Step225EntryGvFresh) s2Step225EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step225EntryBank_rows : planWindowRowsLog s2Step225EntryFBefore [(s2Step225EntryFRow,158),(s2Step225EntryGRow,158),(s2Step225EntryFvRow,127),(s2Step225EntryGvRow,127)] [s2Step225EntryFFresh,s2Step225EntryGFresh,s2Step225EntryFvFresh,s2Step225EntryGvFresh]=
    some (s2Step225EntryGvAfter,[s2Step225EntryFOut,s2Step225EntryGOut,s2Step225EntryFvOut,s2Step225EntryGvOut],(growRow 768 s2Step225EntryFFresh ++ (growRow 769 s2Step225EntryGFresh ++ (growRow 770 s2Step225EntryFvFresh ++ (growRow 771 s2Step225EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step225EntryGvAfter [] []=some (s2Step225EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step225EntryGvBefore s2Step225EntryGvAfter s2Step225EntryGvAfter
    s2Step225EntryGvRow s2Step225EntryGvOut 127 s2Step225EntryGvFresh [] [] []
    (growRow 771 s2Step225EntryGvFresh) ([]) s2Step225EntryGv_Incoming s2Step225EntryGv_checked h4 s2Step225EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step225EntryFvBefore s2Step225EntryFvAfter s2Step225EntryGvAfter
    s2Step225EntryFvRow s2Step225EntryFvOut 127 s2Step225EntryFvFresh [(s2Step225EntryGvRow,127)] [s2Step225EntryGvFresh] [s2Step225EntryGvOut]
    (growRow 770 s2Step225EntryFvFresh) ((growRow 771 s2Step225EntryGvFresh ++ [])) s2Step225EntryFv_Incoming s2Step225EntryFv_checked h3 s2Step225EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step225EntryGBefore s2Step225EntryGAfter s2Step225EntryGvAfter
    s2Step225EntryGRow s2Step225EntryGOut 158 s2Step225EntryGFresh [(s2Step225EntryFvRow,127),(s2Step225EntryGvRow,127)] [s2Step225EntryFvFresh,s2Step225EntryGvFresh] [s2Step225EntryFvOut,s2Step225EntryGvOut]
    (growRow 769 s2Step225EntryGFresh) ((growRow 770 s2Step225EntryFvFresh ++ (growRow 771 s2Step225EntryGvFresh ++ []))) s2Step225EntryG_Incoming s2Step225EntryG_checked h2 s2Step225EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step225EntryFBefore s2Step225EntryFAfter s2Step225EntryGvAfter
    s2Step225EntryFRow s2Step225EntryFOut 158 s2Step225EntryFFresh [(s2Step225EntryGRow,158),(s2Step225EntryFvRow,127),(s2Step225EntryGvRow,127)] [s2Step225EntryGFresh,s2Step225EntryFvFresh,s2Step225EntryGvFresh] [s2Step225EntryGOut,s2Step225EntryFvOut,s2Step225EntryGvOut]
    (growRow 768 s2Step225EntryFFresh) ((growRow 769 s2Step225EntryGFresh ++ (growRow 770 s2Step225EntryFvFresh ++ (growRow 771 s2Step225EntryGvFresh ++ [])))) s2Step225EntryF_Incoming s2Step225EntryF_checked h1 s2Step225EntryF_Outgoing
  exact h0

private theorem s2Step225EntryBank_checked : compileHmrBankResizeLog .entry s2Step225EntryFBefore ⟨s2Step225EntryFRow,s2Step225EntryGRow,s2Step225EntryFvRow,s2Step225EntryGvRow⟩ ⟨158,158,127,127⟩ [s2Step225EntryFFresh,s2Step225EntryGFresh,s2Step225EntryFvFresh,s2Step225EntryGvFresh]=
    some (s2Step225EntryGvAfter,⟨s2Step225EntryFOut,s2Step225EntryGOut,s2Step225EntryFvOut,s2Step225EntryGvOut⟩,(growRow 768 s2Step225EntryFFresh ++ (growRow 769 s2Step225EntryGFresh ++ (growRow 770 s2Step225EntryFvFresh ++ (growRow 771 s2Step225EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step225EntryBank_rows]
  rfl

private def s2Step225ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<669) ∨ (670≤q ∧ q<790) ∨ (791≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step225ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step225ExitFBefore : Arena := s2Step225ExitGAfter

private def s2Step225ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 790],768⟩

private def s2Step225ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 808],770⟩

private def s2Step225ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 849, 811],769⟩

private def s2Step225ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 804],771⟩

private theorem s2Step225ExitBank_incomingDistinct : ([s2Step225ExitGRow,s2Step225ExitFRow,s2Step225ExitFvRow,s2Step225ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step225ExitF_Incoming : rowsOwned s2Step225ExitFBefore [s2Step225ExitFRow,s2Step225ExitFvRow,s2Step225ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step225ExitGRow,s2Step225ExitFRow,s2Step225ExitFvRow,s2Step225ExitGvRow] 1 s2Step225ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step225ExitFBefore (fun q => (0≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step225ExitBank_outgoingOwned : rowsOwned s2Step225ExitGvAfter [s2Step225ExitGOut,s2Step225ExitFOut,s2Step225ExitFvOut,s2Step225ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step225ExitGvAfter (fun q => (0≤q ∧ q<669) ∨ (670≤q ∧ q<790) ∨ (791≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step225ExitF_Outgoing : rowsOwned s2Step225ExitGvAfter [s2Step225ExitFOut,s2Step225ExitFvOut,s2Step225ExitGvOut] :=
  hmrRows_owned_drop s2Step225ExitGvAfter [s2Step225ExitGOut,s2Step225ExitFOut,s2Step225ExitFvOut,s2Step225ExitGvOut] 1 s2Step225ExitBank_outgoingOwned

private theorem s2Step225ExitF_distinct : (s2Step225ExitFRow.sign::s2Step225ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step225ExitF_owned : (s2Step225ExitFRow.sign::s2Step225ExitFRow.payload).toFinset⊆s2Step225ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step225ExitFBefore (fun q => (0≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step225ExitF_retired : s2Step225ExitFBefore.retireSet s2Step225ExitFExtra.toFinset=s2Step225ExitFAfter := by
  unfold Arena.retireSet s2Step225ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step225ExitFBefore,s2Step225ExitGAfter,s2Step225ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step225ExitF_checked : planRowResizeLog s2Step225ExitFBefore s2Step225ExitFRow 157 []=
    some (s2Step225ExitFAfter,s2Step225ExitFOut,shrinkRow 768 s2Step225ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step225ExitFBefore s2Step225ExitFRow 157 s2Step225ExitF_distinct s2Step225ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step225ExitFRow.payload.take 157) s2Step225ExitFRow.sign=s2Step225ExitFOut := by decide +kernel
  have hi : s2Step225ExitFRow.payload.drop 157=s2Step225ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step225ExitF_retired] at result
  exact result

private def s2Step225ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<669) ∨ (670≤q ∧ q<790) ∨ (791≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step225ExitFvBefore : Arena := s2Step225ExitFAfter

private theorem s2Step225ExitFv_Incoming : rowsOwned s2Step225ExitFvBefore [s2Step225ExitFvRow,s2Step225ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step225ExitGRow,s2Step225ExitFRow,s2Step225ExitFvRow,s2Step225ExitGvRow] 2 s2Step225ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step225ExitFvBefore (fun q => (0≤q ∧ q<669) ∨ (670≤q ∧ q<790) ∨ (791≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step225ExitFv_Outgoing : rowsOwned s2Step225ExitGvAfter [s2Step225ExitFvOut,s2Step225ExitGvOut] :=
  hmrRows_owned_drop s2Step225ExitGvAfter [s2Step225ExitGOut,s2Step225ExitFOut,s2Step225ExitFvOut,s2Step225ExitGvOut] 2 s2Step225ExitBank_outgoingOwned

private theorem s2Step225ExitFv_distinct : (s2Step225ExitFvRow.sign::s2Step225ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step225ExitFv_owned : (s2Step225ExitFvRow.sign::s2Step225ExitFvRow.payload).toFinset⊆s2Step225ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step225ExitFvBefore (fun q => (0≤q ∧ q<669) ∨ (670≤q ∧ q<790) ∨ (791≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step225ExitFv_retired : s2Step225ExitFvBefore.retireSet s2Step225ExitFvExtra.toFinset=s2Step225ExitFvAfter := by
  unfold Arena.retireSet s2Step225ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step225ExitFvBefore,s2Step225ExitFAfter,s2Step225ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step225ExitFv_checked : planRowResizeLog s2Step225ExitFvBefore s2Step225ExitFvRow 127 []=
    some (s2Step225ExitFvAfter,s2Step225ExitFvOut,shrinkRow 770 s2Step225ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step225ExitFvBefore s2Step225ExitFvRow 127 s2Step225ExitFv_distinct s2Step225ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step225ExitFvRow.payload.take 127) s2Step225ExitFvRow.sign=s2Step225ExitFvOut := by decide +kernel
  have hi : s2Step225ExitFvRow.payload.drop 127=s2Step225ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step225ExitFv_retired] at result
  exact result

private def s2Step225ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private theorem s2Step225ExitG_Incoming : rowsOwned s2Step225ExitGBefore [s2Step225ExitGRow,s2Step225ExitFRow,s2Step225ExitFvRow,s2Step225ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step225ExitGRow,s2Step225ExitFRow,s2Step225ExitFvRow,s2Step225ExitGvRow] 0 s2Step225ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step225ExitGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step225ExitG_Outgoing : rowsOwned s2Step225ExitGvAfter [s2Step225ExitGOut,s2Step225ExitFOut,s2Step225ExitFvOut,s2Step225ExitGvOut] :=
  hmrRows_owned_drop s2Step225ExitGvAfter [s2Step225ExitGOut,s2Step225ExitFOut,s2Step225ExitFvOut,s2Step225ExitGvOut] 0 s2Step225ExitBank_outgoingOwned

private theorem s2Step225ExitG_distinct : (s2Step225ExitGRow.sign::s2Step225ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step225ExitG_owned : (s2Step225ExitGRow.sign::s2Step225ExitGRow.payload).toFinset⊆s2Step225ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step225ExitGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step225ExitG_retired : s2Step225ExitGBefore.retireSet s2Step225ExitGExtra.toFinset=s2Step225ExitGAfter := by
  unfold Arena.retireSet s2Step225ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step225ExitGBefore,s2Step225ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step225ExitG_checked : planRowResizeLog s2Step225ExitGBefore s2Step225ExitGRow 157 []=
    some (s2Step225ExitGAfter,s2Step225ExitGOut,shrinkRow 769 s2Step225ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step225ExitGBefore s2Step225ExitGRow 157 s2Step225ExitG_distinct s2Step225ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step225ExitGRow.payload.take 157) s2Step225ExitGRow.sign=s2Step225ExitGOut := by decide +kernel
  have hi : s2Step225ExitGRow.payload.drop 157=s2Step225ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step225ExitG_retired] at result
  exact result

private def s2Step225ExitGvBefore : Arena := s2Step225ExitFvAfter

private theorem s2Step225ExitGv_Incoming : rowsOwned s2Step225ExitGvBefore [s2Step225ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step225ExitGRow,s2Step225ExitFRow,s2Step225ExitFvRow,s2Step225ExitGvRow] 3 s2Step225ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step225ExitGvBefore (fun q => (0≤q ∧ q<669) ∨ (670≤q ∧ q<790) ∨ (791≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step225ExitGv_Outgoing : rowsOwned s2Step225ExitGvAfter [s2Step225ExitGvOut] :=
  hmrRows_owned_drop s2Step225ExitGvAfter [s2Step225ExitGOut,s2Step225ExitFOut,s2Step225ExitFvOut,s2Step225ExitGvOut] 3 s2Step225ExitBank_outgoingOwned

private theorem s2Step225ExitGv_distinct : (s2Step225ExitGvRow.sign::s2Step225ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step225ExitGv_owned : (s2Step225ExitGvRow.sign::s2Step225ExitGvRow.payload).toFinset⊆s2Step225ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step225ExitGvBefore (fun q => (0≤q ∧ q<669) ∨ (670≤q ∧ q<790) ∨ (791≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step225ExitGv_retired : s2Step225ExitGvBefore.retireSet s2Step225ExitGvExtra.toFinset=s2Step225ExitGvAfter := by
  unfold Arena.retireSet s2Step225ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step225ExitGvBefore,s2Step225ExitFvAfter,s2Step225ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step225ExitGv_checked : planRowResizeLog s2Step225ExitGvBefore s2Step225ExitGvRow 127 []=
    some (s2Step225ExitGvAfter,s2Step225ExitGvOut,shrinkRow 771 s2Step225ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step225ExitGvBefore s2Step225ExitGvRow 127 s2Step225ExitGv_distinct s2Step225ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step225ExitGvRow.payload.take 127) s2Step225ExitGvRow.sign=s2Step225ExitGvOut := by decide +kernel
  have hi : s2Step225ExitGvRow.payload.drop 127=s2Step225ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step225ExitGv_retired] at result
  exact result

private theorem s2Step225ExitBank_rows : planWindowRowsLog s2Step225ExitGBefore [(s2Step225ExitGRow,157),(s2Step225ExitFRow,157),(s2Step225ExitFvRow,127),(s2Step225ExitGvRow,127)] [[],[],[],[]]=
    some (s2Step225ExitGvAfter,[s2Step225ExitGOut,s2Step225ExitFOut,s2Step225ExitFvOut,s2Step225ExitGvOut],(shrinkRow 769 s2Step225ExitGExtra ++ (shrinkRow 768 s2Step225ExitFExtra ++ (shrinkRow 770 s2Step225ExitFvExtra ++ (shrinkRow 771 s2Step225ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step225ExitGvAfter [] []=some (s2Step225ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step225ExitGvBefore s2Step225ExitGvAfter s2Step225ExitGvAfter
    s2Step225ExitGvRow s2Step225ExitGvOut 127 [] [] [] []
    (shrinkRow 771 s2Step225ExitGvExtra) ([]) s2Step225ExitGv_Incoming s2Step225ExitGv_checked h4 s2Step225ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step225ExitFvBefore s2Step225ExitFvAfter s2Step225ExitGvAfter
    s2Step225ExitFvRow s2Step225ExitFvOut 127 [] [(s2Step225ExitGvRow,127)] [[]] [s2Step225ExitGvOut]
    (shrinkRow 770 s2Step225ExitFvExtra) ((shrinkRow 771 s2Step225ExitGvExtra ++ [])) s2Step225ExitFv_Incoming s2Step225ExitFv_checked h3 s2Step225ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step225ExitFBefore s2Step225ExitFAfter s2Step225ExitGvAfter
    s2Step225ExitFRow s2Step225ExitFOut 157 [] [(s2Step225ExitFvRow,127),(s2Step225ExitGvRow,127)] [[],[]] [s2Step225ExitFvOut,s2Step225ExitGvOut]
    (shrinkRow 768 s2Step225ExitFExtra) ((shrinkRow 770 s2Step225ExitFvExtra ++ (shrinkRow 771 s2Step225ExitGvExtra ++ []))) s2Step225ExitF_Incoming s2Step225ExitF_checked h2 s2Step225ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step225ExitGBefore s2Step225ExitGAfter s2Step225ExitGvAfter
    s2Step225ExitGRow s2Step225ExitGOut 157 [] [(s2Step225ExitFRow,157),(s2Step225ExitFvRow,127),(s2Step225ExitGvRow,127)] [[],[],[]] [s2Step225ExitFOut,s2Step225ExitFvOut,s2Step225ExitGvOut]
    (shrinkRow 769 s2Step225ExitGExtra) ((shrinkRow 768 s2Step225ExitFExtra ++ (shrinkRow 770 s2Step225ExitFvExtra ++ (shrinkRow 771 s2Step225ExitGvExtra ++ [])))) s2Step225ExitG_Incoming s2Step225ExitG_checked h1 s2Step225ExitG_Outgoing
  exact h0

private theorem s2Step225ExitBank_checked : compileHmrBankResizeLog .exit s2Step225ExitGBefore ⟨s2Step225ExitFRow,s2Step225ExitGRow,s2Step225ExitFvRow,s2Step225ExitGvRow⟩ ⟨157,157,127,127⟩ [[],[],[],[]]=
    some (s2Step225ExitGvAfter,⟨s2Step225ExitFOut,s2Step225ExitGOut,s2Step225ExitFvOut,s2Step225ExitGvOut⟩,(shrinkRow 769 s2Step225ExitGExtra ++ (shrinkRow 768 s2Step225ExitFExtra ++ (shrinkRow 770 s2Step225ExitFvExtra ++ (shrinkRow 771 s2Step225ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step225ExitBank_rows]
  rfl

private theorem s2Step225Add0_apart : Disjoint s2Step225Add0Arena.live s2Step225Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step225Add0Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step225Add0_card : s2Step225Add0Arena.live.card=891 := by
  decide +kernel

private theorem s2Step225Add0_borrowed : s2Step225Add0Arena.checkBorrow (hmrHybridCount s2Step225Add0Arena s2Step225Add0B.length) s2Step225Add0Work=some s2Step225Add0During := by
  have len : s2Step225Add0Work.length=hmrHybridCount s2Step225Add0Arena s2Step225Add0B.length := by
    rw [hmrHybridCount,s2Step225Add0_card]
    decide +kernel
  have nd : s2Step225Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step225Add0Arena s2Step225Add0During s2Step225Add0Work.toFinset s2Step225Add0_bounded s2Step225Add0_apart rfl

private theorem s2Step225Add0_distinct : (814::812::882::(s2Step225Add0A++s2Step225Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step225Add0_owned : (814::812::882::(s2Step225Add0A++s2Step225Add0B)).toFinset⊆s2Step225Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step225Add0Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step225Add0_checked : compileHmrHybridCinLog s2Step225Add0Arena 812 814 882 s2Step225Add0A s2Step225Add0B s2Step225Add0Work=some s2Step225Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step225Add0Arena s2Step225Add0During 812 814 882 s2Step225Add0A s2Step225Add0B s2Step225Add0Work
    (by decide +kernel) (by decide +kernel) s2Step225Add0_distinct
    (fun q hq => s2Step225Add0_owned (List.mem_toFinset.mpr hq)) s2Step225Add0_borrowed

private theorem s2Step225Add1_apart : Disjoint s2Step225Add1Arena.live s2Step225Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step225Add1Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step225Add1_card : s2Step225Add1Arena.live.card=891 := by
  decide +kernel

private theorem s2Step225Add1_borrowed : s2Step225Add1Arena.checkBorrow (hmrHybridCount s2Step225Add1Arena s2Step225Add1B.length) s2Step225Add1Work=some s2Step225Add1During := by
  have len : s2Step225Add1Work.length=hmrHybridCount s2Step225Add1Arena s2Step225Add1B.length := by
    rw [hmrHybridCount,s2Step225Add1_card]
    decide +kernel
  have nd : s2Step225Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step225Add1Arena s2Step225Add1During s2Step225Add1Work.toFinset s2Step225Add1_bounded s2Step225Add1_apart rfl

private theorem s2Step225Add1_distinct : (814::812::882::(s2Step225Add1A++s2Step225Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step225Add1_owned : (814::812::882::(s2Step225Add1A++s2Step225Add1B)).toFinset⊆s2Step225Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step225Add1Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step225Add1_checked : compileHmrHybridCinLog s2Step225Add1Arena 812 814 882 s2Step225Add1A s2Step225Add1B s2Step225Add1Work=some s2Step225Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step225Add1Arena s2Step225Add1During 812 814 882 s2Step225Add1A s2Step225Add1B s2Step225Add1Work
    (by decide +kernel) (by decide +kernel) s2Step225Add1_distinct
    (fun q hq => s2Step225Add1_owned (List.mem_toFinset.mpr hq)) s2Step225Add1_borrowed

private theorem s2Step225F4_apart : Disjoint (s2Step225Add0A++s2Step225Add0B).toFinset (s2Step225Add1A++s2Step225Add1B).toFinset := by
  have nd : ((s2Step225Add0A++s2Step225Add0B)++(s2Step225Add1A++s2Step225Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step225F4_carry : s2Step225F4FlagArena.checkBorrow 1 [882]=some s2Step225Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step225F4FlagArena,s2Step225HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step225F4FlagArena,s2Step225HeadFvAfter,s2Step225Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step225F4_distinct : (797::812::814::882::((s2Step225Add0A++s2Step225Add1A)++(s2Step225Add0B++s2Step225Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step225F4_flag : s2Step225HeadFvAfter.checkBorrow 1 [814]=some s2Step225F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step225HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step225F4_owned : (797::812::((s2Step225Add0A++s2Step225Add1A)++(s2Step225Add0B++s2Step225Add1B))).toFinset⊆s2Step225HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step225HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step225F4_checked : compileHmrHybridF4Log s2Step225HeadFvAfter 797 812 s2Step225Add0A s2Step225Add0B s2Step225Add1A s2Step225Add1B [814] [882] s2Step225Add0Work s2Step225Add1Work=some s2Step225F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step225HeadFvAfter s2Step225F4FlagArena s2Step225Add0Arena s2Step225Add0During s2Step225Add1During 797 812
    s2Step225Add0A s2Step225Add0B s2Step225Add1A s2Step225Add1B [814] [882] s2Step225Add0Work s2Step225Add1Work
    (fun q hq => s2Step225F4_owned (List.mem_toFinset.mpr hq)) s2Step225F4_flag s2Step225F4_carry
    s2Step225F4_distinct s2Step225F4_apart s2Step225Add0_checked s2Step225Add1_checked

private theorem s2Step225Front_branch : s2Step225FrontSigmaArena.checkBorrow 1 [812]=some s2Step225HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step225FrontSigmaArena,s2Step225EntryGvAfter,s2Step225EntryGAfter,arenaWires]
  · ext q
    simp only [s2Step225FrontSigmaArena,s2Step225EntryGvAfter,s2Step225EntryGAfter,s2Step225HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step225Front_entry : HmrFrontEntryValid s2Step225EntryFBefore s2Step225FrontBank 158 127 ⟨157,157,127,127⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step225FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step225EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step225EntryFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step225FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step225Front_sigma : s2Step225EntryGvAfter.checkBorrow 1 [797]=some s2Step225FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step225EntryGvAfter,s2Step225EntryGAfter,arenaWires]
  · rfl

private def s2Step225HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step225HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step225HeadFBefore : Arena := s2Step225HeadGAfter

private def s2Step225HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669],768⟩

private def s2Step225HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801],770⟩

private def s2Step225HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 849],769⟩

private def s2Step225HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780],771⟩

private theorem s2Step225HeadBank_incomingDistinct : ([s2Step225HeadGRow,s2Step225HeadFRow,s2Step225HeadGvRow,s2Step225HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step225HeadF_Incoming : rowsOwned s2Step225HeadFBefore [s2Step225HeadFRow,s2Step225HeadGvRow,s2Step225HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step225HeadGRow,s2Step225HeadFRow,s2Step225HeadGvRow,s2Step225HeadFvRow] 1 s2Step225HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step225HeadFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step225HeadBank_outgoingOwned : rowsOwned s2Step225HeadFvAfter [s2Step225HeadGOut,s2Step225HeadFOut,s2Step225HeadGvOut,s2Step225HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step225HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step225HeadF_Outgoing : rowsOwned s2Step225HeadFvAfter [s2Step225HeadFOut,s2Step225HeadGvOut,s2Step225HeadFvOut] :=
  hmrRows_owned_drop s2Step225HeadFvAfter [s2Step225HeadGOut,s2Step225HeadFOut,s2Step225HeadGvOut,s2Step225HeadFvOut] 1 s2Step225HeadBank_outgoingOwned

private theorem s2Step225HeadF_distinct : (s2Step225HeadFRow.sign::s2Step225HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step225HeadF_owned : (s2Step225HeadFRow.sign::s2Step225HeadFRow.payload).toFinset⊆s2Step225HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step225HeadFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step225HeadF_reserved : s2Step225HeadFBefore.reserve s2Step225HeadFFresh.toFinset=some s2Step225HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step225HeadFFresh,arenaWires]
  · norm_num [s2Step225HeadFBefore,s2Step225HeadGAfter,s2Step225HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step225HeadFAfter,s2Step225HeadFBefore,s2Step225HeadGAfter,s2Step225HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step225HeadF_checked : planRowResizeLog s2Step225HeadFBefore s2Step225HeadFRow 159 s2Step225HeadFFresh=
    some (s2Step225HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 790],768⟩,growRow 768 s2Step225HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step225HeadFBefore s2Step225HeadFAfter s2Step225HeadFRow 159 s2Step225HeadFFresh
    s2Step225HeadF_distinct s2Step225HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step225HeadF_reserved
  have rowEq : WindowRow.mk (s2Step225HeadFRow.payload++s2Step225HeadFFresh) s2Step225HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 790],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step225HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step225HeadFvBefore : Arena := s2Step225HeadGvAfter

private theorem s2Step225HeadFv_Incoming : rowsOwned s2Step225HeadFvBefore [s2Step225HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step225HeadGRow,s2Step225HeadFRow,s2Step225HeadGvRow,s2Step225HeadFvRow] 3 s2Step225HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step225HeadFvBefore (fun q => (0≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step225HeadFv_Outgoing : rowsOwned s2Step225HeadFvAfter [s2Step225HeadFvOut] :=
  hmrRows_owned_drop s2Step225HeadFvAfter [s2Step225HeadGOut,s2Step225HeadFOut,s2Step225HeadGvOut,s2Step225HeadFvOut] 3 s2Step225HeadBank_outgoingOwned

private theorem s2Step225HeadFv_distinct : (s2Step225HeadFvRow.sign::s2Step225HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step225HeadFv_owned : (s2Step225HeadFvRow.sign::s2Step225HeadFvRow.payload).toFinset⊆s2Step225HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step225HeadFvBefore (fun q => (0≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step225HeadFv_reserved : s2Step225HeadFvBefore.reserve s2Step225HeadFvFresh.toFinset=some s2Step225HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step225HeadFvFresh,arenaWires]
  · norm_num [s2Step225HeadFvBefore,s2Step225HeadGvAfter,s2Step225HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step225HeadFvAfter,s2Step225HeadFvBefore,s2Step225HeadGvAfter,s2Step225HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step225HeadFv_checked : planRowResizeLog s2Step225HeadFvBefore s2Step225HeadFvRow 128 s2Step225HeadFvFresh=
    some (s2Step225HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 808],770⟩,growRow 770 s2Step225HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step225HeadFvBefore s2Step225HeadFvAfter s2Step225HeadFvRow 128 s2Step225HeadFvFresh
    s2Step225HeadFv_distinct s2Step225HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step225HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step225HeadFvRow.payload++s2Step225HeadFvFresh) s2Step225HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 808],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step225HeadG_Incoming : rowsOwned s2Step225HeadGBefore [s2Step225HeadGRow,s2Step225HeadFRow,s2Step225HeadGvRow,s2Step225HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step225HeadGRow,s2Step225HeadFRow,s2Step225HeadGvRow,s2Step225HeadFvRow] 0 s2Step225HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step225HeadGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step225HeadG_Outgoing : rowsOwned s2Step225HeadFvAfter [s2Step225HeadGOut,s2Step225HeadFOut,s2Step225HeadGvOut,s2Step225HeadFvOut] :=
  hmrRows_owned_drop s2Step225HeadFvAfter [s2Step225HeadGOut,s2Step225HeadFOut,s2Step225HeadGvOut,s2Step225HeadFvOut] 0 s2Step225HeadBank_outgoingOwned

private theorem s2Step225HeadG_distinct : (s2Step225HeadGRow.sign::s2Step225HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step225HeadG_owned : (s2Step225HeadGRow.sign::s2Step225HeadGRow.payload).toFinset⊆s2Step225HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step225HeadGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step225HeadG_reserved : s2Step225HeadGBefore.reserve s2Step225HeadGFresh.toFinset=some s2Step225HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step225HeadGFresh,arenaWires]
  · norm_num [s2Step225HeadGBefore,s2Step225HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step225HeadGAfter,s2Step225HeadGBefore,s2Step225HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step225HeadG_checked : planRowResizeLog s2Step225HeadGBefore s2Step225HeadGRow 159 s2Step225HeadGFresh=
    some (s2Step225HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 849, 811],769⟩,growRow 769 s2Step225HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step225HeadGBefore s2Step225HeadGAfter s2Step225HeadGRow 159 s2Step225HeadGFresh
    s2Step225HeadG_distinct s2Step225HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step225HeadG_reserved
  have rowEq : WindowRow.mk (s2Step225HeadGRow.payload++s2Step225HeadGFresh) s2Step225HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 849, 811],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step225HeadGvBefore : Arena := s2Step225HeadFAfter

private theorem s2Step225HeadGv_Incoming : rowsOwned s2Step225HeadGvBefore [s2Step225HeadGvRow,s2Step225HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step225HeadGRow,s2Step225HeadFRow,s2Step225HeadGvRow,s2Step225HeadFvRow] 2 s2Step225HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step225HeadGvBefore (fun q => (0≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step225HeadGv_Outgoing : rowsOwned s2Step225HeadFvAfter [s2Step225HeadGvOut,s2Step225HeadFvOut] :=
  hmrRows_owned_drop s2Step225HeadFvAfter [s2Step225HeadGOut,s2Step225HeadFOut,s2Step225HeadGvOut,s2Step225HeadFvOut] 2 s2Step225HeadBank_outgoingOwned

private theorem s2Step225HeadGv_distinct : (s2Step225HeadGvRow.sign::s2Step225HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step225HeadGv_owned : (s2Step225HeadGvRow.sign::s2Step225HeadGvRow.payload).toFinset⊆s2Step225HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step225HeadGvBefore (fun q => (0≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step225HeadGv_reserved : s2Step225HeadGvBefore.reserve s2Step225HeadGvFresh.toFinset=some s2Step225HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step225HeadGvFresh,arenaWires]
  · norm_num [s2Step225HeadGvBefore,s2Step225HeadFAfter,s2Step225HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step225HeadGvAfter,s2Step225HeadGvBefore,s2Step225HeadFAfter,s2Step225HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step225HeadGv_checked : planRowResizeLog s2Step225HeadGvBefore s2Step225HeadGvRow 128 s2Step225HeadGvFresh=
    some (s2Step225HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 804],771⟩,growRow 771 s2Step225HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step225HeadGvBefore s2Step225HeadGvAfter s2Step225HeadGvRow 128 s2Step225HeadGvFresh
    s2Step225HeadGv_distinct s2Step225HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step225HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step225HeadGvRow.payload++s2Step225HeadGvFresh) s2Step225HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 804],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step225HeadBank_rows : planWindowRowsLog s2Step225HeadGBefore [(s2Step225HeadGRow,159),(s2Step225HeadFRow,159),(s2Step225HeadGvRow,128),(s2Step225HeadFvRow,128)] [s2Step225HeadGFresh,s2Step225HeadFFresh,s2Step225HeadGvFresh,s2Step225HeadFvFresh]=
    some (s2Step225HeadFvAfter,[s2Step225HeadGOut,s2Step225HeadFOut,s2Step225HeadGvOut,s2Step225HeadFvOut],(growRow 769 s2Step225HeadGFresh ++ (growRow 768 s2Step225HeadFFresh ++ (growRow 771 s2Step225HeadGvFresh ++ (growRow 770 s2Step225HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step225HeadFvAfter [] []=some (s2Step225HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step225HeadFvBefore s2Step225HeadFvAfter s2Step225HeadFvAfter
    s2Step225HeadFvRow s2Step225HeadFvOut 128 s2Step225HeadFvFresh [] [] []
    (growRow 770 s2Step225HeadFvFresh) ([]) s2Step225HeadFv_Incoming s2Step225HeadFv_checked h4 s2Step225HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step225HeadGvBefore s2Step225HeadGvAfter s2Step225HeadFvAfter
    s2Step225HeadGvRow s2Step225HeadGvOut 128 s2Step225HeadGvFresh [(s2Step225HeadFvRow,128)] [s2Step225HeadFvFresh] [s2Step225HeadFvOut]
    (growRow 771 s2Step225HeadGvFresh) ((growRow 770 s2Step225HeadFvFresh ++ [])) s2Step225HeadGv_Incoming s2Step225HeadGv_checked h3 s2Step225HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step225HeadFBefore s2Step225HeadFAfter s2Step225HeadFvAfter
    s2Step225HeadFRow s2Step225HeadFOut 159 s2Step225HeadFFresh [(s2Step225HeadGvRow,128),(s2Step225HeadFvRow,128)] [s2Step225HeadGvFresh,s2Step225HeadFvFresh] [s2Step225HeadGvOut,s2Step225HeadFvOut]
    (growRow 768 s2Step225HeadFFresh) ((growRow 771 s2Step225HeadGvFresh ++ (growRow 770 s2Step225HeadFvFresh ++ []))) s2Step225HeadF_Incoming s2Step225HeadF_checked h2 s2Step225HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step225HeadGBefore s2Step225HeadGAfter s2Step225HeadFvAfter
    s2Step225HeadGRow s2Step225HeadGOut 159 s2Step225HeadGFresh [(s2Step225HeadFRow,159),(s2Step225HeadGvRow,128),(s2Step225HeadFvRow,128)] [s2Step225HeadFFresh,s2Step225HeadGvFresh,s2Step225HeadFvFresh] [s2Step225HeadFOut,s2Step225HeadGvOut,s2Step225HeadFvOut]
    (growRow 769 s2Step225HeadGFresh) ((growRow 768 s2Step225HeadFFresh ++ (growRow 771 s2Step225HeadGvFresh ++ (growRow 770 s2Step225HeadFvFresh ++ [])))) s2Step225HeadG_Incoming s2Step225HeadG_checked h1 s2Step225HeadG_Outgoing
  exact h0

private theorem s2Step225HeadBank_checked : compileHmrBankResizeLog .headroom s2Step225HeadGBefore ⟨s2Step225HeadFRow,s2Step225HeadGRow,s2Step225HeadFvRow,s2Step225HeadGvRow⟩ ⟨159,159,128,128⟩ [s2Step225HeadGFresh,s2Step225HeadFFresh,s2Step225HeadGvFresh,s2Step225HeadFvFresh]=
    some (s2Step225HeadFvAfter,⟨s2Step225HeadFOut,s2Step225HeadGOut,s2Step225HeadFvOut,s2Step225HeadGvOut⟩,(growRow 769 s2Step225HeadGFresh ++ (growRow 768 s2Step225HeadFFresh ++ (growRow 771 s2Step225HeadGvFresh ++ (growRow 770 s2Step225HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step225HeadBank_rows]
  rfl

private theorem s2Step225Front_checked : compileHmrSourceFrontLog s2Step225EntryFBefore s2Step225FrontBank 158 127 ⟨157,157,127,127⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step225FrontLog=some s2Step225FrontPlan := by
  have pairEq : s2Step225FrontPair=⟨s2Step225HeadFRow,s2Step225HeadGRow,s2Step225HeadFvRow,s2Step225HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step225FrontHead=⟨s2Step225ExitFRow,s2Step225ExitGRow,s2Step225ExitFvRow,s2Step225ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step225Add0A=s2Step225FrontHead.f.wires := by decide +kernel
  have gEq : s2Step225Add0B=s2Step225FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step225Add1A=s2Step225FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step225Add1B=s2Step225FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step225EntryFBefore s2Step225FrontBank 158 127 ⟨157,157,127,127⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step225FrontLog s2Step225FrontPlan
  · exact s2Step225Front_entry
  · exact s2Step225EntryBank_checked
  · exact s2Step225Front_sigma
  · rfl
  · exact s2Step225Front_branch
  · rfl
  · simpa only [s2Step225FrontPlan,pairEq] using s2Step225HeadBank_checked
  · simpa only [s2Step225FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step225F4_checked
  · exact s2Step225Counter_checked
  · rfl
  · simpa only [s2Step225FrontPlan,headEq] using s2Step225ExitBank_checked

private theorem s2Step225Complete_explicit_checked : compileHmrEarlyStepLog s2Step225EntryFBefore s2Step225FrontBank 158 127 ⟨157,157,127,127⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step225CompleteLog=some s2Step225CompletePlan := by
  let Q := s2Step225EarlyControlPlan
  have hq := s2Step225EarlyControl_plan_checked
  have fv1 : s2Step225CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step225CompleteOut.fv.payload[2]?.getD s2Step225CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step225CompleteOut.fv.payload[3]?.getD s2Step225CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step225CompleteOut.fv.payload[4]?.getD s2Step225CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step225EntryFBefore s2Step225EarlyControlArena s2Step225FrontBank 158 127 ⟨157,157,127,127⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step225CompleteLog s2Step225FrontPlan Q
    s2Step225Front_checked s2Step225Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step225Complete_owned s2Step225Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step225EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 797 s2Step225CompleteOut.fv.second (s2Step225CompleteOut.fv.payload[2]?.getD s2Step225CompleteOut.fv.sign) (s2Step225CompleteOut.fv.payload[3]?.getD s2Step225CompleteOut.fv.sign) (s2Step225CompleteOut.fv.payload[4]?.getD s2Step225CompleteOut.fv.sign) 812 47 s2Step225EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep225Arena : Arena := s2Step225EntryFBefore
def s2PrivateStep225Bank : WindowBank := s2Step225FrontBank
def s2PrivateStep225Spec : HmrSourceWalkStepLog := ⟨158,127,⟨157,157,127,127⟩,47,.early s2Step225CompleteLog⟩
def s2PrivateStep225Plan : HmrSourceStepPlan := .early s2Step225CompletePlan
theorem s2PrivateStep225_source : s2PrivateStep225Spec=s2ObservedLogs224[1] := rfl
theorem s2PrivateStep225_checked : compileHmrSourceStepLog s2PrivateStep225Arena s2PrivateStep225Bank
    s2PrivateStep225Spec.fgWidth s2PrivateStep225Spec.vWidth s2PrivateStep225Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897]
    6 498 225 s2PrivateStep225Spec.need none s2PrivateStep225Spec.log=some s2PrivateStep225Plan := by
  change compileHmrSourceStepLog s2Step225EntryFBefore s2Step225FrontBank 158 127 ⟨157,157,127,127⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 6 498 225 47 none (.early s2Step225CompleteLog)=some (.early s2Step225CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 225<498)]
  rw [s2Step225Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
