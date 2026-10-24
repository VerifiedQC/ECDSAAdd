import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep197
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

private def s2Step199CompleteMoves : List (Wire × Wire) := []

private def s2Step199EarlyControlLog : HmrEarlyControlLog := ⟨[781, 822, 867, 829, 842],[814],[879],[882, 885, 891, 894, 895, 896],[897]⟩

private def s2Step199FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [842], [], [781, 822]],[[814], [829], [867], [877]],[[], [], [], []]⟩,[807],[826],[879],[882],[885, 891, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[885, 891, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[879, 882, 885, 891]⟩

private def s2Step199CompleteLog : HmrEarlyStepLog := ⟨s2Step199FrontLog,s2Step199CompleteMoves,s2Step199EarlyControlLog⟩

private def s2Step199ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682],768⟩

private def s2Step199ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 877],770⟩

private def s2Step199ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169],769⟩

private def s2Step199ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840],771⟩

private def s2Step199FrontOut : WindowBank := ⟨s2Step199ExitFOut,s2Step199ExitGOut,s2Step199ExitFvOut,s2Step199ExitGvOut⟩

private def s2Step199CompleteOut : WindowBank := s2Step199FrontOut.repacked s2Step199CompleteMoves

private def s2Step199EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)),Finset.filter_subset _ _⟩

private def s2Step199EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)),Finset.filter_subset _ _⟩

private def s2Step199EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)),Finset.filter_subset _ _⟩

private def s2Step199EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step199EarlyControlPositiveArena,[814],s2Step199EarlyControlEqualityArena,[879],⟨⟨807,false⟩,[⟨⟨814,false⟩,879⟩]⟩⟩

private def s2Step199EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step199EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<897)),Finset.filter_subset _ _⟩

private def s2Step199EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step199EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step199EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step199EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)),Finset.filter_subset _ _⟩

private def s2Step199EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,781⟩,⟨⟨774,false⟩,822⟩,⟨⟨775,false⟩,867⟩,⟨⟨776,false⟩,829⟩,⟨⟨777,false⟩,842⟩]⟩

private def s2Step199EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step199EarlyControlZeroArena,s2Step199EarlyControlZeroPlan,s2Step199EarlyControlClassPlan,s2Step199EarlyControlFlagArena,s2Step199EarlyControlFittedArena,s2Step199EarlyControlHistoryArena,s2Step199EarlyControlSigmaArena,s2Step199EarlyControlOutputArena,s2Step199EarlyControlLog⟩

private def s2Step199CounterWork : List Wire := [879, 882, 885, 891]

private theorem s2Step199Counter_bounded : s2Step199CounterWork.toFinset⊆arenaWires := by norm_num [s2Step199CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step199HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)),Finset.filter_subset _ _⟩

private def s2Step199CounterDuring : Arena := ⟨s2Step199HeadFvAfter.live∪s2Step199CounterWork.toFinset,Finset.union_subset s2Step199HeadFvAfter.bounded s2Step199Counter_bounded⟩

private def s2Step199EntryFFresh : List Wire := []

private def s2Step199EntryFvFresh : List Wire := []

private def s2Step199EntryGFresh : List Wire := [842]

private def s2Step199EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)),Finset.filter_subset _ _⟩

private def s2Step199EntryGvFresh : List Wire := [781, 822]

private def s2Step199ExitFExtra : List Wire := [829]

private def s2Step199ExitGExtra : List Wire := [842, 814]

private def s2Step199ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)),Finset.filter_subset _ _⟩

private def s2Step199ExitGvExtra : List Wire := [781, 822, 867]

private def s2Step199Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)),Finset.filter_subset _ _⟩

private def s2Step199Add0Work : List Wire := [885, 891, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step199Add0_bounded : s2Step199Add0Work.toFinset⊆arenaWires := by
  have h : s2Step199Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step199Add0During : Arena := ⟨s2Step199Add0Arena.live∪s2Step199Add0Work.toFinset,Finset.union_subset s2Step199Add0Arena.bounded s2Step199Add0_bounded⟩

private def s2Step199Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)),Finset.filter_subset _ _⟩

private def s2Step199Add1Work : List Wire := [885, 891, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step199Add1_bounded : s2Step199Add1Work.toFinset⊆arenaWires := by
  have h : s2Step199Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step199Add1During : Arena := ⟨s2Step199Add1Arena.live∪s2Step199Add1Work.toFinset,Finset.union_subset s2Step199Add1Arena.bounded s2Step199Add1_bounded⟩

private def s2Step199F4FlagArena : Arena := ⟨s2Step199HeadFvAfter.live∪{879},Finset.union_subset s2Step199HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step199F4Plan : HmrHybridF4Plan := ⟨s2Step199F4FlagArena,[879],s2Step199Add0Arena,[882],s2Step199Add0During,s2Step199Add0Work,s2Step199Add1During,s2Step199Add1Work⟩

private def s2Step199HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 829],768⟩

private def s2Step199HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 877],770⟩

private def s2Step199HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 842, 814],769⟩

private def s2Step199HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 781, 822, 867],771⟩

private def s2Step199FrontHead : WindowBank := ⟨s2Step199HeadFOut,s2Step199HeadGOut,s2Step199HeadFvOut,s2Step199HeadGvOut⟩

private def s2Step199EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682],768⟩

private def s2Step199EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794],770⟩

private def s2Step199EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 842],769⟩

private def s2Step199EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 781, 822],771⟩

private def s2Step199FrontPair : WindowBank := ⟨s2Step199EntryFOut,s2Step199EntryGOut,s2Step199EntryFvOut,s2Step199EntryGvOut⟩

private def s2Step199FrontSigmaArena : Arena := ⟨s2Step199EntryGvAfter.live∪{807},Finset.union_subset s2Step199EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step199HeadFFresh : List Wire := [829]

private def s2Step199HeadFvFresh : List Wire := [877]

private def s2Step199HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<829) ∨ (830≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)),Finset.filter_subset _ _⟩

private def s2Step199HeadGFresh : List Wire := [814]

private def s2Step199HeadGvFresh : List Wire := [867]

private def s2Step199FrontPlan : HmrSourceFront := ⟨s2Step199EntryGvAfter,s2Step199FrontPair,(growRow 768 s2Step199EntryFFresh ++ (growRow 769 s2Step199EntryGFresh ++ (growRow 770 s2Step199EntryFvFresh ++ (growRow 771 s2Step199EntryGvFresh ++ [])))),s2Step199FrontSigmaArena,[807],s2Step199HeadGBefore,[826],
  s2Step199HeadFvAfter,s2Step199FrontHead,(growRow 769 s2Step199HeadGFresh ++ (growRow 768 s2Step199HeadFFresh ++ (growRow 771 s2Step199HeadGvFresh ++ (growRow 770 s2Step199HeadFvFresh ++ [])))),s2Step199F4Plan,s2Step199CounterDuring,s2Step199CounterWork,s2Step199ExitGvAfter,s2Step199FrontOut,(shrinkRow 769 s2Step199ExitGExtra ++ (shrinkRow 768 s2Step199ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step199ExitGvExtra ++ []))))⟩

private def s2Step199CompletePlan : HmrEarlyStepPlan := ⟨s2Step199FrontPlan,s2Step199EarlyControlArena,s2Step199EarlyControlPlan,s2Step199CompleteMoves⟩

private theorem s2Step199Complete_apart : List.Disjoint (s2Step199CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [807, 826, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893] := by
  have nd : ((s2Step199CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[807, 826, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step199Complete_owned : (s2Step199CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step199EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step199EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step199Complete_repack : s2Step199ExitGvAfter.checkRepack s2Step199CompleteMoves=some s2Step199EarlyControlArena := by rfl

private theorem s2Step199EarlyControl_branchOwned : ([826] : List Wire).toFinset⊆s2Step199EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step199EarlyControlSigmaArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step199EarlyControl_branch : compileHmrBranchRetirement s2Step199EarlyControlSigmaArena 826=some s2Step199EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step199EarlyControl_branchOwned
  · ext q
    simp [s2Step199EarlyControlOutputArena,s2Step199EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step199EarlyControl_classEqualityBorrow : s2Step199EarlyControlPositiveArena.checkBorrow (([807, 814] : List Wire).length-1) s2Step199EarlyControlLog.classWork=some s2Step199EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step199EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step199EarlyControlPositiveArena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
      decide +kernel
    · ext q
      simp [s2Step199EarlyControlEqualityArena,s2Step199EarlyControlPositiveArena,s2Step199EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step199EarlyControl_classEqualityOwned : ([807, 814] : List Wire).toFinset⊆s2Step199EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step199EarlyControlPositiveArena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step199EarlyControl_classEquality : compileHmrEqualityLog s2Step199EarlyControlPositiveArena [807, 814] 0 s2Step199EarlyControlLog.classWork=some (s2Step199EarlyControlEqualityArena,s2Step199EarlyControlLog.classWork,s2Step199EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step199EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step199EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step199EarlyControl_classOwned : ([777, 842, 807] : List Wire).toFinset⊆s2Step199EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step199EarlyControlZeroArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step199EarlyControl_positiveBorrow : s2Step199EarlyControlZeroArena.checkBorrow (1) s2Step199EarlyControlLog.positiveWork=some s2Step199EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step199EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step199EarlyControlZeroArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
      decide +kernel
    · ext q
      simp [s2Step199EarlyControlPositiveArena,s2Step199EarlyControlZeroArena,s2Step199EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step199EarlyControl_class : compileHmrSourceClassLog s2Step199EarlyControlZeroArena false 777 s2Step199EarlyControlZeroPlan.top 0 807 s2Step199EarlyControlLog.positiveWork s2Step199EarlyControlLog.classWork=some s2Step199EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step199EarlyControlClassPlan s2Step199EarlyControlZeroArena false 777 s2Step199EarlyControlZeroPlan.top 0 807
  constructor
  · decide +kernel
  · exact s2Step199EarlyControl_classOwned
  · exact s2Step199EarlyControl_positiveBorrow
  · exact s2Step199EarlyControl_classEquality

private theorem s2Step199EarlyControl_entryRecordOwned : ([826, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893] : List Wire).toFinset⊆s2Step199EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step199EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step199EarlyControl_entrySigmaOwned : ([807, 254] : List Wire).toFinset⊆s2Step199EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step199EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step199EarlyControl_fitBorrow : s2Step199EarlyControlFlagArena.checkBorrow ((47-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893] : List Wire).length)) s2Step199EarlyControlLog.recordFresh=some s2Step199EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step199EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step199EarlyControlFlagArena (fun q => (0≤q ∧ q<897)) rfl
      decide +kernel
    · ext q
      simp [s2Step199EarlyControlFittedArena,s2Step199EarlyControlFlagArena,s2Step199EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step199EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893] : List Wire).toFinset⊆s2Step199EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step199EarlyControlFlagArena (fun q => (0≤q ∧ q<897)) rfl
  decide +kernel

private theorem s2Step199EarlyControl_fit : compileHmrRecordGrowLog s2Step199EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893] 47 s2Step199EarlyControlLog.recordFresh=some s2Step199EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step199EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step199EarlyControl_fitBorrow

private theorem s2Step199EarlyControl_flagsBorrow : s2Step199EarlyControlEqualityArena.checkBorrow (6) s2Step199EarlyControlLog.flagWork=some s2Step199EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step199EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step199EarlyControlEqualityArena (fun q => (0≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
      decide +kernel
    · ext q
      simp [s2Step199EarlyControlFlagArena,s2Step199EarlyControlEqualityArena,s2Step199EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step199EarlyControl_flagsOwned : ([879, 253, 252, 251] : List Wire).toFinset⊆s2Step199EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step199EarlyControlEqualityArena (fun q => (0≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step199EarlyControl_flags : compileHmrFlagsLog s2Step199EarlyControlClassPlan.equalityArena s2Step199EarlyControlClassPlan.equality.top 253 252 251 s2Step199EarlyControlLog.flagWork=some s2Step199EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step199EarlyControl_flagsOwned⟩
  · exact s2Step199EarlyControl_flagsBorrow

private theorem s2Step199EarlyControl_historyBorrow : s2Step199EarlyControlArena.checkBorrow ((47-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893] : List Wire).length)) s2Step199EarlyControlLog.recordFresh=some s2Step199EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step199EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step199EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
      decide +kernel
    · ext q
      simp [s2Step199EarlyControlHistoryArena,s2Step199EarlyControlArena,s2Step199EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step199EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893] : List Wire).toFinset⊆s2Step199EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step199EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step199EarlyControl_history : compileHmrRecordGrowLog s2Step199EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893] 47 s2Step199EarlyControlLog.recordFresh=some s2Step199EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step199EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step199EarlyControl_historyBorrow

private theorem s2Step199EarlyControl_sigmaOwned : ([254, 807] : List Wire).toFinset⊆s2Step199EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step199EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step199EarlyControl_sigmaReleaseOwned : ([807] : List Wire).toFinset⊆s2Step199EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step199EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step199EarlyControl_sigmaRelease : s2Step199EarlyControlHistoryArena.release {807} (fun _ => false)=some s2Step199EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step199EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step199EarlyControlSigmaArena,s2Step199EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step199EarlyControl_sigma : compileHmrSigmaDropLog s2Step199EarlyControlHistoryArena false 0 0 254 807 []=some s2Step199EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step199EarlyControl_sigmaOwned⟩
  · exact s2Step199EarlyControl_sigmaRelease

private theorem s2Step199EarlyControl_zeroBorrow : s2Step199EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step199EarlyControlLog.zeroWork=some s2Step199EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step199EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step199EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
      decide +kernel
    · ext q
      simp [s2Step199EarlyControlZeroArena,s2Step199EarlyControlArena,s2Step199EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step199EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step199EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step199EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step199EarlyControl_zero : compileHmrEqualityLog s2Step199EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step199EarlyControlLog.zeroWork=some (s2Step199EarlyControlZeroArena,s2Step199EarlyControlLog.zeroWork,s2Step199EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step199EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step199EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step199EarlyControl_logged : s2Step199EarlyControlPlan.Logged s2Step199EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893] 777 807 254 253 252 251 826 47 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step199EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step199EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step199EarlyControl_zero
  · exact s2Step199EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step199EarlyControl_flags
  · exact s2Step199EarlyControl_fit
  · exact s2Step199EarlyControl_history
  · exact s2Step199EarlyControl_sigma
  · exact s2Step199EarlyControl_branch

private theorem s2Step199EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step199EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893] 777 807 254 253 252 251 826 47 s2Step199EarlyControlLog=some s2Step199EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step199EarlyControlPlan s2Step199EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893] 777 807 254 253 252 251 826 47 s2Step199EarlyControl_logged

private def s2Step199EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)),Finset.filter_subset _ _⟩

private def s2Step199EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682],768⟩

private def s2Step199EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794],770⟩

private def s2Step199EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169],769⟩

private def s2Step199EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840],771⟩

private def s2Step199FrontBank : WindowBank := ⟨s2Step199EntryFRow,s2Step199EntryGRow,s2Step199EntryFvRow,s2Step199EntryGvRow⟩

private def s2Step199Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 829, 768]

private def s2Step199Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 842, 814, 769]

private def s2Step199Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 877, 770]

private def s2Step199Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 781, 822, 867, 771]

private theorem s2Step199Counter_apart : Disjoint s2Step199HeadFvAfter.live s2Step199CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step199HeadFvAfter (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step199Counter_borrowed : s2Step199HeadFvAfter.checkBorrow 4 s2Step199CounterWork=some s2Step199CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step199HeadFvAfter s2Step199CounterDuring s2Step199CounterWork.toFinset s2Step199Counter_bounded s2Step199Counter_apart rfl

private theorem s2Step199Counter_owned : (807::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step199HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step199HeadFvAfter (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step199Counter_checked : compileHmrCounterStepLog s2Step199HeadFvAfter true 807 [772, 773, 774, 775, 776, 777] s2Step199CounterWork=some s2Step199CounterDuring := by
  have owned : ∀q∈807::[772, 773, 774, 775, 776, 777],q∈s2Step199HeadFvAfter.live := fun q hq => s2Step199Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step199Counter_borrowed

private def s2Step199EntryFAfter : Arena := s2Step199EntryFBefore

private theorem s2Step199EntryBank_incomingDistinct : ([s2Step199EntryFRow,s2Step199EntryGRow,s2Step199EntryFvRow,s2Step199EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step199EntryF_Incoming : rowsOwned s2Step199EntryFBefore [s2Step199EntryFRow,s2Step199EntryGRow,s2Step199EntryFvRow,s2Step199EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step199EntryFRow,s2Step199EntryGRow,s2Step199EntryFvRow,s2Step199EntryGvRow] 0 s2Step199EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step199EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
    decide +kernel

private theorem s2Step199EntryBank_outgoingOwned : rowsOwned s2Step199EntryGvAfter [s2Step199EntryFOut,s2Step199EntryGOut,s2Step199EntryFvOut,s2Step199EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step199EntryGvAfter (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
    decide +kernel

private theorem s2Step199EntryF_Outgoing : rowsOwned s2Step199EntryGvAfter [s2Step199EntryFOut,s2Step199EntryGOut,s2Step199EntryFvOut,s2Step199EntryGvOut] :=
  hmrRows_owned_drop s2Step199EntryGvAfter [s2Step199EntryFOut,s2Step199EntryGOut,s2Step199EntryFvOut,s2Step199EntryGvOut] 0 s2Step199EntryBank_outgoingOwned

private theorem s2Step199EntryF_distinct : (s2Step199EntryFRow.sign::s2Step199EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step199EntryF_owned : (s2Step199EntryFRow.sign::s2Step199EntryFRow.payload).toFinset⊆s2Step199EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step199EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step199EntryF_reserved : s2Step199EntryFBefore.reserve s2Step199EntryFFresh.toFinset=some s2Step199EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step199EntryFFresh,arenaWires]
  · norm_num [s2Step199EntryFBefore,s2Step199EntryFFresh,arenaWires]
  · simp only [s2Step199EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step199EntryF_checked : planRowResizeLog s2Step199EntryFBefore s2Step199EntryFRow 171 s2Step199EntryFFresh=
    some (s2Step199EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682],768⟩,growRow 768 s2Step199EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step199EntryFBefore s2Step199EntryFAfter s2Step199EntryFRow 171 s2Step199EntryFFresh
    s2Step199EntryF_distinct s2Step199EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step199EntryF_reserved
  have rowEq : WindowRow.mk (s2Step199EntryFRow.payload++s2Step199EntryFFresh) s2Step199EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step199EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)),Finset.filter_subset _ _⟩

private def s2Step199EntryFvAfter : Arena := s2Step199EntryGAfter

private def s2Step199EntryFvBefore : Arena := s2Step199EntryGAfter

private theorem s2Step199EntryFv_Incoming : rowsOwned s2Step199EntryFvBefore [s2Step199EntryFvRow,s2Step199EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step199EntryFRow,s2Step199EntryGRow,s2Step199EntryFvRow,s2Step199EntryGvRow] 2 s2Step199EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step199EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
    decide +kernel

private theorem s2Step199EntryFv_Outgoing : rowsOwned s2Step199EntryGvAfter [s2Step199EntryFvOut,s2Step199EntryGvOut] :=
  hmrRows_owned_drop s2Step199EntryGvAfter [s2Step199EntryFOut,s2Step199EntryGOut,s2Step199EntryFvOut,s2Step199EntryGvOut] 2 s2Step199EntryBank_outgoingOwned

private theorem s2Step199EntryFv_distinct : (s2Step199EntryFvRow.sign::s2Step199EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step199EntryFv_owned : (s2Step199EntryFvRow.sign::s2Step199EntryFvRow.payload).toFinset⊆s2Step199EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step199EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step199EntryFv_reserved : s2Step199EntryFvBefore.reserve s2Step199EntryFvFresh.toFinset=some s2Step199EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step199EntryFvFresh,arenaWires]
  · norm_num [s2Step199EntryFvBefore,s2Step199EntryGAfter,s2Step199EntryFvFresh,arenaWires]
  · simp only [s2Step199EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step199EntryFv_checked : planRowResizeLog s2Step199EntryFvBefore s2Step199EntryFvRow 115 s2Step199EntryFvFresh=
    some (s2Step199EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794],770⟩,growRow 770 s2Step199EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step199EntryFvBefore s2Step199EntryFvAfter s2Step199EntryFvRow 115 s2Step199EntryFvFresh
    s2Step199EntryFv_distinct s2Step199EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step199EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step199EntryFvRow.payload++s2Step199EntryFvFresh) s2Step199EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step199EntryGBefore : Arena := s2Step199EntryFBefore

private theorem s2Step199EntryG_Incoming : rowsOwned s2Step199EntryGBefore [s2Step199EntryGRow,s2Step199EntryFvRow,s2Step199EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step199EntryFRow,s2Step199EntryGRow,s2Step199EntryFvRow,s2Step199EntryGvRow] 1 s2Step199EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step199EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
    decide +kernel

private theorem s2Step199EntryG_Outgoing : rowsOwned s2Step199EntryGvAfter [s2Step199EntryGOut,s2Step199EntryFvOut,s2Step199EntryGvOut] :=
  hmrRows_owned_drop s2Step199EntryGvAfter [s2Step199EntryFOut,s2Step199EntryGOut,s2Step199EntryFvOut,s2Step199EntryGvOut] 1 s2Step199EntryBank_outgoingOwned

private theorem s2Step199EntryG_distinct : (s2Step199EntryGRow.sign::s2Step199EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step199EntryG_owned : (s2Step199EntryGRow.sign::s2Step199EntryGRow.payload).toFinset⊆s2Step199EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step199EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step199EntryG_reserved : s2Step199EntryGBefore.reserve s2Step199EntryGFresh.toFinset=some s2Step199EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step199EntryGFresh,arenaWires]
  · norm_num [s2Step199EntryGBefore,s2Step199EntryFBefore,s2Step199EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step199EntryGAfter,s2Step199EntryGBefore,s2Step199EntryFBefore,s2Step199EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step199EntryG_checked : planRowResizeLog s2Step199EntryGBefore s2Step199EntryGRow 171 s2Step199EntryGFresh=
    some (s2Step199EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 842],769⟩,growRow 769 s2Step199EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step199EntryGBefore s2Step199EntryGAfter s2Step199EntryGRow 171 s2Step199EntryGFresh
    s2Step199EntryG_distinct s2Step199EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step199EntryG_reserved
  have rowEq : WindowRow.mk (s2Step199EntryGRow.payload++s2Step199EntryGFresh) s2Step199EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 842],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step199EntryGvBefore : Arena := s2Step199EntryGAfter

private theorem s2Step199EntryGv_Incoming : rowsOwned s2Step199EntryGvBefore [s2Step199EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step199EntryFRow,s2Step199EntryGRow,s2Step199EntryFvRow,s2Step199EntryGvRow] 3 s2Step199EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step199EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
    decide +kernel

private theorem s2Step199EntryGv_Outgoing : rowsOwned s2Step199EntryGvAfter [s2Step199EntryGvOut] :=
  hmrRows_owned_drop s2Step199EntryGvAfter [s2Step199EntryFOut,s2Step199EntryGOut,s2Step199EntryFvOut,s2Step199EntryGvOut] 3 s2Step199EntryBank_outgoingOwned

private theorem s2Step199EntryGv_distinct : (s2Step199EntryGvRow.sign::s2Step199EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step199EntryGv_owned : (s2Step199EntryGvRow.sign::s2Step199EntryGvRow.payload).toFinset⊆s2Step199EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step199EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step199EntryGv_reserved : s2Step199EntryGvBefore.reserve s2Step199EntryGvFresh.toFinset=some s2Step199EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step199EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step199EntryGvBefore,s2Step199EntryGAfter,s2Step199EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step199EntryGvAfter,s2Step199EntryGvBefore,s2Step199EntryGAfter,s2Step199EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step199EntryGv_checked : planRowResizeLog s2Step199EntryGvBefore s2Step199EntryGvRow 115 s2Step199EntryGvFresh=
    some (s2Step199EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 781, 822],771⟩,growRow 771 s2Step199EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step199EntryGvBefore s2Step199EntryGvAfter s2Step199EntryGvRow 115 s2Step199EntryGvFresh
    s2Step199EntryGv_distinct s2Step199EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step199EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step199EntryGvRow.payload++s2Step199EntryGvFresh) s2Step199EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 781, 822],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step199EntryBank_rows : planWindowRowsLog s2Step199EntryFBefore [(s2Step199EntryFRow,171),(s2Step199EntryGRow,171),(s2Step199EntryFvRow,115),(s2Step199EntryGvRow,115)] [s2Step199EntryFFresh,s2Step199EntryGFresh,s2Step199EntryFvFresh,s2Step199EntryGvFresh]=
    some (s2Step199EntryGvAfter,[s2Step199EntryFOut,s2Step199EntryGOut,s2Step199EntryFvOut,s2Step199EntryGvOut],(growRow 768 s2Step199EntryFFresh ++ (growRow 769 s2Step199EntryGFresh ++ (growRow 770 s2Step199EntryFvFresh ++ (growRow 771 s2Step199EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step199EntryGvAfter [] []=some (s2Step199EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step199EntryGvBefore s2Step199EntryGvAfter s2Step199EntryGvAfter
    s2Step199EntryGvRow s2Step199EntryGvOut 115 s2Step199EntryGvFresh [] [] []
    (growRow 771 s2Step199EntryGvFresh) ([]) s2Step199EntryGv_Incoming s2Step199EntryGv_checked h4 s2Step199EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step199EntryFvBefore s2Step199EntryFvAfter s2Step199EntryGvAfter
    s2Step199EntryFvRow s2Step199EntryFvOut 115 s2Step199EntryFvFresh [(s2Step199EntryGvRow,115)] [s2Step199EntryGvFresh] [s2Step199EntryGvOut]
    (growRow 770 s2Step199EntryFvFresh) ((growRow 771 s2Step199EntryGvFresh ++ [])) s2Step199EntryFv_Incoming s2Step199EntryFv_checked h3 s2Step199EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step199EntryGBefore s2Step199EntryGAfter s2Step199EntryGvAfter
    s2Step199EntryGRow s2Step199EntryGOut 171 s2Step199EntryGFresh [(s2Step199EntryFvRow,115),(s2Step199EntryGvRow,115)] [s2Step199EntryFvFresh,s2Step199EntryGvFresh] [s2Step199EntryFvOut,s2Step199EntryGvOut]
    (growRow 769 s2Step199EntryGFresh) ((growRow 770 s2Step199EntryFvFresh ++ (growRow 771 s2Step199EntryGvFresh ++ []))) s2Step199EntryG_Incoming s2Step199EntryG_checked h2 s2Step199EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step199EntryFBefore s2Step199EntryFAfter s2Step199EntryGvAfter
    s2Step199EntryFRow s2Step199EntryFOut 171 s2Step199EntryFFresh [(s2Step199EntryGRow,171),(s2Step199EntryFvRow,115),(s2Step199EntryGvRow,115)] [s2Step199EntryGFresh,s2Step199EntryFvFresh,s2Step199EntryGvFresh] [s2Step199EntryGOut,s2Step199EntryFvOut,s2Step199EntryGvOut]
    (growRow 768 s2Step199EntryFFresh) ((growRow 769 s2Step199EntryGFresh ++ (growRow 770 s2Step199EntryFvFresh ++ (growRow 771 s2Step199EntryGvFresh ++ [])))) s2Step199EntryF_Incoming s2Step199EntryF_checked h1 s2Step199EntryF_Outgoing
  exact h0

private theorem s2Step199EntryBank_checked : compileHmrBankResizeLog .entry s2Step199EntryFBefore ⟨s2Step199EntryFRow,s2Step199EntryGRow,s2Step199EntryFvRow,s2Step199EntryGvRow⟩ ⟨171,171,115,115⟩ [s2Step199EntryFFresh,s2Step199EntryGFresh,s2Step199EntryFvFresh,s2Step199EntryGvFresh]=
    some (s2Step199EntryGvAfter,⟨s2Step199EntryFOut,s2Step199EntryGOut,s2Step199EntryFvOut,s2Step199EntryGvOut⟩,(growRow 768 s2Step199EntryFFresh ++ (growRow 769 s2Step199EntryGFresh ++ (growRow 770 s2Step199EntryFvFresh ++ (growRow 771 s2Step199EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step199EntryBank_rows]
  rfl

private def s2Step199ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<829) ∨ (830≤q ∧ q<842) ∨ (843≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)),Finset.filter_subset _ _⟩

private def s2Step199ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<842) ∨ (843≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)),Finset.filter_subset _ _⟩

private def s2Step199ExitFBefore : Arena := s2Step199ExitGAfter

private def s2Step199ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 829],768⟩

private def s2Step199ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 877],770⟩

private def s2Step199ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 842, 814],769⟩

private def s2Step199ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 781, 822, 867],771⟩

private theorem s2Step199ExitBank_incomingDistinct : ([s2Step199ExitGRow,s2Step199ExitFRow,s2Step199ExitFvRow,s2Step199ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step199ExitF_Incoming : rowsOwned s2Step199ExitFBefore [s2Step199ExitFRow,s2Step199ExitFvRow,s2Step199ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step199ExitGRow,s2Step199ExitFRow,s2Step199ExitFvRow,s2Step199ExitGvRow] 1 s2Step199ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step199ExitFBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<842) ∨ (843≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
    decide +kernel

private theorem s2Step199ExitBank_outgoingOwned : rowsOwned s2Step199ExitGvAfter [s2Step199ExitGOut,s2Step199ExitFOut,s2Step199ExitFvOut,s2Step199ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step199ExitGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
    decide +kernel

private theorem s2Step199ExitF_Outgoing : rowsOwned s2Step199ExitGvAfter [s2Step199ExitFOut,s2Step199ExitFvOut,s2Step199ExitGvOut] :=
  hmrRows_owned_drop s2Step199ExitGvAfter [s2Step199ExitGOut,s2Step199ExitFOut,s2Step199ExitFvOut,s2Step199ExitGvOut] 1 s2Step199ExitBank_outgoingOwned

private theorem s2Step199ExitF_distinct : (s2Step199ExitFRow.sign::s2Step199ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step199ExitF_owned : (s2Step199ExitFRow.sign::s2Step199ExitFRow.payload).toFinset⊆s2Step199ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step199ExitFBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<842) ∨ (843≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step199ExitF_retired : s2Step199ExitFBefore.retireSet s2Step199ExitFExtra.toFinset=s2Step199ExitFAfter := by
  unfold Arena.retireSet s2Step199ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step199ExitFBefore,s2Step199ExitGAfter,s2Step199ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step199ExitF_checked : planRowResizeLog s2Step199ExitFBefore s2Step199ExitFRow 171 []=
    some (s2Step199ExitFAfter,s2Step199ExitFOut,shrinkRow 768 s2Step199ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step199ExitFBefore s2Step199ExitFRow 171 s2Step199ExitF_distinct s2Step199ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step199ExitFRow.payload.take 171) s2Step199ExitFRow.sign=s2Step199ExitFOut := by decide +kernel
  have hi : s2Step199ExitFRow.payload.drop 171=s2Step199ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step199ExitF_retired] at result
  exact result

private def s2Step199ExitFvAfter : Arena := s2Step199ExitFAfter

private def s2Step199ExitFvBefore : Arena := s2Step199ExitFAfter

private theorem s2Step199ExitFv_Incoming : rowsOwned s2Step199ExitFvBefore [s2Step199ExitFvRow,s2Step199ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step199ExitGRow,s2Step199ExitFRow,s2Step199ExitFvRow,s2Step199ExitGvRow] 2 s2Step199ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step199ExitFvBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<829) ∨ (830≤q ∧ q<842) ∨ (843≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
    decide +kernel

private theorem s2Step199ExitFv_Outgoing : rowsOwned s2Step199ExitGvAfter [s2Step199ExitFvOut,s2Step199ExitGvOut] :=
  hmrRows_owned_drop s2Step199ExitGvAfter [s2Step199ExitGOut,s2Step199ExitFOut,s2Step199ExitFvOut,s2Step199ExitGvOut] 2 s2Step199ExitBank_outgoingOwned

private theorem s2Step199ExitFv_distinct : (s2Step199ExitFvRow.sign::s2Step199ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step199ExitFv_owned : (s2Step199ExitFvRow.sign::s2Step199ExitFvRow.payload).toFinset⊆s2Step199ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step199ExitFvBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<829) ∨ (830≤q ∧ q<842) ∨ (843≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step199ExitFv_reserved : s2Step199ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step199ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step199ExitFv_checked : planRowResizeLog s2Step199ExitFvBefore s2Step199ExitFvRow 116 []=
    some (s2Step199ExitFvAfter,s2Step199ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step199ExitFvBefore s2Step199ExitFvAfter s2Step199ExitFvRow 116 []
    s2Step199ExitFv_distinct s2Step199ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step199ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step199ExitFvRow.payload++[]) s2Step199ExitFvRow.sign=s2Step199ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step199ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)),Finset.filter_subset _ _⟩

private theorem s2Step199ExitG_Incoming : rowsOwned s2Step199ExitGBefore [s2Step199ExitGRow,s2Step199ExitFRow,s2Step199ExitFvRow,s2Step199ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step199ExitGRow,s2Step199ExitFRow,s2Step199ExitFvRow,s2Step199ExitGvRow] 0 s2Step199ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step199ExitGBefore (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
    decide +kernel

private theorem s2Step199ExitG_Outgoing : rowsOwned s2Step199ExitGvAfter [s2Step199ExitGOut,s2Step199ExitFOut,s2Step199ExitFvOut,s2Step199ExitGvOut] :=
  hmrRows_owned_drop s2Step199ExitGvAfter [s2Step199ExitGOut,s2Step199ExitFOut,s2Step199ExitFvOut,s2Step199ExitGvOut] 0 s2Step199ExitBank_outgoingOwned

private theorem s2Step199ExitG_distinct : (s2Step199ExitGRow.sign::s2Step199ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step199ExitG_owned : (s2Step199ExitGRow.sign::s2Step199ExitGRow.payload).toFinset⊆s2Step199ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step199ExitGBefore (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step199ExitG_retired : s2Step199ExitGBefore.retireSet s2Step199ExitGExtra.toFinset=s2Step199ExitGAfter := by
  unfold Arena.retireSet s2Step199ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step199ExitGBefore,s2Step199ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step199ExitG_checked : planRowResizeLog s2Step199ExitGBefore s2Step199ExitGRow 170 []=
    some (s2Step199ExitGAfter,s2Step199ExitGOut,shrinkRow 769 s2Step199ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step199ExitGBefore s2Step199ExitGRow 170 s2Step199ExitG_distinct s2Step199ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step199ExitGRow.payload.take 170) s2Step199ExitGRow.sign=s2Step199ExitGOut := by decide +kernel
  have hi : s2Step199ExitGRow.payload.drop 170=s2Step199ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step199ExitG_retired] at result
  exact result

private def s2Step199ExitGvBefore : Arena := s2Step199ExitFAfter

private theorem s2Step199ExitGv_Incoming : rowsOwned s2Step199ExitGvBefore [s2Step199ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step199ExitGRow,s2Step199ExitFRow,s2Step199ExitFvRow,s2Step199ExitGvRow] 3 s2Step199ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step199ExitGvBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<829) ∨ (830≤q ∧ q<842) ∨ (843≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
    decide +kernel

private theorem s2Step199ExitGv_Outgoing : rowsOwned s2Step199ExitGvAfter [s2Step199ExitGvOut] :=
  hmrRows_owned_drop s2Step199ExitGvAfter [s2Step199ExitGOut,s2Step199ExitFOut,s2Step199ExitFvOut,s2Step199ExitGvOut] 3 s2Step199ExitBank_outgoingOwned

private theorem s2Step199ExitGv_distinct : (s2Step199ExitGvRow.sign::s2Step199ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step199ExitGv_owned : (s2Step199ExitGvRow.sign::s2Step199ExitGvRow.payload).toFinset⊆s2Step199ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step199ExitGvBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<829) ∨ (830≤q ∧ q<842) ∨ (843≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step199ExitGv_retired : s2Step199ExitGvBefore.retireSet s2Step199ExitGvExtra.toFinset=s2Step199ExitGvAfter := by
  unfold Arena.retireSet s2Step199ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step199ExitGvBefore,s2Step199ExitFAfter,s2Step199ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step199ExitGv_checked : planRowResizeLog s2Step199ExitGvBefore s2Step199ExitGvRow 113 []=
    some (s2Step199ExitGvAfter,s2Step199ExitGvOut,shrinkRow 771 s2Step199ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step199ExitGvBefore s2Step199ExitGvRow 113 s2Step199ExitGv_distinct s2Step199ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step199ExitGvRow.payload.take 113) s2Step199ExitGvRow.sign=s2Step199ExitGvOut := by decide +kernel
  have hi : s2Step199ExitGvRow.payload.drop 113=s2Step199ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step199ExitGv_retired] at result
  exact result

private theorem s2Step199ExitBank_rows : planWindowRowsLog s2Step199ExitGBefore [(s2Step199ExitGRow,170),(s2Step199ExitFRow,171),(s2Step199ExitFvRow,116),(s2Step199ExitGvRow,113)] [[],[],[],[]]=
    some (s2Step199ExitGvAfter,[s2Step199ExitGOut,s2Step199ExitFOut,s2Step199ExitFvOut,s2Step199ExitGvOut],(shrinkRow 769 s2Step199ExitGExtra ++ (shrinkRow 768 s2Step199ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step199ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step199ExitGvAfter [] []=some (s2Step199ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step199ExitGvBefore s2Step199ExitGvAfter s2Step199ExitGvAfter
    s2Step199ExitGvRow s2Step199ExitGvOut 113 [] [] [] []
    (shrinkRow 771 s2Step199ExitGvExtra) ([]) s2Step199ExitGv_Incoming s2Step199ExitGv_checked h4 s2Step199ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step199ExitFvBefore s2Step199ExitFvAfter s2Step199ExitGvAfter
    s2Step199ExitFvRow s2Step199ExitFvOut 116 [] [(s2Step199ExitGvRow,113)] [[]] [s2Step199ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step199ExitGvExtra ++ [])) s2Step199ExitFv_Incoming s2Step199ExitFv_checked h3 s2Step199ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step199ExitFBefore s2Step199ExitFAfter s2Step199ExitGvAfter
    s2Step199ExitFRow s2Step199ExitFOut 171 [] [(s2Step199ExitFvRow,116),(s2Step199ExitGvRow,113)] [[],[]] [s2Step199ExitFvOut,s2Step199ExitGvOut]
    (shrinkRow 768 s2Step199ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step199ExitGvExtra ++ []))) s2Step199ExitF_Incoming s2Step199ExitF_checked h2 s2Step199ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step199ExitGBefore s2Step199ExitGAfter s2Step199ExitGvAfter
    s2Step199ExitGRow s2Step199ExitGOut 170 [] [(s2Step199ExitFRow,171),(s2Step199ExitFvRow,116),(s2Step199ExitGvRow,113)] [[],[],[]] [s2Step199ExitFOut,s2Step199ExitFvOut,s2Step199ExitGvOut]
    (shrinkRow 769 s2Step199ExitGExtra) ((shrinkRow 768 s2Step199ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step199ExitGvExtra ++ [])))) s2Step199ExitG_Incoming s2Step199ExitG_checked h1 s2Step199ExitG_Outgoing
  exact h0

private theorem s2Step199ExitBank_checked : compileHmrBankResizeLog .exit s2Step199ExitGBefore ⟨s2Step199ExitFRow,s2Step199ExitGRow,s2Step199ExitFvRow,s2Step199ExitGvRow⟩ ⟨171,170,116,113⟩ [[],[],[],[]]=
    some (s2Step199ExitGvAfter,⟨s2Step199ExitFOut,s2Step199ExitGOut,s2Step199ExitFvOut,s2Step199ExitGvOut⟩,(shrinkRow 769 s2Step199ExitGExtra ++ (shrinkRow 768 s2Step199ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step199ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step199ExitBank_rows]
  rfl

private theorem s2Step199Add0_apart : Disjoint s2Step199Add0Arena.live s2Step199Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step199Add0Arena (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step199Add0_card : s2Step199Add0Arena.live.card=892 := by
  decide +kernel

private theorem s2Step199Add0_borrowed : s2Step199Add0Arena.checkBorrow (hmrHybridCount s2Step199Add0Arena s2Step199Add0B.length) s2Step199Add0Work=some s2Step199Add0During := by
  have len : s2Step199Add0Work.length=hmrHybridCount s2Step199Add0Arena s2Step199Add0B.length := by
    rw [hmrHybridCount,s2Step199Add0_card]
    decide +kernel
  have nd : s2Step199Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step199Add0Arena s2Step199Add0During s2Step199Add0Work.toFinset s2Step199Add0_bounded s2Step199Add0_apart rfl

private theorem s2Step199Add0_distinct : (879::826::882::(s2Step199Add0A++s2Step199Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step199Add0_owned : (879::826::882::(s2Step199Add0A++s2Step199Add0B)).toFinset⊆s2Step199Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step199Add0Arena (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step199Add0_checked : compileHmrHybridCinLog s2Step199Add0Arena 826 879 882 s2Step199Add0A s2Step199Add0B s2Step199Add0Work=some s2Step199Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step199Add0Arena s2Step199Add0During 826 879 882 s2Step199Add0A s2Step199Add0B s2Step199Add0Work
    (by decide +kernel) (by decide +kernel) s2Step199Add0_distinct
    (fun q hq => s2Step199Add0_owned (List.mem_toFinset.mpr hq)) s2Step199Add0_borrowed

private theorem s2Step199Add1_apart : Disjoint s2Step199Add1Arena.live s2Step199Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step199Add1Arena (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step199Add1_card : s2Step199Add1Arena.live.card=892 := by
  decide +kernel

private theorem s2Step199Add1_borrowed : s2Step199Add1Arena.checkBorrow (hmrHybridCount s2Step199Add1Arena s2Step199Add1B.length) s2Step199Add1Work=some s2Step199Add1During := by
  have len : s2Step199Add1Work.length=hmrHybridCount s2Step199Add1Arena s2Step199Add1B.length := by
    rw [hmrHybridCount,s2Step199Add1_card]
    decide +kernel
  have nd : s2Step199Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step199Add1Arena s2Step199Add1During s2Step199Add1Work.toFinset s2Step199Add1_bounded s2Step199Add1_apart rfl

private theorem s2Step199Add1_distinct : (879::826::882::(s2Step199Add1A++s2Step199Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step199Add1_owned : (879::826::882::(s2Step199Add1A++s2Step199Add1B)).toFinset⊆s2Step199Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step199Add1Arena (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step199Add1_checked : compileHmrHybridCinLog s2Step199Add1Arena 826 879 882 s2Step199Add1A s2Step199Add1B s2Step199Add1Work=some s2Step199Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step199Add1Arena s2Step199Add1During 826 879 882 s2Step199Add1A s2Step199Add1B s2Step199Add1Work
    (by decide +kernel) (by decide +kernel) s2Step199Add1_distinct
    (fun q hq => s2Step199Add1_owned (List.mem_toFinset.mpr hq)) s2Step199Add1_borrowed

private theorem s2Step199F4_apart : Disjoint (s2Step199Add0A++s2Step199Add0B).toFinset (s2Step199Add1A++s2Step199Add1B).toFinset := by
  have nd : ((s2Step199Add0A++s2Step199Add0B)++(s2Step199Add1A++s2Step199Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step199F4_carry : s2Step199F4FlagArena.checkBorrow 1 [882]=some s2Step199Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step199F4FlagArena,s2Step199HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step199F4FlagArena,s2Step199HeadFvAfter,s2Step199Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step199F4_distinct : (807::826::879::882::((s2Step199Add0A++s2Step199Add1A)++(s2Step199Add0B++s2Step199Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step199F4_flag : s2Step199HeadFvAfter.checkBorrow 1 [879]=some s2Step199F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step199HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step199F4_owned : (807::826::((s2Step199Add0A++s2Step199Add1A)++(s2Step199Add0B++s2Step199Add1B))).toFinset⊆s2Step199HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step199HeadFvAfter (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step199F4_checked : compileHmrHybridF4Log s2Step199HeadFvAfter 807 826 s2Step199Add0A s2Step199Add0B s2Step199Add1A s2Step199Add1B [879] [882] s2Step199Add0Work s2Step199Add1Work=some s2Step199F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step199HeadFvAfter s2Step199F4FlagArena s2Step199Add0Arena s2Step199Add0During s2Step199Add1During 807 826
    s2Step199Add0A s2Step199Add0B s2Step199Add1A s2Step199Add1B [879] [882] s2Step199Add0Work s2Step199Add1Work
    (fun q hq => s2Step199F4_owned (List.mem_toFinset.mpr hq)) s2Step199F4_flag s2Step199F4_carry
    s2Step199F4_distinct s2Step199F4_apart s2Step199Add0_checked s2Step199Add1_checked

private theorem s2Step199Front_branch : s2Step199FrontSigmaArena.checkBorrow 1 [826]=some s2Step199HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step199FrontSigmaArena,s2Step199EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step199FrontSigmaArena,s2Step199EntryGvAfter,s2Step199HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step199Front_entry : HmrFrontEntryValid s2Step199EntryFBefore s2Step199FrontBank 171 115 ⟨171,170,116,113⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step199FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step199EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step199EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step199FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step199Front_sigma : s2Step199EntryGvAfter.checkBorrow 1 [807]=some s2Step199FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step199EntryGvAfter,arenaWires]
  · rfl

private def s2Step199HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)),Finset.filter_subset _ _⟩

private def s2Step199HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<829) ∨ (830≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)),Finset.filter_subset _ _⟩

private def s2Step199HeadFBefore : Arena := s2Step199HeadGAfter

private def s2Step199HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682],768⟩

private def s2Step199HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794],770⟩

private def s2Step199HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 842],769⟩

private def s2Step199HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 781, 822],771⟩

private theorem s2Step199HeadBank_incomingDistinct : ([s2Step199HeadGRow,s2Step199HeadFRow,s2Step199HeadGvRow,s2Step199HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step199HeadF_Incoming : rowsOwned s2Step199HeadFBefore [s2Step199HeadFRow,s2Step199HeadGvRow,s2Step199HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step199HeadGRow,s2Step199HeadFRow,s2Step199HeadGvRow,s2Step199HeadFvRow] 1 s2Step199HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step199HeadFBefore (fun q => (0≤q ∧ q<829) ∨ (830≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
    decide +kernel

private theorem s2Step199HeadBank_outgoingOwned : rowsOwned s2Step199HeadFvAfter [s2Step199HeadGOut,s2Step199HeadFOut,s2Step199HeadGvOut,s2Step199HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step199HeadFvAfter (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
    decide +kernel

private theorem s2Step199HeadF_Outgoing : rowsOwned s2Step199HeadFvAfter [s2Step199HeadFOut,s2Step199HeadGvOut,s2Step199HeadFvOut] :=
  hmrRows_owned_drop s2Step199HeadFvAfter [s2Step199HeadGOut,s2Step199HeadFOut,s2Step199HeadGvOut,s2Step199HeadFvOut] 1 s2Step199HeadBank_outgoingOwned

private theorem s2Step199HeadF_distinct : (s2Step199HeadFRow.sign::s2Step199HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step199HeadF_owned : (s2Step199HeadFRow.sign::s2Step199HeadFRow.payload).toFinset⊆s2Step199HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step199HeadFBefore (fun q => (0≤q ∧ q<829) ∨ (830≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step199HeadF_reserved : s2Step199HeadFBefore.reserve s2Step199HeadFFresh.toFinset=some s2Step199HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step199HeadFFresh,arenaWires]
  · norm_num [s2Step199HeadFBefore,s2Step199HeadGAfter,s2Step199HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step199HeadFAfter,s2Step199HeadFBefore,s2Step199HeadGAfter,s2Step199HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step199HeadF_checked : planRowResizeLog s2Step199HeadFBefore s2Step199HeadFRow 172 s2Step199HeadFFresh=
    some (s2Step199HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 829],768⟩,growRow 768 s2Step199HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step199HeadFBefore s2Step199HeadFAfter s2Step199HeadFRow 172 s2Step199HeadFFresh
    s2Step199HeadF_distinct s2Step199HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step199HeadF_reserved
  have rowEq : WindowRow.mk (s2Step199HeadFRow.payload++s2Step199HeadFFresh) s2Step199HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 829],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step199HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)),Finset.filter_subset _ _⟩

private def s2Step199HeadFvBefore : Arena := s2Step199HeadGvAfter

private theorem s2Step199HeadFv_Incoming : rowsOwned s2Step199HeadFvBefore [s2Step199HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step199HeadGRow,s2Step199HeadFRow,s2Step199HeadGvRow,s2Step199HeadFvRow] 3 s2Step199HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step199HeadFvBefore (fun q => (0≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
    decide +kernel

private theorem s2Step199HeadFv_Outgoing : rowsOwned s2Step199HeadFvAfter [s2Step199HeadFvOut] :=
  hmrRows_owned_drop s2Step199HeadFvAfter [s2Step199HeadGOut,s2Step199HeadFOut,s2Step199HeadGvOut,s2Step199HeadFvOut] 3 s2Step199HeadBank_outgoingOwned

private theorem s2Step199HeadFv_distinct : (s2Step199HeadFvRow.sign::s2Step199HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step199HeadFv_owned : (s2Step199HeadFvRow.sign::s2Step199HeadFvRow.payload).toFinset⊆s2Step199HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step199HeadFvBefore (fun q => (0≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step199HeadFv_reserved : s2Step199HeadFvBefore.reserve s2Step199HeadFvFresh.toFinset=some s2Step199HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step199HeadFvFresh,arenaWires]
  · norm_num [s2Step199HeadFvBefore,s2Step199HeadGvAfter,s2Step199HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step199HeadFvAfter,s2Step199HeadFvBefore,s2Step199HeadGvAfter,s2Step199HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step199HeadFv_checked : planRowResizeLog s2Step199HeadFvBefore s2Step199HeadFvRow 116 s2Step199HeadFvFresh=
    some (s2Step199HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 877],770⟩,growRow 770 s2Step199HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step199HeadFvBefore s2Step199HeadFvAfter s2Step199HeadFvRow 116 s2Step199HeadFvFresh
    s2Step199HeadFv_distinct s2Step199HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step199HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step199HeadFvRow.payload++s2Step199HeadFvFresh) s2Step199HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 877],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step199HeadG_Incoming : rowsOwned s2Step199HeadGBefore [s2Step199HeadGRow,s2Step199HeadFRow,s2Step199HeadGvRow,s2Step199HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step199HeadGRow,s2Step199HeadFRow,s2Step199HeadGvRow,s2Step199HeadFvRow] 0 s2Step199HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step199HeadGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<829) ∨ (830≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
    decide +kernel

private theorem s2Step199HeadG_Outgoing : rowsOwned s2Step199HeadFvAfter [s2Step199HeadGOut,s2Step199HeadFOut,s2Step199HeadGvOut,s2Step199HeadFvOut] :=
  hmrRows_owned_drop s2Step199HeadFvAfter [s2Step199HeadGOut,s2Step199HeadFOut,s2Step199HeadGvOut,s2Step199HeadFvOut] 0 s2Step199HeadBank_outgoingOwned

private theorem s2Step199HeadG_distinct : (s2Step199HeadGRow.sign::s2Step199HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step199HeadG_owned : (s2Step199HeadGRow.sign::s2Step199HeadGRow.payload).toFinset⊆s2Step199HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step199HeadGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<829) ∨ (830≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step199HeadG_reserved : s2Step199HeadGBefore.reserve s2Step199HeadGFresh.toFinset=some s2Step199HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step199HeadGFresh,arenaWires]
  · norm_num [s2Step199HeadGBefore,s2Step199HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step199HeadGAfter,s2Step199HeadGBefore,s2Step199HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step199HeadG_checked : planRowResizeLog s2Step199HeadGBefore s2Step199HeadGRow 172 s2Step199HeadGFresh=
    some (s2Step199HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 842, 814],769⟩,growRow 769 s2Step199HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step199HeadGBefore s2Step199HeadGAfter s2Step199HeadGRow 172 s2Step199HeadGFresh
    s2Step199HeadG_distinct s2Step199HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step199HeadG_reserved
  have rowEq : WindowRow.mk (s2Step199HeadGRow.payload++s2Step199HeadGFresh) s2Step199HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 842, 814],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step199HeadGvBefore : Arena := s2Step199HeadFAfter

private theorem s2Step199HeadGv_Incoming : rowsOwned s2Step199HeadGvBefore [s2Step199HeadGvRow,s2Step199HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step199HeadGRow,s2Step199HeadFRow,s2Step199HeadGvRow,s2Step199HeadFvRow] 2 s2Step199HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step199HeadGvBefore (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
    decide +kernel

private theorem s2Step199HeadGv_Outgoing : rowsOwned s2Step199HeadFvAfter [s2Step199HeadGvOut,s2Step199HeadFvOut] :=
  hmrRows_owned_drop s2Step199HeadFvAfter [s2Step199HeadGOut,s2Step199HeadFOut,s2Step199HeadGvOut,s2Step199HeadFvOut] 2 s2Step199HeadBank_outgoingOwned

private theorem s2Step199HeadGv_distinct : (s2Step199HeadGvRow.sign::s2Step199HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step199HeadGv_owned : (s2Step199HeadGvRow.sign::s2Step199HeadGvRow.payload).toFinset⊆s2Step199HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step199HeadGvBefore (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step199HeadGv_reserved : s2Step199HeadGvBefore.reserve s2Step199HeadGvFresh.toFinset=some s2Step199HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step199HeadGvFresh,arenaWires]
  · norm_num [s2Step199HeadGvBefore,s2Step199HeadFAfter,s2Step199HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step199HeadGvAfter,s2Step199HeadGvBefore,s2Step199HeadFAfter,s2Step199HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step199HeadGv_checked : planRowResizeLog s2Step199HeadGvBefore s2Step199HeadGvRow 116 s2Step199HeadGvFresh=
    some (s2Step199HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 781, 822, 867],771⟩,growRow 771 s2Step199HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step199HeadGvBefore s2Step199HeadGvAfter s2Step199HeadGvRow 116 s2Step199HeadGvFresh
    s2Step199HeadGv_distinct s2Step199HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step199HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step199HeadGvRow.payload++s2Step199HeadGvFresh) s2Step199HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 781, 822, 867],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step199HeadBank_rows : planWindowRowsLog s2Step199HeadGBefore [(s2Step199HeadGRow,172),(s2Step199HeadFRow,172),(s2Step199HeadGvRow,116),(s2Step199HeadFvRow,116)] [s2Step199HeadGFresh,s2Step199HeadFFresh,s2Step199HeadGvFresh,s2Step199HeadFvFresh]=
    some (s2Step199HeadFvAfter,[s2Step199HeadGOut,s2Step199HeadFOut,s2Step199HeadGvOut,s2Step199HeadFvOut],(growRow 769 s2Step199HeadGFresh ++ (growRow 768 s2Step199HeadFFresh ++ (growRow 771 s2Step199HeadGvFresh ++ (growRow 770 s2Step199HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step199HeadFvAfter [] []=some (s2Step199HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step199HeadFvBefore s2Step199HeadFvAfter s2Step199HeadFvAfter
    s2Step199HeadFvRow s2Step199HeadFvOut 116 s2Step199HeadFvFresh [] [] []
    (growRow 770 s2Step199HeadFvFresh) ([]) s2Step199HeadFv_Incoming s2Step199HeadFv_checked h4 s2Step199HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step199HeadGvBefore s2Step199HeadGvAfter s2Step199HeadFvAfter
    s2Step199HeadGvRow s2Step199HeadGvOut 116 s2Step199HeadGvFresh [(s2Step199HeadFvRow,116)] [s2Step199HeadFvFresh] [s2Step199HeadFvOut]
    (growRow 771 s2Step199HeadGvFresh) ((growRow 770 s2Step199HeadFvFresh ++ [])) s2Step199HeadGv_Incoming s2Step199HeadGv_checked h3 s2Step199HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step199HeadFBefore s2Step199HeadFAfter s2Step199HeadFvAfter
    s2Step199HeadFRow s2Step199HeadFOut 172 s2Step199HeadFFresh [(s2Step199HeadGvRow,116),(s2Step199HeadFvRow,116)] [s2Step199HeadGvFresh,s2Step199HeadFvFresh] [s2Step199HeadGvOut,s2Step199HeadFvOut]
    (growRow 768 s2Step199HeadFFresh) ((growRow 771 s2Step199HeadGvFresh ++ (growRow 770 s2Step199HeadFvFresh ++ []))) s2Step199HeadF_Incoming s2Step199HeadF_checked h2 s2Step199HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step199HeadGBefore s2Step199HeadGAfter s2Step199HeadFvAfter
    s2Step199HeadGRow s2Step199HeadGOut 172 s2Step199HeadGFresh [(s2Step199HeadFRow,172),(s2Step199HeadGvRow,116),(s2Step199HeadFvRow,116)] [s2Step199HeadFFresh,s2Step199HeadGvFresh,s2Step199HeadFvFresh] [s2Step199HeadFOut,s2Step199HeadGvOut,s2Step199HeadFvOut]
    (growRow 769 s2Step199HeadGFresh) ((growRow 768 s2Step199HeadFFresh ++ (growRow 771 s2Step199HeadGvFresh ++ (growRow 770 s2Step199HeadFvFresh ++ [])))) s2Step199HeadG_Incoming s2Step199HeadG_checked h1 s2Step199HeadG_Outgoing
  exact h0

private theorem s2Step199HeadBank_checked : compileHmrBankResizeLog .headroom s2Step199HeadGBefore ⟨s2Step199HeadFRow,s2Step199HeadGRow,s2Step199HeadFvRow,s2Step199HeadGvRow⟩ ⟨172,172,116,116⟩ [s2Step199HeadGFresh,s2Step199HeadFFresh,s2Step199HeadGvFresh,s2Step199HeadFvFresh]=
    some (s2Step199HeadFvAfter,⟨s2Step199HeadFOut,s2Step199HeadGOut,s2Step199HeadFvOut,s2Step199HeadGvOut⟩,(growRow 769 s2Step199HeadGFresh ++ (growRow 768 s2Step199HeadFFresh ++ (growRow 771 s2Step199HeadGvFresh ++ (growRow 770 s2Step199HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step199HeadBank_rows]
  rfl

private theorem s2Step199Front_checked : compileHmrSourceFrontLog s2Step199EntryFBefore s2Step199FrontBank 171 115 ⟨171,170,116,113⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step199FrontLog=some s2Step199FrontPlan := by
  have pairEq : s2Step199FrontPair=⟨s2Step199HeadFRow,s2Step199HeadGRow,s2Step199HeadFvRow,s2Step199HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step199FrontHead=⟨s2Step199ExitFRow,s2Step199ExitGRow,s2Step199ExitFvRow,s2Step199ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step199Add0A=s2Step199FrontHead.f.wires := by decide +kernel
  have gEq : s2Step199Add0B=s2Step199FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step199Add1A=s2Step199FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step199Add1B=s2Step199FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step199EntryFBefore s2Step199FrontBank 171 115 ⟨171,170,116,113⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step199FrontLog s2Step199FrontPlan
  · exact s2Step199Front_entry
  · exact s2Step199EntryBank_checked
  · exact s2Step199Front_sigma
  · rfl
  · exact s2Step199Front_branch
  · rfl
  · simpa only [s2Step199FrontPlan,pairEq] using s2Step199HeadBank_checked
  · simpa only [s2Step199FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step199F4_checked
  · exact s2Step199Counter_checked
  · rfl
  · simpa only [s2Step199FrontPlan,headEq] using s2Step199ExitBank_checked

private theorem s2Step199Complete_explicit_checked : compileHmrEarlyStepLog s2Step199EntryFBefore s2Step199FrontBank 171 115 ⟨171,170,116,113⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893] 47 s2Step199CompleteLog=some s2Step199CompletePlan := by
  let Q := s2Step199EarlyControlPlan
  have hq := s2Step199EarlyControl_plan_checked
  have fv1 : s2Step199CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step199CompleteOut.fv.payload[2]?.getD s2Step199CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step199CompleteOut.fv.payload[3]?.getD s2Step199CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step199CompleteOut.fv.payload[4]?.getD s2Step199CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step199EntryFBefore s2Step199EarlyControlArena s2Step199FrontBank 171 115 ⟨171,170,116,113⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893] 47 s2Step199CompleteLog s2Step199FrontPlan Q
    s2Step199Front_checked s2Step199Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step199Complete_owned s2Step199Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step199EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893] 777 807 s2Step199CompleteOut.fv.second (s2Step199CompleteOut.fv.payload[2]?.getD s2Step199CompleteOut.fv.sign) (s2Step199CompleteOut.fv.payload[3]?.getD s2Step199CompleteOut.fv.sign) (s2Step199CompleteOut.fv.payload[4]?.getD s2Step199CompleteOut.fv.sign) 826 47 s2Step199EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep199Arena : Arena := s2Step199EntryFBefore
def s2PrivateStep199Bank : WindowBank := s2Step199FrontBank
def s2PrivateStep199Spec : HmrSourceWalkStepLog := ⟨171,115,⟨171,170,116,113⟩,47,.early s2Step199CompleteLog⟩
def s2PrivateStep199Plan : HmrSourceStepPlan := .early s2Step199CompletePlan
theorem s2PrivateStep199_source : s2PrivateStep199Spec=s2ObservedLogs192[7] := rfl
theorem s2PrivateStep199_checked : compileHmrSourceStepLog s2PrivateStep199Arena s2PrivateStep199Bank
    s2PrivateStep199Spec.fgWidth s2PrivateStep199Spec.vWidth s2PrivateStep199Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893]
    6 498 199 s2PrivateStep199Spec.need none s2PrivateStep199Spec.log=some s2PrivateStep199Plan := by
  change compileHmrSourceStepLog s2Step199EntryFBefore s2Step199FrontBank 171 115 ⟨171,170,116,113⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893] 6 498 199 47 none (.early s2Step199CompleteLog)=some (.early s2Step199CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 199<498)]
  rw [s2Step199Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
