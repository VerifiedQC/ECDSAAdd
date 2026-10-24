import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep225
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

private def s2Step227CompleteMoves : List (Wire × Wire) := [(809,668)]

private def s2Step227EarlyControlLog : HmrEarlyControlLog := ⟨[809, 849, 800, 797, 804],[814],[882],[826, 842, 885, 891, 894, 896],[898]⟩

private def s2Step227FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [797], [], [812]],[[804], [800], [849], [811]],[[], [], [], []]⟩,[810],[808],[814],[882],[826, 842, 885, 891, 894, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[826, 842, 885, 891, 894, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[814, 882, 826, 842]⟩

private def s2Step227CompleteLog : HmrEarlyStepLog := ⟨s2Step227FrontLog,s2Step227CompleteMoves,s2Step227EarlyControlLog⟩

private def s2Step227ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667],768⟩

private def s2Step227ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811],770⟩

private def s2Step227ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155],769⟩

private def s2Step227ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812],771⟩

private def s2Step227FrontOut : WindowBank := ⟨s2Step227ExitFOut,s2Step227ExitGOut,s2Step227ExitFvOut,s2Step227ExitGvOut⟩

private def s2Step227CompleteOut : WindowBank := s2Step227FrontOut.repacked s2Step227CompleteMoves

private def s2Step227EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step227EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step227EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step227EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step227EarlyControlPositiveArena,[814],s2Step227EarlyControlEqualityArena,[882],⟨⟨810,false⟩,[⟨⟨814,false⟩,882⟩]⟩⟩

private def s2Step227EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step227EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step227EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step227EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step227EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step227EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step227EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,809⟩,⟨⟨774,false⟩,849⟩,⟨⟨775,false⟩,800⟩,⟨⟨776,false⟩,797⟩,⟨⟨777,false⟩,804⟩]⟩

private def s2Step227EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step227EarlyControlZeroArena,s2Step227EarlyControlZeroPlan,s2Step227EarlyControlClassPlan,s2Step227EarlyControlFlagArena,s2Step227EarlyControlFittedArena,s2Step227EarlyControlHistoryArena,s2Step227EarlyControlSigmaArena,s2Step227EarlyControlOutputArena,s2Step227EarlyControlLog⟩

private def s2Step227CounterWork : List Wire := [814, 882, 826, 842]

private theorem s2Step227Counter_bounded : s2Step227CounterWork.toFinset⊆arenaWires := by norm_num [s2Step227CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step227HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step227CounterDuring : Arena := ⟨s2Step227HeadFvAfter.live∪s2Step227CounterWork.toFinset,Finset.union_subset s2Step227HeadFvAfter.bounded s2Step227Counter_bounded⟩

private def s2Step227EntryFFresh : List Wire := []

private def s2Step227EntryFvFresh : List Wire := []

private def s2Step227EntryGFresh : List Wire := [797]

private def s2Step227EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step227EntryGvFresh : List Wire := [812]

private def s2Step227ExitFExtra : List Wire := [668, 800]

private def s2Step227ExitGExtra : List Wire := [797, 804]

private def s2Step227ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<668) ∨ (669≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step227ExitGvExtra : List Wire := [849]

private def s2Step227Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step227Add0Work : List Wire := [826, 842, 885, 891, 894, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step227Add0_bounded : s2Step227Add0Work.toFinset⊆arenaWires := by
  have h : s2Step227Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step227Add0During : Arena := ⟨s2Step227Add0Arena.live∪s2Step227Add0Work.toFinset,Finset.union_subset s2Step227Add0Arena.bounded s2Step227Add0_bounded⟩

private def s2Step227Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step227Add1Work : List Wire := [826, 842, 885, 891, 894, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step227Add1_bounded : s2Step227Add1Work.toFinset⊆arenaWires := by
  have h : s2Step227Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step227Add1During : Arena := ⟨s2Step227Add1Arena.live∪s2Step227Add1Work.toFinset,Finset.union_subset s2Step227Add1Arena.bounded s2Step227Add1_bounded⟩

private def s2Step227F4FlagArena : Arena := ⟨s2Step227HeadFvAfter.live∪{814},Finset.union_subset s2Step227HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step227F4Plan : HmrHybridF4Plan := ⟨s2Step227F4FlagArena,[814],s2Step227Add0Arena,[882],s2Step227Add0During,s2Step227Add0Work,s2Step227Add1During,s2Step227Add1Work⟩

private def s2Step227HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 800],768⟩

private def s2Step227HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811],770⟩

private def s2Step227HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 797, 804],769⟩

private def s2Step227HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 849],771⟩

private def s2Step227FrontHead : WindowBank := ⟨s2Step227HeadFOut,s2Step227HeadGOut,s2Step227HeadFvOut,s2Step227HeadGvOut⟩

private def s2Step227EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668],768⟩

private def s2Step227EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790],770⟩

private def s2Step227EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 797],769⟩

private def s2Step227EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812],771⟩

private def s2Step227FrontPair : WindowBank := ⟨s2Step227EntryFOut,s2Step227EntryGOut,s2Step227EntryFvOut,s2Step227EntryGvOut⟩

private def s2Step227FrontSigmaArena : Arena := ⟨s2Step227EntryGvAfter.live∪{810},Finset.union_subset s2Step227EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step227HeadFFresh : List Wire := [800]

private def s2Step227HeadFvFresh : List Wire := [811]

private def s2Step227HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step227HeadGFresh : List Wire := [804]

private def s2Step227HeadGvFresh : List Wire := [849]

private def s2Step227FrontPlan : HmrSourceFront := ⟨s2Step227EntryGvAfter,s2Step227FrontPair,(growRow 768 s2Step227EntryFFresh ++ (growRow 769 s2Step227EntryGFresh ++ (growRow 770 s2Step227EntryFvFresh ++ (growRow 771 s2Step227EntryGvFresh ++ [])))),s2Step227FrontSigmaArena,[810],s2Step227HeadGBefore,[808],
  s2Step227HeadFvAfter,s2Step227FrontHead,(growRow 769 s2Step227HeadGFresh ++ (growRow 768 s2Step227HeadFFresh ++ (growRow 771 s2Step227HeadGvFresh ++ (growRow 770 s2Step227HeadFvFresh ++ [])))),s2Step227F4Plan,s2Step227CounterDuring,s2Step227CounterWork,s2Step227ExitGvAfter,s2Step227FrontOut,(shrinkRow 769 s2Step227ExitGExtra ++ (shrinkRow 768 s2Step227ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step227ExitGvExtra ++ []))))⟩

private def s2Step227CompletePlan : HmrEarlyStepPlan := ⟨s2Step227FrontPlan,s2Step227EarlyControlArena,s2Step227EarlyControlPlan,s2Step227CompleteMoves⟩

private theorem s2Step227Complete_apart : List.Disjoint (s2Step227CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [810, 808, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895] := by
  have nd : ((s2Step227CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[810, 808, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step227Complete_owned : (s2Step227CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step227EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step227EarlyControlArena (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private def s2Step227CompleteMoveArena : Arena := ⟨s2Step227ExitGvAfter.live∪{668},Finset.union_subset s2Step227ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step227Complete_repack : s2Step227ExitGvAfter.checkRepack s2Step227CompleteMoves=some s2Step227EarlyControlArena := by
  have owned : 809∈s2Step227ExitGvAfter.live := by norm_num [s2Step227ExitGvAfter,arenaWires]
  have reserve : s2Step227ExitGvAfter.reserve {668}=some s2Step227CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step227ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step227CompleteMoveArena.retireSet {809}=s2Step227EarlyControlArena := by
    unfold Arena.retireSet s2Step227EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step227CompleteMoveArena,s2Step227ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step227CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step227CompleteMoveArena.retireSet {809}).checkRepack []=some s2Step227EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step227EarlyControl_branchOwned : ([808] : List Wire).toFinset⊆s2Step227EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step227EarlyControlSigmaArena (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step227EarlyControl_branch : compileHmrBranchRetirement s2Step227EarlyControlSigmaArena 808=some s2Step227EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step227EarlyControl_branchOwned
  · ext q
    simp [s2Step227EarlyControlOutputArena,s2Step227EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step227EarlyControl_classEqualityBorrow : s2Step227EarlyControlPositiveArena.checkBorrow (([810, 814] : List Wire).length-1) s2Step227EarlyControlLog.classWork=some s2Step227EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step227EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step227EarlyControlPositiveArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step227EarlyControlEqualityArena,s2Step227EarlyControlPositiveArena,s2Step227EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step227EarlyControl_classEqualityOwned : ([810, 814] : List Wire).toFinset⊆s2Step227EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step227EarlyControlPositiveArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step227EarlyControl_classEquality : compileHmrEqualityLog s2Step227EarlyControlPositiveArena [810, 814] 0 s2Step227EarlyControlLog.classWork=some (s2Step227EarlyControlEqualityArena,s2Step227EarlyControlLog.classWork,s2Step227EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step227EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step227EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step227EarlyControl_classOwned : ([777, 804, 810] : List Wire).toFinset⊆s2Step227EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step227EarlyControlZeroArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step227EarlyControl_positiveBorrow : s2Step227EarlyControlZeroArena.checkBorrow (1) s2Step227EarlyControlLog.positiveWork=some s2Step227EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step227EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step227EarlyControlZeroArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step227EarlyControlPositiveArena,s2Step227EarlyControlZeroArena,s2Step227EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step227EarlyControl_class : compileHmrSourceClassLog s2Step227EarlyControlZeroArena false 777 s2Step227EarlyControlZeroPlan.top 0 810 s2Step227EarlyControlLog.positiveWork s2Step227EarlyControlLog.classWork=some s2Step227EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step227EarlyControlClassPlan s2Step227EarlyControlZeroArena false 777 s2Step227EarlyControlZeroPlan.top 0 810
  constructor
  · decide +kernel
  · exact s2Step227EarlyControl_classOwned
  · exact s2Step227EarlyControl_positiveBorrow
  · exact s2Step227EarlyControl_classEquality

private theorem s2Step227EarlyControl_entryRecordOwned : ([808, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895] : List Wire).toFinset⊆s2Step227EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step227EarlyControlArena (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step227EarlyControl_entrySigmaOwned : ([810, 254] : List Wire).toFinset⊆s2Step227EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step227EarlyControlArena (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step227EarlyControl_fitBorrow : s2Step227EarlyControlFlagArena.checkBorrow ((49-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895] : List Wire).length)) s2Step227EarlyControlLog.recordFresh=some s2Step227EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step227EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step227EarlyControlFlagArena (fun q => (0≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step227EarlyControlFittedArena,s2Step227EarlyControlFlagArena,s2Step227EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step227EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895] : List Wire).toFinset⊆s2Step227EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step227EarlyControlFlagArena (fun q => (0≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step227EarlyControl_fit : compileHmrRecordGrowLog s2Step227EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895] 49 s2Step227EarlyControlLog.recordFresh=some s2Step227EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step227EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step227EarlyControl_fitBorrow

private theorem s2Step227EarlyControl_flagsBorrow : s2Step227EarlyControlEqualityArena.checkBorrow (6) s2Step227EarlyControlLog.flagWork=some s2Step227EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step227EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step227EarlyControlEqualityArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step227EarlyControlFlagArena,s2Step227EarlyControlEqualityArena,s2Step227EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step227EarlyControl_flagsOwned : ([882, 253, 252, 251] : List Wire).toFinset⊆s2Step227EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step227EarlyControlEqualityArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step227EarlyControl_flags : compileHmrFlagsLog s2Step227EarlyControlClassPlan.equalityArena s2Step227EarlyControlClassPlan.equality.top 253 252 251 s2Step227EarlyControlLog.flagWork=some s2Step227EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step227EarlyControl_flagsOwned⟩
  · exact s2Step227EarlyControl_flagsBorrow

private theorem s2Step227EarlyControl_historyBorrow : s2Step227EarlyControlArena.checkBorrow ((49-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895] : List Wire).length)) s2Step227EarlyControlLog.recordFresh=some s2Step227EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step227EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step227EarlyControlArena (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step227EarlyControlHistoryArena,s2Step227EarlyControlArena,s2Step227EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step227EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895] : List Wire).toFinset⊆s2Step227EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step227EarlyControlArena (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step227EarlyControl_history : compileHmrRecordGrowLog s2Step227EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895] 49 s2Step227EarlyControlLog.recordFresh=some s2Step227EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step227EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step227EarlyControl_historyBorrow

private theorem s2Step227EarlyControl_sigmaOwned : ([254, 810] : List Wire).toFinset⊆s2Step227EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step227EarlyControlHistoryArena (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step227EarlyControl_sigmaReleaseOwned : ([810] : List Wire).toFinset⊆s2Step227EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step227EarlyControlHistoryArena (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step227EarlyControl_sigmaRelease : s2Step227EarlyControlHistoryArena.release {810} (fun _ => false)=some s2Step227EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step227EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step227EarlyControlSigmaArena,s2Step227EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step227EarlyControl_sigma : compileHmrSigmaDropLog s2Step227EarlyControlHistoryArena false 0 0 254 810 []=some s2Step227EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step227EarlyControl_sigmaOwned⟩
  · exact s2Step227EarlyControl_sigmaRelease

private theorem s2Step227EarlyControl_zeroBorrow : s2Step227EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step227EarlyControlLog.zeroWork=some s2Step227EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step227EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step227EarlyControlArena (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step227EarlyControlZeroArena,s2Step227EarlyControlArena,s2Step227EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step227EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step227EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step227EarlyControlArena (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step227EarlyControl_zero : compileHmrEqualityLog s2Step227EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step227EarlyControlLog.zeroWork=some (s2Step227EarlyControlZeroArena,s2Step227EarlyControlLog.zeroWork,s2Step227EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step227EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step227EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step227EarlyControl_logged : s2Step227EarlyControlPlan.Logged s2Step227EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895] 777 810 254 253 252 251 808 49 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step227EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step227EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step227EarlyControl_zero
  · exact s2Step227EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step227EarlyControl_flags
  · exact s2Step227EarlyControl_fit
  · exact s2Step227EarlyControl_history
  · exact s2Step227EarlyControl_sigma
  · exact s2Step227EarlyControl_branch

private theorem s2Step227EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step227EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895] 777 810 254 253 252 251 808 49 s2Step227EarlyControlLog=some s2Step227EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step227EarlyControlPlan s2Step227EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895] 777 810 254 253 252 251 808 49 s2Step227EarlyControl_logged

private def s2Step227EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step227EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668],768⟩

private def s2Step227EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790],770⟩

private def s2Step227EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155],769⟩

private def s2Step227EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780],771⟩

private def s2Step227FrontBank : WindowBank := ⟨s2Step227EntryFRow,s2Step227EntryGRow,s2Step227EntryFvRow,s2Step227EntryGvRow⟩

private def s2Step227Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 800, 768]

private def s2Step227Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 797, 804, 769]

private def s2Step227Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 770]

private def s2Step227Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 849, 771]

private theorem s2Step227Counter_apart : Disjoint s2Step227HeadFvAfter.live s2Step227CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step227HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step227Counter_borrowed : s2Step227HeadFvAfter.checkBorrow 4 s2Step227CounterWork=some s2Step227CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step227HeadFvAfter s2Step227CounterDuring s2Step227CounterWork.toFinset s2Step227Counter_bounded s2Step227Counter_apart rfl

private theorem s2Step227Counter_owned : (810::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step227HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step227HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step227Counter_checked : compileHmrCounterStepLog s2Step227HeadFvAfter true 810 [772, 773, 774, 775, 776, 777] s2Step227CounterWork=some s2Step227CounterDuring := by
  have owned : ∀q∈810::[772, 773, 774, 775, 776, 777],q∈s2Step227HeadFvAfter.live := fun q hq => s2Step227Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step227Counter_borrowed

private def s2Step227EntryFAfter : Arena := s2Step227EntryFBefore

private theorem s2Step227EntryBank_incomingDistinct : ([s2Step227EntryFRow,s2Step227EntryGRow,s2Step227EntryFvRow,s2Step227EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step227EntryF_Incoming : rowsOwned s2Step227EntryFBefore [s2Step227EntryFRow,s2Step227EntryGRow,s2Step227EntryFvRow,s2Step227EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step227EntryFRow,s2Step227EntryGRow,s2Step227EntryFvRow,s2Step227EntryGvRow] 0 s2Step227EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step227EntryFBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step227EntryBank_outgoingOwned : rowsOwned s2Step227EntryGvAfter [s2Step227EntryFOut,s2Step227EntryGOut,s2Step227EntryFvOut,s2Step227EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step227EntryGvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step227EntryF_Outgoing : rowsOwned s2Step227EntryGvAfter [s2Step227EntryFOut,s2Step227EntryGOut,s2Step227EntryFvOut,s2Step227EntryGvOut] :=
  hmrRows_owned_drop s2Step227EntryGvAfter [s2Step227EntryFOut,s2Step227EntryGOut,s2Step227EntryFvOut,s2Step227EntryGvOut] 0 s2Step227EntryBank_outgoingOwned

private theorem s2Step227EntryF_distinct : (s2Step227EntryFRow.sign::s2Step227EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step227EntryF_owned : (s2Step227EntryFRow.sign::s2Step227EntryFRow.payload).toFinset⊆s2Step227EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step227EntryFBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step227EntryF_reserved : s2Step227EntryFBefore.reserve s2Step227EntryFFresh.toFinset=some s2Step227EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step227EntryFFresh,arenaWires]
  · norm_num [s2Step227EntryFBefore,s2Step227EntryFFresh,arenaWires]
  · simp only [s2Step227EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step227EntryF_checked : planRowResizeLog s2Step227EntryFBefore s2Step227EntryFRow 157 s2Step227EntryFFresh=
    some (s2Step227EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668],768⟩,growRow 768 s2Step227EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step227EntryFBefore s2Step227EntryFAfter s2Step227EntryFRow 157 s2Step227EntryFFresh
    s2Step227EntryF_distinct s2Step227EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step227EntryF_reserved
  have rowEq : WindowRow.mk (s2Step227EntryFRow.payload++s2Step227EntryFFresh) s2Step227EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step227EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step227EntryFvAfter : Arena := s2Step227EntryGAfter

private def s2Step227EntryFvBefore : Arena := s2Step227EntryGAfter

private theorem s2Step227EntryFv_Incoming : rowsOwned s2Step227EntryFvBefore [s2Step227EntryFvRow,s2Step227EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step227EntryFRow,s2Step227EntryGRow,s2Step227EntryFvRow,s2Step227EntryGvRow] 2 s2Step227EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step227EntryFvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step227EntryFv_Outgoing : rowsOwned s2Step227EntryGvAfter [s2Step227EntryFvOut,s2Step227EntryGvOut] :=
  hmrRows_owned_drop s2Step227EntryGvAfter [s2Step227EntryFOut,s2Step227EntryGOut,s2Step227EntryFvOut,s2Step227EntryGvOut] 2 s2Step227EntryBank_outgoingOwned

private theorem s2Step227EntryFv_distinct : (s2Step227EntryFvRow.sign::s2Step227EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step227EntryFv_owned : (s2Step227EntryFvRow.sign::s2Step227EntryFvRow.payload).toFinset⊆s2Step227EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step227EntryFvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step227EntryFv_reserved : s2Step227EntryFvBefore.reserve s2Step227EntryFvFresh.toFinset=some s2Step227EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step227EntryFvFresh,arenaWires]
  · norm_num [s2Step227EntryFvBefore,s2Step227EntryGAfter,s2Step227EntryFvFresh,arenaWires]
  · simp only [s2Step227EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step227EntryFv_checked : planRowResizeLog s2Step227EntryFvBefore s2Step227EntryFvRow 128 s2Step227EntryFvFresh=
    some (s2Step227EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790],770⟩,growRow 770 s2Step227EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step227EntryFvBefore s2Step227EntryFvAfter s2Step227EntryFvRow 128 s2Step227EntryFvFresh
    s2Step227EntryFv_distinct s2Step227EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step227EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step227EntryFvRow.payload++s2Step227EntryFvFresh) s2Step227EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step227EntryGBefore : Arena := s2Step227EntryFBefore

private theorem s2Step227EntryG_Incoming : rowsOwned s2Step227EntryGBefore [s2Step227EntryGRow,s2Step227EntryFvRow,s2Step227EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step227EntryFRow,s2Step227EntryGRow,s2Step227EntryFvRow,s2Step227EntryGvRow] 1 s2Step227EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step227EntryGBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step227EntryG_Outgoing : rowsOwned s2Step227EntryGvAfter [s2Step227EntryGOut,s2Step227EntryFvOut,s2Step227EntryGvOut] :=
  hmrRows_owned_drop s2Step227EntryGvAfter [s2Step227EntryFOut,s2Step227EntryGOut,s2Step227EntryFvOut,s2Step227EntryGvOut] 1 s2Step227EntryBank_outgoingOwned

private theorem s2Step227EntryG_distinct : (s2Step227EntryGRow.sign::s2Step227EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step227EntryG_owned : (s2Step227EntryGRow.sign::s2Step227EntryGRow.payload).toFinset⊆s2Step227EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step227EntryGBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step227EntryG_reserved : s2Step227EntryGBefore.reserve s2Step227EntryGFresh.toFinset=some s2Step227EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step227EntryGFresh,arenaWires]
  · norm_num [s2Step227EntryGBefore,s2Step227EntryFBefore,s2Step227EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step227EntryGAfter,s2Step227EntryGBefore,s2Step227EntryFBefore,s2Step227EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step227EntryG_checked : planRowResizeLog s2Step227EntryGBefore s2Step227EntryGRow 157 s2Step227EntryGFresh=
    some (s2Step227EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 797],769⟩,growRow 769 s2Step227EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step227EntryGBefore s2Step227EntryGAfter s2Step227EntryGRow 157 s2Step227EntryGFresh
    s2Step227EntryG_distinct s2Step227EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step227EntryG_reserved
  have rowEq : WindowRow.mk (s2Step227EntryGRow.payload++s2Step227EntryGFresh) s2Step227EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 797],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step227EntryGvBefore : Arena := s2Step227EntryGAfter

private theorem s2Step227EntryGv_Incoming : rowsOwned s2Step227EntryGvBefore [s2Step227EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step227EntryFRow,s2Step227EntryGRow,s2Step227EntryFvRow,s2Step227EntryGvRow] 3 s2Step227EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step227EntryGvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step227EntryGv_Outgoing : rowsOwned s2Step227EntryGvAfter [s2Step227EntryGvOut] :=
  hmrRows_owned_drop s2Step227EntryGvAfter [s2Step227EntryFOut,s2Step227EntryGOut,s2Step227EntryFvOut,s2Step227EntryGvOut] 3 s2Step227EntryBank_outgoingOwned

private theorem s2Step227EntryGv_distinct : (s2Step227EntryGvRow.sign::s2Step227EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step227EntryGv_owned : (s2Step227EntryGvRow.sign::s2Step227EntryGvRow.payload).toFinset⊆s2Step227EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step227EntryGvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step227EntryGv_reserved : s2Step227EntryGvBefore.reserve s2Step227EntryGvFresh.toFinset=some s2Step227EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step227EntryGvFresh,arenaWires]
  · norm_num [s2Step227EntryGvBefore,s2Step227EntryGAfter,s2Step227EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step227EntryGvAfter,s2Step227EntryGvBefore,s2Step227EntryGAfter,s2Step227EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step227EntryGv_checked : planRowResizeLog s2Step227EntryGvBefore s2Step227EntryGvRow 128 s2Step227EntryGvFresh=
    some (s2Step227EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812],771⟩,growRow 771 s2Step227EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step227EntryGvBefore s2Step227EntryGvAfter s2Step227EntryGvRow 128 s2Step227EntryGvFresh
    s2Step227EntryGv_distinct s2Step227EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step227EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step227EntryGvRow.payload++s2Step227EntryGvFresh) s2Step227EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step227EntryBank_rows : planWindowRowsLog s2Step227EntryFBefore [(s2Step227EntryFRow,157),(s2Step227EntryGRow,157),(s2Step227EntryFvRow,128),(s2Step227EntryGvRow,128)] [s2Step227EntryFFresh,s2Step227EntryGFresh,s2Step227EntryFvFresh,s2Step227EntryGvFresh]=
    some (s2Step227EntryGvAfter,[s2Step227EntryFOut,s2Step227EntryGOut,s2Step227EntryFvOut,s2Step227EntryGvOut],(growRow 768 s2Step227EntryFFresh ++ (growRow 769 s2Step227EntryGFresh ++ (growRow 770 s2Step227EntryFvFresh ++ (growRow 771 s2Step227EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step227EntryGvAfter [] []=some (s2Step227EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step227EntryGvBefore s2Step227EntryGvAfter s2Step227EntryGvAfter
    s2Step227EntryGvRow s2Step227EntryGvOut 128 s2Step227EntryGvFresh [] [] []
    (growRow 771 s2Step227EntryGvFresh) ([]) s2Step227EntryGv_Incoming s2Step227EntryGv_checked h4 s2Step227EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step227EntryFvBefore s2Step227EntryFvAfter s2Step227EntryGvAfter
    s2Step227EntryFvRow s2Step227EntryFvOut 128 s2Step227EntryFvFresh [(s2Step227EntryGvRow,128)] [s2Step227EntryGvFresh] [s2Step227EntryGvOut]
    (growRow 770 s2Step227EntryFvFresh) ((growRow 771 s2Step227EntryGvFresh ++ [])) s2Step227EntryFv_Incoming s2Step227EntryFv_checked h3 s2Step227EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step227EntryGBefore s2Step227EntryGAfter s2Step227EntryGvAfter
    s2Step227EntryGRow s2Step227EntryGOut 157 s2Step227EntryGFresh [(s2Step227EntryFvRow,128),(s2Step227EntryGvRow,128)] [s2Step227EntryFvFresh,s2Step227EntryGvFresh] [s2Step227EntryFvOut,s2Step227EntryGvOut]
    (growRow 769 s2Step227EntryGFresh) ((growRow 770 s2Step227EntryFvFresh ++ (growRow 771 s2Step227EntryGvFresh ++ []))) s2Step227EntryG_Incoming s2Step227EntryG_checked h2 s2Step227EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step227EntryFBefore s2Step227EntryFAfter s2Step227EntryGvAfter
    s2Step227EntryFRow s2Step227EntryFOut 157 s2Step227EntryFFresh [(s2Step227EntryGRow,157),(s2Step227EntryFvRow,128),(s2Step227EntryGvRow,128)] [s2Step227EntryGFresh,s2Step227EntryFvFresh,s2Step227EntryGvFresh] [s2Step227EntryGOut,s2Step227EntryFvOut,s2Step227EntryGvOut]
    (growRow 768 s2Step227EntryFFresh) ((growRow 769 s2Step227EntryGFresh ++ (growRow 770 s2Step227EntryFvFresh ++ (growRow 771 s2Step227EntryGvFresh ++ [])))) s2Step227EntryF_Incoming s2Step227EntryF_checked h1 s2Step227EntryF_Outgoing
  exact h0

private theorem s2Step227EntryBank_checked : compileHmrBankResizeLog .entry s2Step227EntryFBefore ⟨s2Step227EntryFRow,s2Step227EntryGRow,s2Step227EntryFvRow,s2Step227EntryGvRow⟩ ⟨157,157,128,128⟩ [s2Step227EntryFFresh,s2Step227EntryGFresh,s2Step227EntryFvFresh,s2Step227EntryGvFresh]=
    some (s2Step227EntryGvAfter,⟨s2Step227EntryFOut,s2Step227EntryGOut,s2Step227EntryFvOut,s2Step227EntryGvOut⟩,(growRow 768 s2Step227EntryFFresh ++ (growRow 769 s2Step227EntryGFresh ++ (growRow 770 s2Step227EntryFvFresh ++ (growRow 771 s2Step227EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step227EntryBank_rows]
  rfl

private def s2Step227ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<668) ∨ (669≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step227ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step227ExitFBefore : Arena := s2Step227ExitGAfter

private def s2Step227ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 800],768⟩

private def s2Step227ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811],770⟩

private def s2Step227ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 797, 804],769⟩

private def s2Step227ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 849],771⟩

private theorem s2Step227ExitBank_incomingDistinct : ([s2Step227ExitGRow,s2Step227ExitFRow,s2Step227ExitFvRow,s2Step227ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step227ExitF_Incoming : rowsOwned s2Step227ExitFBefore [s2Step227ExitFRow,s2Step227ExitFvRow,s2Step227ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step227ExitGRow,s2Step227ExitFRow,s2Step227ExitFvRow,s2Step227ExitGvRow] 1 s2Step227ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step227ExitFBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step227ExitBank_outgoingOwned : rowsOwned s2Step227ExitGvAfter [s2Step227ExitGOut,s2Step227ExitFOut,s2Step227ExitFvOut,s2Step227ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step227ExitGvAfter (fun q => (0≤q ∧ q<668) ∨ (669≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step227ExitF_Outgoing : rowsOwned s2Step227ExitGvAfter [s2Step227ExitFOut,s2Step227ExitFvOut,s2Step227ExitGvOut] :=
  hmrRows_owned_drop s2Step227ExitGvAfter [s2Step227ExitGOut,s2Step227ExitFOut,s2Step227ExitFvOut,s2Step227ExitGvOut] 1 s2Step227ExitBank_outgoingOwned

private theorem s2Step227ExitF_distinct : (s2Step227ExitFRow.sign::s2Step227ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step227ExitF_owned : (s2Step227ExitFRow.sign::s2Step227ExitFRow.payload).toFinset⊆s2Step227ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step227ExitFBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step227ExitF_retired : s2Step227ExitFBefore.retireSet s2Step227ExitFExtra.toFinset=s2Step227ExitFAfter := by
  unfold Arena.retireSet s2Step227ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step227ExitFBefore,s2Step227ExitGAfter,s2Step227ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step227ExitF_checked : planRowResizeLog s2Step227ExitFBefore s2Step227ExitFRow 156 []=
    some (s2Step227ExitFAfter,s2Step227ExitFOut,shrinkRow 768 s2Step227ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step227ExitFBefore s2Step227ExitFRow 156 s2Step227ExitF_distinct s2Step227ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step227ExitFRow.payload.take 156) s2Step227ExitFRow.sign=s2Step227ExitFOut := by decide +kernel
  have hi : s2Step227ExitFRow.payload.drop 156=s2Step227ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step227ExitF_retired] at result
  exact result

private def s2Step227ExitFvAfter : Arena := s2Step227ExitFAfter

private def s2Step227ExitFvBefore : Arena := s2Step227ExitFAfter

private theorem s2Step227ExitFv_Incoming : rowsOwned s2Step227ExitFvBefore [s2Step227ExitFvRow,s2Step227ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step227ExitGRow,s2Step227ExitFRow,s2Step227ExitFvRow,s2Step227ExitGvRow] 2 s2Step227ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step227ExitFvBefore (fun q => (0≤q ∧ q<668) ∨ (669≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step227ExitFv_Outgoing : rowsOwned s2Step227ExitGvAfter [s2Step227ExitFvOut,s2Step227ExitGvOut] :=
  hmrRows_owned_drop s2Step227ExitGvAfter [s2Step227ExitGOut,s2Step227ExitFOut,s2Step227ExitFvOut,s2Step227ExitGvOut] 2 s2Step227ExitBank_outgoingOwned

private theorem s2Step227ExitFv_distinct : (s2Step227ExitFvRow.sign::s2Step227ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step227ExitFv_owned : (s2Step227ExitFvRow.sign::s2Step227ExitFvRow.payload).toFinset⊆s2Step227ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step227ExitFvBefore (fun q => (0≤q ∧ q<668) ∨ (669≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step227ExitFv_reserved : s2Step227ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step227ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step227ExitFv_checked : planRowResizeLog s2Step227ExitFvBefore s2Step227ExitFvRow 129 []=
    some (s2Step227ExitFvAfter,s2Step227ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step227ExitFvBefore s2Step227ExitFvAfter s2Step227ExitFvRow 129 []
    s2Step227ExitFv_distinct s2Step227ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step227ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step227ExitFvRow.payload++[]) s2Step227ExitFvRow.sign=s2Step227ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step227ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private theorem s2Step227ExitG_Incoming : rowsOwned s2Step227ExitGBefore [s2Step227ExitGRow,s2Step227ExitFRow,s2Step227ExitFvRow,s2Step227ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step227ExitGRow,s2Step227ExitFRow,s2Step227ExitFvRow,s2Step227ExitGvRow] 0 s2Step227ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step227ExitGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step227ExitG_Outgoing : rowsOwned s2Step227ExitGvAfter [s2Step227ExitGOut,s2Step227ExitFOut,s2Step227ExitFvOut,s2Step227ExitGvOut] :=
  hmrRows_owned_drop s2Step227ExitGvAfter [s2Step227ExitGOut,s2Step227ExitFOut,s2Step227ExitFvOut,s2Step227ExitGvOut] 0 s2Step227ExitBank_outgoingOwned

private theorem s2Step227ExitG_distinct : (s2Step227ExitGRow.sign::s2Step227ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step227ExitG_owned : (s2Step227ExitGRow.sign::s2Step227ExitGRow.payload).toFinset⊆s2Step227ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step227ExitGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step227ExitG_retired : s2Step227ExitGBefore.retireSet s2Step227ExitGExtra.toFinset=s2Step227ExitGAfter := by
  unfold Arena.retireSet s2Step227ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step227ExitGBefore,s2Step227ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step227ExitG_checked : planRowResizeLog s2Step227ExitGBefore s2Step227ExitGRow 156 []=
    some (s2Step227ExitGAfter,s2Step227ExitGOut,shrinkRow 769 s2Step227ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step227ExitGBefore s2Step227ExitGRow 156 s2Step227ExitG_distinct s2Step227ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step227ExitGRow.payload.take 156) s2Step227ExitGRow.sign=s2Step227ExitGOut := by decide +kernel
  have hi : s2Step227ExitGRow.payload.drop 156=s2Step227ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step227ExitG_retired] at result
  exact result

private def s2Step227ExitGvBefore : Arena := s2Step227ExitFAfter

private theorem s2Step227ExitGv_Incoming : rowsOwned s2Step227ExitGvBefore [s2Step227ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step227ExitGRow,s2Step227ExitFRow,s2Step227ExitFvRow,s2Step227ExitGvRow] 3 s2Step227ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step227ExitGvBefore (fun q => (0≤q ∧ q<668) ∨ (669≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step227ExitGv_Outgoing : rowsOwned s2Step227ExitGvAfter [s2Step227ExitGvOut] :=
  hmrRows_owned_drop s2Step227ExitGvAfter [s2Step227ExitGOut,s2Step227ExitFOut,s2Step227ExitFvOut,s2Step227ExitGvOut] 3 s2Step227ExitBank_outgoingOwned

private theorem s2Step227ExitGv_distinct : (s2Step227ExitGvRow.sign::s2Step227ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step227ExitGv_owned : (s2Step227ExitGvRow.sign::s2Step227ExitGvRow.payload).toFinset⊆s2Step227ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step227ExitGvBefore (fun q => (0≤q ∧ q<668) ∨ (669≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step227ExitGv_retired : s2Step227ExitGvBefore.retireSet s2Step227ExitGvExtra.toFinset=s2Step227ExitGvAfter := by
  unfold Arena.retireSet s2Step227ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step227ExitGvBefore,s2Step227ExitFAfter,s2Step227ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step227ExitGv_checked : planRowResizeLog s2Step227ExitGvBefore s2Step227ExitGvRow 128 []=
    some (s2Step227ExitGvAfter,s2Step227ExitGvOut,shrinkRow 771 s2Step227ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step227ExitGvBefore s2Step227ExitGvRow 128 s2Step227ExitGv_distinct s2Step227ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step227ExitGvRow.payload.take 128) s2Step227ExitGvRow.sign=s2Step227ExitGvOut := by decide +kernel
  have hi : s2Step227ExitGvRow.payload.drop 128=s2Step227ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step227ExitGv_retired] at result
  exact result

private theorem s2Step227ExitBank_rows : planWindowRowsLog s2Step227ExitGBefore [(s2Step227ExitGRow,156),(s2Step227ExitFRow,156),(s2Step227ExitFvRow,129),(s2Step227ExitGvRow,128)] [[],[],[],[]]=
    some (s2Step227ExitGvAfter,[s2Step227ExitGOut,s2Step227ExitFOut,s2Step227ExitFvOut,s2Step227ExitGvOut],(shrinkRow 769 s2Step227ExitGExtra ++ (shrinkRow 768 s2Step227ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step227ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step227ExitGvAfter [] []=some (s2Step227ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step227ExitGvBefore s2Step227ExitGvAfter s2Step227ExitGvAfter
    s2Step227ExitGvRow s2Step227ExitGvOut 128 [] [] [] []
    (shrinkRow 771 s2Step227ExitGvExtra) ([]) s2Step227ExitGv_Incoming s2Step227ExitGv_checked h4 s2Step227ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step227ExitFvBefore s2Step227ExitFvAfter s2Step227ExitGvAfter
    s2Step227ExitFvRow s2Step227ExitFvOut 129 [] [(s2Step227ExitGvRow,128)] [[]] [s2Step227ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step227ExitGvExtra ++ [])) s2Step227ExitFv_Incoming s2Step227ExitFv_checked h3 s2Step227ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step227ExitFBefore s2Step227ExitFAfter s2Step227ExitGvAfter
    s2Step227ExitFRow s2Step227ExitFOut 156 [] [(s2Step227ExitFvRow,129),(s2Step227ExitGvRow,128)] [[],[]] [s2Step227ExitFvOut,s2Step227ExitGvOut]
    (shrinkRow 768 s2Step227ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step227ExitGvExtra ++ []))) s2Step227ExitF_Incoming s2Step227ExitF_checked h2 s2Step227ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step227ExitGBefore s2Step227ExitGAfter s2Step227ExitGvAfter
    s2Step227ExitGRow s2Step227ExitGOut 156 [] [(s2Step227ExitFRow,156),(s2Step227ExitFvRow,129),(s2Step227ExitGvRow,128)] [[],[],[]] [s2Step227ExitFOut,s2Step227ExitFvOut,s2Step227ExitGvOut]
    (shrinkRow 769 s2Step227ExitGExtra) ((shrinkRow 768 s2Step227ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step227ExitGvExtra ++ [])))) s2Step227ExitG_Incoming s2Step227ExitG_checked h1 s2Step227ExitG_Outgoing
  exact h0

private theorem s2Step227ExitBank_checked : compileHmrBankResizeLog .exit s2Step227ExitGBefore ⟨s2Step227ExitFRow,s2Step227ExitGRow,s2Step227ExitFvRow,s2Step227ExitGvRow⟩ ⟨156,156,129,128⟩ [[],[],[],[]]=
    some (s2Step227ExitGvAfter,⟨s2Step227ExitFOut,s2Step227ExitGOut,s2Step227ExitFvOut,s2Step227ExitGvOut⟩,(shrinkRow 769 s2Step227ExitGExtra ++ (shrinkRow 768 s2Step227ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step227ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step227ExitBank_rows]
  rfl

private theorem s2Step227Add0_apart : Disjoint s2Step227Add0Arena.live s2Step227Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step227Add0Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step227Add0_card : s2Step227Add0Arena.live.card=892 := by
  decide +kernel

private theorem s2Step227Add0_borrowed : s2Step227Add0Arena.checkBorrow (hmrHybridCount s2Step227Add0Arena s2Step227Add0B.length) s2Step227Add0Work=some s2Step227Add0During := by
  have len : s2Step227Add0Work.length=hmrHybridCount s2Step227Add0Arena s2Step227Add0B.length := by
    rw [hmrHybridCount,s2Step227Add0_card]
    decide +kernel
  have nd : s2Step227Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step227Add0Arena s2Step227Add0During s2Step227Add0Work.toFinset s2Step227Add0_bounded s2Step227Add0_apart rfl

private theorem s2Step227Add0_distinct : (814::808::882::(s2Step227Add0A++s2Step227Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step227Add0_owned : (814::808::882::(s2Step227Add0A++s2Step227Add0B)).toFinset⊆s2Step227Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step227Add0Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step227Add0_checked : compileHmrHybridCinLog s2Step227Add0Arena 808 814 882 s2Step227Add0A s2Step227Add0B s2Step227Add0Work=some s2Step227Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step227Add0Arena s2Step227Add0During 808 814 882 s2Step227Add0A s2Step227Add0B s2Step227Add0Work
    (by decide +kernel) (by decide +kernel) s2Step227Add0_distinct
    (fun q hq => s2Step227Add0_owned (List.mem_toFinset.mpr hq)) s2Step227Add0_borrowed

private theorem s2Step227Add1_apart : Disjoint s2Step227Add1Arena.live s2Step227Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step227Add1Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step227Add1_card : s2Step227Add1Arena.live.card=892 := by
  decide +kernel

private theorem s2Step227Add1_borrowed : s2Step227Add1Arena.checkBorrow (hmrHybridCount s2Step227Add1Arena s2Step227Add1B.length) s2Step227Add1Work=some s2Step227Add1During := by
  have len : s2Step227Add1Work.length=hmrHybridCount s2Step227Add1Arena s2Step227Add1B.length := by
    rw [hmrHybridCount,s2Step227Add1_card]
    decide +kernel
  have nd : s2Step227Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step227Add1Arena s2Step227Add1During s2Step227Add1Work.toFinset s2Step227Add1_bounded s2Step227Add1_apart rfl

private theorem s2Step227Add1_distinct : (814::808::882::(s2Step227Add1A++s2Step227Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step227Add1_owned : (814::808::882::(s2Step227Add1A++s2Step227Add1B)).toFinset⊆s2Step227Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step227Add1Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step227Add1_checked : compileHmrHybridCinLog s2Step227Add1Arena 808 814 882 s2Step227Add1A s2Step227Add1B s2Step227Add1Work=some s2Step227Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step227Add1Arena s2Step227Add1During 808 814 882 s2Step227Add1A s2Step227Add1B s2Step227Add1Work
    (by decide +kernel) (by decide +kernel) s2Step227Add1_distinct
    (fun q hq => s2Step227Add1_owned (List.mem_toFinset.mpr hq)) s2Step227Add1_borrowed

private theorem s2Step227F4_apart : Disjoint (s2Step227Add0A++s2Step227Add0B).toFinset (s2Step227Add1A++s2Step227Add1B).toFinset := by
  have nd : ((s2Step227Add0A++s2Step227Add0B)++(s2Step227Add1A++s2Step227Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step227F4_carry : s2Step227F4FlagArena.checkBorrow 1 [882]=some s2Step227Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step227F4FlagArena,s2Step227HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step227F4FlagArena,s2Step227HeadFvAfter,s2Step227Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step227F4_distinct : (810::808::814::882::((s2Step227Add0A++s2Step227Add1A)++(s2Step227Add0B++s2Step227Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step227F4_flag : s2Step227HeadFvAfter.checkBorrow 1 [814]=some s2Step227F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step227HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step227F4_owned : (810::808::((s2Step227Add0A++s2Step227Add1A)++(s2Step227Add0B++s2Step227Add1B))).toFinset⊆s2Step227HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step227HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step227F4_checked : compileHmrHybridF4Log s2Step227HeadFvAfter 810 808 s2Step227Add0A s2Step227Add0B s2Step227Add1A s2Step227Add1B [814] [882] s2Step227Add0Work s2Step227Add1Work=some s2Step227F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step227HeadFvAfter s2Step227F4FlagArena s2Step227Add0Arena s2Step227Add0During s2Step227Add1During 810 808
    s2Step227Add0A s2Step227Add0B s2Step227Add1A s2Step227Add1B [814] [882] s2Step227Add0Work s2Step227Add1Work
    (fun q hq => s2Step227F4_owned (List.mem_toFinset.mpr hq)) s2Step227F4_flag s2Step227F4_carry
    s2Step227F4_distinct s2Step227F4_apart s2Step227Add0_checked s2Step227Add1_checked

private theorem s2Step227Front_branch : s2Step227FrontSigmaArena.checkBorrow 1 [808]=some s2Step227HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step227FrontSigmaArena,s2Step227EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step227FrontSigmaArena,s2Step227EntryGvAfter,s2Step227HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step227Front_entry : HmrFrontEntryValid s2Step227EntryFBefore s2Step227FrontBank 157 128 ⟨156,156,129,128⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step227FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step227EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step227EntryFBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step227FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step227Front_sigma : s2Step227EntryGvAfter.checkBorrow 1 [810]=some s2Step227FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step227EntryGvAfter,arenaWires]
  · rfl

private def s2Step227HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step227HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step227HeadFBefore : Arena := s2Step227HeadGAfter

private def s2Step227HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668],768⟩

private def s2Step227HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790],770⟩

private def s2Step227HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 797],769⟩

private def s2Step227HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812],771⟩

private theorem s2Step227HeadBank_incomingDistinct : ([s2Step227HeadGRow,s2Step227HeadFRow,s2Step227HeadGvRow,s2Step227HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step227HeadF_Incoming : rowsOwned s2Step227HeadFBefore [s2Step227HeadFRow,s2Step227HeadGvRow,s2Step227HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step227HeadGRow,s2Step227HeadFRow,s2Step227HeadGvRow,s2Step227HeadFvRow] 1 s2Step227HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step227HeadFBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step227HeadBank_outgoingOwned : rowsOwned s2Step227HeadFvAfter [s2Step227HeadGOut,s2Step227HeadFOut,s2Step227HeadGvOut,s2Step227HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step227HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step227HeadF_Outgoing : rowsOwned s2Step227HeadFvAfter [s2Step227HeadFOut,s2Step227HeadGvOut,s2Step227HeadFvOut] :=
  hmrRows_owned_drop s2Step227HeadFvAfter [s2Step227HeadGOut,s2Step227HeadFOut,s2Step227HeadGvOut,s2Step227HeadFvOut] 1 s2Step227HeadBank_outgoingOwned

private theorem s2Step227HeadF_distinct : (s2Step227HeadFRow.sign::s2Step227HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step227HeadF_owned : (s2Step227HeadFRow.sign::s2Step227HeadFRow.payload).toFinset⊆s2Step227HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step227HeadFBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step227HeadF_reserved : s2Step227HeadFBefore.reserve s2Step227HeadFFresh.toFinset=some s2Step227HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step227HeadFFresh,arenaWires]
  · norm_num [s2Step227HeadFBefore,s2Step227HeadGAfter,s2Step227HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step227HeadFAfter,s2Step227HeadFBefore,s2Step227HeadGAfter,s2Step227HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step227HeadF_checked : planRowResizeLog s2Step227HeadFBefore s2Step227HeadFRow 158 s2Step227HeadFFresh=
    some (s2Step227HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 800],768⟩,growRow 768 s2Step227HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step227HeadFBefore s2Step227HeadFAfter s2Step227HeadFRow 158 s2Step227HeadFFresh
    s2Step227HeadF_distinct s2Step227HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step227HeadF_reserved
  have rowEq : WindowRow.mk (s2Step227HeadFRow.payload++s2Step227HeadFFresh) s2Step227HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 800],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step227HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step227HeadFvBefore : Arena := s2Step227HeadGvAfter

private theorem s2Step227HeadFv_Incoming : rowsOwned s2Step227HeadFvBefore [s2Step227HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step227HeadGRow,s2Step227HeadFRow,s2Step227HeadGvRow,s2Step227HeadFvRow] 3 s2Step227HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step227HeadFvBefore (fun q => (0≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step227HeadFv_Outgoing : rowsOwned s2Step227HeadFvAfter [s2Step227HeadFvOut] :=
  hmrRows_owned_drop s2Step227HeadFvAfter [s2Step227HeadGOut,s2Step227HeadFOut,s2Step227HeadGvOut,s2Step227HeadFvOut] 3 s2Step227HeadBank_outgoingOwned

private theorem s2Step227HeadFv_distinct : (s2Step227HeadFvRow.sign::s2Step227HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step227HeadFv_owned : (s2Step227HeadFvRow.sign::s2Step227HeadFvRow.payload).toFinset⊆s2Step227HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step227HeadFvBefore (fun q => (0≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step227HeadFv_reserved : s2Step227HeadFvBefore.reserve s2Step227HeadFvFresh.toFinset=some s2Step227HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step227HeadFvFresh,arenaWires]
  · norm_num [s2Step227HeadFvBefore,s2Step227HeadGvAfter,s2Step227HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step227HeadFvAfter,s2Step227HeadFvBefore,s2Step227HeadGvAfter,s2Step227HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step227HeadFv_checked : planRowResizeLog s2Step227HeadFvBefore s2Step227HeadFvRow 129 s2Step227HeadFvFresh=
    some (s2Step227HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811],770⟩,growRow 770 s2Step227HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step227HeadFvBefore s2Step227HeadFvAfter s2Step227HeadFvRow 129 s2Step227HeadFvFresh
    s2Step227HeadFv_distinct s2Step227HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step227HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step227HeadFvRow.payload++s2Step227HeadFvFresh) s2Step227HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step227HeadG_Incoming : rowsOwned s2Step227HeadGBefore [s2Step227HeadGRow,s2Step227HeadFRow,s2Step227HeadGvRow,s2Step227HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step227HeadGRow,s2Step227HeadFRow,s2Step227HeadGvRow,s2Step227HeadFvRow] 0 s2Step227HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step227HeadGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step227HeadG_Outgoing : rowsOwned s2Step227HeadFvAfter [s2Step227HeadGOut,s2Step227HeadFOut,s2Step227HeadGvOut,s2Step227HeadFvOut] :=
  hmrRows_owned_drop s2Step227HeadFvAfter [s2Step227HeadGOut,s2Step227HeadFOut,s2Step227HeadGvOut,s2Step227HeadFvOut] 0 s2Step227HeadBank_outgoingOwned

private theorem s2Step227HeadG_distinct : (s2Step227HeadGRow.sign::s2Step227HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step227HeadG_owned : (s2Step227HeadGRow.sign::s2Step227HeadGRow.payload).toFinset⊆s2Step227HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step227HeadGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step227HeadG_reserved : s2Step227HeadGBefore.reserve s2Step227HeadGFresh.toFinset=some s2Step227HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step227HeadGFresh,arenaWires]
  · norm_num [s2Step227HeadGBefore,s2Step227HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step227HeadGAfter,s2Step227HeadGBefore,s2Step227HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step227HeadG_checked : planRowResizeLog s2Step227HeadGBefore s2Step227HeadGRow 158 s2Step227HeadGFresh=
    some (s2Step227HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 797, 804],769⟩,growRow 769 s2Step227HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step227HeadGBefore s2Step227HeadGAfter s2Step227HeadGRow 158 s2Step227HeadGFresh
    s2Step227HeadG_distinct s2Step227HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step227HeadG_reserved
  have rowEq : WindowRow.mk (s2Step227HeadGRow.payload++s2Step227HeadGFresh) s2Step227HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 797, 804],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step227HeadGvBefore : Arena := s2Step227HeadFAfter

private theorem s2Step227HeadGv_Incoming : rowsOwned s2Step227HeadGvBefore [s2Step227HeadGvRow,s2Step227HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step227HeadGRow,s2Step227HeadFRow,s2Step227HeadGvRow,s2Step227HeadFvRow] 2 s2Step227HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step227HeadGvBefore (fun q => (0≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step227HeadGv_Outgoing : rowsOwned s2Step227HeadFvAfter [s2Step227HeadGvOut,s2Step227HeadFvOut] :=
  hmrRows_owned_drop s2Step227HeadFvAfter [s2Step227HeadGOut,s2Step227HeadFOut,s2Step227HeadGvOut,s2Step227HeadFvOut] 2 s2Step227HeadBank_outgoingOwned

private theorem s2Step227HeadGv_distinct : (s2Step227HeadGvRow.sign::s2Step227HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step227HeadGv_owned : (s2Step227HeadGvRow.sign::s2Step227HeadGvRow.payload).toFinset⊆s2Step227HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step227HeadGvBefore (fun q => (0≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step227HeadGv_reserved : s2Step227HeadGvBefore.reserve s2Step227HeadGvFresh.toFinset=some s2Step227HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step227HeadGvFresh,arenaWires]
  · norm_num [s2Step227HeadGvBefore,s2Step227HeadFAfter,s2Step227HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step227HeadGvAfter,s2Step227HeadGvBefore,s2Step227HeadFAfter,s2Step227HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step227HeadGv_checked : planRowResizeLog s2Step227HeadGvBefore s2Step227HeadGvRow 129 s2Step227HeadGvFresh=
    some (s2Step227HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 849],771⟩,growRow 771 s2Step227HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step227HeadGvBefore s2Step227HeadGvAfter s2Step227HeadGvRow 129 s2Step227HeadGvFresh
    s2Step227HeadGv_distinct s2Step227HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step227HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step227HeadGvRow.payload++s2Step227HeadGvFresh) s2Step227HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 849],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step227HeadBank_rows : planWindowRowsLog s2Step227HeadGBefore [(s2Step227HeadGRow,158),(s2Step227HeadFRow,158),(s2Step227HeadGvRow,129),(s2Step227HeadFvRow,129)] [s2Step227HeadGFresh,s2Step227HeadFFresh,s2Step227HeadGvFresh,s2Step227HeadFvFresh]=
    some (s2Step227HeadFvAfter,[s2Step227HeadGOut,s2Step227HeadFOut,s2Step227HeadGvOut,s2Step227HeadFvOut],(growRow 769 s2Step227HeadGFresh ++ (growRow 768 s2Step227HeadFFresh ++ (growRow 771 s2Step227HeadGvFresh ++ (growRow 770 s2Step227HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step227HeadFvAfter [] []=some (s2Step227HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step227HeadFvBefore s2Step227HeadFvAfter s2Step227HeadFvAfter
    s2Step227HeadFvRow s2Step227HeadFvOut 129 s2Step227HeadFvFresh [] [] []
    (growRow 770 s2Step227HeadFvFresh) ([]) s2Step227HeadFv_Incoming s2Step227HeadFv_checked h4 s2Step227HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step227HeadGvBefore s2Step227HeadGvAfter s2Step227HeadFvAfter
    s2Step227HeadGvRow s2Step227HeadGvOut 129 s2Step227HeadGvFresh [(s2Step227HeadFvRow,129)] [s2Step227HeadFvFresh] [s2Step227HeadFvOut]
    (growRow 771 s2Step227HeadGvFresh) ((growRow 770 s2Step227HeadFvFresh ++ [])) s2Step227HeadGv_Incoming s2Step227HeadGv_checked h3 s2Step227HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step227HeadFBefore s2Step227HeadFAfter s2Step227HeadFvAfter
    s2Step227HeadFRow s2Step227HeadFOut 158 s2Step227HeadFFresh [(s2Step227HeadGvRow,129),(s2Step227HeadFvRow,129)] [s2Step227HeadGvFresh,s2Step227HeadFvFresh] [s2Step227HeadGvOut,s2Step227HeadFvOut]
    (growRow 768 s2Step227HeadFFresh) ((growRow 771 s2Step227HeadGvFresh ++ (growRow 770 s2Step227HeadFvFresh ++ []))) s2Step227HeadF_Incoming s2Step227HeadF_checked h2 s2Step227HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step227HeadGBefore s2Step227HeadGAfter s2Step227HeadFvAfter
    s2Step227HeadGRow s2Step227HeadGOut 158 s2Step227HeadGFresh [(s2Step227HeadFRow,158),(s2Step227HeadGvRow,129),(s2Step227HeadFvRow,129)] [s2Step227HeadFFresh,s2Step227HeadGvFresh,s2Step227HeadFvFresh] [s2Step227HeadFOut,s2Step227HeadGvOut,s2Step227HeadFvOut]
    (growRow 769 s2Step227HeadGFresh) ((growRow 768 s2Step227HeadFFresh ++ (growRow 771 s2Step227HeadGvFresh ++ (growRow 770 s2Step227HeadFvFresh ++ [])))) s2Step227HeadG_Incoming s2Step227HeadG_checked h1 s2Step227HeadG_Outgoing
  exact h0

private theorem s2Step227HeadBank_checked : compileHmrBankResizeLog .headroom s2Step227HeadGBefore ⟨s2Step227HeadFRow,s2Step227HeadGRow,s2Step227HeadFvRow,s2Step227HeadGvRow⟩ ⟨158,158,129,129⟩ [s2Step227HeadGFresh,s2Step227HeadFFresh,s2Step227HeadGvFresh,s2Step227HeadFvFresh]=
    some (s2Step227HeadFvAfter,⟨s2Step227HeadFOut,s2Step227HeadGOut,s2Step227HeadFvOut,s2Step227HeadGvOut⟩,(growRow 769 s2Step227HeadGFresh ++ (growRow 768 s2Step227HeadFFresh ++ (growRow 771 s2Step227HeadGvFresh ++ (growRow 770 s2Step227HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step227HeadBank_rows]
  rfl

private theorem s2Step227Front_checked : compileHmrSourceFrontLog s2Step227EntryFBefore s2Step227FrontBank 157 128 ⟨156,156,129,128⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step227FrontLog=some s2Step227FrontPlan := by
  have pairEq : s2Step227FrontPair=⟨s2Step227HeadFRow,s2Step227HeadGRow,s2Step227HeadFvRow,s2Step227HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step227FrontHead=⟨s2Step227ExitFRow,s2Step227ExitGRow,s2Step227ExitFvRow,s2Step227ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step227Add0A=s2Step227FrontHead.f.wires := by decide +kernel
  have gEq : s2Step227Add0B=s2Step227FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step227Add1A=s2Step227FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step227Add1B=s2Step227FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step227EntryFBefore s2Step227FrontBank 157 128 ⟨156,156,129,128⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step227FrontLog s2Step227FrontPlan
  · exact s2Step227Front_entry
  · exact s2Step227EntryBank_checked
  · exact s2Step227Front_sigma
  · rfl
  · exact s2Step227Front_branch
  · rfl
  · simpa only [s2Step227FrontPlan,pairEq] using s2Step227HeadBank_checked
  · simpa only [s2Step227FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step227F4_checked
  · exact s2Step227Counter_checked
  · rfl
  · simpa only [s2Step227FrontPlan,headEq] using s2Step227ExitBank_checked

private theorem s2Step227Complete_explicit_checked : compileHmrEarlyStepLog s2Step227EntryFBefore s2Step227FrontBank 157 128 ⟨156,156,129,128⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895] 49 s2Step227CompleteLog=some s2Step227CompletePlan := by
  let Q := s2Step227EarlyControlPlan
  have hq := s2Step227EarlyControl_plan_checked
  have fv1 : s2Step227CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step227CompleteOut.fv.payload[2]?.getD s2Step227CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step227CompleteOut.fv.payload[3]?.getD s2Step227CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step227CompleteOut.fv.payload[4]?.getD s2Step227CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step227EntryFBefore s2Step227EarlyControlArena s2Step227FrontBank 157 128 ⟨156,156,129,128⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895] 49 s2Step227CompleteLog s2Step227FrontPlan Q
    s2Step227Front_checked s2Step227Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step227Complete_owned s2Step227Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step227EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895] 777 810 s2Step227CompleteOut.fv.second (s2Step227CompleteOut.fv.payload[2]?.getD s2Step227CompleteOut.fv.sign) (s2Step227CompleteOut.fv.payload[3]?.getD s2Step227CompleteOut.fv.sign) (s2Step227CompleteOut.fv.payload[4]?.getD s2Step227CompleteOut.fv.sign) 808 49 s2Step227EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep227Arena : Arena := s2Step227EntryFBefore
def s2PrivateStep227Bank : WindowBank := s2Step227FrontBank
def s2PrivateStep227Spec : HmrSourceWalkStepLog := ⟨157,128,⟨156,156,129,128⟩,49,.early s2Step227CompleteLog⟩
def s2PrivateStep227Plan : HmrSourceStepPlan := .early s2Step227CompletePlan
theorem s2PrivateStep227_source : s2PrivateStep227Spec=s2ObservedLogs224[3] := rfl
theorem s2PrivateStep227_checked : compileHmrSourceStepLog s2PrivateStep227Arena s2PrivateStep227Bank
    s2PrivateStep227Spec.fgWidth s2PrivateStep227Spec.vWidth s2PrivateStep227Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895]
    6 498 227 s2PrivateStep227Spec.need none s2PrivateStep227Spec.log=some s2PrivateStep227Plan := by
  change compileHmrSourceStepLog s2Step227EntryFBefore s2Step227FrontBank 157 128 ⟨156,156,129,128⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895] 6 498 227 49 none (.early s2Step227CompleteLog)=some (.early s2Step227CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 227<498)]
  rw [s2Step227Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
