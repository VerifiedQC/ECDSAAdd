import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep237
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

private def s2Step239CompleteMoves : List (Wire × Wire) := []

private def s2Step239EarlyControlLog : HmrEarlyControlLog := ⟨[842, 819, 810, 793, 809],[814],[826],[792, 800, 885, 891, 894, 896],[]⟩

private def s2Step239FrontLog : HmrFrontAllocationLog := ⟨⟨[[793], [], [819], []],[[826], [809], [842], [810]],[[], [], [], []]⟩,[834],[832],[792],[800],[885, 891, 894, 896, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[885, 891, 894, 896, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[792, 800, 885, 891]⟩

private def s2Step239CompleteLog : HmrEarlyStepLog := ⟨s2Step239FrontLog,s2Step239CompleteMoves,s2Step239EarlyControlLog⟩

private def s2Step239ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661],768⟩

private def s2Step239ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882],770⟩

private def s2Step239ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149],769⟩

private def s2Step239ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797],771⟩

private def s2Step239FrontOut : WindowBank := ⟨s2Step239ExitFOut,s2Step239ExitGOut,s2Step239ExitFvOut,s2Step239ExitGvOut⟩

private def s2Step239CompleteOut : WindowBank := s2Step239FrontOut.repacked s2Step239CompleteMoves

private def s2Step239EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step239EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step239EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step239EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step239EarlyControlPositiveArena,[814],s2Step239EarlyControlEqualityArena,[826],⟨⟨834,false⟩,[⟨⟨814,false⟩,826⟩]⟩⟩

private def s2Step239EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step239EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step239EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step239EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step239EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step239EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step239EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,842⟩,⟨⟨774,false⟩,819⟩,⟨⟨775,false⟩,810⟩,⟨⟨776,false⟩,793⟩,⟨⟨777,false⟩,809⟩]⟩

private def s2Step239EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step239EarlyControlZeroArena,s2Step239EarlyControlZeroPlan,s2Step239EarlyControlClassPlan,s2Step239EarlyControlFlagArena,s2Step239EarlyControlFittedArena,s2Step239EarlyControlHistoryArena,s2Step239EarlyControlSigmaArena,s2Step239EarlyControlOutputArena,s2Step239EarlyControlLog⟩

private def s2Step239CounterWork : List Wire := [792, 800, 885, 891]

private theorem s2Step239Counter_bounded : s2Step239CounterWork.toFinset⊆arenaWires := by norm_num [s2Step239CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step239HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step239CounterDuring : Arena := ⟨s2Step239HeadFvAfter.live∪s2Step239CounterWork.toFinset,Finset.union_subset s2Step239HeadFvAfter.bounded s2Step239Counter_bounded⟩

private def s2Step239EntryFFresh : List Wire := [793]

private def s2Step239EntryFvFresh : List Wire := [819]

private def s2Step239EntryGFresh : List Wire := []

private def s2Step239EntryFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step239EntryGvAfter : Arena := s2Step239EntryFvAfter

private def s2Step239EntryGvFresh : List Wire := []

private def s2Step239ExitFExtra : List Wire := [793, 809]

private def s2Step239ExitFvExtra : List Wire := [819, 810]

private def s2Step239ExitGExtra : List Wire := [814, 826]

private def s2Step239ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step239ExitGvExtra : List Wire := [842]

private def s2Step239Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step239Add0Work : List Wire := [885, 891, 894, 896, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step239Add0_bounded : s2Step239Add0Work.toFinset⊆arenaWires := by
  have h : s2Step239Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step239Add0During : Arena := ⟨s2Step239Add0Arena.live∪s2Step239Add0Work.toFinset,Finset.union_subset s2Step239Add0Arena.bounded s2Step239Add0_bounded⟩

private def s2Step239Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step239Add1Work : List Wire := [885, 891, 894, 896, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step239Add1_bounded : s2Step239Add1Work.toFinset⊆arenaWires := by
  have h : s2Step239Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step239Add1During : Arena := ⟨s2Step239Add1Arena.live∪s2Step239Add1Work.toFinset,Finset.union_subset s2Step239Add1Arena.bounded s2Step239Add1_bounded⟩

private def s2Step239F4FlagArena : Arena := ⟨s2Step239HeadFvAfter.live∪{792},Finset.union_subset s2Step239HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step239F4Plan : HmrHybridF4Plan := ⟨s2Step239F4FlagArena,[792],s2Step239Add0Arena,[800],s2Step239Add0During,s2Step239Add0Work,s2Step239Add1During,s2Step239Add1Work⟩

private def s2Step239HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 793, 809],768⟩

private def s2Step239HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 819, 810],770⟩

private def s2Step239HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 814, 826],769⟩

private def s2Step239HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 842],771⟩

private def s2Step239FrontHead : WindowBank := ⟨s2Step239HeadFOut,s2Step239HeadGOut,s2Step239HeadFvOut,s2Step239HeadGvOut⟩

private def s2Step239EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 793],768⟩

private def s2Step239EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 819],770⟩

private def s2Step239EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 814],769⟩

private def s2Step239EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797],771⟩

private def s2Step239FrontPair : WindowBank := ⟨s2Step239EntryFOut,s2Step239EntryGOut,s2Step239EntryFvOut,s2Step239EntryGvOut⟩

private def s2Step239FrontSigmaArena : Arena := ⟨s2Step239EntryGvAfter.live∪{834},Finset.union_subset s2Step239EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step239HeadFFresh : List Wire := [809]

private def s2Step239HeadFvFresh : List Wire := [810]

private def s2Step239HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step239HeadGFresh : List Wire := [826]

private def s2Step239HeadGvFresh : List Wire := [842]

private def s2Step239FrontPlan : HmrSourceFront := ⟨s2Step239EntryGvAfter,s2Step239FrontPair,(growRow 768 s2Step239EntryFFresh ++ (growRow 769 s2Step239EntryGFresh ++ (growRow 770 s2Step239EntryFvFresh ++ (growRow 771 s2Step239EntryGvFresh ++ [])))),s2Step239FrontSigmaArena,[834],s2Step239HeadGBefore,[832],
  s2Step239HeadFvAfter,s2Step239FrontHead,(growRow 769 s2Step239HeadGFresh ++ (growRow 768 s2Step239HeadFFresh ++ (growRow 771 s2Step239HeadGvFresh ++ (growRow 770 s2Step239HeadFvFresh ++ [])))),s2Step239F4Plan,s2Step239CounterDuring,s2Step239CounterWork,s2Step239ExitGvAfter,s2Step239FrontOut,(shrinkRow 769 s2Step239ExitGExtra ++ (shrinkRow 768 s2Step239ExitFExtra ++ (shrinkRow 770 s2Step239ExitFvExtra ++ (shrinkRow 771 s2Step239ExitGvExtra ++ []))))⟩

private def s2Step239CompletePlan : HmrEarlyStepPlan := ⟨s2Step239FrontPlan,s2Step239EarlyControlArena,s2Step239EarlyControlPlan,s2Step239CompleteMoves⟩

private theorem s2Step239Complete_apart : List.Disjoint (s2Step239CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [834, 832, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] := by
  have nd : ((s2Step239CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[834, 832, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step239Complete_owned : (s2Step239CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step239EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step239EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step239Complete_repack : s2Step239ExitGvAfter.checkRepack s2Step239CompleteMoves=some s2Step239EarlyControlArena := by rfl

private theorem s2Step239EarlyControl_branchOwned : ([832] : List Wire).toFinset⊆s2Step239EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step239EarlyControlSigmaArena (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step239EarlyControl_branch : compileHmrBranchRetirement s2Step239EarlyControlSigmaArena 832=some s2Step239EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step239EarlyControl_branchOwned
  · ext q
    simp [s2Step239EarlyControlOutputArena,s2Step239EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step239EarlyControl_classEqualityBorrow : s2Step239EarlyControlPositiveArena.checkBorrow (([834, 814] : List Wire).length-1) s2Step239EarlyControlLog.classWork=some s2Step239EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step239EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step239EarlyControlPositiveArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step239EarlyControlEqualityArena,s2Step239EarlyControlPositiveArena,s2Step239EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step239EarlyControl_classEqualityOwned : ([834, 814] : List Wire).toFinset⊆s2Step239EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step239EarlyControlPositiveArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step239EarlyControl_classEquality : compileHmrEqualityLog s2Step239EarlyControlPositiveArena [834, 814] 0 s2Step239EarlyControlLog.classWork=some (s2Step239EarlyControlEqualityArena,s2Step239EarlyControlLog.classWork,s2Step239EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step239EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step239EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step239EarlyControl_classOwned : ([777, 809, 834] : List Wire).toFinset⊆s2Step239EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step239EarlyControlZeroArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step239EarlyControl_positiveBorrow : s2Step239EarlyControlZeroArena.checkBorrow (1) s2Step239EarlyControlLog.positiveWork=some s2Step239EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step239EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step239EarlyControlZeroArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step239EarlyControlPositiveArena,s2Step239EarlyControlZeroArena,s2Step239EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step239EarlyControl_class : compileHmrSourceClassLog s2Step239EarlyControlZeroArena false 777 s2Step239EarlyControlZeroPlan.top 0 834 s2Step239EarlyControlLog.positiveWork s2Step239EarlyControlLog.classWork=some s2Step239EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step239EarlyControlClassPlan s2Step239EarlyControlZeroArena false 777 s2Step239EarlyControlZeroPlan.top 0 834
  constructor
  · decide +kernel
  · exact s2Step239EarlyControl_classOwned
  · exact s2Step239EarlyControl_positiveBorrow
  · exact s2Step239EarlyControl_classEquality

private theorem s2Step239EarlyControl_entryRecordOwned : ([832, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] : List Wire).toFinset⊆s2Step239EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step239EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step239EarlyControl_entrySigmaOwned : ([834, 254] : List Wire).toFinset⊆s2Step239EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step239EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step239EarlyControl_fitBorrow : s2Step239EarlyControlFlagArena.checkBorrow ((49-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] : List Wire).length)) s2Step239EarlyControlLog.recordFresh=some s2Step239EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step239EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step239EarlyControlFlagArena (fun q => (0≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step239EarlyControlFittedArena,s2Step239EarlyControlFlagArena,s2Step239EarlyControlLog,arenaWires]

private theorem s2Step239EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] : List Wire).toFinset⊆s2Step239EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step239EarlyControlFlagArena (fun q => (0≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step239EarlyControl_fit : compileHmrRecordGrowLog s2Step239EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 49 s2Step239EarlyControlLog.recordFresh=some s2Step239EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step239EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step239EarlyControl_fitBorrow

private theorem s2Step239EarlyControl_flagsBorrow : s2Step239EarlyControlEqualityArena.checkBorrow (6) s2Step239EarlyControlLog.flagWork=some s2Step239EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step239EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step239EarlyControlEqualityArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step239EarlyControlFlagArena,s2Step239EarlyControlEqualityArena,s2Step239EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step239EarlyControl_flagsOwned : ([826, 253, 252, 251] : List Wire).toFinset⊆s2Step239EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step239EarlyControlEqualityArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step239EarlyControl_flags : compileHmrFlagsLog s2Step239EarlyControlClassPlan.equalityArena s2Step239EarlyControlClassPlan.equality.top 253 252 251 s2Step239EarlyControlLog.flagWork=some s2Step239EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step239EarlyControl_flagsOwned⟩
  · exact s2Step239EarlyControl_flagsBorrow

private theorem s2Step239EarlyControl_historyBorrow : s2Step239EarlyControlArena.checkBorrow ((49-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] : List Wire).length)) s2Step239EarlyControlLog.recordFresh=some s2Step239EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step239EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step239EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step239EarlyControlHistoryArena,s2Step239EarlyControlArena,s2Step239EarlyControlLog,arenaWires]

private theorem s2Step239EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] : List Wire).toFinset⊆s2Step239EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step239EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step239EarlyControl_history : compileHmrRecordGrowLog s2Step239EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 49 s2Step239EarlyControlLog.recordFresh=some s2Step239EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step239EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step239EarlyControl_historyBorrow

private theorem s2Step239EarlyControl_sigmaOwned : ([254, 834] : List Wire).toFinset⊆s2Step239EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step239EarlyControlHistoryArena (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step239EarlyControl_sigmaReleaseOwned : ([834] : List Wire).toFinset⊆s2Step239EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step239EarlyControlHistoryArena (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step239EarlyControl_sigmaRelease : s2Step239EarlyControlHistoryArena.release {834} (fun _ => false)=some s2Step239EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step239EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step239EarlyControlSigmaArena,s2Step239EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step239EarlyControl_sigma : compileHmrSigmaDropLog s2Step239EarlyControlHistoryArena false 0 0 254 834 []=some s2Step239EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step239EarlyControl_sigmaOwned⟩
  · exact s2Step239EarlyControl_sigmaRelease

private theorem s2Step239EarlyControl_zeroBorrow : s2Step239EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step239EarlyControlLog.zeroWork=some s2Step239EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step239EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step239EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step239EarlyControlZeroArena,s2Step239EarlyControlArena,s2Step239EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step239EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step239EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step239EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step239EarlyControl_zero : compileHmrEqualityLog s2Step239EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step239EarlyControlLog.zeroWork=some (s2Step239EarlyControlZeroArena,s2Step239EarlyControlLog.zeroWork,s2Step239EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step239EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step239EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step239EarlyControl_logged : s2Step239EarlyControlPlan.Logged s2Step239EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 777 834 254 253 252 251 832 49 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step239EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step239EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step239EarlyControl_zero
  · exact s2Step239EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step239EarlyControl_flags
  · exact s2Step239EarlyControl_fit
  · exact s2Step239EarlyControl_history
  · exact s2Step239EarlyControl_sigma
  · exact s2Step239EarlyControl_branch

private theorem s2Step239EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step239EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 777 834 254 253 252 251 832 49 s2Step239EarlyControlLog=some s2Step239EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step239EarlyControlPlan s2Step239EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 777 834 254 253 252 251 832 49 s2Step239EarlyControl_logged

private def s2Step239EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step239EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661],768⟩

private def s2Step239EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882],770⟩

private def s2Step239EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 814],769⟩

private def s2Step239EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797],771⟩

private def s2Step239FrontBank : WindowBank := ⟨s2Step239EntryFRow,s2Step239EntryGRow,s2Step239EntryFvRow,s2Step239EntryGvRow⟩

private def s2Step239Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 793, 809, 768]

private def s2Step239Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 814, 826, 769]

private def s2Step239Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 819, 810, 770]

private def s2Step239Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 842, 771]

private theorem s2Step239Counter_apart : Disjoint s2Step239HeadFvAfter.live s2Step239CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step239HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step239Counter_borrowed : s2Step239HeadFvAfter.checkBorrow 4 s2Step239CounterWork=some s2Step239CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step239HeadFvAfter s2Step239CounterDuring s2Step239CounterWork.toFinset s2Step239Counter_bounded s2Step239Counter_apart rfl

private theorem s2Step239Counter_owned : (834::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step239HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step239HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step239Counter_checked : compileHmrCounterStepLog s2Step239HeadFvAfter true 834 [772, 773, 774, 775, 776, 777] s2Step239CounterWork=some s2Step239CounterDuring := by
  have owned : ∀q∈834::[772, 773, 774, 775, 776, 777],q∈s2Step239HeadFvAfter.live := fun q hq => s2Step239Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step239Counter_borrowed

private def s2Step239EntryFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private theorem s2Step239EntryBank_incomingDistinct : ([s2Step239EntryFRow,s2Step239EntryGRow,s2Step239EntryFvRow,s2Step239EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step239EntryF_Incoming : rowsOwned s2Step239EntryFBefore [s2Step239EntryFRow,s2Step239EntryGRow,s2Step239EntryFvRow,s2Step239EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step239EntryFRow,s2Step239EntryGRow,s2Step239EntryFvRow,s2Step239EntryGvRow] 0 s2Step239EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step239EntryFBefore (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step239EntryBank_outgoingOwned : rowsOwned s2Step239EntryGvAfter [s2Step239EntryFOut,s2Step239EntryGOut,s2Step239EntryFvOut,s2Step239EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step239EntryGvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step239EntryF_Outgoing : rowsOwned s2Step239EntryGvAfter [s2Step239EntryFOut,s2Step239EntryGOut,s2Step239EntryFvOut,s2Step239EntryGvOut] :=
  hmrRows_owned_drop s2Step239EntryGvAfter [s2Step239EntryFOut,s2Step239EntryGOut,s2Step239EntryFvOut,s2Step239EntryGvOut] 0 s2Step239EntryBank_outgoingOwned

private theorem s2Step239EntryF_distinct : (s2Step239EntryFRow.sign::s2Step239EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step239EntryF_owned : (s2Step239EntryFRow.sign::s2Step239EntryFRow.payload).toFinset⊆s2Step239EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step239EntryFBefore (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step239EntryF_reserved : s2Step239EntryFBefore.reserve s2Step239EntryFFresh.toFinset=some s2Step239EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step239EntryFFresh,arenaWires]
  · norm_num [s2Step239EntryFBefore,s2Step239EntryFFresh,arenaWires]
  · ext q
    simp only [s2Step239EntryFAfter,s2Step239EntryFBefore,s2Step239EntryFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step239EntryF_checked : planRowResizeLog s2Step239EntryFBefore s2Step239EntryFRow 151 s2Step239EntryFFresh=
    some (s2Step239EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 793],768⟩,growRow 768 s2Step239EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step239EntryFBefore s2Step239EntryFAfter s2Step239EntryFRow 151 s2Step239EntryFFresh
    s2Step239EntryF_distinct s2Step239EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step239EntryF_reserved
  have rowEq : WindowRow.mk (s2Step239EntryFRow.payload++s2Step239EntryFFresh) s2Step239EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 793],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step239EntryFvBefore : Arena := s2Step239EntryFAfter

private theorem s2Step239EntryFv_Incoming : rowsOwned s2Step239EntryFvBefore [s2Step239EntryFvRow,s2Step239EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step239EntryFRow,s2Step239EntryGRow,s2Step239EntryFvRow,s2Step239EntryGvRow] 2 s2Step239EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step239EntryFvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step239EntryFv_Outgoing : rowsOwned s2Step239EntryGvAfter [s2Step239EntryFvOut,s2Step239EntryGvOut] :=
  hmrRows_owned_drop s2Step239EntryGvAfter [s2Step239EntryFOut,s2Step239EntryGOut,s2Step239EntryFvOut,s2Step239EntryGvOut] 2 s2Step239EntryBank_outgoingOwned

private theorem s2Step239EntryFv_distinct : (s2Step239EntryFvRow.sign::s2Step239EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step239EntryFv_owned : (s2Step239EntryFvRow.sign::s2Step239EntryFvRow.payload).toFinset⊆s2Step239EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step239EntryFvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step239EntryFv_reserved : s2Step239EntryFvBefore.reserve s2Step239EntryFvFresh.toFinset=some s2Step239EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step239EntryFvFresh,arenaWires]
  · norm_num [s2Step239EntryFvBefore,s2Step239EntryFAfter,s2Step239EntryFvFresh,arenaWires]
  · ext q
    simp only [s2Step239EntryFvAfter,s2Step239EntryFvBefore,s2Step239EntryFAfter,s2Step239EntryFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step239EntryFv_checked : planRowResizeLog s2Step239EntryFvBefore s2Step239EntryFvRow 135 s2Step239EntryFvFresh=
    some (s2Step239EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 819],770⟩,growRow 770 s2Step239EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step239EntryFvBefore s2Step239EntryFvAfter s2Step239EntryFvRow 135 s2Step239EntryFvFresh
    s2Step239EntryFv_distinct s2Step239EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step239EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step239EntryFvRow.payload++s2Step239EntryFvFresh) s2Step239EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 819],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step239EntryGAfter : Arena := s2Step239EntryFAfter

private def s2Step239EntryGBefore : Arena := s2Step239EntryFAfter

private theorem s2Step239EntryG_Incoming : rowsOwned s2Step239EntryGBefore [s2Step239EntryGRow,s2Step239EntryFvRow,s2Step239EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step239EntryFRow,s2Step239EntryGRow,s2Step239EntryFvRow,s2Step239EntryGvRow] 1 s2Step239EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step239EntryGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step239EntryG_Outgoing : rowsOwned s2Step239EntryGvAfter [s2Step239EntryGOut,s2Step239EntryFvOut,s2Step239EntryGvOut] :=
  hmrRows_owned_drop s2Step239EntryGvAfter [s2Step239EntryFOut,s2Step239EntryGOut,s2Step239EntryFvOut,s2Step239EntryGvOut] 1 s2Step239EntryBank_outgoingOwned

private theorem s2Step239EntryG_distinct : (s2Step239EntryGRow.sign::s2Step239EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step239EntryG_owned : (s2Step239EntryGRow.sign::s2Step239EntryGRow.payload).toFinset⊆s2Step239EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step239EntryGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step239EntryG_reserved : s2Step239EntryGBefore.reserve s2Step239EntryGFresh.toFinset=some s2Step239EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step239EntryGFresh,arenaWires]
  · norm_num [s2Step239EntryGBefore,s2Step239EntryFAfter,s2Step239EntryGFresh,arenaWires]
  · simp only [s2Step239EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step239EntryG_checked : planRowResizeLog s2Step239EntryGBefore s2Step239EntryGRow 151 s2Step239EntryGFresh=
    some (s2Step239EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 814],769⟩,growRow 769 s2Step239EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step239EntryGBefore s2Step239EntryGAfter s2Step239EntryGRow 151 s2Step239EntryGFresh
    s2Step239EntryG_distinct s2Step239EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step239EntryG_reserved
  have rowEq : WindowRow.mk (s2Step239EntryGRow.payload++s2Step239EntryGFresh) s2Step239EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 814],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step239EntryGvBefore : Arena := s2Step239EntryFvAfter

private theorem s2Step239EntryGv_Incoming : rowsOwned s2Step239EntryGvBefore [s2Step239EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step239EntryFRow,s2Step239EntryGRow,s2Step239EntryFvRow,s2Step239EntryGvRow] 3 s2Step239EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step239EntryGvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step239EntryGv_Outgoing : rowsOwned s2Step239EntryGvAfter [s2Step239EntryGvOut] :=
  hmrRows_owned_drop s2Step239EntryGvAfter [s2Step239EntryFOut,s2Step239EntryGOut,s2Step239EntryFvOut,s2Step239EntryGvOut] 3 s2Step239EntryBank_outgoingOwned

private theorem s2Step239EntryGv_distinct : (s2Step239EntryGvRow.sign::s2Step239EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step239EntryGv_owned : (s2Step239EntryGvRow.sign::s2Step239EntryGvRow.payload).toFinset⊆s2Step239EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step239EntryGvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step239EntryGv_reserved : s2Step239EntryGvBefore.reserve s2Step239EntryGvFresh.toFinset=some s2Step239EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step239EntryGvFresh,arenaWires]
  · norm_num [s2Step239EntryGvBefore,s2Step239EntryFvAfter,s2Step239EntryGvFresh,arenaWires]
  · simp only [s2Step239EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step239EntryGv_checked : planRowResizeLog s2Step239EntryGvBefore s2Step239EntryGvRow 135 s2Step239EntryGvFresh=
    some (s2Step239EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797],771⟩,growRow 771 s2Step239EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step239EntryGvBefore s2Step239EntryGvAfter s2Step239EntryGvRow 135 s2Step239EntryGvFresh
    s2Step239EntryGv_distinct s2Step239EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step239EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step239EntryGvRow.payload++s2Step239EntryGvFresh) s2Step239EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step239EntryBank_rows : planWindowRowsLog s2Step239EntryFBefore [(s2Step239EntryFRow,151),(s2Step239EntryGRow,151),(s2Step239EntryFvRow,135),(s2Step239EntryGvRow,135)] [s2Step239EntryFFresh,s2Step239EntryGFresh,s2Step239EntryFvFresh,s2Step239EntryGvFresh]=
    some (s2Step239EntryGvAfter,[s2Step239EntryFOut,s2Step239EntryGOut,s2Step239EntryFvOut,s2Step239EntryGvOut],(growRow 768 s2Step239EntryFFresh ++ (growRow 769 s2Step239EntryGFresh ++ (growRow 770 s2Step239EntryFvFresh ++ (growRow 771 s2Step239EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step239EntryGvAfter [] []=some (s2Step239EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step239EntryGvBefore s2Step239EntryGvAfter s2Step239EntryGvAfter
    s2Step239EntryGvRow s2Step239EntryGvOut 135 s2Step239EntryGvFresh [] [] []
    (growRow 771 s2Step239EntryGvFresh) ([]) s2Step239EntryGv_Incoming s2Step239EntryGv_checked h4 s2Step239EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step239EntryFvBefore s2Step239EntryFvAfter s2Step239EntryGvAfter
    s2Step239EntryFvRow s2Step239EntryFvOut 135 s2Step239EntryFvFresh [(s2Step239EntryGvRow,135)] [s2Step239EntryGvFresh] [s2Step239EntryGvOut]
    (growRow 770 s2Step239EntryFvFresh) ((growRow 771 s2Step239EntryGvFresh ++ [])) s2Step239EntryFv_Incoming s2Step239EntryFv_checked h3 s2Step239EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step239EntryGBefore s2Step239EntryGAfter s2Step239EntryGvAfter
    s2Step239EntryGRow s2Step239EntryGOut 151 s2Step239EntryGFresh [(s2Step239EntryFvRow,135),(s2Step239EntryGvRow,135)] [s2Step239EntryFvFresh,s2Step239EntryGvFresh] [s2Step239EntryFvOut,s2Step239EntryGvOut]
    (growRow 769 s2Step239EntryGFresh) ((growRow 770 s2Step239EntryFvFresh ++ (growRow 771 s2Step239EntryGvFresh ++ []))) s2Step239EntryG_Incoming s2Step239EntryG_checked h2 s2Step239EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step239EntryFBefore s2Step239EntryFAfter s2Step239EntryGvAfter
    s2Step239EntryFRow s2Step239EntryFOut 151 s2Step239EntryFFresh [(s2Step239EntryGRow,151),(s2Step239EntryFvRow,135),(s2Step239EntryGvRow,135)] [s2Step239EntryGFresh,s2Step239EntryFvFresh,s2Step239EntryGvFresh] [s2Step239EntryGOut,s2Step239EntryFvOut,s2Step239EntryGvOut]
    (growRow 768 s2Step239EntryFFresh) ((growRow 769 s2Step239EntryGFresh ++ (growRow 770 s2Step239EntryFvFresh ++ (growRow 771 s2Step239EntryGvFresh ++ [])))) s2Step239EntryF_Incoming s2Step239EntryF_checked h1 s2Step239EntryF_Outgoing
  exact h0

private theorem s2Step239EntryBank_checked : compileHmrBankResizeLog .entry s2Step239EntryFBefore ⟨s2Step239EntryFRow,s2Step239EntryGRow,s2Step239EntryFvRow,s2Step239EntryGvRow⟩ ⟨151,151,135,135⟩ [s2Step239EntryFFresh,s2Step239EntryGFresh,s2Step239EntryFvFresh,s2Step239EntryGvFresh]=
    some (s2Step239EntryGvAfter,⟨s2Step239EntryFOut,s2Step239EntryGOut,s2Step239EntryFvOut,s2Step239EntryGvOut⟩,(growRow 768 s2Step239EntryFFresh ++ (growRow 769 s2Step239EntryGFresh ++ (growRow 770 s2Step239EntryFvFresh ++ (growRow 771 s2Step239EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step239EntryBank_rows]
  rfl

private def s2Step239ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step239ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step239ExitFBefore : Arena := s2Step239ExitGAfter

private def s2Step239ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 793, 809],768⟩

private def s2Step239ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 819, 810],770⟩

private def s2Step239ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 814, 826],769⟩

private def s2Step239ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 842],771⟩

private theorem s2Step239ExitBank_incomingDistinct : ([s2Step239ExitGRow,s2Step239ExitFRow,s2Step239ExitFvRow,s2Step239ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step239ExitF_Incoming : rowsOwned s2Step239ExitFBefore [s2Step239ExitFRow,s2Step239ExitFvRow,s2Step239ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step239ExitGRow,s2Step239ExitFRow,s2Step239ExitFvRow,s2Step239ExitGvRow] 1 s2Step239ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step239ExitFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step239ExitBank_outgoingOwned : rowsOwned s2Step239ExitGvAfter [s2Step239ExitGOut,s2Step239ExitFOut,s2Step239ExitFvOut,s2Step239ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step239ExitGvAfter (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step239ExitF_Outgoing : rowsOwned s2Step239ExitGvAfter [s2Step239ExitFOut,s2Step239ExitFvOut,s2Step239ExitGvOut] :=
  hmrRows_owned_drop s2Step239ExitGvAfter [s2Step239ExitGOut,s2Step239ExitFOut,s2Step239ExitFvOut,s2Step239ExitGvOut] 1 s2Step239ExitBank_outgoingOwned

private theorem s2Step239ExitF_distinct : (s2Step239ExitFRow.sign::s2Step239ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step239ExitF_owned : (s2Step239ExitFRow.sign::s2Step239ExitFRow.payload).toFinset⊆s2Step239ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step239ExitFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step239ExitF_retired : s2Step239ExitFBefore.retireSet s2Step239ExitFExtra.toFinset=s2Step239ExitFAfter := by
  unfold Arena.retireSet s2Step239ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step239ExitFBefore,s2Step239ExitGAfter,s2Step239ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step239ExitF_checked : planRowResizeLog s2Step239ExitFBefore s2Step239ExitFRow 150 []=
    some (s2Step239ExitFAfter,s2Step239ExitFOut,shrinkRow 768 s2Step239ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step239ExitFBefore s2Step239ExitFRow 150 s2Step239ExitF_distinct s2Step239ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step239ExitFRow.payload.take 150) s2Step239ExitFRow.sign=s2Step239ExitFOut := by decide +kernel
  have hi : s2Step239ExitFRow.payload.drop 150=s2Step239ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step239ExitF_retired] at result
  exact result

private def s2Step239ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step239ExitFvBefore : Arena := s2Step239ExitFAfter

private theorem s2Step239ExitFv_Incoming : rowsOwned s2Step239ExitFvBefore [s2Step239ExitFvRow,s2Step239ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step239ExitGRow,s2Step239ExitFRow,s2Step239ExitFvRow,s2Step239ExitGvRow] 2 s2Step239ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step239ExitFvBefore (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step239ExitFv_Outgoing : rowsOwned s2Step239ExitGvAfter [s2Step239ExitFvOut,s2Step239ExitGvOut] :=
  hmrRows_owned_drop s2Step239ExitGvAfter [s2Step239ExitGOut,s2Step239ExitFOut,s2Step239ExitFvOut,s2Step239ExitGvOut] 2 s2Step239ExitBank_outgoingOwned

private theorem s2Step239ExitFv_distinct : (s2Step239ExitFvRow.sign::s2Step239ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step239ExitFv_owned : (s2Step239ExitFvRow.sign::s2Step239ExitFvRow.payload).toFinset⊆s2Step239ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step239ExitFvBefore (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step239ExitFv_retired : s2Step239ExitFvBefore.retireSet s2Step239ExitFvExtra.toFinset=s2Step239ExitFvAfter := by
  unfold Arena.retireSet s2Step239ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step239ExitFvBefore,s2Step239ExitFAfter,s2Step239ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step239ExitFv_checked : planRowResizeLog s2Step239ExitFvBefore s2Step239ExitFvRow 134 []=
    some (s2Step239ExitFvAfter,s2Step239ExitFvOut,shrinkRow 770 s2Step239ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step239ExitFvBefore s2Step239ExitFvRow 134 s2Step239ExitFv_distinct s2Step239ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step239ExitFvRow.payload.take 134) s2Step239ExitFvRow.sign=s2Step239ExitFvOut := by decide +kernel
  have hi : s2Step239ExitFvRow.payload.drop 134=s2Step239ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step239ExitFv_retired] at result
  exact result

private def s2Step239ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private theorem s2Step239ExitG_Incoming : rowsOwned s2Step239ExitGBefore [s2Step239ExitGRow,s2Step239ExitFRow,s2Step239ExitFvRow,s2Step239ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step239ExitGRow,s2Step239ExitFRow,s2Step239ExitFvRow,s2Step239ExitGvRow] 0 s2Step239ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step239ExitGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step239ExitG_Outgoing : rowsOwned s2Step239ExitGvAfter [s2Step239ExitGOut,s2Step239ExitFOut,s2Step239ExitFvOut,s2Step239ExitGvOut] :=
  hmrRows_owned_drop s2Step239ExitGvAfter [s2Step239ExitGOut,s2Step239ExitFOut,s2Step239ExitFvOut,s2Step239ExitGvOut] 0 s2Step239ExitBank_outgoingOwned

private theorem s2Step239ExitG_distinct : (s2Step239ExitGRow.sign::s2Step239ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step239ExitG_owned : (s2Step239ExitGRow.sign::s2Step239ExitGRow.payload).toFinset⊆s2Step239ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step239ExitGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step239ExitG_retired : s2Step239ExitGBefore.retireSet s2Step239ExitGExtra.toFinset=s2Step239ExitGAfter := by
  unfold Arena.retireSet s2Step239ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step239ExitGBefore,s2Step239ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step239ExitG_checked : planRowResizeLog s2Step239ExitGBefore s2Step239ExitGRow 150 []=
    some (s2Step239ExitGAfter,s2Step239ExitGOut,shrinkRow 769 s2Step239ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step239ExitGBefore s2Step239ExitGRow 150 s2Step239ExitG_distinct s2Step239ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step239ExitGRow.payload.take 150) s2Step239ExitGRow.sign=s2Step239ExitGOut := by decide +kernel
  have hi : s2Step239ExitGRow.payload.drop 150=s2Step239ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step239ExitG_retired] at result
  exact result

private def s2Step239ExitGvBefore : Arena := s2Step239ExitFvAfter

private theorem s2Step239ExitGv_Incoming : rowsOwned s2Step239ExitGvBefore [s2Step239ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step239ExitGRow,s2Step239ExitFRow,s2Step239ExitFvRow,s2Step239ExitGvRow] 3 s2Step239ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step239ExitGvBefore (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step239ExitGv_Outgoing : rowsOwned s2Step239ExitGvAfter [s2Step239ExitGvOut] :=
  hmrRows_owned_drop s2Step239ExitGvAfter [s2Step239ExitGOut,s2Step239ExitFOut,s2Step239ExitFvOut,s2Step239ExitGvOut] 3 s2Step239ExitBank_outgoingOwned

private theorem s2Step239ExitGv_distinct : (s2Step239ExitGvRow.sign::s2Step239ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step239ExitGv_owned : (s2Step239ExitGvRow.sign::s2Step239ExitGvRow.payload).toFinset⊆s2Step239ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step239ExitGvBefore (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step239ExitGv_retired : s2Step239ExitGvBefore.retireSet s2Step239ExitGvExtra.toFinset=s2Step239ExitGvAfter := by
  unfold Arena.retireSet s2Step239ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step239ExitGvBefore,s2Step239ExitFvAfter,s2Step239ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step239ExitGv_checked : planRowResizeLog s2Step239ExitGvBefore s2Step239ExitGvRow 135 []=
    some (s2Step239ExitGvAfter,s2Step239ExitGvOut,shrinkRow 771 s2Step239ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step239ExitGvBefore s2Step239ExitGvRow 135 s2Step239ExitGv_distinct s2Step239ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step239ExitGvRow.payload.take 135) s2Step239ExitGvRow.sign=s2Step239ExitGvOut := by decide +kernel
  have hi : s2Step239ExitGvRow.payload.drop 135=s2Step239ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step239ExitGv_retired] at result
  exact result

private theorem s2Step239ExitBank_rows : planWindowRowsLog s2Step239ExitGBefore [(s2Step239ExitGRow,150),(s2Step239ExitFRow,150),(s2Step239ExitFvRow,134),(s2Step239ExitGvRow,135)] [[],[],[],[]]=
    some (s2Step239ExitGvAfter,[s2Step239ExitGOut,s2Step239ExitFOut,s2Step239ExitFvOut,s2Step239ExitGvOut],(shrinkRow 769 s2Step239ExitGExtra ++ (shrinkRow 768 s2Step239ExitFExtra ++ (shrinkRow 770 s2Step239ExitFvExtra ++ (shrinkRow 771 s2Step239ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step239ExitGvAfter [] []=some (s2Step239ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step239ExitGvBefore s2Step239ExitGvAfter s2Step239ExitGvAfter
    s2Step239ExitGvRow s2Step239ExitGvOut 135 [] [] [] []
    (shrinkRow 771 s2Step239ExitGvExtra) ([]) s2Step239ExitGv_Incoming s2Step239ExitGv_checked h4 s2Step239ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step239ExitFvBefore s2Step239ExitFvAfter s2Step239ExitGvAfter
    s2Step239ExitFvRow s2Step239ExitFvOut 134 [] [(s2Step239ExitGvRow,135)] [[]] [s2Step239ExitGvOut]
    (shrinkRow 770 s2Step239ExitFvExtra) ((shrinkRow 771 s2Step239ExitGvExtra ++ [])) s2Step239ExitFv_Incoming s2Step239ExitFv_checked h3 s2Step239ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step239ExitFBefore s2Step239ExitFAfter s2Step239ExitGvAfter
    s2Step239ExitFRow s2Step239ExitFOut 150 [] [(s2Step239ExitFvRow,134),(s2Step239ExitGvRow,135)] [[],[]] [s2Step239ExitFvOut,s2Step239ExitGvOut]
    (shrinkRow 768 s2Step239ExitFExtra) ((shrinkRow 770 s2Step239ExitFvExtra ++ (shrinkRow 771 s2Step239ExitGvExtra ++ []))) s2Step239ExitF_Incoming s2Step239ExitF_checked h2 s2Step239ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step239ExitGBefore s2Step239ExitGAfter s2Step239ExitGvAfter
    s2Step239ExitGRow s2Step239ExitGOut 150 [] [(s2Step239ExitFRow,150),(s2Step239ExitFvRow,134),(s2Step239ExitGvRow,135)] [[],[],[]] [s2Step239ExitFOut,s2Step239ExitFvOut,s2Step239ExitGvOut]
    (shrinkRow 769 s2Step239ExitGExtra) ((shrinkRow 768 s2Step239ExitFExtra ++ (shrinkRow 770 s2Step239ExitFvExtra ++ (shrinkRow 771 s2Step239ExitGvExtra ++ [])))) s2Step239ExitG_Incoming s2Step239ExitG_checked h1 s2Step239ExitG_Outgoing
  exact h0

private theorem s2Step239ExitBank_checked : compileHmrBankResizeLog .exit s2Step239ExitGBefore ⟨s2Step239ExitFRow,s2Step239ExitGRow,s2Step239ExitFvRow,s2Step239ExitGvRow⟩ ⟨150,150,134,135⟩ [[],[],[],[]]=
    some (s2Step239ExitGvAfter,⟨s2Step239ExitFOut,s2Step239ExitGOut,s2Step239ExitFvOut,s2Step239ExitGvOut⟩,(shrinkRow 769 s2Step239ExitGExtra ++ (shrinkRow 768 s2Step239ExitFExtra ++ (shrinkRow 770 s2Step239ExitFvExtra ++ (shrinkRow 771 s2Step239ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step239ExitBank_rows]
  rfl

private theorem s2Step239Add0_apart : Disjoint s2Step239Add0Arena.live s2Step239Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step239Add0Arena (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step239Add0_card : s2Step239Add0Arena.live.card=895 := by
  decide +kernel

private theorem s2Step239Add0_borrowed : s2Step239Add0Arena.checkBorrow (hmrHybridCount s2Step239Add0Arena s2Step239Add0B.length) s2Step239Add0Work=some s2Step239Add0During := by
  have len : s2Step239Add0Work.length=hmrHybridCount s2Step239Add0Arena s2Step239Add0B.length := by
    rw [hmrHybridCount,s2Step239Add0_card]
    decide +kernel
  have nd : s2Step239Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step239Add0Arena s2Step239Add0During s2Step239Add0Work.toFinset s2Step239Add0_bounded s2Step239Add0_apart rfl

private theorem s2Step239Add0_distinct : (792::832::800::(s2Step239Add0A++s2Step239Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step239Add0_owned : (792::832::800::(s2Step239Add0A++s2Step239Add0B)).toFinset⊆s2Step239Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step239Add0Arena (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step239Add0_checked : compileHmrHybridCinLog s2Step239Add0Arena 832 792 800 s2Step239Add0A s2Step239Add0B s2Step239Add0Work=some s2Step239Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step239Add0Arena s2Step239Add0During 832 792 800 s2Step239Add0A s2Step239Add0B s2Step239Add0Work
    (by decide +kernel) (by decide +kernel) s2Step239Add0_distinct
    (fun q hq => s2Step239Add0_owned (List.mem_toFinset.mpr hq)) s2Step239Add0_borrowed

private theorem s2Step239Add1_apart : Disjoint s2Step239Add1Arena.live s2Step239Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step239Add1Arena (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step239Add1_card : s2Step239Add1Arena.live.card=895 := by
  decide +kernel

private theorem s2Step239Add1_borrowed : s2Step239Add1Arena.checkBorrow (hmrHybridCount s2Step239Add1Arena s2Step239Add1B.length) s2Step239Add1Work=some s2Step239Add1During := by
  have len : s2Step239Add1Work.length=hmrHybridCount s2Step239Add1Arena s2Step239Add1B.length := by
    rw [hmrHybridCount,s2Step239Add1_card]
    decide +kernel
  have nd : s2Step239Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step239Add1Arena s2Step239Add1During s2Step239Add1Work.toFinset s2Step239Add1_bounded s2Step239Add1_apart rfl

private theorem s2Step239Add1_distinct : (792::832::800::(s2Step239Add1A++s2Step239Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step239Add1_owned : (792::832::800::(s2Step239Add1A++s2Step239Add1B)).toFinset⊆s2Step239Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step239Add1Arena (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step239Add1_checked : compileHmrHybridCinLog s2Step239Add1Arena 832 792 800 s2Step239Add1A s2Step239Add1B s2Step239Add1Work=some s2Step239Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step239Add1Arena s2Step239Add1During 832 792 800 s2Step239Add1A s2Step239Add1B s2Step239Add1Work
    (by decide +kernel) (by decide +kernel) s2Step239Add1_distinct
    (fun q hq => s2Step239Add1_owned (List.mem_toFinset.mpr hq)) s2Step239Add1_borrowed

private theorem s2Step239F4_apart : Disjoint (s2Step239Add0A++s2Step239Add0B).toFinset (s2Step239Add1A++s2Step239Add1B).toFinset := by
  have nd : ((s2Step239Add0A++s2Step239Add0B)++(s2Step239Add1A++s2Step239Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step239F4_carry : s2Step239F4FlagArena.checkBorrow 1 [800]=some s2Step239Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step239F4FlagArena,s2Step239HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step239F4FlagArena,s2Step239HeadFvAfter,s2Step239Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step239F4_distinct : (834::832::792::800::((s2Step239Add0A++s2Step239Add1A)++(s2Step239Add0B++s2Step239Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step239F4_flag : s2Step239HeadFvAfter.checkBorrow 1 [792]=some s2Step239F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step239HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step239F4_owned : (834::832::((s2Step239Add0A++s2Step239Add1A)++(s2Step239Add0B++s2Step239Add1B))).toFinset⊆s2Step239HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step239HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step239F4_checked : compileHmrHybridF4Log s2Step239HeadFvAfter 834 832 s2Step239Add0A s2Step239Add0B s2Step239Add1A s2Step239Add1B [792] [800] s2Step239Add0Work s2Step239Add1Work=some s2Step239F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step239HeadFvAfter s2Step239F4FlagArena s2Step239Add0Arena s2Step239Add0During s2Step239Add1During 834 832
    s2Step239Add0A s2Step239Add0B s2Step239Add1A s2Step239Add1B [792] [800] s2Step239Add0Work s2Step239Add1Work
    (fun q hq => s2Step239F4_owned (List.mem_toFinset.mpr hq)) s2Step239F4_flag s2Step239F4_carry
    s2Step239F4_distinct s2Step239F4_apart s2Step239Add0_checked s2Step239Add1_checked

private theorem s2Step239Front_branch : s2Step239FrontSigmaArena.checkBorrow 1 [832]=some s2Step239HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step239FrontSigmaArena,s2Step239EntryGvAfter,s2Step239EntryFvAfter,arenaWires]
  · ext q
    simp only [s2Step239FrontSigmaArena,s2Step239EntryGvAfter,s2Step239EntryFvAfter,s2Step239HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step239Front_entry : HmrFrontEntryValid s2Step239EntryFBefore s2Step239FrontBank 151 135 ⟨150,150,134,135⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step239FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step239EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step239EntryFBefore (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step239FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step239Front_sigma : s2Step239EntryGvAfter.checkBorrow 1 [834]=some s2Step239FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step239EntryGvAfter,s2Step239EntryFvAfter,arenaWires]
  · rfl

private def s2Step239HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step239HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step239HeadFBefore : Arena := s2Step239HeadGAfter

private def s2Step239HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 793],768⟩

private def s2Step239HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 819],770⟩

private def s2Step239HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 814],769⟩

private def s2Step239HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797],771⟩

private theorem s2Step239HeadBank_incomingDistinct : ([s2Step239HeadGRow,s2Step239HeadFRow,s2Step239HeadGvRow,s2Step239HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step239HeadF_Incoming : rowsOwned s2Step239HeadFBefore [s2Step239HeadFRow,s2Step239HeadGvRow,s2Step239HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step239HeadGRow,s2Step239HeadFRow,s2Step239HeadGvRow,s2Step239HeadFvRow] 1 s2Step239HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step239HeadFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step239HeadBank_outgoingOwned : rowsOwned s2Step239HeadFvAfter [s2Step239HeadGOut,s2Step239HeadFOut,s2Step239HeadGvOut,s2Step239HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step239HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step239HeadF_Outgoing : rowsOwned s2Step239HeadFvAfter [s2Step239HeadFOut,s2Step239HeadGvOut,s2Step239HeadFvOut] :=
  hmrRows_owned_drop s2Step239HeadFvAfter [s2Step239HeadGOut,s2Step239HeadFOut,s2Step239HeadGvOut,s2Step239HeadFvOut] 1 s2Step239HeadBank_outgoingOwned

private theorem s2Step239HeadF_distinct : (s2Step239HeadFRow.sign::s2Step239HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step239HeadF_owned : (s2Step239HeadFRow.sign::s2Step239HeadFRow.payload).toFinset⊆s2Step239HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step239HeadFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step239HeadF_reserved : s2Step239HeadFBefore.reserve s2Step239HeadFFresh.toFinset=some s2Step239HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step239HeadFFresh,arenaWires]
  · norm_num [s2Step239HeadFBefore,s2Step239HeadGAfter,s2Step239HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step239HeadFAfter,s2Step239HeadFBefore,s2Step239HeadGAfter,s2Step239HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step239HeadF_checked : planRowResizeLog s2Step239HeadFBefore s2Step239HeadFRow 152 s2Step239HeadFFresh=
    some (s2Step239HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 793, 809],768⟩,growRow 768 s2Step239HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step239HeadFBefore s2Step239HeadFAfter s2Step239HeadFRow 152 s2Step239HeadFFresh
    s2Step239HeadF_distinct s2Step239HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step239HeadF_reserved
  have rowEq : WindowRow.mk (s2Step239HeadFRow.payload++s2Step239HeadFFresh) s2Step239HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 793, 809],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step239HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step239HeadFvBefore : Arena := s2Step239HeadGvAfter

private theorem s2Step239HeadFv_Incoming : rowsOwned s2Step239HeadFvBefore [s2Step239HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step239HeadGRow,s2Step239HeadFRow,s2Step239HeadGvRow,s2Step239HeadFvRow] 3 s2Step239HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step239HeadFvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step239HeadFv_Outgoing : rowsOwned s2Step239HeadFvAfter [s2Step239HeadFvOut] :=
  hmrRows_owned_drop s2Step239HeadFvAfter [s2Step239HeadGOut,s2Step239HeadFOut,s2Step239HeadGvOut,s2Step239HeadFvOut] 3 s2Step239HeadBank_outgoingOwned

private theorem s2Step239HeadFv_distinct : (s2Step239HeadFvRow.sign::s2Step239HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step239HeadFv_owned : (s2Step239HeadFvRow.sign::s2Step239HeadFvRow.payload).toFinset⊆s2Step239HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step239HeadFvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step239HeadFv_reserved : s2Step239HeadFvBefore.reserve s2Step239HeadFvFresh.toFinset=some s2Step239HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step239HeadFvFresh,arenaWires]
  · norm_num [s2Step239HeadFvBefore,s2Step239HeadGvAfter,s2Step239HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step239HeadFvAfter,s2Step239HeadFvBefore,s2Step239HeadGvAfter,s2Step239HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step239HeadFv_checked : planRowResizeLog s2Step239HeadFvBefore s2Step239HeadFvRow 136 s2Step239HeadFvFresh=
    some (s2Step239HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 819, 810],770⟩,growRow 770 s2Step239HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step239HeadFvBefore s2Step239HeadFvAfter s2Step239HeadFvRow 136 s2Step239HeadFvFresh
    s2Step239HeadFv_distinct s2Step239HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step239HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step239HeadFvRow.payload++s2Step239HeadFvFresh) s2Step239HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 819, 810],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step239HeadG_Incoming : rowsOwned s2Step239HeadGBefore [s2Step239HeadGRow,s2Step239HeadFRow,s2Step239HeadGvRow,s2Step239HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step239HeadGRow,s2Step239HeadFRow,s2Step239HeadGvRow,s2Step239HeadFvRow] 0 s2Step239HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step239HeadGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step239HeadG_Outgoing : rowsOwned s2Step239HeadFvAfter [s2Step239HeadGOut,s2Step239HeadFOut,s2Step239HeadGvOut,s2Step239HeadFvOut] :=
  hmrRows_owned_drop s2Step239HeadFvAfter [s2Step239HeadGOut,s2Step239HeadFOut,s2Step239HeadGvOut,s2Step239HeadFvOut] 0 s2Step239HeadBank_outgoingOwned

private theorem s2Step239HeadG_distinct : (s2Step239HeadGRow.sign::s2Step239HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step239HeadG_owned : (s2Step239HeadGRow.sign::s2Step239HeadGRow.payload).toFinset⊆s2Step239HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step239HeadGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step239HeadG_reserved : s2Step239HeadGBefore.reserve s2Step239HeadGFresh.toFinset=some s2Step239HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step239HeadGFresh,arenaWires]
  · norm_num [s2Step239HeadGBefore,s2Step239HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step239HeadGAfter,s2Step239HeadGBefore,s2Step239HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step239HeadG_checked : planRowResizeLog s2Step239HeadGBefore s2Step239HeadGRow 152 s2Step239HeadGFresh=
    some (s2Step239HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 814, 826],769⟩,growRow 769 s2Step239HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step239HeadGBefore s2Step239HeadGAfter s2Step239HeadGRow 152 s2Step239HeadGFresh
    s2Step239HeadG_distinct s2Step239HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step239HeadG_reserved
  have rowEq : WindowRow.mk (s2Step239HeadGRow.payload++s2Step239HeadGFresh) s2Step239HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 814, 826],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step239HeadGvBefore : Arena := s2Step239HeadFAfter

private theorem s2Step239HeadGv_Incoming : rowsOwned s2Step239HeadGvBefore [s2Step239HeadGvRow,s2Step239HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step239HeadGRow,s2Step239HeadFRow,s2Step239HeadGvRow,s2Step239HeadFvRow] 2 s2Step239HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step239HeadGvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step239HeadGv_Outgoing : rowsOwned s2Step239HeadFvAfter [s2Step239HeadGvOut,s2Step239HeadFvOut] :=
  hmrRows_owned_drop s2Step239HeadFvAfter [s2Step239HeadGOut,s2Step239HeadFOut,s2Step239HeadGvOut,s2Step239HeadFvOut] 2 s2Step239HeadBank_outgoingOwned

private theorem s2Step239HeadGv_distinct : (s2Step239HeadGvRow.sign::s2Step239HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step239HeadGv_owned : (s2Step239HeadGvRow.sign::s2Step239HeadGvRow.payload).toFinset⊆s2Step239HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step239HeadGvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step239HeadGv_reserved : s2Step239HeadGvBefore.reserve s2Step239HeadGvFresh.toFinset=some s2Step239HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step239HeadGvFresh,arenaWires]
  · norm_num [s2Step239HeadGvBefore,s2Step239HeadFAfter,s2Step239HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step239HeadGvAfter,s2Step239HeadGvBefore,s2Step239HeadFAfter,s2Step239HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step239HeadGv_checked : planRowResizeLog s2Step239HeadGvBefore s2Step239HeadGvRow 136 s2Step239HeadGvFresh=
    some (s2Step239HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 842],771⟩,growRow 771 s2Step239HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step239HeadGvBefore s2Step239HeadGvAfter s2Step239HeadGvRow 136 s2Step239HeadGvFresh
    s2Step239HeadGv_distinct s2Step239HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step239HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step239HeadGvRow.payload++s2Step239HeadGvFresh) s2Step239HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 842],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step239HeadBank_rows : planWindowRowsLog s2Step239HeadGBefore [(s2Step239HeadGRow,152),(s2Step239HeadFRow,152),(s2Step239HeadGvRow,136),(s2Step239HeadFvRow,136)] [s2Step239HeadGFresh,s2Step239HeadFFresh,s2Step239HeadGvFresh,s2Step239HeadFvFresh]=
    some (s2Step239HeadFvAfter,[s2Step239HeadGOut,s2Step239HeadFOut,s2Step239HeadGvOut,s2Step239HeadFvOut],(growRow 769 s2Step239HeadGFresh ++ (growRow 768 s2Step239HeadFFresh ++ (growRow 771 s2Step239HeadGvFresh ++ (growRow 770 s2Step239HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step239HeadFvAfter [] []=some (s2Step239HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step239HeadFvBefore s2Step239HeadFvAfter s2Step239HeadFvAfter
    s2Step239HeadFvRow s2Step239HeadFvOut 136 s2Step239HeadFvFresh [] [] []
    (growRow 770 s2Step239HeadFvFresh) ([]) s2Step239HeadFv_Incoming s2Step239HeadFv_checked h4 s2Step239HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step239HeadGvBefore s2Step239HeadGvAfter s2Step239HeadFvAfter
    s2Step239HeadGvRow s2Step239HeadGvOut 136 s2Step239HeadGvFresh [(s2Step239HeadFvRow,136)] [s2Step239HeadFvFresh] [s2Step239HeadFvOut]
    (growRow 771 s2Step239HeadGvFresh) ((growRow 770 s2Step239HeadFvFresh ++ [])) s2Step239HeadGv_Incoming s2Step239HeadGv_checked h3 s2Step239HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step239HeadFBefore s2Step239HeadFAfter s2Step239HeadFvAfter
    s2Step239HeadFRow s2Step239HeadFOut 152 s2Step239HeadFFresh [(s2Step239HeadGvRow,136),(s2Step239HeadFvRow,136)] [s2Step239HeadGvFresh,s2Step239HeadFvFresh] [s2Step239HeadGvOut,s2Step239HeadFvOut]
    (growRow 768 s2Step239HeadFFresh) ((growRow 771 s2Step239HeadGvFresh ++ (growRow 770 s2Step239HeadFvFresh ++ []))) s2Step239HeadF_Incoming s2Step239HeadF_checked h2 s2Step239HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step239HeadGBefore s2Step239HeadGAfter s2Step239HeadFvAfter
    s2Step239HeadGRow s2Step239HeadGOut 152 s2Step239HeadGFresh [(s2Step239HeadFRow,152),(s2Step239HeadGvRow,136),(s2Step239HeadFvRow,136)] [s2Step239HeadFFresh,s2Step239HeadGvFresh,s2Step239HeadFvFresh] [s2Step239HeadFOut,s2Step239HeadGvOut,s2Step239HeadFvOut]
    (growRow 769 s2Step239HeadGFresh) ((growRow 768 s2Step239HeadFFresh ++ (growRow 771 s2Step239HeadGvFresh ++ (growRow 770 s2Step239HeadFvFresh ++ [])))) s2Step239HeadG_Incoming s2Step239HeadG_checked h1 s2Step239HeadG_Outgoing
  exact h0

private theorem s2Step239HeadBank_checked : compileHmrBankResizeLog .headroom s2Step239HeadGBefore ⟨s2Step239HeadFRow,s2Step239HeadGRow,s2Step239HeadFvRow,s2Step239HeadGvRow⟩ ⟨152,152,136,136⟩ [s2Step239HeadGFresh,s2Step239HeadFFresh,s2Step239HeadGvFresh,s2Step239HeadFvFresh]=
    some (s2Step239HeadFvAfter,⟨s2Step239HeadFOut,s2Step239HeadGOut,s2Step239HeadFvOut,s2Step239HeadGvOut⟩,(growRow 769 s2Step239HeadGFresh ++ (growRow 768 s2Step239HeadFFresh ++ (growRow 771 s2Step239HeadGvFresh ++ (growRow 770 s2Step239HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step239HeadBank_rows]
  rfl

private theorem s2Step239Front_checked : compileHmrSourceFrontLog s2Step239EntryFBefore s2Step239FrontBank 151 135 ⟨150,150,134,135⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step239FrontLog=some s2Step239FrontPlan := by
  have pairEq : s2Step239FrontPair=⟨s2Step239HeadFRow,s2Step239HeadGRow,s2Step239HeadFvRow,s2Step239HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step239FrontHead=⟨s2Step239ExitFRow,s2Step239ExitGRow,s2Step239ExitFvRow,s2Step239ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step239Add0A=s2Step239FrontHead.f.wires := by decide +kernel
  have gEq : s2Step239Add0B=s2Step239FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step239Add1A=s2Step239FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step239Add1B=s2Step239FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step239EntryFBefore s2Step239FrontBank 151 135 ⟨150,150,134,135⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step239FrontLog s2Step239FrontPlan
  · exact s2Step239Front_entry
  · exact s2Step239EntryBank_checked
  · exact s2Step239Front_sigma
  · rfl
  · exact s2Step239Front_branch
  · rfl
  · simpa only [s2Step239FrontPlan,pairEq] using s2Step239HeadBank_checked
  · simpa only [s2Step239FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step239F4_checked
  · exact s2Step239Counter_checked
  · rfl
  · simpa only [s2Step239FrontPlan,headEq] using s2Step239ExitBank_checked

private theorem s2Step239Complete_explicit_checked : compileHmrEarlyStepLog s2Step239EntryFBefore s2Step239FrontBank 151 135 ⟨150,150,134,135⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 49 s2Step239CompleteLog=some s2Step239CompletePlan := by
  let Q := s2Step239EarlyControlPlan
  have hq := s2Step239EarlyControl_plan_checked
  have fv1 : s2Step239CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step239CompleteOut.fv.payload[2]?.getD s2Step239CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step239CompleteOut.fv.payload[3]?.getD s2Step239CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step239CompleteOut.fv.payload[4]?.getD s2Step239CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step239EntryFBefore s2Step239EarlyControlArena s2Step239FrontBank 151 135 ⟨150,150,134,135⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 49 s2Step239CompleteLog s2Step239FrontPlan Q
    s2Step239Front_checked s2Step239Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step239Complete_owned s2Step239Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step239EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 777 834 s2Step239CompleteOut.fv.second (s2Step239CompleteOut.fv.payload[2]?.getD s2Step239CompleteOut.fv.sign) (s2Step239CompleteOut.fv.payload[3]?.getD s2Step239CompleteOut.fv.sign) (s2Step239CompleteOut.fv.payload[4]?.getD s2Step239CompleteOut.fv.sign) 832 49 s2Step239EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep239Arena : Arena := s2Step239EntryFBefore
def s2PrivateStep239Bank : WindowBank := s2Step239FrontBank
def s2PrivateStep239Spec : HmrSourceWalkStepLog := ⟨151,135,⟨150,150,134,135⟩,49,.early s2Step239CompleteLog⟩
def s2PrivateStep239Plan : HmrSourceStepPlan := .early s2Step239CompletePlan
theorem s2PrivateStep239_source : s2PrivateStep239Spec=s2ObservedLogs224[15] := rfl
theorem s2PrivateStep239_checked : compileHmrSourceStepLog s2PrivateStep239Arena s2PrivateStep239Bank
    s2PrivateStep239Spec.fgWidth s2PrivateStep239Spec.vWidth s2PrivateStep239Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898]
    6 498 239 s2PrivateStep239Spec.need none s2PrivateStep239Spec.log=some s2PrivateStep239Plan := by
  change compileHmrSourceStepLog s2Step239EntryFBefore s2Step239FrontBank 151 135 ⟨150,150,134,135⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 6 498 239 49 none (.early s2Step239CompleteLog)=some (.early s2Step239CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 239<498)]
  rw [s2Step239Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
