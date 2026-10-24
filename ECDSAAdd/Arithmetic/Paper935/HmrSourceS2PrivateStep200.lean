import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep198
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

private def s2Step200CompleteMoves : List (Wire × Wire) := [(816,169),(788,681),(836,682)]

private def s2Step200EarlyControlLog : HmrEarlyControlLog := ⟨[836, 788, 816, 781, 822],[879],[814],[826, 842, 885, 891, 894, 895],[]⟩

private def s2Step200FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [826], [], [807, 781, 822]],[[842], [814], [879], [882]],[[], [], [], []]⟩,[867],[829],[885],[891],[894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[885, 891, 894, 895]⟩

private def s2Step200CompleteLog : HmrEarlyStepLog := ⟨s2Step200FrontLog,s2Step200CompleteMoves,s2Step200EarlyControlLog⟩

private def s2Step200ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680],768⟩

private def s2Step200ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 877, 882],770⟩

private def s2Step200ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168],769⟩

private def s2Step200ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807],771⟩

private def s2Step200FrontOut : WindowBank := ⟨s2Step200ExitFOut,s2Step200ExitGOut,s2Step200ExitFvOut,s2Step200ExitGvOut⟩

private def s2Step200CompleteOut : WindowBank := s2Step200FrontOut.repacked s2Step200CompleteMoves

private def s2Step200EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step200EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step200EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step200EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step200EarlyControlPositiveArena,[879],s2Step200EarlyControlEqualityArena,[814],⟨⟨867,false⟩,[⟨⟨879,false⟩,814⟩]⟩⟩

private def s2Step200EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step200EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step200EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step200EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step200EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step200EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step200EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,836⟩,⟨⟨774,false⟩,788⟩,⟨⟨775,false⟩,816⟩,⟨⟨776,false⟩,781⟩,⟨⟨777,false⟩,822⟩]⟩

private def s2Step200EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step200EarlyControlZeroArena,s2Step200EarlyControlZeroPlan,s2Step200EarlyControlClassPlan,s2Step200EarlyControlFlagArena,s2Step200EarlyControlFittedArena,s2Step200EarlyControlHistoryArena,s2Step200EarlyControlSigmaArena,s2Step200EarlyControlOutputArena,s2Step200EarlyControlLog⟩

private def s2Step200CounterWork : List Wire := [885, 891, 894, 895]

private theorem s2Step200Counter_bounded : s2Step200CounterWork.toFinset⊆arenaWires := by norm_num [s2Step200CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step200HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step200CounterDuring : Arena := ⟨s2Step200HeadFvAfter.live∪s2Step200CounterWork.toFinset,Finset.union_subset s2Step200HeadFvAfter.bounded s2Step200Counter_bounded⟩

private def s2Step200EntryFFresh : List Wire := []

private def s2Step200EntryFvFresh : List Wire := []

private def s2Step200EntryGFresh : List Wire := [826]

private def s2Step200EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<829) ∨ (830≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step200EntryGvFresh : List Wire := [807, 781, 822]

private def s2Step200ExitFExtra : List Wire := [681, 682, 814]

private def s2Step200ExitGExtra : List Wire := [169, 826, 842]

private def s2Step200ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<169) ∨ (170≤q ∧ q<681) ∨ (683≤q ∧ q<781) ∨ (782≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step200ExitGvExtra : List Wire := [781, 822, 879]

private def s2Step200Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step200Add0Work : List Wire := [894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step200Add0_bounded : s2Step200Add0Work.toFinset⊆arenaWires := by
  have h : s2Step200Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step200Add0During : Arena := ⟨s2Step200Add0Arena.live∪s2Step200Add0Work.toFinset,Finset.union_subset s2Step200Add0Arena.bounded s2Step200Add0_bounded⟩

private def s2Step200Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step200Add1Work : List Wire := [894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step200Add1_bounded : s2Step200Add1Work.toFinset⊆arenaWires := by
  have h : s2Step200Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step200Add1During : Arena := ⟨s2Step200Add1Arena.live∪s2Step200Add1Work.toFinset,Finset.union_subset s2Step200Add1Arena.bounded s2Step200Add1_bounded⟩

private def s2Step200F4FlagArena : Arena := ⟨s2Step200HeadFvAfter.live∪{885},Finset.union_subset s2Step200HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step200F4Plan : HmrHybridF4Plan := ⟨s2Step200F4FlagArena,[885],s2Step200Add0Arena,[891],s2Step200Add0During,s2Step200Add0Work,s2Step200Add1During,s2Step200Add1Work⟩

private def s2Step200HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 814],768⟩

private def s2Step200HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 877, 882],770⟩

private def s2Step200HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 826, 842],769⟩

private def s2Step200HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 781, 822, 879],771⟩

private def s2Step200FrontHead : WindowBank := ⟨s2Step200HeadFOut,s2Step200HeadGOut,s2Step200HeadFvOut,s2Step200HeadGvOut⟩

private def s2Step200EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682],768⟩

private def s2Step200EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 877],770⟩

private def s2Step200EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 826],769⟩

private def s2Step200EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 781, 822],771⟩

private def s2Step200FrontPair : WindowBank := ⟨s2Step200EntryFOut,s2Step200EntryGOut,s2Step200EntryFvOut,s2Step200EntryGvOut⟩

private def s2Step200FrontSigmaArena : Arena := ⟨s2Step200EntryGvAfter.live∪{867},Finset.union_subset s2Step200EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step200HeadFFresh : List Wire := [814]

private def s2Step200HeadFvFresh : List Wire := [882]

private def s2Step200HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<842) ∨ (843≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step200HeadGFresh : List Wire := [842]

private def s2Step200HeadGvFresh : List Wire := [879]

private def s2Step200FrontPlan : HmrSourceFront := ⟨s2Step200EntryGvAfter,s2Step200FrontPair,(growRow 768 s2Step200EntryFFresh ++ (growRow 769 s2Step200EntryGFresh ++ (growRow 770 s2Step200EntryFvFresh ++ (growRow 771 s2Step200EntryGvFresh ++ [])))),s2Step200FrontSigmaArena,[867],s2Step200HeadGBefore,[829],
  s2Step200HeadFvAfter,s2Step200FrontHead,(growRow 769 s2Step200HeadGFresh ++ (growRow 768 s2Step200HeadFFresh ++ (growRow 771 s2Step200HeadGvFresh ++ (growRow 770 s2Step200HeadFvFresh ++ [])))),s2Step200F4Plan,s2Step200CounterDuring,s2Step200CounterWork,s2Step200ExitGvAfter,s2Step200FrontOut,(shrinkRow 769 s2Step200ExitGExtra ++ (shrinkRow 768 s2Step200ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step200ExitGvExtra ++ []))))⟩

private def s2Step200CompletePlan : HmrEarlyStepPlan := ⟨s2Step200FrontPlan,s2Step200EarlyControlArena,s2Step200EarlyControlPlan,s2Step200CompleteMoves⟩

private theorem s2Step200Complete_apart : List.Disjoint (s2Step200CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [867, 829, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] := by
  have nd : ((s2Step200CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[867, 829, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step200Complete_owned : (s2Step200CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step200EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step200EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private def s2Step200CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,681),(683,781),(782,814),(815,816),(817,822),(823,826),(827,842),(843,879),(880,885),(886,891),(892,894),(897,898)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s2Step200CompleteRelocationMove0Borrowed : Arena := ⟨s2Step200ExitGvAfter.live∪{169},Finset.union_subset s2Step200ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step200CompleteRelocationMove1After : Arena := ⟨arenaWires.filter (fun q => ([(0,682),(683,781),(782,788),(789,814),(815,816),(817,822),(823,826),(827,842),(843,879),(880,885),(886,891),(892,894),(897,898)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s2Step200CompleteRelocationMove1Borrowed : Arena := ⟨s2Step200CompleteRelocationMove0After.live∪{681},Finset.union_subset s2Step200CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private def s2Step200CompleteRelocationMove2Borrowed : Arena := ⟨s2Step200CompleteRelocationMove1After.live∪{682},Finset.union_subset s2Step200CompleteRelocationMove1After.bounded (by norm_num [arenaWires])⟩

private theorem s2Step200CompleteRelocation_move0_owned : 816∈s2Step200ExitGvAfter.live := by norm_num [s2Step200ExitGvAfter,arenaWires]

private theorem s2Step200CompleteRelocation_move0_reserve : s2Step200ExitGvAfter.reserve {169}=some s2Step200CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step200ExitGvAfter,arenaWires]
  · rfl

private theorem s2Step200CompleteRelocation_move0_retire : s2Step200CompleteRelocationMove0Borrowed.retireSet {816}=s2Step200CompleteRelocationMove0After := by
  unfold Arena.retireSet s2Step200CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step200CompleteRelocationMove0Borrowed,s2Step200ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step200CompleteRelocation_move1_owned : 788∈s2Step200CompleteRelocationMove0After.live := by norm_num [s2Step200CompleteRelocationMove0After,arenaWires]

private theorem s2Step200CompleteRelocation_move1_reserve : s2Step200CompleteRelocationMove0After.reserve {681}=some s2Step200CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step200CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s2Step200CompleteRelocation_move1_retire : s2Step200CompleteRelocationMove1Borrowed.retireSet {788}=s2Step200CompleteRelocationMove1After := by
  unfold Arena.retireSet s2Step200CompleteRelocationMove1After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step200CompleteRelocationMove1Borrowed,s2Step200CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step200CompleteRelocation_move2_owned : 836∈s2Step200CompleteRelocationMove1After.live := by norm_num [s2Step200CompleteRelocationMove1After,arenaWires]

private theorem s2Step200CompleteRelocation_move2_reserve : s2Step200CompleteRelocationMove1After.reserve {682}=some s2Step200CompleteRelocationMove2Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step200CompleteRelocationMove1After,arenaWires]
  · rfl

private theorem s2Step200CompleteRelocation_move2_retire : s2Step200CompleteRelocationMove2Borrowed.retireSet {836}=s2Step200EarlyControlArena := by
  unfold Arena.retireSet s2Step200EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step200CompleteRelocationMove2Borrowed,s2Step200CompleteRelocationMove1After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step200CompleteRelocation_checked : s2Step200ExitGvAfter.checkRepack [(816,169),(788,681),(836,682)]=some s2Step200EarlyControlArena := by
  have tail3 : s2Step200EarlyControlArena.checkRepack []=some s2Step200EarlyControlArena := rfl
  have tail2 := Arena.checkRepack_cons_of_parts s2Step200CompleteRelocationMove1After s2Step200CompleteRelocationMove2Borrowed s2Step200EarlyControlArena s2Step200EarlyControlArena 836 682 []
    s2Step200CompleteRelocation_move2_owned s2Step200CompleteRelocation_move2_reserve s2Step200CompleteRelocation_move2_retire tail3
  have tail1 := Arena.checkRepack_cons_of_parts s2Step200CompleteRelocationMove0After s2Step200CompleteRelocationMove1Borrowed s2Step200CompleteRelocationMove1After s2Step200EarlyControlArena 788 681 [(836,682)]
    s2Step200CompleteRelocation_move1_owned s2Step200CompleteRelocation_move1_reserve s2Step200CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s2Step200ExitGvAfter s2Step200CompleteRelocationMove0Borrowed s2Step200CompleteRelocationMove0After s2Step200EarlyControlArena 816 169 [(788,681),(836,682)]
    s2Step200CompleteRelocation_move0_owned s2Step200CompleteRelocation_move0_reserve s2Step200CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s2Step200Complete_repack : s2Step200ExitGvAfter.checkRepack s2Step200CompleteMoves=some s2Step200EarlyControlArena := by
  simpa only [s2Step200CompleteMoves] using s2Step200CompleteRelocation_checked

private theorem s2Step200EarlyControl_branchOwned : ([829] : List Wire).toFinset⊆s2Step200EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step200EarlyControlSigmaArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step200EarlyControl_branch : compileHmrBranchRetirement s2Step200EarlyControlSigmaArena 829=some s2Step200EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step200EarlyControl_branchOwned
  · ext q
    simp [s2Step200EarlyControlOutputArena,s2Step200EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step200EarlyControl_classEqualityBorrow : s2Step200EarlyControlPositiveArena.checkBorrow (([867, 879] : List Wire).length-1) s2Step200EarlyControlLog.classWork=some s2Step200EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step200EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step200EarlyControlPositiveArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step200EarlyControlEqualityArena,s2Step200EarlyControlPositiveArena,s2Step200EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step200EarlyControl_classEqualityOwned : ([867, 879] : List Wire).toFinset⊆s2Step200EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step200EarlyControlPositiveArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step200EarlyControl_classEquality : compileHmrEqualityLog s2Step200EarlyControlPositiveArena [867, 879] 0 s2Step200EarlyControlLog.classWork=some (s2Step200EarlyControlEqualityArena,s2Step200EarlyControlLog.classWork,s2Step200EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step200EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step200EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step200EarlyControl_classOwned : ([777, 822, 867] : List Wire).toFinset⊆s2Step200EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step200EarlyControlZeroArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step200EarlyControl_positiveBorrow : s2Step200EarlyControlZeroArena.checkBorrow (1) s2Step200EarlyControlLog.positiveWork=some s2Step200EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step200EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step200EarlyControlZeroArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step200EarlyControlPositiveArena,s2Step200EarlyControlZeroArena,s2Step200EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step200EarlyControl_class : compileHmrSourceClassLog s2Step200EarlyControlZeroArena false 777 s2Step200EarlyControlZeroPlan.top 0 867 s2Step200EarlyControlLog.positiveWork s2Step200EarlyControlLog.classWork=some s2Step200EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step200EarlyControlClassPlan s2Step200EarlyControlZeroArena false 777 s2Step200EarlyControlZeroPlan.top 0 867
  constructor
  · decide +kernel
  · exact s2Step200EarlyControl_classOwned
  · exact s2Step200EarlyControl_positiveBorrow
  · exact s2Step200EarlyControl_classEquality

private theorem s2Step200EarlyControl_entryRecordOwned : ([829, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step200EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step200EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step200EarlyControl_entrySigmaOwned : ([867, 254] : List Wire).toFinset⊆s2Step200EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step200EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step200EarlyControl_fitBorrow : s2Step200EarlyControlFlagArena.checkBorrow ((47-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).length)) s2Step200EarlyControlLog.recordFresh=some s2Step200EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step200EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step200EarlyControlFlagArena (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step200EarlyControlFittedArena,s2Step200EarlyControlFlagArena,s2Step200EarlyControlLog,arenaWires]

private theorem s2Step200EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step200EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step200EarlyControlFlagArena (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step200EarlyControl_fit : compileHmrRecordGrowLog s2Step200EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step200EarlyControlLog.recordFresh=some s2Step200EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step200EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step200EarlyControl_fitBorrow

private theorem s2Step200EarlyControl_flagsBorrow : s2Step200EarlyControlEqualityArena.checkBorrow (6) s2Step200EarlyControlLog.flagWork=some s2Step200EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step200EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step200EarlyControlEqualityArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step200EarlyControlFlagArena,s2Step200EarlyControlEqualityArena,s2Step200EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step200EarlyControl_flagsOwned : ([814, 253, 252, 251] : List Wire).toFinset⊆s2Step200EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step200EarlyControlEqualityArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step200EarlyControl_flags : compileHmrFlagsLog s2Step200EarlyControlClassPlan.equalityArena s2Step200EarlyControlClassPlan.equality.top 253 252 251 s2Step200EarlyControlLog.flagWork=some s2Step200EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step200EarlyControl_flagsOwned⟩
  · exact s2Step200EarlyControl_flagsBorrow

private theorem s2Step200EarlyControl_historyBorrow : s2Step200EarlyControlArena.checkBorrow ((47-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).length)) s2Step200EarlyControlLog.recordFresh=some s2Step200EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step200EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step200EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step200EarlyControlHistoryArena,s2Step200EarlyControlArena,s2Step200EarlyControlLog,arenaWires]

private theorem s2Step200EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step200EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step200EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step200EarlyControl_history : compileHmrRecordGrowLog s2Step200EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step200EarlyControlLog.recordFresh=some s2Step200EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step200EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step200EarlyControl_historyBorrow

private theorem s2Step200EarlyControl_sigmaOwned : ([254, 867] : List Wire).toFinset⊆s2Step200EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step200EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step200EarlyControl_sigmaReleaseOwned : ([867] : List Wire).toFinset⊆s2Step200EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step200EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step200EarlyControl_sigmaRelease : s2Step200EarlyControlHistoryArena.release {867} (fun _ => false)=some s2Step200EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step200EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step200EarlyControlSigmaArena,s2Step200EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step200EarlyControl_sigma : compileHmrSigmaDropLog s2Step200EarlyControlHistoryArena false 0 0 254 867 []=some s2Step200EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step200EarlyControl_sigmaOwned⟩
  · exact s2Step200EarlyControl_sigmaRelease

private theorem s2Step200EarlyControl_zeroBorrow : s2Step200EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step200EarlyControlLog.zeroWork=some s2Step200EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step200EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step200EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step200EarlyControlZeroArena,s2Step200EarlyControlArena,s2Step200EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step200EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step200EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step200EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step200EarlyControl_zero : compileHmrEqualityLog s2Step200EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step200EarlyControlLog.zeroWork=some (s2Step200EarlyControlZeroArena,s2Step200EarlyControlLog.zeroWork,s2Step200EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step200EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step200EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step200EarlyControl_logged : s2Step200EarlyControlPlan.Logged s2Step200EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 867 254 253 252 251 829 47 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step200EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step200EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step200EarlyControl_zero
  · exact s2Step200EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step200EarlyControl_flags
  · exact s2Step200EarlyControl_fit
  · exact s2Step200EarlyControl_history
  · exact s2Step200EarlyControl_sigma
  · exact s2Step200EarlyControl_branch

private theorem s2Step200EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step200EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 867 254 253 252 251 829 47 s2Step200EarlyControlLog=some s2Step200EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step200EarlyControlPlan s2Step200EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 867 254 253 252 251 829 47 s2Step200EarlyControl_logged

private def s2Step200EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step200EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682],768⟩

private def s2Step200EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 877],770⟩

private def s2Step200EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169],769⟩

private def s2Step200EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840],771⟩

private def s2Step200FrontBank : WindowBank := ⟨s2Step200EntryFRow,s2Step200EntryGRow,s2Step200EntryFvRow,s2Step200EntryGvRow⟩

private def s2Step200Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 814, 768]

private def s2Step200Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 826, 842, 769]

private def s2Step200Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 877, 882, 770]

private def s2Step200Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 781, 822, 879, 771]

private theorem s2Step200Counter_apart : Disjoint s2Step200HeadFvAfter.live s2Step200CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step200HeadFvAfter (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step200Counter_borrowed : s2Step200HeadFvAfter.checkBorrow 4 s2Step200CounterWork=some s2Step200CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step200HeadFvAfter s2Step200CounterDuring s2Step200CounterWork.toFinset s2Step200Counter_bounded s2Step200Counter_apart rfl

private theorem s2Step200Counter_owned : (867::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step200HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step200HeadFvAfter (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step200Counter_checked : compileHmrCounterStepLog s2Step200HeadFvAfter true 867 [772, 773, 774, 775, 776, 777] s2Step200CounterWork=some s2Step200CounterDuring := by
  have owned : ∀q∈867::[772, 773, 774, 775, 776, 777],q∈s2Step200HeadFvAfter.live := fun q hq => s2Step200Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step200Counter_borrowed

private def s2Step200EntryFAfter : Arena := s2Step200EntryFBefore

private theorem s2Step200EntryBank_incomingDistinct : ([s2Step200EntryFRow,s2Step200EntryGRow,s2Step200EntryFvRow,s2Step200EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step200EntryF_Incoming : rowsOwned s2Step200EntryFBefore [s2Step200EntryFRow,s2Step200EntryGRow,s2Step200EntryFvRow,s2Step200EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step200EntryFRow,s2Step200EntryGRow,s2Step200EntryFvRow,s2Step200EntryGvRow] 0 s2Step200EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step200EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step200EntryBank_outgoingOwned : rowsOwned s2Step200EntryGvAfter [s2Step200EntryFOut,s2Step200EntryGOut,s2Step200EntryFvOut,s2Step200EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step200EntryGvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<829) ∨ (830≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step200EntryF_Outgoing : rowsOwned s2Step200EntryGvAfter [s2Step200EntryFOut,s2Step200EntryGOut,s2Step200EntryFvOut,s2Step200EntryGvOut] :=
  hmrRows_owned_drop s2Step200EntryGvAfter [s2Step200EntryFOut,s2Step200EntryGOut,s2Step200EntryFvOut,s2Step200EntryGvOut] 0 s2Step200EntryBank_outgoingOwned

private theorem s2Step200EntryF_distinct : (s2Step200EntryFRow.sign::s2Step200EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step200EntryF_owned : (s2Step200EntryFRow.sign::s2Step200EntryFRow.payload).toFinset⊆s2Step200EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step200EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step200EntryF_reserved : s2Step200EntryFBefore.reserve s2Step200EntryFFresh.toFinset=some s2Step200EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step200EntryFFresh,arenaWires]
  · norm_num [s2Step200EntryFBefore,s2Step200EntryFFresh,arenaWires]
  · simp only [s2Step200EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step200EntryF_checked : planRowResizeLog s2Step200EntryFBefore s2Step200EntryFRow 171 s2Step200EntryFFresh=
    some (s2Step200EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682],768⟩,growRow 768 s2Step200EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step200EntryFBefore s2Step200EntryFAfter s2Step200EntryFRow 171 s2Step200EntryFFresh
    s2Step200EntryF_distinct s2Step200EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step200EntryF_reserved
  have rowEq : WindowRow.mk (s2Step200EntryFRow.payload++s2Step200EntryFFresh) s2Step200EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step200EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step200EntryFvAfter : Arena := s2Step200EntryGAfter

private def s2Step200EntryFvBefore : Arena := s2Step200EntryGAfter

private theorem s2Step200EntryFv_Incoming : rowsOwned s2Step200EntryFvBefore [s2Step200EntryFvRow,s2Step200EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step200EntryFRow,s2Step200EntryGRow,s2Step200EntryFvRow,s2Step200EntryGvRow] 2 s2Step200EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step200EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step200EntryFv_Outgoing : rowsOwned s2Step200EntryGvAfter [s2Step200EntryFvOut,s2Step200EntryGvOut] :=
  hmrRows_owned_drop s2Step200EntryGvAfter [s2Step200EntryFOut,s2Step200EntryGOut,s2Step200EntryFvOut,s2Step200EntryGvOut] 2 s2Step200EntryBank_outgoingOwned

private theorem s2Step200EntryFv_distinct : (s2Step200EntryFvRow.sign::s2Step200EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step200EntryFv_owned : (s2Step200EntryFvRow.sign::s2Step200EntryFvRow.payload).toFinset⊆s2Step200EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step200EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step200EntryFv_reserved : s2Step200EntryFvBefore.reserve s2Step200EntryFvFresh.toFinset=some s2Step200EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step200EntryFvFresh,arenaWires]
  · norm_num [s2Step200EntryFvBefore,s2Step200EntryGAfter,s2Step200EntryFvFresh,arenaWires]
  · simp only [s2Step200EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step200EntryFv_checked : planRowResizeLog s2Step200EntryFvBefore s2Step200EntryFvRow 116 s2Step200EntryFvFresh=
    some (s2Step200EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 877],770⟩,growRow 770 s2Step200EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step200EntryFvBefore s2Step200EntryFvAfter s2Step200EntryFvRow 116 s2Step200EntryFvFresh
    s2Step200EntryFv_distinct s2Step200EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step200EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step200EntryFvRow.payload++s2Step200EntryFvFresh) s2Step200EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 877],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step200EntryGBefore : Arena := s2Step200EntryFBefore

private theorem s2Step200EntryG_Incoming : rowsOwned s2Step200EntryGBefore [s2Step200EntryGRow,s2Step200EntryFvRow,s2Step200EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step200EntryFRow,s2Step200EntryGRow,s2Step200EntryFvRow,s2Step200EntryGvRow] 1 s2Step200EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step200EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step200EntryG_Outgoing : rowsOwned s2Step200EntryGvAfter [s2Step200EntryGOut,s2Step200EntryFvOut,s2Step200EntryGvOut] :=
  hmrRows_owned_drop s2Step200EntryGvAfter [s2Step200EntryFOut,s2Step200EntryGOut,s2Step200EntryFvOut,s2Step200EntryGvOut] 1 s2Step200EntryBank_outgoingOwned

private theorem s2Step200EntryG_distinct : (s2Step200EntryGRow.sign::s2Step200EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step200EntryG_owned : (s2Step200EntryGRow.sign::s2Step200EntryGRow.payload).toFinset⊆s2Step200EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step200EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step200EntryG_reserved : s2Step200EntryGBefore.reserve s2Step200EntryGFresh.toFinset=some s2Step200EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step200EntryGFresh,arenaWires]
  · norm_num [s2Step200EntryGBefore,s2Step200EntryFBefore,s2Step200EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step200EntryGAfter,s2Step200EntryGBefore,s2Step200EntryFBefore,s2Step200EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step200EntryG_checked : planRowResizeLog s2Step200EntryGBefore s2Step200EntryGRow 171 s2Step200EntryGFresh=
    some (s2Step200EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 826],769⟩,growRow 769 s2Step200EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step200EntryGBefore s2Step200EntryGAfter s2Step200EntryGRow 171 s2Step200EntryGFresh
    s2Step200EntryG_distinct s2Step200EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step200EntryG_reserved
  have rowEq : WindowRow.mk (s2Step200EntryGRow.payload++s2Step200EntryGFresh) s2Step200EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 826],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step200EntryGvBefore : Arena := s2Step200EntryGAfter

private theorem s2Step200EntryGv_Incoming : rowsOwned s2Step200EntryGvBefore [s2Step200EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step200EntryFRow,s2Step200EntryGRow,s2Step200EntryFvRow,s2Step200EntryGvRow] 3 s2Step200EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step200EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step200EntryGv_Outgoing : rowsOwned s2Step200EntryGvAfter [s2Step200EntryGvOut] :=
  hmrRows_owned_drop s2Step200EntryGvAfter [s2Step200EntryFOut,s2Step200EntryGOut,s2Step200EntryFvOut,s2Step200EntryGvOut] 3 s2Step200EntryBank_outgoingOwned

private theorem s2Step200EntryGv_distinct : (s2Step200EntryGvRow.sign::s2Step200EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step200EntryGv_owned : (s2Step200EntryGvRow.sign::s2Step200EntryGvRow.payload).toFinset⊆s2Step200EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step200EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step200EntryGv_reserved : s2Step200EntryGvBefore.reserve s2Step200EntryGvFresh.toFinset=some s2Step200EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step200EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step200EntryGvBefore,s2Step200EntryGAfter,s2Step200EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step200EntryGvAfter,s2Step200EntryGvBefore,s2Step200EntryGAfter,s2Step200EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step200EntryGv_checked : planRowResizeLog s2Step200EntryGvBefore s2Step200EntryGvRow 116 s2Step200EntryGvFresh=
    some (s2Step200EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 781, 822],771⟩,growRow 771 s2Step200EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step200EntryGvBefore s2Step200EntryGvAfter s2Step200EntryGvRow 116 s2Step200EntryGvFresh
    s2Step200EntryGv_distinct s2Step200EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step200EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step200EntryGvRow.payload++s2Step200EntryGvFresh) s2Step200EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 781, 822],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step200EntryBank_rows : planWindowRowsLog s2Step200EntryFBefore [(s2Step200EntryFRow,171),(s2Step200EntryGRow,171),(s2Step200EntryFvRow,116),(s2Step200EntryGvRow,116)] [s2Step200EntryFFresh,s2Step200EntryGFresh,s2Step200EntryFvFresh,s2Step200EntryGvFresh]=
    some (s2Step200EntryGvAfter,[s2Step200EntryFOut,s2Step200EntryGOut,s2Step200EntryFvOut,s2Step200EntryGvOut],(growRow 768 s2Step200EntryFFresh ++ (growRow 769 s2Step200EntryGFresh ++ (growRow 770 s2Step200EntryFvFresh ++ (growRow 771 s2Step200EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step200EntryGvAfter [] []=some (s2Step200EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step200EntryGvBefore s2Step200EntryGvAfter s2Step200EntryGvAfter
    s2Step200EntryGvRow s2Step200EntryGvOut 116 s2Step200EntryGvFresh [] [] []
    (growRow 771 s2Step200EntryGvFresh) ([]) s2Step200EntryGv_Incoming s2Step200EntryGv_checked h4 s2Step200EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step200EntryFvBefore s2Step200EntryFvAfter s2Step200EntryGvAfter
    s2Step200EntryFvRow s2Step200EntryFvOut 116 s2Step200EntryFvFresh [(s2Step200EntryGvRow,116)] [s2Step200EntryGvFresh] [s2Step200EntryGvOut]
    (growRow 770 s2Step200EntryFvFresh) ((growRow 771 s2Step200EntryGvFresh ++ [])) s2Step200EntryFv_Incoming s2Step200EntryFv_checked h3 s2Step200EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step200EntryGBefore s2Step200EntryGAfter s2Step200EntryGvAfter
    s2Step200EntryGRow s2Step200EntryGOut 171 s2Step200EntryGFresh [(s2Step200EntryFvRow,116),(s2Step200EntryGvRow,116)] [s2Step200EntryFvFresh,s2Step200EntryGvFresh] [s2Step200EntryFvOut,s2Step200EntryGvOut]
    (growRow 769 s2Step200EntryGFresh) ((growRow 770 s2Step200EntryFvFresh ++ (growRow 771 s2Step200EntryGvFresh ++ []))) s2Step200EntryG_Incoming s2Step200EntryG_checked h2 s2Step200EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step200EntryFBefore s2Step200EntryFAfter s2Step200EntryGvAfter
    s2Step200EntryFRow s2Step200EntryFOut 171 s2Step200EntryFFresh [(s2Step200EntryGRow,171),(s2Step200EntryFvRow,116),(s2Step200EntryGvRow,116)] [s2Step200EntryGFresh,s2Step200EntryFvFresh,s2Step200EntryGvFresh] [s2Step200EntryGOut,s2Step200EntryFvOut,s2Step200EntryGvOut]
    (growRow 768 s2Step200EntryFFresh) ((growRow 769 s2Step200EntryGFresh ++ (growRow 770 s2Step200EntryFvFresh ++ (growRow 771 s2Step200EntryGvFresh ++ [])))) s2Step200EntryF_Incoming s2Step200EntryF_checked h1 s2Step200EntryF_Outgoing
  exact h0

private theorem s2Step200EntryBank_checked : compileHmrBankResizeLog .entry s2Step200EntryFBefore ⟨s2Step200EntryFRow,s2Step200EntryGRow,s2Step200EntryFvRow,s2Step200EntryGvRow⟩ ⟨171,171,116,116⟩ [s2Step200EntryFFresh,s2Step200EntryGFresh,s2Step200EntryFvFresh,s2Step200EntryGvFresh]=
    some (s2Step200EntryGvAfter,⟨s2Step200EntryFOut,s2Step200EntryGOut,s2Step200EntryFvOut,s2Step200EntryGvOut⟩,(growRow 768 s2Step200EntryFFresh ++ (growRow 769 s2Step200EntryGFresh ++ (growRow 770 s2Step200EntryFvFresh ++ (growRow 771 s2Step200EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step200EntryBank_rows]
  rfl

private def s2Step200ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<169) ∨ (170≤q ∧ q<681) ∨ (683≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step200ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<169) ∨ (170≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step200ExitFBefore : Arena := s2Step200ExitGAfter

private def s2Step200ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 814],768⟩

private def s2Step200ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 877, 882],770⟩

private def s2Step200ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 826, 842],769⟩

private def s2Step200ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 781, 822, 879],771⟩

private theorem s2Step200ExitBank_incomingDistinct : ([s2Step200ExitGRow,s2Step200ExitFRow,s2Step200ExitFvRow,s2Step200ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step200ExitF_Incoming : rowsOwned s2Step200ExitFBefore [s2Step200ExitFRow,s2Step200ExitFvRow,s2Step200ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step200ExitGRow,s2Step200ExitFRow,s2Step200ExitFvRow,s2Step200ExitGvRow] 1 s2Step200ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step200ExitFBefore (fun q => (0≤q ∧ q<169) ∨ (170≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step200ExitBank_outgoingOwned : rowsOwned s2Step200ExitGvAfter [s2Step200ExitGOut,s2Step200ExitFOut,s2Step200ExitFvOut,s2Step200ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step200ExitGvAfter (fun q => (0≤q ∧ q<169) ∨ (170≤q ∧ q<681) ∨ (683≤q ∧ q<781) ∨ (782≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step200ExitF_Outgoing : rowsOwned s2Step200ExitGvAfter [s2Step200ExitFOut,s2Step200ExitFvOut,s2Step200ExitGvOut] :=
  hmrRows_owned_drop s2Step200ExitGvAfter [s2Step200ExitGOut,s2Step200ExitFOut,s2Step200ExitFvOut,s2Step200ExitGvOut] 1 s2Step200ExitBank_outgoingOwned

private theorem s2Step200ExitF_distinct : (s2Step200ExitFRow.sign::s2Step200ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step200ExitF_owned : (s2Step200ExitFRow.sign::s2Step200ExitFRow.payload).toFinset⊆s2Step200ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step200ExitFBefore (fun q => (0≤q ∧ q<169) ∨ (170≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step200ExitF_retired : s2Step200ExitFBefore.retireSet s2Step200ExitFExtra.toFinset=s2Step200ExitFAfter := by
  unfold Arena.retireSet s2Step200ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step200ExitFBefore,s2Step200ExitGAfter,s2Step200ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step200ExitF_checked : planRowResizeLog s2Step200ExitFBefore s2Step200ExitFRow 169 []=
    some (s2Step200ExitFAfter,s2Step200ExitFOut,shrinkRow 768 s2Step200ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step200ExitFBefore s2Step200ExitFRow 169 s2Step200ExitF_distinct s2Step200ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step200ExitFRow.payload.take 169) s2Step200ExitFRow.sign=s2Step200ExitFOut := by decide +kernel
  have hi : s2Step200ExitFRow.payload.drop 169=s2Step200ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step200ExitF_retired] at result
  exact result

private def s2Step200ExitFvAfter : Arena := s2Step200ExitFAfter

private def s2Step200ExitFvBefore : Arena := s2Step200ExitFAfter

private theorem s2Step200ExitFv_Incoming : rowsOwned s2Step200ExitFvBefore [s2Step200ExitFvRow,s2Step200ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step200ExitGRow,s2Step200ExitFRow,s2Step200ExitFvRow,s2Step200ExitGvRow] 2 s2Step200ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step200ExitFvBefore (fun q => (0≤q ∧ q<169) ∨ (170≤q ∧ q<681) ∨ (683≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step200ExitFv_Outgoing : rowsOwned s2Step200ExitGvAfter [s2Step200ExitFvOut,s2Step200ExitGvOut] :=
  hmrRows_owned_drop s2Step200ExitGvAfter [s2Step200ExitGOut,s2Step200ExitFOut,s2Step200ExitFvOut,s2Step200ExitGvOut] 2 s2Step200ExitBank_outgoingOwned

private theorem s2Step200ExitFv_distinct : (s2Step200ExitFvRow.sign::s2Step200ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step200ExitFv_owned : (s2Step200ExitFvRow.sign::s2Step200ExitFvRow.payload).toFinset⊆s2Step200ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step200ExitFvBefore (fun q => (0≤q ∧ q<169) ∨ (170≤q ∧ q<681) ∨ (683≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step200ExitFv_reserved : s2Step200ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step200ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step200ExitFv_checked : planRowResizeLog s2Step200ExitFvBefore s2Step200ExitFvRow 117 []=
    some (s2Step200ExitFvAfter,s2Step200ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step200ExitFvBefore s2Step200ExitFvAfter s2Step200ExitFvRow 117 []
    s2Step200ExitFv_distinct s2Step200ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step200ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step200ExitFvRow.payload++[]) s2Step200ExitFvRow.sign=s2Step200ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step200ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private theorem s2Step200ExitG_Incoming : rowsOwned s2Step200ExitGBefore [s2Step200ExitGRow,s2Step200ExitFRow,s2Step200ExitFvRow,s2Step200ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step200ExitGRow,s2Step200ExitFRow,s2Step200ExitFvRow,s2Step200ExitGvRow] 0 s2Step200ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step200ExitGBefore (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step200ExitG_Outgoing : rowsOwned s2Step200ExitGvAfter [s2Step200ExitGOut,s2Step200ExitFOut,s2Step200ExitFvOut,s2Step200ExitGvOut] :=
  hmrRows_owned_drop s2Step200ExitGvAfter [s2Step200ExitGOut,s2Step200ExitFOut,s2Step200ExitFvOut,s2Step200ExitGvOut] 0 s2Step200ExitBank_outgoingOwned

private theorem s2Step200ExitG_distinct : (s2Step200ExitGRow.sign::s2Step200ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step200ExitG_owned : (s2Step200ExitGRow.sign::s2Step200ExitGRow.payload).toFinset⊆s2Step200ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step200ExitGBefore (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step200ExitG_retired : s2Step200ExitGBefore.retireSet s2Step200ExitGExtra.toFinset=s2Step200ExitGAfter := by
  unfold Arena.retireSet s2Step200ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step200ExitGBefore,s2Step200ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step200ExitG_checked : planRowResizeLog s2Step200ExitGBefore s2Step200ExitGRow 169 []=
    some (s2Step200ExitGAfter,s2Step200ExitGOut,shrinkRow 769 s2Step200ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step200ExitGBefore s2Step200ExitGRow 169 s2Step200ExitG_distinct s2Step200ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step200ExitGRow.payload.take 169) s2Step200ExitGRow.sign=s2Step200ExitGOut := by decide +kernel
  have hi : s2Step200ExitGRow.payload.drop 169=s2Step200ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step200ExitG_retired] at result
  exact result

private def s2Step200ExitGvBefore : Arena := s2Step200ExitFAfter

private theorem s2Step200ExitGv_Incoming : rowsOwned s2Step200ExitGvBefore [s2Step200ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step200ExitGRow,s2Step200ExitFRow,s2Step200ExitFvRow,s2Step200ExitGvRow] 3 s2Step200ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step200ExitGvBefore (fun q => (0≤q ∧ q<169) ∨ (170≤q ∧ q<681) ∨ (683≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step200ExitGv_Outgoing : rowsOwned s2Step200ExitGvAfter [s2Step200ExitGvOut] :=
  hmrRows_owned_drop s2Step200ExitGvAfter [s2Step200ExitGOut,s2Step200ExitFOut,s2Step200ExitFvOut,s2Step200ExitGvOut] 3 s2Step200ExitBank_outgoingOwned

private theorem s2Step200ExitGv_distinct : (s2Step200ExitGvRow.sign::s2Step200ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step200ExitGv_owned : (s2Step200ExitGvRow.sign::s2Step200ExitGvRow.payload).toFinset⊆s2Step200ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step200ExitGvBefore (fun q => (0≤q ∧ q<169) ∨ (170≤q ∧ q<681) ∨ (683≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step200ExitGv_retired : s2Step200ExitGvBefore.retireSet s2Step200ExitGvExtra.toFinset=s2Step200ExitGvAfter := by
  unfold Arena.retireSet s2Step200ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step200ExitGvBefore,s2Step200ExitFAfter,s2Step200ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step200ExitGv_checked : planRowResizeLog s2Step200ExitGvBefore s2Step200ExitGvRow 114 []=
    some (s2Step200ExitGvAfter,s2Step200ExitGvOut,shrinkRow 771 s2Step200ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step200ExitGvBefore s2Step200ExitGvRow 114 s2Step200ExitGv_distinct s2Step200ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step200ExitGvRow.payload.take 114) s2Step200ExitGvRow.sign=s2Step200ExitGvOut := by decide +kernel
  have hi : s2Step200ExitGvRow.payload.drop 114=s2Step200ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step200ExitGv_retired] at result
  exact result

private theorem s2Step200ExitBank_rows : planWindowRowsLog s2Step200ExitGBefore [(s2Step200ExitGRow,169),(s2Step200ExitFRow,169),(s2Step200ExitFvRow,117),(s2Step200ExitGvRow,114)] [[],[],[],[]]=
    some (s2Step200ExitGvAfter,[s2Step200ExitGOut,s2Step200ExitFOut,s2Step200ExitFvOut,s2Step200ExitGvOut],(shrinkRow 769 s2Step200ExitGExtra ++ (shrinkRow 768 s2Step200ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step200ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step200ExitGvAfter [] []=some (s2Step200ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step200ExitGvBefore s2Step200ExitGvAfter s2Step200ExitGvAfter
    s2Step200ExitGvRow s2Step200ExitGvOut 114 [] [] [] []
    (shrinkRow 771 s2Step200ExitGvExtra) ([]) s2Step200ExitGv_Incoming s2Step200ExitGv_checked h4 s2Step200ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step200ExitFvBefore s2Step200ExitFvAfter s2Step200ExitGvAfter
    s2Step200ExitFvRow s2Step200ExitFvOut 117 [] [(s2Step200ExitGvRow,114)] [[]] [s2Step200ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step200ExitGvExtra ++ [])) s2Step200ExitFv_Incoming s2Step200ExitFv_checked h3 s2Step200ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step200ExitFBefore s2Step200ExitFAfter s2Step200ExitGvAfter
    s2Step200ExitFRow s2Step200ExitFOut 169 [] [(s2Step200ExitFvRow,117),(s2Step200ExitGvRow,114)] [[],[]] [s2Step200ExitFvOut,s2Step200ExitGvOut]
    (shrinkRow 768 s2Step200ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step200ExitGvExtra ++ []))) s2Step200ExitF_Incoming s2Step200ExitF_checked h2 s2Step200ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step200ExitGBefore s2Step200ExitGAfter s2Step200ExitGvAfter
    s2Step200ExitGRow s2Step200ExitGOut 169 [] [(s2Step200ExitFRow,169),(s2Step200ExitFvRow,117),(s2Step200ExitGvRow,114)] [[],[],[]] [s2Step200ExitFOut,s2Step200ExitFvOut,s2Step200ExitGvOut]
    (shrinkRow 769 s2Step200ExitGExtra) ((shrinkRow 768 s2Step200ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step200ExitGvExtra ++ [])))) s2Step200ExitG_Incoming s2Step200ExitG_checked h1 s2Step200ExitG_Outgoing
  exact h0

private theorem s2Step200ExitBank_checked : compileHmrBankResizeLog .exit s2Step200ExitGBefore ⟨s2Step200ExitFRow,s2Step200ExitGRow,s2Step200ExitFvRow,s2Step200ExitGvRow⟩ ⟨169,169,117,114⟩ [[],[],[],[]]=
    some (s2Step200ExitGvAfter,⟨s2Step200ExitFOut,s2Step200ExitGOut,s2Step200ExitFvOut,s2Step200ExitGvOut⟩,(shrinkRow 769 s2Step200ExitGExtra ++ (shrinkRow 768 s2Step200ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step200ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step200ExitBank_rows]
  rfl

private theorem s2Step200Add0_apart : Disjoint s2Step200Add0Arena.live s2Step200Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step200Add0Arena (fun q => (0≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step200Add0_card : s2Step200Add0Arena.live.card=895 := by
  decide +kernel

private theorem s2Step200Add0_borrowed : s2Step200Add0Arena.checkBorrow (hmrHybridCount s2Step200Add0Arena s2Step200Add0B.length) s2Step200Add0Work=some s2Step200Add0During := by
  have len : s2Step200Add0Work.length=hmrHybridCount s2Step200Add0Arena s2Step200Add0B.length := by
    rw [hmrHybridCount,s2Step200Add0_card]
    decide +kernel
  have nd : s2Step200Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step200Add0Arena s2Step200Add0During s2Step200Add0Work.toFinset s2Step200Add0_bounded s2Step200Add0_apart rfl

private theorem s2Step200Add0_distinct : (885::829::891::(s2Step200Add0A++s2Step200Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step200Add0_owned : (885::829::891::(s2Step200Add0A++s2Step200Add0B)).toFinset⊆s2Step200Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step200Add0Arena (fun q => (0≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step200Add0_checked : compileHmrHybridCinLog s2Step200Add0Arena 829 885 891 s2Step200Add0A s2Step200Add0B s2Step200Add0Work=some s2Step200Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step200Add0Arena s2Step200Add0During 829 885 891 s2Step200Add0A s2Step200Add0B s2Step200Add0Work
    (by decide +kernel) (by decide +kernel) s2Step200Add0_distinct
    (fun q hq => s2Step200Add0_owned (List.mem_toFinset.mpr hq)) s2Step200Add0_borrowed

private theorem s2Step200Add1_apart : Disjoint s2Step200Add1Arena.live s2Step200Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step200Add1Arena (fun q => (0≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step200Add1_card : s2Step200Add1Arena.live.card=895 := by
  decide +kernel

private theorem s2Step200Add1_borrowed : s2Step200Add1Arena.checkBorrow (hmrHybridCount s2Step200Add1Arena s2Step200Add1B.length) s2Step200Add1Work=some s2Step200Add1During := by
  have len : s2Step200Add1Work.length=hmrHybridCount s2Step200Add1Arena s2Step200Add1B.length := by
    rw [hmrHybridCount,s2Step200Add1_card]
    decide +kernel
  have nd : s2Step200Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step200Add1Arena s2Step200Add1During s2Step200Add1Work.toFinset s2Step200Add1_bounded s2Step200Add1_apart rfl

private theorem s2Step200Add1_distinct : (885::829::891::(s2Step200Add1A++s2Step200Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step200Add1_owned : (885::829::891::(s2Step200Add1A++s2Step200Add1B)).toFinset⊆s2Step200Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step200Add1Arena (fun q => (0≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step200Add1_checked : compileHmrHybridCinLog s2Step200Add1Arena 829 885 891 s2Step200Add1A s2Step200Add1B s2Step200Add1Work=some s2Step200Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step200Add1Arena s2Step200Add1During 829 885 891 s2Step200Add1A s2Step200Add1B s2Step200Add1Work
    (by decide +kernel) (by decide +kernel) s2Step200Add1_distinct
    (fun q hq => s2Step200Add1_owned (List.mem_toFinset.mpr hq)) s2Step200Add1_borrowed

private theorem s2Step200F4_apart : Disjoint (s2Step200Add0A++s2Step200Add0B).toFinset (s2Step200Add1A++s2Step200Add1B).toFinset := by
  have nd : ((s2Step200Add0A++s2Step200Add0B)++(s2Step200Add1A++s2Step200Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step200F4_carry : s2Step200F4FlagArena.checkBorrow 1 [891]=some s2Step200Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step200F4FlagArena,s2Step200HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step200F4FlagArena,s2Step200HeadFvAfter,s2Step200Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step200F4_distinct : (867::829::885::891::((s2Step200Add0A++s2Step200Add1A)++(s2Step200Add0B++s2Step200Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step200F4_flag : s2Step200HeadFvAfter.checkBorrow 1 [885]=some s2Step200F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step200HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step200F4_owned : (867::829::((s2Step200Add0A++s2Step200Add1A)++(s2Step200Add0B++s2Step200Add1B))).toFinset⊆s2Step200HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step200HeadFvAfter (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step200F4_checked : compileHmrHybridF4Log s2Step200HeadFvAfter 867 829 s2Step200Add0A s2Step200Add0B s2Step200Add1A s2Step200Add1B [885] [891] s2Step200Add0Work s2Step200Add1Work=some s2Step200F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step200HeadFvAfter s2Step200F4FlagArena s2Step200Add0Arena s2Step200Add0During s2Step200Add1During 867 829
    s2Step200Add0A s2Step200Add0B s2Step200Add1A s2Step200Add1B [885] [891] s2Step200Add0Work s2Step200Add1Work
    (fun q hq => s2Step200F4_owned (List.mem_toFinset.mpr hq)) s2Step200F4_flag s2Step200F4_carry
    s2Step200F4_distinct s2Step200F4_apart s2Step200Add0_checked s2Step200Add1_checked

private theorem s2Step200Front_branch : s2Step200FrontSigmaArena.checkBorrow 1 [829]=some s2Step200HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step200FrontSigmaArena,s2Step200EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step200FrontSigmaArena,s2Step200EntryGvAfter,s2Step200HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step200Front_entry : HmrFrontEntryValid s2Step200EntryFBefore s2Step200FrontBank 171 116 ⟨169,169,117,114⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step200FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step200EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step200EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step200FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step200Front_sigma : s2Step200EntryGvAfter.checkBorrow 1 [867]=some s2Step200FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step200EntryGvAfter,arenaWires]
  · rfl

private def s2Step200HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step200HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step200HeadFBefore : Arena := s2Step200HeadGAfter

private def s2Step200HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682],768⟩

private def s2Step200HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 877],770⟩

private def s2Step200HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 826],769⟩

private def s2Step200HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 781, 822],771⟩

private theorem s2Step200HeadBank_incomingDistinct : ([s2Step200HeadGRow,s2Step200HeadFRow,s2Step200HeadGvRow,s2Step200HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step200HeadF_Incoming : rowsOwned s2Step200HeadFBefore [s2Step200HeadFRow,s2Step200HeadGvRow,s2Step200HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step200HeadGRow,s2Step200HeadFRow,s2Step200HeadGvRow,s2Step200HeadFvRow] 1 s2Step200HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step200HeadFBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step200HeadBank_outgoingOwned : rowsOwned s2Step200HeadFvAfter [s2Step200HeadGOut,s2Step200HeadFOut,s2Step200HeadGvOut,s2Step200HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step200HeadFvAfter (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step200HeadF_Outgoing : rowsOwned s2Step200HeadFvAfter [s2Step200HeadFOut,s2Step200HeadGvOut,s2Step200HeadFvOut] :=
  hmrRows_owned_drop s2Step200HeadFvAfter [s2Step200HeadGOut,s2Step200HeadFOut,s2Step200HeadGvOut,s2Step200HeadFvOut] 1 s2Step200HeadBank_outgoingOwned

private theorem s2Step200HeadF_distinct : (s2Step200HeadFRow.sign::s2Step200HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step200HeadF_owned : (s2Step200HeadFRow.sign::s2Step200HeadFRow.payload).toFinset⊆s2Step200HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step200HeadFBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step200HeadF_reserved : s2Step200HeadFBefore.reserve s2Step200HeadFFresh.toFinset=some s2Step200HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step200HeadFFresh,arenaWires]
  · norm_num [s2Step200HeadFBefore,s2Step200HeadGAfter,s2Step200HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step200HeadFAfter,s2Step200HeadFBefore,s2Step200HeadGAfter,s2Step200HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step200HeadF_checked : planRowResizeLog s2Step200HeadFBefore s2Step200HeadFRow 172 s2Step200HeadFFresh=
    some (s2Step200HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 814],768⟩,growRow 768 s2Step200HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step200HeadFBefore s2Step200HeadFAfter s2Step200HeadFRow 172 s2Step200HeadFFresh
    s2Step200HeadF_distinct s2Step200HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step200HeadF_reserved
  have rowEq : WindowRow.mk (s2Step200HeadFRow.payload++s2Step200HeadFFresh) s2Step200HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 814],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step200HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step200HeadFvBefore : Arena := s2Step200HeadGvAfter

private theorem s2Step200HeadFv_Incoming : rowsOwned s2Step200HeadFvBefore [s2Step200HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step200HeadGRow,s2Step200HeadFRow,s2Step200HeadGvRow,s2Step200HeadFvRow] 3 s2Step200HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step200HeadFvBefore (fun q => (0≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step200HeadFv_Outgoing : rowsOwned s2Step200HeadFvAfter [s2Step200HeadFvOut] :=
  hmrRows_owned_drop s2Step200HeadFvAfter [s2Step200HeadGOut,s2Step200HeadFOut,s2Step200HeadGvOut,s2Step200HeadFvOut] 3 s2Step200HeadBank_outgoingOwned

private theorem s2Step200HeadFv_distinct : (s2Step200HeadFvRow.sign::s2Step200HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step200HeadFv_owned : (s2Step200HeadFvRow.sign::s2Step200HeadFvRow.payload).toFinset⊆s2Step200HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step200HeadFvBefore (fun q => (0≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step200HeadFv_reserved : s2Step200HeadFvBefore.reserve s2Step200HeadFvFresh.toFinset=some s2Step200HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step200HeadFvFresh,arenaWires]
  · norm_num [s2Step200HeadFvBefore,s2Step200HeadGvAfter,s2Step200HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step200HeadFvAfter,s2Step200HeadFvBefore,s2Step200HeadGvAfter,s2Step200HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step200HeadFv_checked : planRowResizeLog s2Step200HeadFvBefore s2Step200HeadFvRow 117 s2Step200HeadFvFresh=
    some (s2Step200HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 877, 882],770⟩,growRow 770 s2Step200HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step200HeadFvBefore s2Step200HeadFvAfter s2Step200HeadFvRow 117 s2Step200HeadFvFresh
    s2Step200HeadFv_distinct s2Step200HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step200HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step200HeadFvRow.payload++s2Step200HeadFvFresh) s2Step200HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 877, 882],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step200HeadG_Incoming : rowsOwned s2Step200HeadGBefore [s2Step200HeadGRow,s2Step200HeadFRow,s2Step200HeadGvRow,s2Step200HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step200HeadGRow,s2Step200HeadFRow,s2Step200HeadGvRow,s2Step200HeadFvRow] 0 s2Step200HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step200HeadGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<842) ∨ (843≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step200HeadG_Outgoing : rowsOwned s2Step200HeadFvAfter [s2Step200HeadGOut,s2Step200HeadFOut,s2Step200HeadGvOut,s2Step200HeadFvOut] :=
  hmrRows_owned_drop s2Step200HeadFvAfter [s2Step200HeadGOut,s2Step200HeadFOut,s2Step200HeadGvOut,s2Step200HeadFvOut] 0 s2Step200HeadBank_outgoingOwned

private theorem s2Step200HeadG_distinct : (s2Step200HeadGRow.sign::s2Step200HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step200HeadG_owned : (s2Step200HeadGRow.sign::s2Step200HeadGRow.payload).toFinset⊆s2Step200HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step200HeadGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<842) ∨ (843≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step200HeadG_reserved : s2Step200HeadGBefore.reserve s2Step200HeadGFresh.toFinset=some s2Step200HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step200HeadGFresh,arenaWires]
  · norm_num [s2Step200HeadGBefore,s2Step200HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step200HeadGAfter,s2Step200HeadGBefore,s2Step200HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step200HeadG_checked : planRowResizeLog s2Step200HeadGBefore s2Step200HeadGRow 172 s2Step200HeadGFresh=
    some (s2Step200HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 826, 842],769⟩,growRow 769 s2Step200HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step200HeadGBefore s2Step200HeadGAfter s2Step200HeadGRow 172 s2Step200HeadGFresh
    s2Step200HeadG_distinct s2Step200HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step200HeadG_reserved
  have rowEq : WindowRow.mk (s2Step200HeadGRow.payload++s2Step200HeadGFresh) s2Step200HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 826, 842],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step200HeadGvBefore : Arena := s2Step200HeadFAfter

private theorem s2Step200HeadGv_Incoming : rowsOwned s2Step200HeadGvBefore [s2Step200HeadGvRow,s2Step200HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step200HeadGRow,s2Step200HeadFRow,s2Step200HeadGvRow,s2Step200HeadFvRow] 2 s2Step200HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step200HeadGvBefore (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step200HeadGv_Outgoing : rowsOwned s2Step200HeadFvAfter [s2Step200HeadGvOut,s2Step200HeadFvOut] :=
  hmrRows_owned_drop s2Step200HeadFvAfter [s2Step200HeadGOut,s2Step200HeadFOut,s2Step200HeadGvOut,s2Step200HeadFvOut] 2 s2Step200HeadBank_outgoingOwned

private theorem s2Step200HeadGv_distinct : (s2Step200HeadGvRow.sign::s2Step200HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step200HeadGv_owned : (s2Step200HeadGvRow.sign::s2Step200HeadGvRow.payload).toFinset⊆s2Step200HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step200HeadGvBefore (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step200HeadGv_reserved : s2Step200HeadGvBefore.reserve s2Step200HeadGvFresh.toFinset=some s2Step200HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step200HeadGvFresh,arenaWires]
  · norm_num [s2Step200HeadGvBefore,s2Step200HeadFAfter,s2Step200HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step200HeadGvAfter,s2Step200HeadGvBefore,s2Step200HeadFAfter,s2Step200HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step200HeadGv_checked : planRowResizeLog s2Step200HeadGvBefore s2Step200HeadGvRow 117 s2Step200HeadGvFresh=
    some (s2Step200HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 781, 822, 879],771⟩,growRow 771 s2Step200HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step200HeadGvBefore s2Step200HeadGvAfter s2Step200HeadGvRow 117 s2Step200HeadGvFresh
    s2Step200HeadGv_distinct s2Step200HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step200HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step200HeadGvRow.payload++s2Step200HeadGvFresh) s2Step200HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 781, 822, 879],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step200HeadBank_rows : planWindowRowsLog s2Step200HeadGBefore [(s2Step200HeadGRow,172),(s2Step200HeadFRow,172),(s2Step200HeadGvRow,117),(s2Step200HeadFvRow,117)] [s2Step200HeadGFresh,s2Step200HeadFFresh,s2Step200HeadGvFresh,s2Step200HeadFvFresh]=
    some (s2Step200HeadFvAfter,[s2Step200HeadGOut,s2Step200HeadFOut,s2Step200HeadGvOut,s2Step200HeadFvOut],(growRow 769 s2Step200HeadGFresh ++ (growRow 768 s2Step200HeadFFresh ++ (growRow 771 s2Step200HeadGvFresh ++ (growRow 770 s2Step200HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step200HeadFvAfter [] []=some (s2Step200HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step200HeadFvBefore s2Step200HeadFvAfter s2Step200HeadFvAfter
    s2Step200HeadFvRow s2Step200HeadFvOut 117 s2Step200HeadFvFresh [] [] []
    (growRow 770 s2Step200HeadFvFresh) ([]) s2Step200HeadFv_Incoming s2Step200HeadFv_checked h4 s2Step200HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step200HeadGvBefore s2Step200HeadGvAfter s2Step200HeadFvAfter
    s2Step200HeadGvRow s2Step200HeadGvOut 117 s2Step200HeadGvFresh [(s2Step200HeadFvRow,117)] [s2Step200HeadFvFresh] [s2Step200HeadFvOut]
    (growRow 771 s2Step200HeadGvFresh) ((growRow 770 s2Step200HeadFvFresh ++ [])) s2Step200HeadGv_Incoming s2Step200HeadGv_checked h3 s2Step200HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step200HeadFBefore s2Step200HeadFAfter s2Step200HeadFvAfter
    s2Step200HeadFRow s2Step200HeadFOut 172 s2Step200HeadFFresh [(s2Step200HeadGvRow,117),(s2Step200HeadFvRow,117)] [s2Step200HeadGvFresh,s2Step200HeadFvFresh] [s2Step200HeadGvOut,s2Step200HeadFvOut]
    (growRow 768 s2Step200HeadFFresh) ((growRow 771 s2Step200HeadGvFresh ++ (growRow 770 s2Step200HeadFvFresh ++ []))) s2Step200HeadF_Incoming s2Step200HeadF_checked h2 s2Step200HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step200HeadGBefore s2Step200HeadGAfter s2Step200HeadFvAfter
    s2Step200HeadGRow s2Step200HeadGOut 172 s2Step200HeadGFresh [(s2Step200HeadFRow,172),(s2Step200HeadGvRow,117),(s2Step200HeadFvRow,117)] [s2Step200HeadFFresh,s2Step200HeadGvFresh,s2Step200HeadFvFresh] [s2Step200HeadFOut,s2Step200HeadGvOut,s2Step200HeadFvOut]
    (growRow 769 s2Step200HeadGFresh) ((growRow 768 s2Step200HeadFFresh ++ (growRow 771 s2Step200HeadGvFresh ++ (growRow 770 s2Step200HeadFvFresh ++ [])))) s2Step200HeadG_Incoming s2Step200HeadG_checked h1 s2Step200HeadG_Outgoing
  exact h0

private theorem s2Step200HeadBank_checked : compileHmrBankResizeLog .headroom s2Step200HeadGBefore ⟨s2Step200HeadFRow,s2Step200HeadGRow,s2Step200HeadFvRow,s2Step200HeadGvRow⟩ ⟨172,172,117,117⟩ [s2Step200HeadGFresh,s2Step200HeadFFresh,s2Step200HeadGvFresh,s2Step200HeadFvFresh]=
    some (s2Step200HeadFvAfter,⟨s2Step200HeadFOut,s2Step200HeadGOut,s2Step200HeadFvOut,s2Step200HeadGvOut⟩,(growRow 769 s2Step200HeadGFresh ++ (growRow 768 s2Step200HeadFFresh ++ (growRow 771 s2Step200HeadGvFresh ++ (growRow 770 s2Step200HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step200HeadBank_rows]
  rfl

private theorem s2Step200Front_checked : compileHmrSourceFrontLog s2Step200EntryFBefore s2Step200FrontBank 171 116 ⟨169,169,117,114⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step200FrontLog=some s2Step200FrontPlan := by
  have pairEq : s2Step200FrontPair=⟨s2Step200HeadFRow,s2Step200HeadGRow,s2Step200HeadFvRow,s2Step200HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step200FrontHead=⟨s2Step200ExitFRow,s2Step200ExitGRow,s2Step200ExitFvRow,s2Step200ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step200Add0A=s2Step200FrontHead.f.wires := by decide +kernel
  have gEq : s2Step200Add0B=s2Step200FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step200Add1A=s2Step200FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step200Add1B=s2Step200FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step200EntryFBefore s2Step200FrontBank 171 116 ⟨169,169,117,114⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step200FrontLog s2Step200FrontPlan
  · exact s2Step200Front_entry
  · exact s2Step200EntryBank_checked
  · exact s2Step200Front_sigma
  · rfl
  · exact s2Step200Front_branch
  · rfl
  · simpa only [s2Step200FrontPlan,pairEq] using s2Step200HeadBank_checked
  · simpa only [s2Step200FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step200F4_checked
  · exact s2Step200Counter_checked
  · rfl
  · simpa only [s2Step200FrontPlan,headEq] using s2Step200ExitBank_checked

private theorem s2Step200Complete_explicit_checked : compileHmrEarlyStepLog s2Step200EntryFBefore s2Step200FrontBank 171 116 ⟨169,169,117,114⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step200CompleteLog=some s2Step200CompletePlan := by
  let Q := s2Step200EarlyControlPlan
  have hq := s2Step200EarlyControl_plan_checked
  have fv1 : s2Step200CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step200CompleteOut.fv.payload[2]?.getD s2Step200CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step200CompleteOut.fv.payload[3]?.getD s2Step200CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step200CompleteOut.fv.payload[4]?.getD s2Step200CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step200EntryFBefore s2Step200EarlyControlArena s2Step200FrontBank 171 116 ⟨169,169,117,114⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step200CompleteLog s2Step200FrontPlan Q
    s2Step200Front_checked s2Step200Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step200Complete_owned s2Step200Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step200EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 867 s2Step200CompleteOut.fv.second (s2Step200CompleteOut.fv.payload[2]?.getD s2Step200CompleteOut.fv.sign) (s2Step200CompleteOut.fv.payload[3]?.getD s2Step200CompleteOut.fv.sign) (s2Step200CompleteOut.fv.payload[4]?.getD s2Step200CompleteOut.fv.sign) 829 47 s2Step200EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep200Arena : Arena := s2Step200EntryFBefore
def s2PrivateStep200Bank : WindowBank := s2Step200FrontBank
def s2PrivateStep200Spec : HmrSourceWalkStepLog := ⟨171,116,⟨169,169,117,114⟩,47,.early s2Step200CompleteLog⟩
def s2PrivateStep200Plan : HmrSourceStepPlan := .early s2Step200CompletePlan
theorem s2PrivateStep200_source : s2PrivateStep200Spec=s2ObservedLogs192[8] := rfl
theorem s2PrivateStep200_checked : compileHmrSourceStepLog s2PrivateStep200Arena s2PrivateStep200Bank
    s2PrivateStep200Spec.fgWidth s2PrivateStep200Spec.vWidth s2PrivateStep200Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897]
    6 498 200 s2PrivateStep200Spec.need none s2PrivateStep200Spec.log=some s2PrivateStep200Plan := by
  change compileHmrSourceStepLog s2Step200EntryFBefore s2Step200FrontBank 171 116 ⟨169,169,117,114⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 6 498 200 47 none (.early s2Step200CompleteLog)=some (.early s2Step200CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 200<498)]
  rw [s2Step200Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
