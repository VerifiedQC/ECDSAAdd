import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep207
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

private def s2Step209CompleteMoves : List (Wire × Wire) := [(815,164),(786,677)]

private def s2Step209EarlyControlLog : HmrEarlyControlLog := ⟨[786, 815, 845, 789, 796],[783],[814],[882, 826, 842, 885, 891, 894],[]⟩

private def s2Step209FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [796], [], []],[[783], [789], [845], [822]],[[], [], [], []]⟩,[841],[781],[814],[882],[826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[814, 882, 826, 842]⟩

private def s2Step209CompleteLog : HmrEarlyStepLog := ⟨s2Step209FrontLog,s2Step209CompleteMoves,s2Step209EarlyControlLog⟩

private def s2Step209ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676],768⟩

private def s2Step209ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 822],770⟩

private def s2Step209ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163],769⟩

private def s2Step209ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816],771⟩

private def s2Step209FrontOut : WindowBank := ⟨s2Step209ExitFOut,s2Step209ExitGOut,s2Step209ExitFvOut,s2Step209ExitGvOut⟩

private def s2Step209CompleteOut : WindowBank := s2Step209FrontOut.repacked s2Step209CompleteMoves

private def s2Step209EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<786) ∨ (787≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step209EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step209EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step209EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step209EarlyControlPositiveArena,[783],s2Step209EarlyControlEqualityArena,[814],⟨⟨841,false⟩,[⟨⟨783,false⟩,814⟩]⟩⟩

private def s2Step209EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<895) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step209EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<895) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step209EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<786) ∨ (787≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step209EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<786) ∨ (787≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step209EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<786) ∨ (787≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step209EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step209EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,786⟩,⟨⟨774,false⟩,815⟩,⟨⟨775,false⟩,845⟩,⟨⟨776,false⟩,789⟩,⟨⟨777,false⟩,796⟩]⟩

private def s2Step209EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step209EarlyControlZeroArena,s2Step209EarlyControlZeroPlan,s2Step209EarlyControlClassPlan,s2Step209EarlyControlFlagArena,s2Step209EarlyControlFittedArena,s2Step209EarlyControlHistoryArena,s2Step209EarlyControlSigmaArena,s2Step209EarlyControlOutputArena,s2Step209EarlyControlLog⟩

private def s2Step209CounterWork : List Wire := [814, 882, 826, 842]

private theorem s2Step209Counter_bounded : s2Step209CounterWork.toFinset⊆arenaWires := by norm_num [s2Step209CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step209HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step209CounterDuring : Arena := ⟨s2Step209HeadFvAfter.live∪s2Step209CounterWork.toFinset,Finset.union_subset s2Step209HeadFvAfter.bounded s2Step209Counter_bounded⟩

private def s2Step209EntryFFresh : List Wire := []

private def s2Step209EntryFvFresh : List Wire := []

private def s2Step209EntryGFresh : List Wire := [796]

private def s2Step209EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step209EntryGvAfter : Arena := s2Step209EntryGAfter

private def s2Step209EntryGvFresh : List Wire := []

private def s2Step209ExitFExtra : List Wire := [677, 789]

private def s2Step209ExitGExtra : List Wire := [164, 796, 783]

private def s2Step209ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<164) ∨ (165≤q ∧ q<677) ∨ (678≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step209ExitGvExtra : List Wire := [845]

private def s2Step209Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step209Add0Work : List Wire := [826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step209Add0_bounded : s2Step209Add0Work.toFinset⊆arenaWires := by
  have h : s2Step209Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step209Add0During : Arena := ⟨s2Step209Add0Arena.live∪s2Step209Add0Work.toFinset,Finset.union_subset s2Step209Add0Arena.bounded s2Step209Add0_bounded⟩

private def s2Step209Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step209Add1Work : List Wire := [826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step209Add1_bounded : s2Step209Add1Work.toFinset⊆arenaWires := by
  have h : s2Step209Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step209Add1During : Arena := ⟨s2Step209Add1Arena.live∪s2Step209Add1Work.toFinset,Finset.union_subset s2Step209Add1Arena.bounded s2Step209Add1_bounded⟩

private def s2Step209F4FlagArena : Arena := ⟨s2Step209HeadFvAfter.live∪{814},Finset.union_subset s2Step209HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step209F4Plan : HmrHybridF4Plan := ⟨s2Step209F4FlagArena,[814],s2Step209Add0Arena,[882],s2Step209Add0During,s2Step209Add0Work,s2Step209Add1During,s2Step209Add1Work⟩

private def s2Step209HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 789],768⟩

private def s2Step209HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 822],770⟩

private def s2Step209HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 796, 783],769⟩

private def s2Step209HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 845],771⟩

private def s2Step209FrontHead : WindowBank := ⟨s2Step209HeadFOut,s2Step209HeadGOut,s2Step209HeadFvOut,s2Step209HeadGvOut⟩

private def s2Step209EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677],768⟩

private def s2Step209EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779],770⟩

private def s2Step209EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 796],769⟩

private def s2Step209EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816],771⟩

private def s2Step209FrontPair : WindowBank := ⟨s2Step209EntryFOut,s2Step209EntryGOut,s2Step209EntryFvOut,s2Step209EntryGvOut⟩

private def s2Step209FrontSigmaArena : Arena := ⟨s2Step209EntryGvAfter.live∪{841},Finset.union_subset s2Step209EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step209HeadFFresh : List Wire := [789]

private def s2Step209HeadFvFresh : List Wire := [822]

private def s2Step209HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step209HeadGFresh : List Wire := [783]

private def s2Step209HeadGvFresh : List Wire := [845]

private def s2Step209FrontPlan : HmrSourceFront := ⟨s2Step209EntryGvAfter,s2Step209FrontPair,(growRow 768 s2Step209EntryFFresh ++ (growRow 769 s2Step209EntryGFresh ++ (growRow 770 s2Step209EntryFvFresh ++ (growRow 771 s2Step209EntryGvFresh ++ [])))),s2Step209FrontSigmaArena,[841],s2Step209HeadGBefore,[781],
  s2Step209HeadFvAfter,s2Step209FrontHead,(growRow 769 s2Step209HeadGFresh ++ (growRow 768 s2Step209HeadFFresh ++ (growRow 771 s2Step209HeadGvFresh ++ (growRow 770 s2Step209HeadFvFresh ++ [])))),s2Step209F4Plan,s2Step209CounterDuring,s2Step209CounterWork,s2Step209ExitGvAfter,s2Step209FrontOut,(shrinkRow 769 s2Step209ExitGExtra ++ (shrinkRow 768 s2Step209ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step209ExitGvExtra ++ []))))⟩

private def s2Step209CompletePlan : HmrEarlyStepPlan := ⟨s2Step209FrontPlan,s2Step209EarlyControlArena,s2Step209EarlyControlPlan,s2Step209CompleteMoves⟩

private theorem s2Step209Complete_apart : List.Disjoint (s2Step209CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [841, 781, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] := by
  have nd : ((s2Step209CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[841, 781, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step209Complete_owned : (s2Step209CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step209EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step209EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<786) ∨ (787≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private def s2Step209CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,677),(678,783),(784,789),(790,796),(797,814),(816,826),(827,842),(843,845),(846,882),(883,885),(886,891),(892,894),(897,898)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s2Step209CompleteRelocationMove0Borrowed : Arena := ⟨s2Step209ExitGvAfter.live∪{164},Finset.union_subset s2Step209ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step209CompleteRelocationMove1Borrowed : Arena := ⟨s2Step209CompleteRelocationMove0After.live∪{677},Finset.union_subset s2Step209CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s2Step209CompleteRelocation_move0_owned : 815∈s2Step209ExitGvAfter.live := by norm_num [s2Step209ExitGvAfter,arenaWires]

private theorem s2Step209CompleteRelocation_move0_reserve : s2Step209ExitGvAfter.reserve {164}=some s2Step209CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step209ExitGvAfter,arenaWires]
  · rfl

private theorem s2Step209CompleteRelocation_move0_retire : s2Step209CompleteRelocationMove0Borrowed.retireSet {815}=s2Step209CompleteRelocationMove0After := by
  unfold Arena.retireSet s2Step209CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step209CompleteRelocationMove0Borrowed,s2Step209ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step209CompleteRelocation_move1_owned : 786∈s2Step209CompleteRelocationMove0After.live := by norm_num [s2Step209CompleteRelocationMove0After,arenaWires]

private theorem s2Step209CompleteRelocation_move1_reserve : s2Step209CompleteRelocationMove0After.reserve {677}=some s2Step209CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step209CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s2Step209CompleteRelocation_move1_retire : s2Step209CompleteRelocationMove1Borrowed.retireSet {786}=s2Step209EarlyControlArena := by
  unfold Arena.retireSet s2Step209EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step209CompleteRelocationMove1Borrowed,s2Step209CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step209CompleteRelocation_checked : s2Step209ExitGvAfter.checkRepack [(815,164),(786,677)]=some s2Step209EarlyControlArena := by
  have tail2 : s2Step209EarlyControlArena.checkRepack []=some s2Step209EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s2Step209CompleteRelocationMove0After s2Step209CompleteRelocationMove1Borrowed s2Step209EarlyControlArena s2Step209EarlyControlArena 786 677 []
    s2Step209CompleteRelocation_move1_owned s2Step209CompleteRelocation_move1_reserve s2Step209CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s2Step209ExitGvAfter s2Step209CompleteRelocationMove0Borrowed s2Step209CompleteRelocationMove0After s2Step209EarlyControlArena 815 164 [(786,677)]
    s2Step209CompleteRelocation_move0_owned s2Step209CompleteRelocation_move0_reserve s2Step209CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s2Step209Complete_repack : s2Step209ExitGvAfter.checkRepack s2Step209CompleteMoves=some s2Step209EarlyControlArena := by
  simpa only [s2Step209CompleteMoves] using s2Step209CompleteRelocation_checked

private theorem s2Step209EarlyControl_branchOwned : ([781] : List Wire).toFinset⊆s2Step209EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step209EarlyControlSigmaArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<786) ∨ (787≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step209EarlyControl_branch : compileHmrBranchRetirement s2Step209EarlyControlSigmaArena 781=some s2Step209EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step209EarlyControl_branchOwned
  · ext q
    simp [s2Step209EarlyControlOutputArena,s2Step209EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step209EarlyControl_classEqualityBorrow : s2Step209EarlyControlPositiveArena.checkBorrow (([841, 783] : List Wire).length-1) s2Step209EarlyControlLog.classWork=some s2Step209EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step209EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step209EarlyControlPositiveArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step209EarlyControlEqualityArena,s2Step209EarlyControlPositiveArena,s2Step209EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step209EarlyControl_classEqualityOwned : ([841, 783] : List Wire).toFinset⊆s2Step209EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step209EarlyControlPositiveArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step209EarlyControl_classEquality : compileHmrEqualityLog s2Step209EarlyControlPositiveArena [841, 783] 0 s2Step209EarlyControlLog.classWork=some (s2Step209EarlyControlEqualityArena,s2Step209EarlyControlLog.classWork,s2Step209EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step209EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step209EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step209EarlyControl_classOwned : ([777, 796, 841] : List Wire).toFinset⊆s2Step209EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step209EarlyControlZeroArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step209EarlyControl_positiveBorrow : s2Step209EarlyControlZeroArena.checkBorrow (1) s2Step209EarlyControlLog.positiveWork=some s2Step209EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step209EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step209EarlyControlZeroArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step209EarlyControlPositiveArena,s2Step209EarlyControlZeroArena,s2Step209EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step209EarlyControl_class : compileHmrSourceClassLog s2Step209EarlyControlZeroArena false 777 s2Step209EarlyControlZeroPlan.top 0 841 s2Step209EarlyControlLog.positiveWork s2Step209EarlyControlLog.classWork=some s2Step209EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step209EarlyControlClassPlan s2Step209EarlyControlZeroArena false 777 s2Step209EarlyControlZeroPlan.top 0 841
  constructor
  · decide +kernel
  · exact s2Step209EarlyControl_classOwned
  · exact s2Step209EarlyControl_positiveBorrow
  · exact s2Step209EarlyControl_classEquality

private theorem s2Step209EarlyControl_entryRecordOwned : ([781, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step209EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step209EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<786) ∨ (787≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step209EarlyControl_entrySigmaOwned : ([841, 254] : List Wire).toFinset⊆s2Step209EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step209EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<786) ∨ (787≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step209EarlyControl_fitBorrow : s2Step209EarlyControlFlagArena.checkBorrow ((47-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).length)) s2Step209EarlyControlLog.recordFresh=some s2Step209EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step209EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step209EarlyControlFlagArena (fun q => (0≤q ∧ q<895) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step209EarlyControlFittedArena,s2Step209EarlyControlFlagArena,s2Step209EarlyControlLog,arenaWires]

private theorem s2Step209EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step209EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step209EarlyControlFlagArena (fun q => (0≤q ∧ q<895) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step209EarlyControl_fit : compileHmrRecordGrowLog s2Step209EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step209EarlyControlLog.recordFresh=some s2Step209EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step209EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step209EarlyControl_fitBorrow

private theorem s2Step209EarlyControl_flagsBorrow : s2Step209EarlyControlEqualityArena.checkBorrow (6) s2Step209EarlyControlLog.flagWork=some s2Step209EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step209EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step209EarlyControlEqualityArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step209EarlyControlFlagArena,s2Step209EarlyControlEqualityArena,s2Step209EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step209EarlyControl_flagsOwned : ([814, 253, 252, 251] : List Wire).toFinset⊆s2Step209EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step209EarlyControlEqualityArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step209EarlyControl_flags : compileHmrFlagsLog s2Step209EarlyControlClassPlan.equalityArena s2Step209EarlyControlClassPlan.equality.top 253 252 251 s2Step209EarlyControlLog.flagWork=some s2Step209EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step209EarlyControl_flagsOwned⟩
  · exact s2Step209EarlyControl_flagsBorrow

private theorem s2Step209EarlyControl_historyBorrow : s2Step209EarlyControlArena.checkBorrow ((47-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).length)) s2Step209EarlyControlLog.recordFresh=some s2Step209EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step209EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step209EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<786) ∨ (787≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step209EarlyControlHistoryArena,s2Step209EarlyControlArena,s2Step209EarlyControlLog,arenaWires]

private theorem s2Step209EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step209EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step209EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<786) ∨ (787≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step209EarlyControl_history : compileHmrRecordGrowLog s2Step209EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step209EarlyControlLog.recordFresh=some s2Step209EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step209EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step209EarlyControl_historyBorrow

private theorem s2Step209EarlyControl_sigmaOwned : ([254, 841] : List Wire).toFinset⊆s2Step209EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step209EarlyControlHistoryArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<786) ∨ (787≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step209EarlyControl_sigmaReleaseOwned : ([841] : List Wire).toFinset⊆s2Step209EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step209EarlyControlHistoryArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<786) ∨ (787≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step209EarlyControl_sigmaRelease : s2Step209EarlyControlHistoryArena.release {841} (fun _ => false)=some s2Step209EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step209EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step209EarlyControlSigmaArena,s2Step209EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step209EarlyControl_sigma : compileHmrSigmaDropLog s2Step209EarlyControlHistoryArena false 0 0 254 841 []=some s2Step209EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step209EarlyControl_sigmaOwned⟩
  · exact s2Step209EarlyControl_sigmaRelease

private theorem s2Step209EarlyControl_zeroBorrow : s2Step209EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step209EarlyControlLog.zeroWork=some s2Step209EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step209EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step209EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<786) ∨ (787≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step209EarlyControlZeroArena,s2Step209EarlyControlArena,s2Step209EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step209EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step209EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step209EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<786) ∨ (787≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step209EarlyControl_zero : compileHmrEqualityLog s2Step209EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step209EarlyControlLog.zeroWork=some (s2Step209EarlyControlZeroArena,s2Step209EarlyControlLog.zeroWork,s2Step209EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step209EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step209EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step209EarlyControl_logged : s2Step209EarlyControlPlan.Logged s2Step209EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 841 254 253 252 251 781 47 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step209EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step209EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step209EarlyControl_zero
  · exact s2Step209EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step209EarlyControl_flags
  · exact s2Step209EarlyControl_fit
  · exact s2Step209EarlyControl_history
  · exact s2Step209EarlyControl_sigma
  · exact s2Step209EarlyControl_branch

private theorem s2Step209EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step209EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 841 254 253 252 251 781 47 s2Step209EarlyControlLog=some s2Step209EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step209EarlyControlPlan s2Step209EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 841 254 253 252 251 781 47 s2Step209EarlyControl_logged

private def s2Step209EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step209EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677],768⟩

private def s2Step209EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779],770⟩

private def s2Step209EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164],769⟩

private def s2Step209EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816],771⟩

private def s2Step209FrontBank : WindowBank := ⟨s2Step209EntryFRow,s2Step209EntryGRow,s2Step209EntryFvRow,s2Step209EntryGvRow⟩

private def s2Step209Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 789, 768]

private def s2Step209Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 796, 783, 769]

private def s2Step209Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 822, 770]

private def s2Step209Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 845, 771]

private theorem s2Step209Counter_apart : Disjoint s2Step209HeadFvAfter.live s2Step209CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step209HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step209Counter_borrowed : s2Step209HeadFvAfter.checkBorrow 4 s2Step209CounterWork=some s2Step209CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step209HeadFvAfter s2Step209CounterDuring s2Step209CounterWork.toFinset s2Step209Counter_bounded s2Step209Counter_apart rfl

private theorem s2Step209Counter_owned : (841::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step209HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step209HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step209Counter_checked : compileHmrCounterStepLog s2Step209HeadFvAfter true 841 [772, 773, 774, 775, 776, 777] s2Step209CounterWork=some s2Step209CounterDuring := by
  have owned : ∀q∈841::[772, 773, 774, 775, 776, 777],q∈s2Step209HeadFvAfter.live := fun q hq => s2Step209Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step209Counter_borrowed

private def s2Step209EntryFAfter : Arena := s2Step209EntryFBefore

private theorem s2Step209EntryBank_incomingDistinct : ([s2Step209EntryFRow,s2Step209EntryGRow,s2Step209EntryFvRow,s2Step209EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step209EntryF_Incoming : rowsOwned s2Step209EntryFBefore [s2Step209EntryFRow,s2Step209EntryGRow,s2Step209EntryFvRow,s2Step209EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step209EntryFRow,s2Step209EntryGRow,s2Step209EntryFvRow,s2Step209EntryGvRow] 0 s2Step209EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step209EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step209EntryBank_outgoingOwned : rowsOwned s2Step209EntryGvAfter [s2Step209EntryFOut,s2Step209EntryGOut,s2Step209EntryFvOut,s2Step209EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step209EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step209EntryF_Outgoing : rowsOwned s2Step209EntryGvAfter [s2Step209EntryFOut,s2Step209EntryGOut,s2Step209EntryFvOut,s2Step209EntryGvOut] :=
  hmrRows_owned_drop s2Step209EntryGvAfter [s2Step209EntryFOut,s2Step209EntryGOut,s2Step209EntryFvOut,s2Step209EntryGvOut] 0 s2Step209EntryBank_outgoingOwned

private theorem s2Step209EntryF_distinct : (s2Step209EntryFRow.sign::s2Step209EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step209EntryF_owned : (s2Step209EntryFRow.sign::s2Step209EntryFRow.payload).toFinset⊆s2Step209EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step209EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step209EntryF_reserved : s2Step209EntryFBefore.reserve s2Step209EntryFFresh.toFinset=some s2Step209EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step209EntryFFresh,arenaWires]
  · norm_num [s2Step209EntryFBefore,s2Step209EntryFFresh,arenaWires]
  · simp only [s2Step209EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step209EntryF_checked : planRowResizeLog s2Step209EntryFBefore s2Step209EntryFRow 166 s2Step209EntryFFresh=
    some (s2Step209EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677],768⟩,growRow 768 s2Step209EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step209EntryFBefore s2Step209EntryFAfter s2Step209EntryFRow 166 s2Step209EntryFFresh
    s2Step209EntryF_distinct s2Step209EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step209EntryF_reserved
  have rowEq : WindowRow.mk (s2Step209EntryFRow.payload++s2Step209EntryFFresh) s2Step209EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step209EntryFvAfter : Arena := s2Step209EntryGAfter

private def s2Step209EntryFvBefore : Arena := s2Step209EntryGAfter

private theorem s2Step209EntryFv_Incoming : rowsOwned s2Step209EntryFvBefore [s2Step209EntryFvRow,s2Step209EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step209EntryFRow,s2Step209EntryGRow,s2Step209EntryFvRow,s2Step209EntryGvRow] 2 s2Step209EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step209EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step209EntryFv_Outgoing : rowsOwned s2Step209EntryGvAfter [s2Step209EntryFvOut,s2Step209EntryGvOut] :=
  hmrRows_owned_drop s2Step209EntryGvAfter [s2Step209EntryFOut,s2Step209EntryGOut,s2Step209EntryFvOut,s2Step209EntryGvOut] 2 s2Step209EntryBank_outgoingOwned

private theorem s2Step209EntryFv_distinct : (s2Step209EntryFvRow.sign::s2Step209EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step209EntryFv_owned : (s2Step209EntryFvRow.sign::s2Step209EntryFvRow.payload).toFinset⊆s2Step209EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step209EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step209EntryFv_reserved : s2Step209EntryFvBefore.reserve s2Step209EntryFvFresh.toFinset=some s2Step209EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step209EntryFvFresh,arenaWires]
  · norm_num [s2Step209EntryFvBefore,s2Step209EntryGAfter,s2Step209EntryFvFresh,arenaWires]
  · simp only [s2Step209EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step209EntryFv_checked : planRowResizeLog s2Step209EntryFvBefore s2Step209EntryFvRow 119 s2Step209EntryFvFresh=
    some (s2Step209EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779],770⟩,growRow 770 s2Step209EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step209EntryFvBefore s2Step209EntryFvAfter s2Step209EntryFvRow 119 s2Step209EntryFvFresh
    s2Step209EntryFv_distinct s2Step209EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step209EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step209EntryFvRow.payload++s2Step209EntryFvFresh) s2Step209EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step209EntryGBefore : Arena := s2Step209EntryFBefore

private theorem s2Step209EntryG_Incoming : rowsOwned s2Step209EntryGBefore [s2Step209EntryGRow,s2Step209EntryFvRow,s2Step209EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step209EntryFRow,s2Step209EntryGRow,s2Step209EntryFvRow,s2Step209EntryGvRow] 1 s2Step209EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step209EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step209EntryG_Outgoing : rowsOwned s2Step209EntryGvAfter [s2Step209EntryGOut,s2Step209EntryFvOut,s2Step209EntryGvOut] :=
  hmrRows_owned_drop s2Step209EntryGvAfter [s2Step209EntryFOut,s2Step209EntryGOut,s2Step209EntryFvOut,s2Step209EntryGvOut] 1 s2Step209EntryBank_outgoingOwned

private theorem s2Step209EntryG_distinct : (s2Step209EntryGRow.sign::s2Step209EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step209EntryG_owned : (s2Step209EntryGRow.sign::s2Step209EntryGRow.payload).toFinset⊆s2Step209EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step209EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step209EntryG_reserved : s2Step209EntryGBefore.reserve s2Step209EntryGFresh.toFinset=some s2Step209EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step209EntryGFresh,arenaWires]
  · norm_num [s2Step209EntryGBefore,s2Step209EntryFBefore,s2Step209EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step209EntryGAfter,s2Step209EntryGBefore,s2Step209EntryFBefore,s2Step209EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step209EntryG_checked : planRowResizeLog s2Step209EntryGBefore s2Step209EntryGRow 166 s2Step209EntryGFresh=
    some (s2Step209EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 796],769⟩,growRow 769 s2Step209EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step209EntryGBefore s2Step209EntryGAfter s2Step209EntryGRow 166 s2Step209EntryGFresh
    s2Step209EntryG_distinct s2Step209EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step209EntryG_reserved
  have rowEq : WindowRow.mk (s2Step209EntryGRow.payload++s2Step209EntryGFresh) s2Step209EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 796],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step209EntryGvBefore : Arena := s2Step209EntryGAfter

private theorem s2Step209EntryGv_Incoming : rowsOwned s2Step209EntryGvBefore [s2Step209EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step209EntryFRow,s2Step209EntryGRow,s2Step209EntryFvRow,s2Step209EntryGvRow] 3 s2Step209EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step209EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step209EntryGv_Outgoing : rowsOwned s2Step209EntryGvAfter [s2Step209EntryGvOut] :=
  hmrRows_owned_drop s2Step209EntryGvAfter [s2Step209EntryFOut,s2Step209EntryGOut,s2Step209EntryFvOut,s2Step209EntryGvOut] 3 s2Step209EntryBank_outgoingOwned

private theorem s2Step209EntryGv_distinct : (s2Step209EntryGvRow.sign::s2Step209EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step209EntryGv_owned : (s2Step209EntryGvRow.sign::s2Step209EntryGvRow.payload).toFinset⊆s2Step209EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step209EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step209EntryGv_reserved : s2Step209EntryGvBefore.reserve s2Step209EntryGvFresh.toFinset=some s2Step209EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step209EntryGvFresh,arenaWires]
  · norm_num [s2Step209EntryGvBefore,s2Step209EntryGAfter,s2Step209EntryGvFresh,arenaWires]
  · simp only [s2Step209EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step209EntryGv_checked : planRowResizeLog s2Step209EntryGvBefore s2Step209EntryGvRow 119 s2Step209EntryGvFresh=
    some (s2Step209EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816],771⟩,growRow 771 s2Step209EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step209EntryGvBefore s2Step209EntryGvAfter s2Step209EntryGvRow 119 s2Step209EntryGvFresh
    s2Step209EntryGv_distinct s2Step209EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step209EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step209EntryGvRow.payload++s2Step209EntryGvFresh) s2Step209EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step209EntryBank_rows : planWindowRowsLog s2Step209EntryFBefore [(s2Step209EntryFRow,166),(s2Step209EntryGRow,166),(s2Step209EntryFvRow,119),(s2Step209EntryGvRow,119)] [s2Step209EntryFFresh,s2Step209EntryGFresh,s2Step209EntryFvFresh,s2Step209EntryGvFresh]=
    some (s2Step209EntryGvAfter,[s2Step209EntryFOut,s2Step209EntryGOut,s2Step209EntryFvOut,s2Step209EntryGvOut],(growRow 768 s2Step209EntryFFresh ++ (growRow 769 s2Step209EntryGFresh ++ (growRow 770 s2Step209EntryFvFresh ++ (growRow 771 s2Step209EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step209EntryGvAfter [] []=some (s2Step209EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step209EntryGvBefore s2Step209EntryGvAfter s2Step209EntryGvAfter
    s2Step209EntryGvRow s2Step209EntryGvOut 119 s2Step209EntryGvFresh [] [] []
    (growRow 771 s2Step209EntryGvFresh) ([]) s2Step209EntryGv_Incoming s2Step209EntryGv_checked h4 s2Step209EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step209EntryFvBefore s2Step209EntryFvAfter s2Step209EntryGvAfter
    s2Step209EntryFvRow s2Step209EntryFvOut 119 s2Step209EntryFvFresh [(s2Step209EntryGvRow,119)] [s2Step209EntryGvFresh] [s2Step209EntryGvOut]
    (growRow 770 s2Step209EntryFvFresh) ((growRow 771 s2Step209EntryGvFresh ++ [])) s2Step209EntryFv_Incoming s2Step209EntryFv_checked h3 s2Step209EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step209EntryGBefore s2Step209EntryGAfter s2Step209EntryGvAfter
    s2Step209EntryGRow s2Step209EntryGOut 166 s2Step209EntryGFresh [(s2Step209EntryFvRow,119),(s2Step209EntryGvRow,119)] [s2Step209EntryFvFresh,s2Step209EntryGvFresh] [s2Step209EntryFvOut,s2Step209EntryGvOut]
    (growRow 769 s2Step209EntryGFresh) ((growRow 770 s2Step209EntryFvFresh ++ (growRow 771 s2Step209EntryGvFresh ++ []))) s2Step209EntryG_Incoming s2Step209EntryG_checked h2 s2Step209EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step209EntryFBefore s2Step209EntryFAfter s2Step209EntryGvAfter
    s2Step209EntryFRow s2Step209EntryFOut 166 s2Step209EntryFFresh [(s2Step209EntryGRow,166),(s2Step209EntryFvRow,119),(s2Step209EntryGvRow,119)] [s2Step209EntryGFresh,s2Step209EntryFvFresh,s2Step209EntryGvFresh] [s2Step209EntryGOut,s2Step209EntryFvOut,s2Step209EntryGvOut]
    (growRow 768 s2Step209EntryFFresh) ((growRow 769 s2Step209EntryGFresh ++ (growRow 770 s2Step209EntryFvFresh ++ (growRow 771 s2Step209EntryGvFresh ++ [])))) s2Step209EntryF_Incoming s2Step209EntryF_checked h1 s2Step209EntryF_Outgoing
  exact h0

private theorem s2Step209EntryBank_checked : compileHmrBankResizeLog .entry s2Step209EntryFBefore ⟨s2Step209EntryFRow,s2Step209EntryGRow,s2Step209EntryFvRow,s2Step209EntryGvRow⟩ ⟨166,166,119,119⟩ [s2Step209EntryFFresh,s2Step209EntryGFresh,s2Step209EntryFvFresh,s2Step209EntryGvFresh]=
    some (s2Step209EntryGvAfter,⟨s2Step209EntryFOut,s2Step209EntryGOut,s2Step209EntryFvOut,s2Step209EntryGvOut⟩,(growRow 768 s2Step209EntryFFresh ++ (growRow 769 s2Step209EntryGFresh ++ (growRow 770 s2Step209EntryFvFresh ++ (growRow 771 s2Step209EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step209EntryBank_rows]
  rfl

private def s2Step209ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<164) ∨ (165≤q ∧ q<677) ∨ (678≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step209ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<164) ∨ (165≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step209ExitFBefore : Arena := s2Step209ExitGAfter

private def s2Step209ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 789],768⟩

private def s2Step209ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 822],770⟩

private def s2Step209ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 796, 783],769⟩

private def s2Step209ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 845],771⟩

private theorem s2Step209ExitBank_incomingDistinct : ([s2Step209ExitGRow,s2Step209ExitFRow,s2Step209ExitFvRow,s2Step209ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step209ExitF_Incoming : rowsOwned s2Step209ExitFBefore [s2Step209ExitFRow,s2Step209ExitFvRow,s2Step209ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step209ExitGRow,s2Step209ExitFRow,s2Step209ExitFvRow,s2Step209ExitGvRow] 1 s2Step209ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step209ExitFBefore (fun q => (0≤q ∧ q<164) ∨ (165≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step209ExitBank_outgoingOwned : rowsOwned s2Step209ExitGvAfter [s2Step209ExitGOut,s2Step209ExitFOut,s2Step209ExitFvOut,s2Step209ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step209ExitGvAfter (fun q => (0≤q ∧ q<164) ∨ (165≤q ∧ q<677) ∨ (678≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step209ExitF_Outgoing : rowsOwned s2Step209ExitGvAfter [s2Step209ExitFOut,s2Step209ExitFvOut,s2Step209ExitGvOut] :=
  hmrRows_owned_drop s2Step209ExitGvAfter [s2Step209ExitGOut,s2Step209ExitFOut,s2Step209ExitFvOut,s2Step209ExitGvOut] 1 s2Step209ExitBank_outgoingOwned

private theorem s2Step209ExitF_distinct : (s2Step209ExitFRow.sign::s2Step209ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step209ExitF_owned : (s2Step209ExitFRow.sign::s2Step209ExitFRow.payload).toFinset⊆s2Step209ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step209ExitFBefore (fun q => (0≤q ∧ q<164) ∨ (165≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step209ExitF_retired : s2Step209ExitFBefore.retireSet s2Step209ExitFExtra.toFinset=s2Step209ExitFAfter := by
  unfold Arena.retireSet s2Step209ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step209ExitFBefore,s2Step209ExitGAfter,s2Step209ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step209ExitF_checked : planRowResizeLog s2Step209ExitFBefore s2Step209ExitFRow 165 []=
    some (s2Step209ExitFAfter,s2Step209ExitFOut,shrinkRow 768 s2Step209ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step209ExitFBefore s2Step209ExitFRow 165 s2Step209ExitF_distinct s2Step209ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step209ExitFRow.payload.take 165) s2Step209ExitFRow.sign=s2Step209ExitFOut := by decide +kernel
  have hi : s2Step209ExitFRow.payload.drop 165=s2Step209ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step209ExitF_retired] at result
  exact result

private def s2Step209ExitFvAfter : Arena := s2Step209ExitFAfter

private def s2Step209ExitFvBefore : Arena := s2Step209ExitFAfter

private theorem s2Step209ExitFv_Incoming : rowsOwned s2Step209ExitFvBefore [s2Step209ExitFvRow,s2Step209ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step209ExitGRow,s2Step209ExitFRow,s2Step209ExitFvRow,s2Step209ExitGvRow] 2 s2Step209ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step209ExitFvBefore (fun q => (0≤q ∧ q<164) ∨ (165≤q ∧ q<677) ∨ (678≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step209ExitFv_Outgoing : rowsOwned s2Step209ExitGvAfter [s2Step209ExitFvOut,s2Step209ExitGvOut] :=
  hmrRows_owned_drop s2Step209ExitGvAfter [s2Step209ExitGOut,s2Step209ExitFOut,s2Step209ExitFvOut,s2Step209ExitGvOut] 2 s2Step209ExitBank_outgoingOwned

private theorem s2Step209ExitFv_distinct : (s2Step209ExitFvRow.sign::s2Step209ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step209ExitFv_owned : (s2Step209ExitFvRow.sign::s2Step209ExitFvRow.payload).toFinset⊆s2Step209ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step209ExitFvBefore (fun q => (0≤q ∧ q<164) ∨ (165≤q ∧ q<677) ∨ (678≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step209ExitFv_reserved : s2Step209ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step209ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step209ExitFv_checked : planRowResizeLog s2Step209ExitFvBefore s2Step209ExitFvRow 120 []=
    some (s2Step209ExitFvAfter,s2Step209ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step209ExitFvBefore s2Step209ExitFvAfter s2Step209ExitFvRow 120 []
    s2Step209ExitFv_distinct s2Step209ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step209ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step209ExitFvRow.payload++[]) s2Step209ExitFvRow.sign=s2Step209ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step209ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private theorem s2Step209ExitG_Incoming : rowsOwned s2Step209ExitGBefore [s2Step209ExitGRow,s2Step209ExitFRow,s2Step209ExitFvRow,s2Step209ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step209ExitGRow,s2Step209ExitFRow,s2Step209ExitFvRow,s2Step209ExitGvRow] 0 s2Step209ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step209ExitGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step209ExitG_Outgoing : rowsOwned s2Step209ExitGvAfter [s2Step209ExitGOut,s2Step209ExitFOut,s2Step209ExitFvOut,s2Step209ExitGvOut] :=
  hmrRows_owned_drop s2Step209ExitGvAfter [s2Step209ExitGOut,s2Step209ExitFOut,s2Step209ExitFvOut,s2Step209ExitGvOut] 0 s2Step209ExitBank_outgoingOwned

private theorem s2Step209ExitG_distinct : (s2Step209ExitGRow.sign::s2Step209ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step209ExitG_owned : (s2Step209ExitGRow.sign::s2Step209ExitGRow.payload).toFinset⊆s2Step209ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step209ExitGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step209ExitG_retired : s2Step209ExitGBefore.retireSet s2Step209ExitGExtra.toFinset=s2Step209ExitGAfter := by
  unfold Arena.retireSet s2Step209ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step209ExitGBefore,s2Step209ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step209ExitG_checked : planRowResizeLog s2Step209ExitGBefore s2Step209ExitGRow 164 []=
    some (s2Step209ExitGAfter,s2Step209ExitGOut,shrinkRow 769 s2Step209ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step209ExitGBefore s2Step209ExitGRow 164 s2Step209ExitG_distinct s2Step209ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step209ExitGRow.payload.take 164) s2Step209ExitGRow.sign=s2Step209ExitGOut := by decide +kernel
  have hi : s2Step209ExitGRow.payload.drop 164=s2Step209ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step209ExitG_retired] at result
  exact result

private def s2Step209ExitGvBefore : Arena := s2Step209ExitFAfter

private theorem s2Step209ExitGv_Incoming : rowsOwned s2Step209ExitGvBefore [s2Step209ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step209ExitGRow,s2Step209ExitFRow,s2Step209ExitFvRow,s2Step209ExitGvRow] 3 s2Step209ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step209ExitGvBefore (fun q => (0≤q ∧ q<164) ∨ (165≤q ∧ q<677) ∨ (678≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step209ExitGv_Outgoing : rowsOwned s2Step209ExitGvAfter [s2Step209ExitGvOut] :=
  hmrRows_owned_drop s2Step209ExitGvAfter [s2Step209ExitGOut,s2Step209ExitFOut,s2Step209ExitFvOut,s2Step209ExitGvOut] 3 s2Step209ExitBank_outgoingOwned

private theorem s2Step209ExitGv_distinct : (s2Step209ExitGvRow.sign::s2Step209ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step209ExitGv_owned : (s2Step209ExitGvRow.sign::s2Step209ExitGvRow.payload).toFinset⊆s2Step209ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step209ExitGvBefore (fun q => (0≤q ∧ q<164) ∨ (165≤q ∧ q<677) ∨ (678≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step209ExitGv_retired : s2Step209ExitGvBefore.retireSet s2Step209ExitGvExtra.toFinset=s2Step209ExitGvAfter := by
  unfold Arena.retireSet s2Step209ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step209ExitGvBefore,s2Step209ExitFAfter,s2Step209ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step209ExitGv_checked : planRowResizeLog s2Step209ExitGvBefore s2Step209ExitGvRow 119 []=
    some (s2Step209ExitGvAfter,s2Step209ExitGvOut,shrinkRow 771 s2Step209ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step209ExitGvBefore s2Step209ExitGvRow 119 s2Step209ExitGv_distinct s2Step209ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step209ExitGvRow.payload.take 119) s2Step209ExitGvRow.sign=s2Step209ExitGvOut := by decide +kernel
  have hi : s2Step209ExitGvRow.payload.drop 119=s2Step209ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step209ExitGv_retired] at result
  exact result

private theorem s2Step209ExitBank_rows : planWindowRowsLog s2Step209ExitGBefore [(s2Step209ExitGRow,164),(s2Step209ExitFRow,165),(s2Step209ExitFvRow,120),(s2Step209ExitGvRow,119)] [[],[],[],[]]=
    some (s2Step209ExitGvAfter,[s2Step209ExitGOut,s2Step209ExitFOut,s2Step209ExitFvOut,s2Step209ExitGvOut],(shrinkRow 769 s2Step209ExitGExtra ++ (shrinkRow 768 s2Step209ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step209ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step209ExitGvAfter [] []=some (s2Step209ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step209ExitGvBefore s2Step209ExitGvAfter s2Step209ExitGvAfter
    s2Step209ExitGvRow s2Step209ExitGvOut 119 [] [] [] []
    (shrinkRow 771 s2Step209ExitGvExtra) ([]) s2Step209ExitGv_Incoming s2Step209ExitGv_checked h4 s2Step209ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step209ExitFvBefore s2Step209ExitFvAfter s2Step209ExitGvAfter
    s2Step209ExitFvRow s2Step209ExitFvOut 120 [] [(s2Step209ExitGvRow,119)] [[]] [s2Step209ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step209ExitGvExtra ++ [])) s2Step209ExitFv_Incoming s2Step209ExitFv_checked h3 s2Step209ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step209ExitFBefore s2Step209ExitFAfter s2Step209ExitGvAfter
    s2Step209ExitFRow s2Step209ExitFOut 165 [] [(s2Step209ExitFvRow,120),(s2Step209ExitGvRow,119)] [[],[]] [s2Step209ExitFvOut,s2Step209ExitGvOut]
    (shrinkRow 768 s2Step209ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step209ExitGvExtra ++ []))) s2Step209ExitF_Incoming s2Step209ExitF_checked h2 s2Step209ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step209ExitGBefore s2Step209ExitGAfter s2Step209ExitGvAfter
    s2Step209ExitGRow s2Step209ExitGOut 164 [] [(s2Step209ExitFRow,165),(s2Step209ExitFvRow,120),(s2Step209ExitGvRow,119)] [[],[],[]] [s2Step209ExitFOut,s2Step209ExitFvOut,s2Step209ExitGvOut]
    (shrinkRow 769 s2Step209ExitGExtra) ((shrinkRow 768 s2Step209ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step209ExitGvExtra ++ [])))) s2Step209ExitG_Incoming s2Step209ExitG_checked h1 s2Step209ExitG_Outgoing
  exact h0

private theorem s2Step209ExitBank_checked : compileHmrBankResizeLog .exit s2Step209ExitGBefore ⟨s2Step209ExitFRow,s2Step209ExitGRow,s2Step209ExitFvRow,s2Step209ExitGvRow⟩ ⟨165,164,120,119⟩ [[],[],[],[]]=
    some (s2Step209ExitGvAfter,⟨s2Step209ExitFOut,s2Step209ExitGOut,s2Step209ExitFvOut,s2Step209ExitGvOut⟩,(shrinkRow 769 s2Step209ExitGExtra ++ (shrinkRow 768 s2Step209ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step209ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step209ExitBank_rows]
  rfl

private theorem s2Step209Add0_apart : Disjoint s2Step209Add0Arena.live s2Step209Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step209Add0Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step209Add0_card : s2Step209Add0Arena.live.card=891 := by
  decide +kernel

private theorem s2Step209Add0_borrowed : s2Step209Add0Arena.checkBorrow (hmrHybridCount s2Step209Add0Arena s2Step209Add0B.length) s2Step209Add0Work=some s2Step209Add0During := by
  have len : s2Step209Add0Work.length=hmrHybridCount s2Step209Add0Arena s2Step209Add0B.length := by
    rw [hmrHybridCount,s2Step209Add0_card]
    decide +kernel
  have nd : s2Step209Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step209Add0Arena s2Step209Add0During s2Step209Add0Work.toFinset s2Step209Add0_bounded s2Step209Add0_apart rfl

private theorem s2Step209Add0_distinct : (814::781::882::(s2Step209Add0A++s2Step209Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step209Add0_owned : (814::781::882::(s2Step209Add0A++s2Step209Add0B)).toFinset⊆s2Step209Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step209Add0Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step209Add0_checked : compileHmrHybridCinLog s2Step209Add0Arena 781 814 882 s2Step209Add0A s2Step209Add0B s2Step209Add0Work=some s2Step209Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step209Add0Arena s2Step209Add0During 781 814 882 s2Step209Add0A s2Step209Add0B s2Step209Add0Work
    (by decide +kernel) (by decide +kernel) s2Step209Add0_distinct
    (fun q hq => s2Step209Add0_owned (List.mem_toFinset.mpr hq)) s2Step209Add0_borrowed

private theorem s2Step209Add1_apart : Disjoint s2Step209Add1Arena.live s2Step209Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step209Add1Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step209Add1_card : s2Step209Add1Arena.live.card=891 := by
  decide +kernel

private theorem s2Step209Add1_borrowed : s2Step209Add1Arena.checkBorrow (hmrHybridCount s2Step209Add1Arena s2Step209Add1B.length) s2Step209Add1Work=some s2Step209Add1During := by
  have len : s2Step209Add1Work.length=hmrHybridCount s2Step209Add1Arena s2Step209Add1B.length := by
    rw [hmrHybridCount,s2Step209Add1_card]
    decide +kernel
  have nd : s2Step209Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step209Add1Arena s2Step209Add1During s2Step209Add1Work.toFinset s2Step209Add1_bounded s2Step209Add1_apart rfl

private theorem s2Step209Add1_distinct : (814::781::882::(s2Step209Add1A++s2Step209Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step209Add1_owned : (814::781::882::(s2Step209Add1A++s2Step209Add1B)).toFinset⊆s2Step209Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step209Add1Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step209Add1_checked : compileHmrHybridCinLog s2Step209Add1Arena 781 814 882 s2Step209Add1A s2Step209Add1B s2Step209Add1Work=some s2Step209Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step209Add1Arena s2Step209Add1During 781 814 882 s2Step209Add1A s2Step209Add1B s2Step209Add1Work
    (by decide +kernel) (by decide +kernel) s2Step209Add1_distinct
    (fun q hq => s2Step209Add1_owned (List.mem_toFinset.mpr hq)) s2Step209Add1_borrowed

private theorem s2Step209F4_apart : Disjoint (s2Step209Add0A++s2Step209Add0B).toFinset (s2Step209Add1A++s2Step209Add1B).toFinset := by
  have nd : ((s2Step209Add0A++s2Step209Add0B)++(s2Step209Add1A++s2Step209Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step209F4_carry : s2Step209F4FlagArena.checkBorrow 1 [882]=some s2Step209Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step209F4FlagArena,s2Step209HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step209F4FlagArena,s2Step209HeadFvAfter,s2Step209Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step209F4_distinct : (841::781::814::882::((s2Step209Add0A++s2Step209Add1A)++(s2Step209Add0B++s2Step209Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step209F4_flag : s2Step209HeadFvAfter.checkBorrow 1 [814]=some s2Step209F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step209HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step209F4_owned : (841::781::((s2Step209Add0A++s2Step209Add1A)++(s2Step209Add0B++s2Step209Add1B))).toFinset⊆s2Step209HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step209HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step209F4_checked : compileHmrHybridF4Log s2Step209HeadFvAfter 841 781 s2Step209Add0A s2Step209Add0B s2Step209Add1A s2Step209Add1B [814] [882] s2Step209Add0Work s2Step209Add1Work=some s2Step209F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step209HeadFvAfter s2Step209F4FlagArena s2Step209Add0Arena s2Step209Add0During s2Step209Add1During 841 781
    s2Step209Add0A s2Step209Add0B s2Step209Add1A s2Step209Add1B [814] [882] s2Step209Add0Work s2Step209Add1Work
    (fun q hq => s2Step209F4_owned (List.mem_toFinset.mpr hq)) s2Step209F4_flag s2Step209F4_carry
    s2Step209F4_distinct s2Step209F4_apart s2Step209Add0_checked s2Step209Add1_checked

private theorem s2Step209Front_branch : s2Step209FrontSigmaArena.checkBorrow 1 [781]=some s2Step209HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step209FrontSigmaArena,s2Step209EntryGvAfter,s2Step209EntryGAfter,arenaWires]
  · ext q
    simp only [s2Step209FrontSigmaArena,s2Step209EntryGvAfter,s2Step209EntryGAfter,s2Step209HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step209Front_entry : HmrFrontEntryValid s2Step209EntryFBefore s2Step209FrontBank 166 119 ⟨165,164,120,119⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step209FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step209EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step209EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step209FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step209Front_sigma : s2Step209EntryGvAfter.checkBorrow 1 [841]=some s2Step209FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step209EntryGvAfter,s2Step209EntryGAfter,arenaWires]
  · rfl

private def s2Step209HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step209HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step209HeadFBefore : Arena := s2Step209HeadGAfter

private def s2Step209HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677],768⟩

private def s2Step209HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779],770⟩

private def s2Step209HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 796],769⟩

private def s2Step209HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816],771⟩

private theorem s2Step209HeadBank_incomingDistinct : ([s2Step209HeadGRow,s2Step209HeadFRow,s2Step209HeadGvRow,s2Step209HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step209HeadF_Incoming : rowsOwned s2Step209HeadFBefore [s2Step209HeadFRow,s2Step209HeadGvRow,s2Step209HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step209HeadGRow,s2Step209HeadFRow,s2Step209HeadGvRow,s2Step209HeadFvRow] 1 s2Step209HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step209HeadFBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step209HeadBank_outgoingOwned : rowsOwned s2Step209HeadFvAfter [s2Step209HeadGOut,s2Step209HeadFOut,s2Step209HeadGvOut,s2Step209HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step209HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step209HeadF_Outgoing : rowsOwned s2Step209HeadFvAfter [s2Step209HeadFOut,s2Step209HeadGvOut,s2Step209HeadFvOut] :=
  hmrRows_owned_drop s2Step209HeadFvAfter [s2Step209HeadGOut,s2Step209HeadFOut,s2Step209HeadGvOut,s2Step209HeadFvOut] 1 s2Step209HeadBank_outgoingOwned

private theorem s2Step209HeadF_distinct : (s2Step209HeadFRow.sign::s2Step209HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step209HeadF_owned : (s2Step209HeadFRow.sign::s2Step209HeadFRow.payload).toFinset⊆s2Step209HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step209HeadFBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step209HeadF_reserved : s2Step209HeadFBefore.reserve s2Step209HeadFFresh.toFinset=some s2Step209HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step209HeadFFresh,arenaWires]
  · norm_num [s2Step209HeadFBefore,s2Step209HeadGAfter,s2Step209HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step209HeadFAfter,s2Step209HeadFBefore,s2Step209HeadGAfter,s2Step209HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step209HeadF_checked : planRowResizeLog s2Step209HeadFBefore s2Step209HeadFRow 167 s2Step209HeadFFresh=
    some (s2Step209HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 789],768⟩,growRow 768 s2Step209HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step209HeadFBefore s2Step209HeadFAfter s2Step209HeadFRow 167 s2Step209HeadFFresh
    s2Step209HeadF_distinct s2Step209HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step209HeadF_reserved
  have rowEq : WindowRow.mk (s2Step209HeadFRow.payload++s2Step209HeadFFresh) s2Step209HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 789],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step209HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step209HeadFvBefore : Arena := s2Step209HeadGvAfter

private theorem s2Step209HeadFv_Incoming : rowsOwned s2Step209HeadFvBefore [s2Step209HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step209HeadGRow,s2Step209HeadFRow,s2Step209HeadGvRow,s2Step209HeadFvRow] 3 s2Step209HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step209HeadFvBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step209HeadFv_Outgoing : rowsOwned s2Step209HeadFvAfter [s2Step209HeadFvOut] :=
  hmrRows_owned_drop s2Step209HeadFvAfter [s2Step209HeadGOut,s2Step209HeadFOut,s2Step209HeadGvOut,s2Step209HeadFvOut] 3 s2Step209HeadBank_outgoingOwned

private theorem s2Step209HeadFv_distinct : (s2Step209HeadFvRow.sign::s2Step209HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step209HeadFv_owned : (s2Step209HeadFvRow.sign::s2Step209HeadFvRow.payload).toFinset⊆s2Step209HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step209HeadFvBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step209HeadFv_reserved : s2Step209HeadFvBefore.reserve s2Step209HeadFvFresh.toFinset=some s2Step209HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step209HeadFvFresh,arenaWires]
  · norm_num [s2Step209HeadFvBefore,s2Step209HeadGvAfter,s2Step209HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step209HeadFvAfter,s2Step209HeadFvBefore,s2Step209HeadGvAfter,s2Step209HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step209HeadFv_checked : planRowResizeLog s2Step209HeadFvBefore s2Step209HeadFvRow 120 s2Step209HeadFvFresh=
    some (s2Step209HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 822],770⟩,growRow 770 s2Step209HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step209HeadFvBefore s2Step209HeadFvAfter s2Step209HeadFvRow 120 s2Step209HeadFvFresh
    s2Step209HeadFv_distinct s2Step209HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step209HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step209HeadFvRow.payload++s2Step209HeadFvFresh) s2Step209HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 822],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step209HeadG_Incoming : rowsOwned s2Step209HeadGBefore [s2Step209HeadGRow,s2Step209HeadFRow,s2Step209HeadGvRow,s2Step209HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step209HeadGRow,s2Step209HeadFRow,s2Step209HeadGvRow,s2Step209HeadFvRow] 0 s2Step209HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step209HeadGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step209HeadG_Outgoing : rowsOwned s2Step209HeadFvAfter [s2Step209HeadGOut,s2Step209HeadFOut,s2Step209HeadGvOut,s2Step209HeadFvOut] :=
  hmrRows_owned_drop s2Step209HeadFvAfter [s2Step209HeadGOut,s2Step209HeadFOut,s2Step209HeadGvOut,s2Step209HeadFvOut] 0 s2Step209HeadBank_outgoingOwned

private theorem s2Step209HeadG_distinct : (s2Step209HeadGRow.sign::s2Step209HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step209HeadG_owned : (s2Step209HeadGRow.sign::s2Step209HeadGRow.payload).toFinset⊆s2Step209HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step209HeadGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step209HeadG_reserved : s2Step209HeadGBefore.reserve s2Step209HeadGFresh.toFinset=some s2Step209HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step209HeadGFresh,arenaWires]
  · norm_num [s2Step209HeadGBefore,s2Step209HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step209HeadGAfter,s2Step209HeadGBefore,s2Step209HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step209HeadG_checked : planRowResizeLog s2Step209HeadGBefore s2Step209HeadGRow 167 s2Step209HeadGFresh=
    some (s2Step209HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 796, 783],769⟩,growRow 769 s2Step209HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step209HeadGBefore s2Step209HeadGAfter s2Step209HeadGRow 167 s2Step209HeadGFresh
    s2Step209HeadG_distinct s2Step209HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step209HeadG_reserved
  have rowEq : WindowRow.mk (s2Step209HeadGRow.payload++s2Step209HeadGFresh) s2Step209HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 796, 783],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step209HeadGvBefore : Arena := s2Step209HeadFAfter

private theorem s2Step209HeadGv_Incoming : rowsOwned s2Step209HeadGvBefore [s2Step209HeadGvRow,s2Step209HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step209HeadGRow,s2Step209HeadFRow,s2Step209HeadGvRow,s2Step209HeadFvRow] 2 s2Step209HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step209HeadGvBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step209HeadGv_Outgoing : rowsOwned s2Step209HeadFvAfter [s2Step209HeadGvOut,s2Step209HeadFvOut] :=
  hmrRows_owned_drop s2Step209HeadFvAfter [s2Step209HeadGOut,s2Step209HeadFOut,s2Step209HeadGvOut,s2Step209HeadFvOut] 2 s2Step209HeadBank_outgoingOwned

private theorem s2Step209HeadGv_distinct : (s2Step209HeadGvRow.sign::s2Step209HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step209HeadGv_owned : (s2Step209HeadGvRow.sign::s2Step209HeadGvRow.payload).toFinset⊆s2Step209HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step209HeadGvBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step209HeadGv_reserved : s2Step209HeadGvBefore.reserve s2Step209HeadGvFresh.toFinset=some s2Step209HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step209HeadGvFresh,arenaWires]
  · norm_num [s2Step209HeadGvBefore,s2Step209HeadFAfter,s2Step209HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step209HeadGvAfter,s2Step209HeadGvBefore,s2Step209HeadFAfter,s2Step209HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step209HeadGv_checked : planRowResizeLog s2Step209HeadGvBefore s2Step209HeadGvRow 120 s2Step209HeadGvFresh=
    some (s2Step209HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 845],771⟩,growRow 771 s2Step209HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step209HeadGvBefore s2Step209HeadGvAfter s2Step209HeadGvRow 120 s2Step209HeadGvFresh
    s2Step209HeadGv_distinct s2Step209HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step209HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step209HeadGvRow.payload++s2Step209HeadGvFresh) s2Step209HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 845],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step209HeadBank_rows : planWindowRowsLog s2Step209HeadGBefore [(s2Step209HeadGRow,167),(s2Step209HeadFRow,167),(s2Step209HeadGvRow,120),(s2Step209HeadFvRow,120)] [s2Step209HeadGFresh,s2Step209HeadFFresh,s2Step209HeadGvFresh,s2Step209HeadFvFresh]=
    some (s2Step209HeadFvAfter,[s2Step209HeadGOut,s2Step209HeadFOut,s2Step209HeadGvOut,s2Step209HeadFvOut],(growRow 769 s2Step209HeadGFresh ++ (growRow 768 s2Step209HeadFFresh ++ (growRow 771 s2Step209HeadGvFresh ++ (growRow 770 s2Step209HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step209HeadFvAfter [] []=some (s2Step209HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step209HeadFvBefore s2Step209HeadFvAfter s2Step209HeadFvAfter
    s2Step209HeadFvRow s2Step209HeadFvOut 120 s2Step209HeadFvFresh [] [] []
    (growRow 770 s2Step209HeadFvFresh) ([]) s2Step209HeadFv_Incoming s2Step209HeadFv_checked h4 s2Step209HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step209HeadGvBefore s2Step209HeadGvAfter s2Step209HeadFvAfter
    s2Step209HeadGvRow s2Step209HeadGvOut 120 s2Step209HeadGvFresh [(s2Step209HeadFvRow,120)] [s2Step209HeadFvFresh] [s2Step209HeadFvOut]
    (growRow 771 s2Step209HeadGvFresh) ((growRow 770 s2Step209HeadFvFresh ++ [])) s2Step209HeadGv_Incoming s2Step209HeadGv_checked h3 s2Step209HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step209HeadFBefore s2Step209HeadFAfter s2Step209HeadFvAfter
    s2Step209HeadFRow s2Step209HeadFOut 167 s2Step209HeadFFresh [(s2Step209HeadGvRow,120),(s2Step209HeadFvRow,120)] [s2Step209HeadGvFresh,s2Step209HeadFvFresh] [s2Step209HeadGvOut,s2Step209HeadFvOut]
    (growRow 768 s2Step209HeadFFresh) ((growRow 771 s2Step209HeadGvFresh ++ (growRow 770 s2Step209HeadFvFresh ++ []))) s2Step209HeadF_Incoming s2Step209HeadF_checked h2 s2Step209HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step209HeadGBefore s2Step209HeadGAfter s2Step209HeadFvAfter
    s2Step209HeadGRow s2Step209HeadGOut 167 s2Step209HeadGFresh [(s2Step209HeadFRow,167),(s2Step209HeadGvRow,120),(s2Step209HeadFvRow,120)] [s2Step209HeadFFresh,s2Step209HeadGvFresh,s2Step209HeadFvFresh] [s2Step209HeadFOut,s2Step209HeadGvOut,s2Step209HeadFvOut]
    (growRow 769 s2Step209HeadGFresh) ((growRow 768 s2Step209HeadFFresh ++ (growRow 771 s2Step209HeadGvFresh ++ (growRow 770 s2Step209HeadFvFresh ++ [])))) s2Step209HeadG_Incoming s2Step209HeadG_checked h1 s2Step209HeadG_Outgoing
  exact h0

private theorem s2Step209HeadBank_checked : compileHmrBankResizeLog .headroom s2Step209HeadGBefore ⟨s2Step209HeadFRow,s2Step209HeadGRow,s2Step209HeadFvRow,s2Step209HeadGvRow⟩ ⟨167,167,120,120⟩ [s2Step209HeadGFresh,s2Step209HeadFFresh,s2Step209HeadGvFresh,s2Step209HeadFvFresh]=
    some (s2Step209HeadFvAfter,⟨s2Step209HeadFOut,s2Step209HeadGOut,s2Step209HeadFvOut,s2Step209HeadGvOut⟩,(growRow 769 s2Step209HeadGFresh ++ (growRow 768 s2Step209HeadFFresh ++ (growRow 771 s2Step209HeadGvFresh ++ (growRow 770 s2Step209HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step209HeadBank_rows]
  rfl

private theorem s2Step209Front_checked : compileHmrSourceFrontLog s2Step209EntryFBefore s2Step209FrontBank 166 119 ⟨165,164,120,119⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step209FrontLog=some s2Step209FrontPlan := by
  have pairEq : s2Step209FrontPair=⟨s2Step209HeadFRow,s2Step209HeadGRow,s2Step209HeadFvRow,s2Step209HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step209FrontHead=⟨s2Step209ExitFRow,s2Step209ExitGRow,s2Step209ExitFvRow,s2Step209ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step209Add0A=s2Step209FrontHead.f.wires := by decide +kernel
  have gEq : s2Step209Add0B=s2Step209FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step209Add1A=s2Step209FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step209Add1B=s2Step209FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step209EntryFBefore s2Step209FrontBank 166 119 ⟨165,164,120,119⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step209FrontLog s2Step209FrontPlan
  · exact s2Step209Front_entry
  · exact s2Step209EntryBank_checked
  · exact s2Step209Front_sigma
  · rfl
  · exact s2Step209Front_branch
  · rfl
  · simpa only [s2Step209FrontPlan,pairEq] using s2Step209HeadBank_checked
  · simpa only [s2Step209FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step209F4_checked
  · exact s2Step209Counter_checked
  · rfl
  · simpa only [s2Step209FrontPlan,headEq] using s2Step209ExitBank_checked

private theorem s2Step209Complete_explicit_checked : compileHmrEarlyStepLog s2Step209EntryFBefore s2Step209FrontBank 166 119 ⟨165,164,120,119⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step209CompleteLog=some s2Step209CompletePlan := by
  let Q := s2Step209EarlyControlPlan
  have hq := s2Step209EarlyControl_plan_checked
  have fv1 : s2Step209CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step209CompleteOut.fv.payload[2]?.getD s2Step209CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step209CompleteOut.fv.payload[3]?.getD s2Step209CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step209CompleteOut.fv.payload[4]?.getD s2Step209CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step209EntryFBefore s2Step209EarlyControlArena s2Step209FrontBank 166 119 ⟨165,164,120,119⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step209CompleteLog s2Step209FrontPlan Q
    s2Step209Front_checked s2Step209Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step209Complete_owned s2Step209Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step209EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 841 s2Step209CompleteOut.fv.second (s2Step209CompleteOut.fv.payload[2]?.getD s2Step209CompleteOut.fv.sign) (s2Step209CompleteOut.fv.payload[3]?.getD s2Step209CompleteOut.fv.sign) (s2Step209CompleteOut.fv.payload[4]?.getD s2Step209CompleteOut.fv.sign) 781 47 s2Step209EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep209Arena : Arena := s2Step209EntryFBefore
def s2PrivateStep209Bank : WindowBank := s2Step209FrontBank
def s2PrivateStep209Spec : HmrSourceWalkStepLog := ⟨166,119,⟨165,164,120,119⟩,47,.early s2Step209CompleteLog⟩
def s2PrivateStep209Plan : HmrSourceStepPlan := .early s2Step209CompletePlan
theorem s2PrivateStep209_source : s2PrivateStep209Spec=s2ObservedLogs208[1] := rfl
theorem s2PrivateStep209_checked : compileHmrSourceStepLog s2PrivateStep209Arena s2PrivateStep209Bank
    s2PrivateStep209Spec.fgWidth s2PrivateStep209Spec.vWidth s2PrivateStep209Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897]
    6 498 209 s2PrivateStep209Spec.need none s2PrivateStep209Spec.log=some s2PrivateStep209Plan := by
  change compileHmrSourceStepLog s2Step209EntryFBefore s2Step209FrontBank 166 119 ⟨165,164,120,119⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 6 498 209 47 none (.early s2Step209CompleteLog)=some (.early s2Step209CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 209<498)]
  rw [s2Step209Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
