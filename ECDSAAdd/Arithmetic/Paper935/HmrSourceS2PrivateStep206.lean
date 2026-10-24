import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep204
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

private def s2Step206CompleteMoves : List (Wire × Wire) := [(779,678)]

private def s2Step206EarlyControlLog : HmrEarlyControlLog := ⟨[779, 816, 789, 781, 845],[822],[814],[882, 826, 842, 885, 891, 894],[]⟩

private def s2Step206FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [845], [879], []],[[822], [781], [816], [789]],[[], [], [], []]⟩,[783],[841],[814],[882],[826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[814, 882, 826, 842]⟩

private def s2Step206CompleteLog : HmrEarlyStepLog := ⟨s2Step206FrontLog,s2Step206CompleteMoves,s2Step206EarlyControlLog⟩

private def s2Step206ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677],768⟩

private def s2Step206ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879],770⟩

private def s2Step206ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165],769⟩

private def s2Step206ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844],771⟩

private def s2Step206FrontOut : WindowBank := ⟨s2Step206ExitFOut,s2Step206ExitGOut,s2Step206ExitFvOut,s2Step206ExitGvOut⟩

private def s2Step206CompleteOut : WindowBank := s2Step206FrontOut.repacked s2Step206CompleteMoves

private def s2Step206EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step206EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step206EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step206EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step206EarlyControlPositiveArena,[822],s2Step206EarlyControlEqualityArena,[814],⟨⟨783,false⟩,[⟨⟨822,false⟩,814⟩]⟩⟩

private def s2Step206EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<895) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step206EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<895) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step206EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step206EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step206EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step206EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step206EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,779⟩,⟨⟨774,false⟩,816⟩,⟨⟨775,false⟩,789⟩,⟨⟨776,false⟩,781⟩,⟨⟨777,false⟩,845⟩]⟩

private def s2Step206EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step206EarlyControlZeroArena,s2Step206EarlyControlZeroPlan,s2Step206EarlyControlClassPlan,s2Step206EarlyControlFlagArena,s2Step206EarlyControlFittedArena,s2Step206EarlyControlHistoryArena,s2Step206EarlyControlSigmaArena,s2Step206EarlyControlOutputArena,s2Step206EarlyControlLog⟩

private def s2Step206CounterWork : List Wire := [814, 882, 826, 842]

private theorem s2Step206Counter_bounded : s2Step206CounterWork.toFinset⊆arenaWires := by norm_num [s2Step206CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step206HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step206CounterDuring : Arena := ⟨s2Step206HeadFvAfter.live∪s2Step206CounterWork.toFinset,Finset.union_subset s2Step206HeadFvAfter.bounded s2Step206Counter_bounded⟩

private def s2Step206EntryFFresh : List Wire := []

private def s2Step206EntryFvFresh : List Wire := [879]

private def s2Step206EntryGFresh : List Wire := [845]

private def s2Step206EntryFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step206EntryGvAfter : Arena := s2Step206EntryFvAfter

private def s2Step206EntryGvFresh : List Wire := []

private def s2Step206ExitFExtra : List Wire := [678, 781]

private def s2Step206ExitFvExtra : List Wire := [789]

private def s2Step206ExitGExtra : List Wire := [845, 822]

private def s2Step206ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<678) ∨ (679≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step206ExitGvExtra : List Wire := [816]

private def s2Step206Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step206Add0Work : List Wire := [826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step206Add0_bounded : s2Step206Add0Work.toFinset⊆arenaWires := by
  have h : s2Step206Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step206Add0During : Arena := ⟨s2Step206Add0Arena.live∪s2Step206Add0Work.toFinset,Finset.union_subset s2Step206Add0Arena.bounded s2Step206Add0_bounded⟩

private def s2Step206Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step206Add1Work : List Wire := [826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step206Add1_bounded : s2Step206Add1Work.toFinset⊆arenaWires := by
  have h : s2Step206Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step206Add1During : Arena := ⟨s2Step206Add1Arena.live∪s2Step206Add1Work.toFinset,Finset.union_subset s2Step206Add1Arena.bounded s2Step206Add1_bounded⟩

private def s2Step206F4FlagArena : Arena := ⟨s2Step206HeadFvAfter.live∪{814},Finset.union_subset s2Step206HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step206F4Plan : HmrHybridF4Plan := ⟨s2Step206F4FlagArena,[814],s2Step206Add0Arena,[882],s2Step206Add0During,s2Step206Add0Work,s2Step206Add1During,s2Step206Add1Work⟩

private def s2Step206HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 781],768⟩

private def s2Step206HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 789],770⟩

private def s2Step206HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 845, 822],769⟩

private def s2Step206HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816],771⟩

private def s2Step206FrontHead : WindowBank := ⟨s2Step206HeadFOut,s2Step206HeadGOut,s2Step206HeadFvOut,s2Step206HeadGvOut⟩

private def s2Step206EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678],768⟩

private def s2Step206EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879],770⟩

private def s2Step206EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 845],769⟩

private def s2Step206EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844],771⟩

private def s2Step206FrontPair : WindowBank := ⟨s2Step206EntryFOut,s2Step206EntryGOut,s2Step206EntryFvOut,s2Step206EntryGvOut⟩

private def s2Step206FrontSigmaArena : Arena := ⟨s2Step206EntryGvAfter.live∪{783},Finset.union_subset s2Step206EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step206HeadFFresh : List Wire := [781]

private def s2Step206HeadFvFresh : List Wire := [789]

private def s2Step206HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step206HeadGFresh : List Wire := [822]

private def s2Step206HeadGvFresh : List Wire := [816]

private def s2Step206FrontPlan : HmrSourceFront := ⟨s2Step206EntryGvAfter,s2Step206FrontPair,(growRow 768 s2Step206EntryFFresh ++ (growRow 769 s2Step206EntryGFresh ++ (growRow 770 s2Step206EntryFvFresh ++ (growRow 771 s2Step206EntryGvFresh ++ [])))),s2Step206FrontSigmaArena,[783],s2Step206HeadGBefore,[841],
  s2Step206HeadFvAfter,s2Step206FrontHead,(growRow 769 s2Step206HeadGFresh ++ (growRow 768 s2Step206HeadFFresh ++ (growRow 771 s2Step206HeadGvFresh ++ (growRow 770 s2Step206HeadFvFresh ++ [])))),s2Step206F4Plan,s2Step206CounterDuring,s2Step206CounterWork,s2Step206ExitGvAfter,s2Step206FrontOut,(shrinkRow 769 s2Step206ExitGExtra ++ (shrinkRow 768 s2Step206ExitFExtra ++ (shrinkRow 770 s2Step206ExitFvExtra ++ (shrinkRow 771 s2Step206ExitGvExtra ++ []))))⟩

private def s2Step206CompletePlan : HmrEarlyStepPlan := ⟨s2Step206FrontPlan,s2Step206EarlyControlArena,s2Step206EarlyControlPlan,s2Step206CompleteMoves⟩

private theorem s2Step206Complete_apart : List.Disjoint (s2Step206CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [783, 841, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] := by
  have nd : ((s2Step206CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[783, 841, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step206Complete_owned : (s2Step206CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step206EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step206EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private def s2Step206CompleteMoveArena : Arena := ⟨s2Step206ExitGvAfter.live∪{678},Finset.union_subset s2Step206ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step206Complete_repack : s2Step206ExitGvAfter.checkRepack s2Step206CompleteMoves=some s2Step206EarlyControlArena := by
  have owned : 779∈s2Step206ExitGvAfter.live := by norm_num [s2Step206ExitGvAfter,arenaWires]
  have reserve : s2Step206ExitGvAfter.reserve {678}=some s2Step206CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step206ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step206CompleteMoveArena.retireSet {779}=s2Step206EarlyControlArena := by
    unfold Arena.retireSet s2Step206EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step206CompleteMoveArena,s2Step206ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step206CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step206CompleteMoveArena.retireSet {779}).checkRepack []=some s2Step206EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step206EarlyControl_branchOwned : ([841] : List Wire).toFinset⊆s2Step206EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step206EarlyControlSigmaArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step206EarlyControl_branch : compileHmrBranchRetirement s2Step206EarlyControlSigmaArena 841=some s2Step206EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step206EarlyControl_branchOwned
  · ext q
    simp [s2Step206EarlyControlOutputArena,s2Step206EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step206EarlyControl_classEqualityBorrow : s2Step206EarlyControlPositiveArena.checkBorrow (([783, 822] : List Wire).length-1) s2Step206EarlyControlLog.classWork=some s2Step206EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step206EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step206EarlyControlPositiveArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step206EarlyControlEqualityArena,s2Step206EarlyControlPositiveArena,s2Step206EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step206EarlyControl_classEqualityOwned : ([783, 822] : List Wire).toFinset⊆s2Step206EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step206EarlyControlPositiveArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step206EarlyControl_classEquality : compileHmrEqualityLog s2Step206EarlyControlPositiveArena [783, 822] 0 s2Step206EarlyControlLog.classWork=some (s2Step206EarlyControlEqualityArena,s2Step206EarlyControlLog.classWork,s2Step206EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step206EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step206EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step206EarlyControl_classOwned : ([777, 845, 783] : List Wire).toFinset⊆s2Step206EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step206EarlyControlZeroArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step206EarlyControl_positiveBorrow : s2Step206EarlyControlZeroArena.checkBorrow (1) s2Step206EarlyControlLog.positiveWork=some s2Step206EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step206EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step206EarlyControlZeroArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step206EarlyControlPositiveArena,s2Step206EarlyControlZeroArena,s2Step206EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step206EarlyControl_class : compileHmrSourceClassLog s2Step206EarlyControlZeroArena false 777 s2Step206EarlyControlZeroPlan.top 0 783 s2Step206EarlyControlLog.positiveWork s2Step206EarlyControlLog.classWork=some s2Step206EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step206EarlyControlClassPlan s2Step206EarlyControlZeroArena false 777 s2Step206EarlyControlZeroPlan.top 0 783
  constructor
  · decide +kernel
  · exact s2Step206EarlyControl_classOwned
  · exact s2Step206EarlyControl_positiveBorrow
  · exact s2Step206EarlyControl_classEquality

private theorem s2Step206EarlyControl_entryRecordOwned : ([841, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step206EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step206EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step206EarlyControl_entrySigmaOwned : ([783, 254] : List Wire).toFinset⊆s2Step206EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step206EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step206EarlyControl_fitBorrow : s2Step206EarlyControlFlagArena.checkBorrow ((47-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).length)) s2Step206EarlyControlLog.recordFresh=some s2Step206EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step206EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step206EarlyControlFlagArena (fun q => (0≤q ∧ q<895) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step206EarlyControlFittedArena,s2Step206EarlyControlFlagArena,s2Step206EarlyControlLog,arenaWires]

private theorem s2Step206EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step206EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step206EarlyControlFlagArena (fun q => (0≤q ∧ q<895) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step206EarlyControl_fit : compileHmrRecordGrowLog s2Step206EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step206EarlyControlLog.recordFresh=some s2Step206EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step206EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step206EarlyControl_fitBorrow

private theorem s2Step206EarlyControl_flagsBorrow : s2Step206EarlyControlEqualityArena.checkBorrow (6) s2Step206EarlyControlLog.flagWork=some s2Step206EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step206EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step206EarlyControlEqualityArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step206EarlyControlFlagArena,s2Step206EarlyControlEqualityArena,s2Step206EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step206EarlyControl_flagsOwned : ([814, 253, 252, 251] : List Wire).toFinset⊆s2Step206EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step206EarlyControlEqualityArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step206EarlyControl_flags : compileHmrFlagsLog s2Step206EarlyControlClassPlan.equalityArena s2Step206EarlyControlClassPlan.equality.top 253 252 251 s2Step206EarlyControlLog.flagWork=some s2Step206EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step206EarlyControl_flagsOwned⟩
  · exact s2Step206EarlyControl_flagsBorrow

private theorem s2Step206EarlyControl_historyBorrow : s2Step206EarlyControlArena.checkBorrow ((47-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).length)) s2Step206EarlyControlLog.recordFresh=some s2Step206EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step206EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step206EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step206EarlyControlHistoryArena,s2Step206EarlyControlArena,s2Step206EarlyControlLog,arenaWires]

private theorem s2Step206EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step206EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step206EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step206EarlyControl_history : compileHmrRecordGrowLog s2Step206EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step206EarlyControlLog.recordFresh=some s2Step206EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step206EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step206EarlyControl_historyBorrow

private theorem s2Step206EarlyControl_sigmaOwned : ([254, 783] : List Wire).toFinset⊆s2Step206EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step206EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step206EarlyControl_sigmaReleaseOwned : ([783] : List Wire).toFinset⊆s2Step206EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step206EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step206EarlyControl_sigmaRelease : s2Step206EarlyControlHistoryArena.release {783} (fun _ => false)=some s2Step206EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step206EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step206EarlyControlSigmaArena,s2Step206EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step206EarlyControl_sigma : compileHmrSigmaDropLog s2Step206EarlyControlHistoryArena false 0 0 254 783 []=some s2Step206EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step206EarlyControl_sigmaOwned⟩
  · exact s2Step206EarlyControl_sigmaRelease

private theorem s2Step206EarlyControl_zeroBorrow : s2Step206EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step206EarlyControlLog.zeroWork=some s2Step206EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step206EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step206EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step206EarlyControlZeroArena,s2Step206EarlyControlArena,s2Step206EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step206EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step206EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step206EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step206EarlyControl_zero : compileHmrEqualityLog s2Step206EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step206EarlyControlLog.zeroWork=some (s2Step206EarlyControlZeroArena,s2Step206EarlyControlLog.zeroWork,s2Step206EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step206EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step206EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step206EarlyControl_logged : s2Step206EarlyControlPlan.Logged s2Step206EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 783 254 253 252 251 841 47 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step206EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step206EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step206EarlyControl_zero
  · exact s2Step206EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step206EarlyControl_flags
  · exact s2Step206EarlyControl_fit
  · exact s2Step206EarlyControl_history
  · exact s2Step206EarlyControl_sigma
  · exact s2Step206EarlyControl_branch

private theorem s2Step206EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step206EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 783 254 253 252 251 841 47 s2Step206EarlyControlLog=some s2Step206EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step206EarlyControlPlan s2Step206EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 783 254 253 252 251 841 47 s2Step206EarlyControl_logged

private def s2Step206EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step206EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678],768⟩

private def s2Step206EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877],770⟩

private def s2Step206EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165],769⟩

private def s2Step206EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844],771⟩

private def s2Step206FrontBank : WindowBank := ⟨s2Step206EntryFRow,s2Step206EntryGRow,s2Step206EntryFvRow,s2Step206EntryGvRow⟩

private def s2Step206Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 781, 768]

private def s2Step206Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 845, 822, 769]

private def s2Step206Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 789, 770]

private def s2Step206Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 771]

private theorem s2Step206Counter_apart : Disjoint s2Step206HeadFvAfter.live s2Step206CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step206HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step206Counter_borrowed : s2Step206HeadFvAfter.checkBorrow 4 s2Step206CounterWork=some s2Step206CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step206HeadFvAfter s2Step206CounterDuring s2Step206CounterWork.toFinset s2Step206Counter_bounded s2Step206Counter_apart rfl

private theorem s2Step206Counter_owned : (783::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step206HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step206HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step206Counter_checked : compileHmrCounterStepLog s2Step206HeadFvAfter true 783 [772, 773, 774, 775, 776, 777] s2Step206CounterWork=some s2Step206CounterDuring := by
  have owned : ∀q∈783::[772, 773, 774, 775, 776, 777],q∈s2Step206HeadFvAfter.live := fun q hq => s2Step206Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step206Counter_borrowed

private def s2Step206EntryFAfter : Arena := s2Step206EntryFBefore

private theorem s2Step206EntryBank_incomingDistinct : ([s2Step206EntryFRow,s2Step206EntryGRow,s2Step206EntryFvRow,s2Step206EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step206EntryF_Incoming : rowsOwned s2Step206EntryFBefore [s2Step206EntryFRow,s2Step206EntryGRow,s2Step206EntryFvRow,s2Step206EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step206EntryFRow,s2Step206EntryGRow,s2Step206EntryFvRow,s2Step206EntryGvRow] 0 s2Step206EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step206EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step206EntryBank_outgoingOwned : rowsOwned s2Step206EntryGvAfter [s2Step206EntryFOut,s2Step206EntryGOut,s2Step206EntryFvOut,s2Step206EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step206EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step206EntryF_Outgoing : rowsOwned s2Step206EntryGvAfter [s2Step206EntryFOut,s2Step206EntryGOut,s2Step206EntryFvOut,s2Step206EntryGvOut] :=
  hmrRows_owned_drop s2Step206EntryGvAfter [s2Step206EntryFOut,s2Step206EntryGOut,s2Step206EntryFvOut,s2Step206EntryGvOut] 0 s2Step206EntryBank_outgoingOwned

private theorem s2Step206EntryF_distinct : (s2Step206EntryFRow.sign::s2Step206EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step206EntryF_owned : (s2Step206EntryFRow.sign::s2Step206EntryFRow.payload).toFinset⊆s2Step206EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step206EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step206EntryF_reserved : s2Step206EntryFBefore.reserve s2Step206EntryFFresh.toFinset=some s2Step206EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step206EntryFFresh,arenaWires]
  · norm_num [s2Step206EntryFBefore,s2Step206EntryFFresh,arenaWires]
  · simp only [s2Step206EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step206EntryF_checked : planRowResizeLog s2Step206EntryFBefore s2Step206EntryFRow 167 s2Step206EntryFFresh=
    some (s2Step206EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678],768⟩,growRow 768 s2Step206EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step206EntryFBefore s2Step206EntryFAfter s2Step206EntryFRow 167 s2Step206EntryFFresh
    s2Step206EntryF_distinct s2Step206EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step206EntryF_reserved
  have rowEq : WindowRow.mk (s2Step206EntryFRow.payload++s2Step206EntryFFresh) s2Step206EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step206EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step206EntryFvBefore : Arena := s2Step206EntryGAfter

private theorem s2Step206EntryFv_Incoming : rowsOwned s2Step206EntryFvBefore [s2Step206EntryFvRow,s2Step206EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step206EntryFRow,s2Step206EntryGRow,s2Step206EntryFvRow,s2Step206EntryGvRow] 2 s2Step206EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step206EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step206EntryFv_Outgoing : rowsOwned s2Step206EntryGvAfter [s2Step206EntryFvOut,s2Step206EntryGvOut] :=
  hmrRows_owned_drop s2Step206EntryGvAfter [s2Step206EntryFOut,s2Step206EntryGOut,s2Step206EntryFvOut,s2Step206EntryGvOut] 2 s2Step206EntryBank_outgoingOwned

private theorem s2Step206EntryFv_distinct : (s2Step206EntryFvRow.sign::s2Step206EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step206EntryFv_owned : (s2Step206EntryFvRow.sign::s2Step206EntryFvRow.payload).toFinset⊆s2Step206EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step206EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step206EntryFv_reserved : s2Step206EntryFvBefore.reserve s2Step206EntryFvFresh.toFinset=some s2Step206EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step206EntryFvFresh,arenaWires]
  · norm_num [s2Step206EntryFvBefore,s2Step206EntryGAfter,s2Step206EntryFvFresh,arenaWires]
  · ext q
    simp only [s2Step206EntryFvAfter,s2Step206EntryFvBefore,s2Step206EntryGAfter,s2Step206EntryFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step206EntryFv_checked : planRowResizeLog s2Step206EntryFvBefore s2Step206EntryFvRow 118 s2Step206EntryFvFresh=
    some (s2Step206EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879],770⟩,growRow 770 s2Step206EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step206EntryFvBefore s2Step206EntryFvAfter s2Step206EntryFvRow 118 s2Step206EntryFvFresh
    s2Step206EntryFv_distinct s2Step206EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step206EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step206EntryFvRow.payload++s2Step206EntryFvFresh) s2Step206EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step206EntryGBefore : Arena := s2Step206EntryFBefore

private theorem s2Step206EntryG_Incoming : rowsOwned s2Step206EntryGBefore [s2Step206EntryGRow,s2Step206EntryFvRow,s2Step206EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step206EntryFRow,s2Step206EntryGRow,s2Step206EntryFvRow,s2Step206EntryGvRow] 1 s2Step206EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step206EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step206EntryG_Outgoing : rowsOwned s2Step206EntryGvAfter [s2Step206EntryGOut,s2Step206EntryFvOut,s2Step206EntryGvOut] :=
  hmrRows_owned_drop s2Step206EntryGvAfter [s2Step206EntryFOut,s2Step206EntryGOut,s2Step206EntryFvOut,s2Step206EntryGvOut] 1 s2Step206EntryBank_outgoingOwned

private theorem s2Step206EntryG_distinct : (s2Step206EntryGRow.sign::s2Step206EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step206EntryG_owned : (s2Step206EntryGRow.sign::s2Step206EntryGRow.payload).toFinset⊆s2Step206EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step206EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step206EntryG_reserved : s2Step206EntryGBefore.reserve s2Step206EntryGFresh.toFinset=some s2Step206EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step206EntryGFresh,arenaWires]
  · norm_num [s2Step206EntryGBefore,s2Step206EntryFBefore,s2Step206EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step206EntryGAfter,s2Step206EntryGBefore,s2Step206EntryFBefore,s2Step206EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step206EntryG_checked : planRowResizeLog s2Step206EntryGBefore s2Step206EntryGRow 167 s2Step206EntryGFresh=
    some (s2Step206EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 845],769⟩,growRow 769 s2Step206EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step206EntryGBefore s2Step206EntryGAfter s2Step206EntryGRow 167 s2Step206EntryGFresh
    s2Step206EntryG_distinct s2Step206EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step206EntryG_reserved
  have rowEq : WindowRow.mk (s2Step206EntryGRow.payload++s2Step206EntryGFresh) s2Step206EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 845],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step206EntryGvBefore : Arena := s2Step206EntryFvAfter

private theorem s2Step206EntryGv_Incoming : rowsOwned s2Step206EntryGvBefore [s2Step206EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step206EntryFRow,s2Step206EntryGRow,s2Step206EntryFvRow,s2Step206EntryGvRow] 3 s2Step206EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step206EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step206EntryGv_Outgoing : rowsOwned s2Step206EntryGvAfter [s2Step206EntryGvOut] :=
  hmrRows_owned_drop s2Step206EntryGvAfter [s2Step206EntryFOut,s2Step206EntryGOut,s2Step206EntryFvOut,s2Step206EntryGvOut] 3 s2Step206EntryBank_outgoingOwned

private theorem s2Step206EntryGv_distinct : (s2Step206EntryGvRow.sign::s2Step206EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step206EntryGv_owned : (s2Step206EntryGvRow.sign::s2Step206EntryGvRow.payload).toFinset⊆s2Step206EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step206EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step206EntryGv_reserved : s2Step206EntryGvBefore.reserve s2Step206EntryGvFresh.toFinset=some s2Step206EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step206EntryGvFresh,arenaWires]
  · norm_num [s2Step206EntryGvBefore,s2Step206EntryFvAfter,s2Step206EntryGvFresh,arenaWires]
  · simp only [s2Step206EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step206EntryGv_checked : planRowResizeLog s2Step206EntryGvBefore s2Step206EntryGvRow 118 s2Step206EntryGvFresh=
    some (s2Step206EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844],771⟩,growRow 771 s2Step206EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step206EntryGvBefore s2Step206EntryGvAfter s2Step206EntryGvRow 118 s2Step206EntryGvFresh
    s2Step206EntryGv_distinct s2Step206EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step206EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step206EntryGvRow.payload++s2Step206EntryGvFresh) s2Step206EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step206EntryBank_rows : planWindowRowsLog s2Step206EntryFBefore [(s2Step206EntryFRow,167),(s2Step206EntryGRow,167),(s2Step206EntryFvRow,118),(s2Step206EntryGvRow,118)] [s2Step206EntryFFresh,s2Step206EntryGFresh,s2Step206EntryFvFresh,s2Step206EntryGvFresh]=
    some (s2Step206EntryGvAfter,[s2Step206EntryFOut,s2Step206EntryGOut,s2Step206EntryFvOut,s2Step206EntryGvOut],(growRow 768 s2Step206EntryFFresh ++ (growRow 769 s2Step206EntryGFresh ++ (growRow 770 s2Step206EntryFvFresh ++ (growRow 771 s2Step206EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step206EntryGvAfter [] []=some (s2Step206EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step206EntryGvBefore s2Step206EntryGvAfter s2Step206EntryGvAfter
    s2Step206EntryGvRow s2Step206EntryGvOut 118 s2Step206EntryGvFresh [] [] []
    (growRow 771 s2Step206EntryGvFresh) ([]) s2Step206EntryGv_Incoming s2Step206EntryGv_checked h4 s2Step206EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step206EntryFvBefore s2Step206EntryFvAfter s2Step206EntryGvAfter
    s2Step206EntryFvRow s2Step206EntryFvOut 118 s2Step206EntryFvFresh [(s2Step206EntryGvRow,118)] [s2Step206EntryGvFresh] [s2Step206EntryGvOut]
    (growRow 770 s2Step206EntryFvFresh) ((growRow 771 s2Step206EntryGvFresh ++ [])) s2Step206EntryFv_Incoming s2Step206EntryFv_checked h3 s2Step206EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step206EntryGBefore s2Step206EntryGAfter s2Step206EntryGvAfter
    s2Step206EntryGRow s2Step206EntryGOut 167 s2Step206EntryGFresh [(s2Step206EntryFvRow,118),(s2Step206EntryGvRow,118)] [s2Step206EntryFvFresh,s2Step206EntryGvFresh] [s2Step206EntryFvOut,s2Step206EntryGvOut]
    (growRow 769 s2Step206EntryGFresh) ((growRow 770 s2Step206EntryFvFresh ++ (growRow 771 s2Step206EntryGvFresh ++ []))) s2Step206EntryG_Incoming s2Step206EntryG_checked h2 s2Step206EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step206EntryFBefore s2Step206EntryFAfter s2Step206EntryGvAfter
    s2Step206EntryFRow s2Step206EntryFOut 167 s2Step206EntryFFresh [(s2Step206EntryGRow,167),(s2Step206EntryFvRow,118),(s2Step206EntryGvRow,118)] [s2Step206EntryGFresh,s2Step206EntryFvFresh,s2Step206EntryGvFresh] [s2Step206EntryGOut,s2Step206EntryFvOut,s2Step206EntryGvOut]
    (growRow 768 s2Step206EntryFFresh) ((growRow 769 s2Step206EntryGFresh ++ (growRow 770 s2Step206EntryFvFresh ++ (growRow 771 s2Step206EntryGvFresh ++ [])))) s2Step206EntryF_Incoming s2Step206EntryF_checked h1 s2Step206EntryF_Outgoing
  exact h0

private theorem s2Step206EntryBank_checked : compileHmrBankResizeLog .entry s2Step206EntryFBefore ⟨s2Step206EntryFRow,s2Step206EntryGRow,s2Step206EntryFvRow,s2Step206EntryGvRow⟩ ⟨167,167,118,118⟩ [s2Step206EntryFFresh,s2Step206EntryGFresh,s2Step206EntryFvFresh,s2Step206EntryGvFresh]=
    some (s2Step206EntryGvAfter,⟨s2Step206EntryFOut,s2Step206EntryGOut,s2Step206EntryFvOut,s2Step206EntryGvOut⟩,(growRow 768 s2Step206EntryFFresh ++ (growRow 769 s2Step206EntryGFresh ++ (growRow 770 s2Step206EntryFvFresh ++ (growRow 771 s2Step206EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step206EntryBank_rows]
  rfl

private def s2Step206ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<678) ∨ (679≤q ∧ q<781) ∨ (782≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step206ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step206ExitFBefore : Arena := s2Step206ExitGAfter

private def s2Step206ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 781],768⟩

private def s2Step206ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 789],770⟩

private def s2Step206ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 845, 822],769⟩

private def s2Step206ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816],771⟩

private theorem s2Step206ExitBank_incomingDistinct : ([s2Step206ExitGRow,s2Step206ExitFRow,s2Step206ExitFvRow,s2Step206ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step206ExitF_Incoming : rowsOwned s2Step206ExitFBefore [s2Step206ExitFRow,s2Step206ExitFvRow,s2Step206ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step206ExitGRow,s2Step206ExitFRow,s2Step206ExitFvRow,s2Step206ExitGvRow] 1 s2Step206ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step206ExitFBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step206ExitBank_outgoingOwned : rowsOwned s2Step206ExitGvAfter [s2Step206ExitGOut,s2Step206ExitFOut,s2Step206ExitFvOut,s2Step206ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step206ExitGvAfter (fun q => (0≤q ∧ q<678) ∨ (679≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step206ExitF_Outgoing : rowsOwned s2Step206ExitGvAfter [s2Step206ExitFOut,s2Step206ExitFvOut,s2Step206ExitGvOut] :=
  hmrRows_owned_drop s2Step206ExitGvAfter [s2Step206ExitGOut,s2Step206ExitFOut,s2Step206ExitFvOut,s2Step206ExitGvOut] 1 s2Step206ExitBank_outgoingOwned

private theorem s2Step206ExitF_distinct : (s2Step206ExitFRow.sign::s2Step206ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step206ExitF_owned : (s2Step206ExitFRow.sign::s2Step206ExitFRow.payload).toFinset⊆s2Step206ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step206ExitFBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step206ExitF_retired : s2Step206ExitFBefore.retireSet s2Step206ExitFExtra.toFinset=s2Step206ExitFAfter := by
  unfold Arena.retireSet s2Step206ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step206ExitFBefore,s2Step206ExitGAfter,s2Step206ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step206ExitF_checked : planRowResizeLog s2Step206ExitFBefore s2Step206ExitFRow 166 []=
    some (s2Step206ExitFAfter,s2Step206ExitFOut,shrinkRow 768 s2Step206ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step206ExitFBefore s2Step206ExitFRow 166 s2Step206ExitF_distinct s2Step206ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step206ExitFRow.payload.take 166) s2Step206ExitFRow.sign=s2Step206ExitFOut := by decide +kernel
  have hi : s2Step206ExitFRow.payload.drop 166=s2Step206ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step206ExitF_retired] at result
  exact result

private def s2Step206ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<678) ∨ (679≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step206ExitFvBefore : Arena := s2Step206ExitFAfter

private theorem s2Step206ExitFv_Incoming : rowsOwned s2Step206ExitFvBefore [s2Step206ExitFvRow,s2Step206ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step206ExitGRow,s2Step206ExitFRow,s2Step206ExitFvRow,s2Step206ExitGvRow] 2 s2Step206ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step206ExitFvBefore (fun q => (0≤q ∧ q<678) ∨ (679≤q ∧ q<781) ∨ (782≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step206ExitFv_Outgoing : rowsOwned s2Step206ExitGvAfter [s2Step206ExitFvOut,s2Step206ExitGvOut] :=
  hmrRows_owned_drop s2Step206ExitGvAfter [s2Step206ExitGOut,s2Step206ExitFOut,s2Step206ExitFvOut,s2Step206ExitGvOut] 2 s2Step206ExitBank_outgoingOwned

private theorem s2Step206ExitFv_distinct : (s2Step206ExitFvRow.sign::s2Step206ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step206ExitFv_owned : (s2Step206ExitFvRow.sign::s2Step206ExitFvRow.payload).toFinset⊆s2Step206ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step206ExitFvBefore (fun q => (0≤q ∧ q<678) ∨ (679≤q ∧ q<781) ∨ (782≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step206ExitFv_retired : s2Step206ExitFvBefore.retireSet s2Step206ExitFvExtra.toFinset=s2Step206ExitFvAfter := by
  unfold Arena.retireSet s2Step206ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step206ExitFvBefore,s2Step206ExitFAfter,s2Step206ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step206ExitFv_checked : planRowResizeLog s2Step206ExitFvBefore s2Step206ExitFvRow 118 []=
    some (s2Step206ExitFvAfter,s2Step206ExitFvOut,shrinkRow 770 s2Step206ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step206ExitFvBefore s2Step206ExitFvRow 118 s2Step206ExitFv_distinct s2Step206ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step206ExitFvRow.payload.take 118) s2Step206ExitFvRow.sign=s2Step206ExitFvOut := by decide +kernel
  have hi : s2Step206ExitFvRow.payload.drop 118=s2Step206ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step206ExitFv_retired] at result
  exact result

private def s2Step206ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private theorem s2Step206ExitG_Incoming : rowsOwned s2Step206ExitGBefore [s2Step206ExitGRow,s2Step206ExitFRow,s2Step206ExitFvRow,s2Step206ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step206ExitGRow,s2Step206ExitFRow,s2Step206ExitFvRow,s2Step206ExitGvRow] 0 s2Step206ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step206ExitGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step206ExitG_Outgoing : rowsOwned s2Step206ExitGvAfter [s2Step206ExitGOut,s2Step206ExitFOut,s2Step206ExitFvOut,s2Step206ExitGvOut] :=
  hmrRows_owned_drop s2Step206ExitGvAfter [s2Step206ExitGOut,s2Step206ExitFOut,s2Step206ExitFvOut,s2Step206ExitGvOut] 0 s2Step206ExitBank_outgoingOwned

private theorem s2Step206ExitG_distinct : (s2Step206ExitGRow.sign::s2Step206ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step206ExitG_owned : (s2Step206ExitGRow.sign::s2Step206ExitGRow.payload).toFinset⊆s2Step206ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step206ExitGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step206ExitG_retired : s2Step206ExitGBefore.retireSet s2Step206ExitGExtra.toFinset=s2Step206ExitGAfter := by
  unfold Arena.retireSet s2Step206ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step206ExitGBefore,s2Step206ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step206ExitG_checked : planRowResizeLog s2Step206ExitGBefore s2Step206ExitGRow 166 []=
    some (s2Step206ExitGAfter,s2Step206ExitGOut,shrinkRow 769 s2Step206ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step206ExitGBefore s2Step206ExitGRow 166 s2Step206ExitG_distinct s2Step206ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step206ExitGRow.payload.take 166) s2Step206ExitGRow.sign=s2Step206ExitGOut := by decide +kernel
  have hi : s2Step206ExitGRow.payload.drop 166=s2Step206ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step206ExitG_retired] at result
  exact result

private def s2Step206ExitGvBefore : Arena := s2Step206ExitFvAfter

private theorem s2Step206ExitGv_Incoming : rowsOwned s2Step206ExitGvBefore [s2Step206ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step206ExitGRow,s2Step206ExitFRow,s2Step206ExitFvRow,s2Step206ExitGvRow] 3 s2Step206ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step206ExitGvBefore (fun q => (0≤q ∧ q<678) ∨ (679≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step206ExitGv_Outgoing : rowsOwned s2Step206ExitGvAfter [s2Step206ExitGvOut] :=
  hmrRows_owned_drop s2Step206ExitGvAfter [s2Step206ExitGOut,s2Step206ExitFOut,s2Step206ExitFvOut,s2Step206ExitGvOut] 3 s2Step206ExitBank_outgoingOwned

private theorem s2Step206ExitGv_distinct : (s2Step206ExitGvRow.sign::s2Step206ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step206ExitGv_owned : (s2Step206ExitGvRow.sign::s2Step206ExitGvRow.payload).toFinset⊆s2Step206ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step206ExitGvBefore (fun q => (0≤q ∧ q<678) ∨ (679≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step206ExitGv_retired : s2Step206ExitGvBefore.retireSet s2Step206ExitGvExtra.toFinset=s2Step206ExitGvAfter := by
  unfold Arena.retireSet s2Step206ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step206ExitGvBefore,s2Step206ExitFvAfter,s2Step206ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step206ExitGv_checked : planRowResizeLog s2Step206ExitGvBefore s2Step206ExitGvRow 118 []=
    some (s2Step206ExitGvAfter,s2Step206ExitGvOut,shrinkRow 771 s2Step206ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step206ExitGvBefore s2Step206ExitGvRow 118 s2Step206ExitGv_distinct s2Step206ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step206ExitGvRow.payload.take 118) s2Step206ExitGvRow.sign=s2Step206ExitGvOut := by decide +kernel
  have hi : s2Step206ExitGvRow.payload.drop 118=s2Step206ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step206ExitGv_retired] at result
  exact result

private theorem s2Step206ExitBank_rows : planWindowRowsLog s2Step206ExitGBefore [(s2Step206ExitGRow,166),(s2Step206ExitFRow,166),(s2Step206ExitFvRow,118),(s2Step206ExitGvRow,118)] [[],[],[],[]]=
    some (s2Step206ExitGvAfter,[s2Step206ExitGOut,s2Step206ExitFOut,s2Step206ExitFvOut,s2Step206ExitGvOut],(shrinkRow 769 s2Step206ExitGExtra ++ (shrinkRow 768 s2Step206ExitFExtra ++ (shrinkRow 770 s2Step206ExitFvExtra ++ (shrinkRow 771 s2Step206ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step206ExitGvAfter [] []=some (s2Step206ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step206ExitGvBefore s2Step206ExitGvAfter s2Step206ExitGvAfter
    s2Step206ExitGvRow s2Step206ExitGvOut 118 [] [] [] []
    (shrinkRow 771 s2Step206ExitGvExtra) ([]) s2Step206ExitGv_Incoming s2Step206ExitGv_checked h4 s2Step206ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step206ExitFvBefore s2Step206ExitFvAfter s2Step206ExitGvAfter
    s2Step206ExitFvRow s2Step206ExitFvOut 118 [] [(s2Step206ExitGvRow,118)] [[]] [s2Step206ExitGvOut]
    (shrinkRow 770 s2Step206ExitFvExtra) ((shrinkRow 771 s2Step206ExitGvExtra ++ [])) s2Step206ExitFv_Incoming s2Step206ExitFv_checked h3 s2Step206ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step206ExitFBefore s2Step206ExitFAfter s2Step206ExitGvAfter
    s2Step206ExitFRow s2Step206ExitFOut 166 [] [(s2Step206ExitFvRow,118),(s2Step206ExitGvRow,118)] [[],[]] [s2Step206ExitFvOut,s2Step206ExitGvOut]
    (shrinkRow 768 s2Step206ExitFExtra) ((shrinkRow 770 s2Step206ExitFvExtra ++ (shrinkRow 771 s2Step206ExitGvExtra ++ []))) s2Step206ExitF_Incoming s2Step206ExitF_checked h2 s2Step206ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step206ExitGBefore s2Step206ExitGAfter s2Step206ExitGvAfter
    s2Step206ExitGRow s2Step206ExitGOut 166 [] [(s2Step206ExitFRow,166),(s2Step206ExitFvRow,118),(s2Step206ExitGvRow,118)] [[],[],[]] [s2Step206ExitFOut,s2Step206ExitFvOut,s2Step206ExitGvOut]
    (shrinkRow 769 s2Step206ExitGExtra) ((shrinkRow 768 s2Step206ExitFExtra ++ (shrinkRow 770 s2Step206ExitFvExtra ++ (shrinkRow 771 s2Step206ExitGvExtra ++ [])))) s2Step206ExitG_Incoming s2Step206ExitG_checked h1 s2Step206ExitG_Outgoing
  exact h0

private theorem s2Step206ExitBank_checked : compileHmrBankResizeLog .exit s2Step206ExitGBefore ⟨s2Step206ExitFRow,s2Step206ExitGRow,s2Step206ExitFvRow,s2Step206ExitGvRow⟩ ⟨166,166,118,118⟩ [[],[],[],[]]=
    some (s2Step206ExitGvAfter,⟨s2Step206ExitFOut,s2Step206ExitGOut,s2Step206ExitFvOut,s2Step206ExitGvOut⟩,(shrinkRow 769 s2Step206ExitGExtra ++ (shrinkRow 768 s2Step206ExitFExtra ++ (shrinkRow 770 s2Step206ExitFvExtra ++ (shrinkRow 771 s2Step206ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step206ExitBank_rows]
  rfl

private theorem s2Step206Add0_apart : Disjoint s2Step206Add0Arena.live s2Step206Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step206Add0Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step206Add0_card : s2Step206Add0Arena.live.card=891 := by
  decide +kernel

private theorem s2Step206Add0_borrowed : s2Step206Add0Arena.checkBorrow (hmrHybridCount s2Step206Add0Arena s2Step206Add0B.length) s2Step206Add0Work=some s2Step206Add0During := by
  have len : s2Step206Add0Work.length=hmrHybridCount s2Step206Add0Arena s2Step206Add0B.length := by
    rw [hmrHybridCount,s2Step206Add0_card]
    decide +kernel
  have nd : s2Step206Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step206Add0Arena s2Step206Add0During s2Step206Add0Work.toFinset s2Step206Add0_bounded s2Step206Add0_apart rfl

private theorem s2Step206Add0_distinct : (814::841::882::(s2Step206Add0A++s2Step206Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step206Add0_owned : (814::841::882::(s2Step206Add0A++s2Step206Add0B)).toFinset⊆s2Step206Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step206Add0Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step206Add0_checked : compileHmrHybridCinLog s2Step206Add0Arena 841 814 882 s2Step206Add0A s2Step206Add0B s2Step206Add0Work=some s2Step206Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step206Add0Arena s2Step206Add0During 841 814 882 s2Step206Add0A s2Step206Add0B s2Step206Add0Work
    (by decide +kernel) (by decide +kernel) s2Step206Add0_distinct
    (fun q hq => s2Step206Add0_owned (List.mem_toFinset.mpr hq)) s2Step206Add0_borrowed

private theorem s2Step206Add1_apart : Disjoint s2Step206Add1Arena.live s2Step206Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step206Add1Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step206Add1_card : s2Step206Add1Arena.live.card=891 := by
  decide +kernel

private theorem s2Step206Add1_borrowed : s2Step206Add1Arena.checkBorrow (hmrHybridCount s2Step206Add1Arena s2Step206Add1B.length) s2Step206Add1Work=some s2Step206Add1During := by
  have len : s2Step206Add1Work.length=hmrHybridCount s2Step206Add1Arena s2Step206Add1B.length := by
    rw [hmrHybridCount,s2Step206Add1_card]
    decide +kernel
  have nd : s2Step206Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step206Add1Arena s2Step206Add1During s2Step206Add1Work.toFinset s2Step206Add1_bounded s2Step206Add1_apart rfl

private theorem s2Step206Add1_distinct : (814::841::882::(s2Step206Add1A++s2Step206Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step206Add1_owned : (814::841::882::(s2Step206Add1A++s2Step206Add1B)).toFinset⊆s2Step206Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step206Add1Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step206Add1_checked : compileHmrHybridCinLog s2Step206Add1Arena 841 814 882 s2Step206Add1A s2Step206Add1B s2Step206Add1Work=some s2Step206Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step206Add1Arena s2Step206Add1During 841 814 882 s2Step206Add1A s2Step206Add1B s2Step206Add1Work
    (by decide +kernel) (by decide +kernel) s2Step206Add1_distinct
    (fun q hq => s2Step206Add1_owned (List.mem_toFinset.mpr hq)) s2Step206Add1_borrowed

private theorem s2Step206F4_apart : Disjoint (s2Step206Add0A++s2Step206Add0B).toFinset (s2Step206Add1A++s2Step206Add1B).toFinset := by
  have nd : ((s2Step206Add0A++s2Step206Add0B)++(s2Step206Add1A++s2Step206Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step206F4_carry : s2Step206F4FlagArena.checkBorrow 1 [882]=some s2Step206Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step206F4FlagArena,s2Step206HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step206F4FlagArena,s2Step206HeadFvAfter,s2Step206Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step206F4_distinct : (783::841::814::882::((s2Step206Add0A++s2Step206Add1A)++(s2Step206Add0B++s2Step206Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step206F4_flag : s2Step206HeadFvAfter.checkBorrow 1 [814]=some s2Step206F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step206HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step206F4_owned : (783::841::((s2Step206Add0A++s2Step206Add1A)++(s2Step206Add0B++s2Step206Add1B))).toFinset⊆s2Step206HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step206HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step206F4_checked : compileHmrHybridF4Log s2Step206HeadFvAfter 783 841 s2Step206Add0A s2Step206Add0B s2Step206Add1A s2Step206Add1B [814] [882] s2Step206Add0Work s2Step206Add1Work=some s2Step206F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step206HeadFvAfter s2Step206F4FlagArena s2Step206Add0Arena s2Step206Add0During s2Step206Add1During 783 841
    s2Step206Add0A s2Step206Add0B s2Step206Add1A s2Step206Add1B [814] [882] s2Step206Add0Work s2Step206Add1Work
    (fun q hq => s2Step206F4_owned (List.mem_toFinset.mpr hq)) s2Step206F4_flag s2Step206F4_carry
    s2Step206F4_distinct s2Step206F4_apart s2Step206Add0_checked s2Step206Add1_checked

private theorem s2Step206Front_branch : s2Step206FrontSigmaArena.checkBorrow 1 [841]=some s2Step206HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step206FrontSigmaArena,s2Step206EntryGvAfter,s2Step206EntryFvAfter,arenaWires]
  · ext q
    simp only [s2Step206FrontSigmaArena,s2Step206EntryGvAfter,s2Step206EntryFvAfter,s2Step206HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step206Front_entry : HmrFrontEntryValid s2Step206EntryFBefore s2Step206FrontBank 167 118 ⟨166,166,118,118⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step206FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step206EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step206EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step206FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step206Front_sigma : s2Step206EntryGvAfter.checkBorrow 1 [783]=some s2Step206FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step206EntryGvAfter,s2Step206EntryFvAfter,arenaWires]
  · rfl

private def s2Step206HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step206HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step206HeadFBefore : Arena := s2Step206HeadGAfter

private def s2Step206HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678],768⟩

private def s2Step206HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879],770⟩

private def s2Step206HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 845],769⟩

private def s2Step206HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844],771⟩

private theorem s2Step206HeadBank_incomingDistinct : ([s2Step206HeadGRow,s2Step206HeadFRow,s2Step206HeadGvRow,s2Step206HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step206HeadF_Incoming : rowsOwned s2Step206HeadFBefore [s2Step206HeadFRow,s2Step206HeadGvRow,s2Step206HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step206HeadGRow,s2Step206HeadFRow,s2Step206HeadGvRow,s2Step206HeadFvRow] 1 s2Step206HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step206HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step206HeadBank_outgoingOwned : rowsOwned s2Step206HeadFvAfter [s2Step206HeadGOut,s2Step206HeadFOut,s2Step206HeadGvOut,s2Step206HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step206HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step206HeadF_Outgoing : rowsOwned s2Step206HeadFvAfter [s2Step206HeadFOut,s2Step206HeadGvOut,s2Step206HeadFvOut] :=
  hmrRows_owned_drop s2Step206HeadFvAfter [s2Step206HeadGOut,s2Step206HeadFOut,s2Step206HeadGvOut,s2Step206HeadFvOut] 1 s2Step206HeadBank_outgoingOwned

private theorem s2Step206HeadF_distinct : (s2Step206HeadFRow.sign::s2Step206HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step206HeadF_owned : (s2Step206HeadFRow.sign::s2Step206HeadFRow.payload).toFinset⊆s2Step206HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step206HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step206HeadF_reserved : s2Step206HeadFBefore.reserve s2Step206HeadFFresh.toFinset=some s2Step206HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step206HeadFFresh,arenaWires]
  · norm_num [s2Step206HeadFBefore,s2Step206HeadGAfter,s2Step206HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step206HeadFAfter,s2Step206HeadFBefore,s2Step206HeadGAfter,s2Step206HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step206HeadF_checked : planRowResizeLog s2Step206HeadFBefore s2Step206HeadFRow 168 s2Step206HeadFFresh=
    some (s2Step206HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 781],768⟩,growRow 768 s2Step206HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step206HeadFBefore s2Step206HeadFAfter s2Step206HeadFRow 168 s2Step206HeadFFresh
    s2Step206HeadF_distinct s2Step206HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step206HeadF_reserved
  have rowEq : WindowRow.mk (s2Step206HeadFRow.payload++s2Step206HeadFFresh) s2Step206HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 781],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step206HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step206HeadFvBefore : Arena := s2Step206HeadGvAfter

private theorem s2Step206HeadFv_Incoming : rowsOwned s2Step206HeadFvBefore [s2Step206HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step206HeadGRow,s2Step206HeadFRow,s2Step206HeadGvRow,s2Step206HeadFvRow] 3 s2Step206HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step206HeadFvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step206HeadFv_Outgoing : rowsOwned s2Step206HeadFvAfter [s2Step206HeadFvOut] :=
  hmrRows_owned_drop s2Step206HeadFvAfter [s2Step206HeadGOut,s2Step206HeadFOut,s2Step206HeadGvOut,s2Step206HeadFvOut] 3 s2Step206HeadBank_outgoingOwned

private theorem s2Step206HeadFv_distinct : (s2Step206HeadFvRow.sign::s2Step206HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step206HeadFv_owned : (s2Step206HeadFvRow.sign::s2Step206HeadFvRow.payload).toFinset⊆s2Step206HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step206HeadFvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step206HeadFv_reserved : s2Step206HeadFvBefore.reserve s2Step206HeadFvFresh.toFinset=some s2Step206HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step206HeadFvFresh,arenaWires]
  · norm_num [s2Step206HeadFvBefore,s2Step206HeadGvAfter,s2Step206HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step206HeadFvAfter,s2Step206HeadFvBefore,s2Step206HeadGvAfter,s2Step206HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step206HeadFv_checked : planRowResizeLog s2Step206HeadFvBefore s2Step206HeadFvRow 119 s2Step206HeadFvFresh=
    some (s2Step206HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 789],770⟩,growRow 770 s2Step206HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step206HeadFvBefore s2Step206HeadFvAfter s2Step206HeadFvRow 119 s2Step206HeadFvFresh
    s2Step206HeadFv_distinct s2Step206HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step206HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step206HeadFvRow.payload++s2Step206HeadFvFresh) s2Step206HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 789],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step206HeadG_Incoming : rowsOwned s2Step206HeadGBefore [s2Step206HeadGRow,s2Step206HeadFRow,s2Step206HeadGvRow,s2Step206HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step206HeadGRow,s2Step206HeadFRow,s2Step206HeadGvRow,s2Step206HeadFvRow] 0 s2Step206HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step206HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step206HeadG_Outgoing : rowsOwned s2Step206HeadFvAfter [s2Step206HeadGOut,s2Step206HeadFOut,s2Step206HeadGvOut,s2Step206HeadFvOut] :=
  hmrRows_owned_drop s2Step206HeadFvAfter [s2Step206HeadGOut,s2Step206HeadFOut,s2Step206HeadGvOut,s2Step206HeadFvOut] 0 s2Step206HeadBank_outgoingOwned

private theorem s2Step206HeadG_distinct : (s2Step206HeadGRow.sign::s2Step206HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step206HeadG_owned : (s2Step206HeadGRow.sign::s2Step206HeadGRow.payload).toFinset⊆s2Step206HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step206HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step206HeadG_reserved : s2Step206HeadGBefore.reserve s2Step206HeadGFresh.toFinset=some s2Step206HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step206HeadGFresh,arenaWires]
  · norm_num [s2Step206HeadGBefore,s2Step206HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step206HeadGAfter,s2Step206HeadGBefore,s2Step206HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step206HeadG_checked : planRowResizeLog s2Step206HeadGBefore s2Step206HeadGRow 168 s2Step206HeadGFresh=
    some (s2Step206HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 845, 822],769⟩,growRow 769 s2Step206HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step206HeadGBefore s2Step206HeadGAfter s2Step206HeadGRow 168 s2Step206HeadGFresh
    s2Step206HeadG_distinct s2Step206HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step206HeadG_reserved
  have rowEq : WindowRow.mk (s2Step206HeadGRow.payload++s2Step206HeadGFresh) s2Step206HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 845, 822],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step206HeadGvBefore : Arena := s2Step206HeadFAfter

private theorem s2Step206HeadGv_Incoming : rowsOwned s2Step206HeadGvBefore [s2Step206HeadGvRow,s2Step206HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step206HeadGRow,s2Step206HeadFRow,s2Step206HeadGvRow,s2Step206HeadFvRow] 2 s2Step206HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step206HeadGvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step206HeadGv_Outgoing : rowsOwned s2Step206HeadFvAfter [s2Step206HeadGvOut,s2Step206HeadFvOut] :=
  hmrRows_owned_drop s2Step206HeadFvAfter [s2Step206HeadGOut,s2Step206HeadFOut,s2Step206HeadGvOut,s2Step206HeadFvOut] 2 s2Step206HeadBank_outgoingOwned

private theorem s2Step206HeadGv_distinct : (s2Step206HeadGvRow.sign::s2Step206HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step206HeadGv_owned : (s2Step206HeadGvRow.sign::s2Step206HeadGvRow.payload).toFinset⊆s2Step206HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step206HeadGvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step206HeadGv_reserved : s2Step206HeadGvBefore.reserve s2Step206HeadGvFresh.toFinset=some s2Step206HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step206HeadGvFresh,arenaWires]
  · norm_num [s2Step206HeadGvBefore,s2Step206HeadFAfter,s2Step206HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step206HeadGvAfter,s2Step206HeadGvBefore,s2Step206HeadFAfter,s2Step206HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step206HeadGv_checked : planRowResizeLog s2Step206HeadGvBefore s2Step206HeadGvRow 119 s2Step206HeadGvFresh=
    some (s2Step206HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816],771⟩,growRow 771 s2Step206HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step206HeadGvBefore s2Step206HeadGvAfter s2Step206HeadGvRow 119 s2Step206HeadGvFresh
    s2Step206HeadGv_distinct s2Step206HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step206HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step206HeadGvRow.payload++s2Step206HeadGvFresh) s2Step206HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step206HeadBank_rows : planWindowRowsLog s2Step206HeadGBefore [(s2Step206HeadGRow,168),(s2Step206HeadFRow,168),(s2Step206HeadGvRow,119),(s2Step206HeadFvRow,119)] [s2Step206HeadGFresh,s2Step206HeadFFresh,s2Step206HeadGvFresh,s2Step206HeadFvFresh]=
    some (s2Step206HeadFvAfter,[s2Step206HeadGOut,s2Step206HeadFOut,s2Step206HeadGvOut,s2Step206HeadFvOut],(growRow 769 s2Step206HeadGFresh ++ (growRow 768 s2Step206HeadFFresh ++ (growRow 771 s2Step206HeadGvFresh ++ (growRow 770 s2Step206HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step206HeadFvAfter [] []=some (s2Step206HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step206HeadFvBefore s2Step206HeadFvAfter s2Step206HeadFvAfter
    s2Step206HeadFvRow s2Step206HeadFvOut 119 s2Step206HeadFvFresh [] [] []
    (growRow 770 s2Step206HeadFvFresh) ([]) s2Step206HeadFv_Incoming s2Step206HeadFv_checked h4 s2Step206HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step206HeadGvBefore s2Step206HeadGvAfter s2Step206HeadFvAfter
    s2Step206HeadGvRow s2Step206HeadGvOut 119 s2Step206HeadGvFresh [(s2Step206HeadFvRow,119)] [s2Step206HeadFvFresh] [s2Step206HeadFvOut]
    (growRow 771 s2Step206HeadGvFresh) ((growRow 770 s2Step206HeadFvFresh ++ [])) s2Step206HeadGv_Incoming s2Step206HeadGv_checked h3 s2Step206HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step206HeadFBefore s2Step206HeadFAfter s2Step206HeadFvAfter
    s2Step206HeadFRow s2Step206HeadFOut 168 s2Step206HeadFFresh [(s2Step206HeadGvRow,119),(s2Step206HeadFvRow,119)] [s2Step206HeadGvFresh,s2Step206HeadFvFresh] [s2Step206HeadGvOut,s2Step206HeadFvOut]
    (growRow 768 s2Step206HeadFFresh) ((growRow 771 s2Step206HeadGvFresh ++ (growRow 770 s2Step206HeadFvFresh ++ []))) s2Step206HeadF_Incoming s2Step206HeadF_checked h2 s2Step206HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step206HeadGBefore s2Step206HeadGAfter s2Step206HeadFvAfter
    s2Step206HeadGRow s2Step206HeadGOut 168 s2Step206HeadGFresh [(s2Step206HeadFRow,168),(s2Step206HeadGvRow,119),(s2Step206HeadFvRow,119)] [s2Step206HeadFFresh,s2Step206HeadGvFresh,s2Step206HeadFvFresh] [s2Step206HeadFOut,s2Step206HeadGvOut,s2Step206HeadFvOut]
    (growRow 769 s2Step206HeadGFresh) ((growRow 768 s2Step206HeadFFresh ++ (growRow 771 s2Step206HeadGvFresh ++ (growRow 770 s2Step206HeadFvFresh ++ [])))) s2Step206HeadG_Incoming s2Step206HeadG_checked h1 s2Step206HeadG_Outgoing
  exact h0

private theorem s2Step206HeadBank_checked : compileHmrBankResizeLog .headroom s2Step206HeadGBefore ⟨s2Step206HeadFRow,s2Step206HeadGRow,s2Step206HeadFvRow,s2Step206HeadGvRow⟩ ⟨168,168,119,119⟩ [s2Step206HeadGFresh,s2Step206HeadFFresh,s2Step206HeadGvFresh,s2Step206HeadFvFresh]=
    some (s2Step206HeadFvAfter,⟨s2Step206HeadFOut,s2Step206HeadGOut,s2Step206HeadFvOut,s2Step206HeadGvOut⟩,(growRow 769 s2Step206HeadGFresh ++ (growRow 768 s2Step206HeadFFresh ++ (growRow 771 s2Step206HeadGvFresh ++ (growRow 770 s2Step206HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step206HeadBank_rows]
  rfl

private theorem s2Step206Front_checked : compileHmrSourceFrontLog s2Step206EntryFBefore s2Step206FrontBank 167 118 ⟨166,166,118,118⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step206FrontLog=some s2Step206FrontPlan := by
  have pairEq : s2Step206FrontPair=⟨s2Step206HeadFRow,s2Step206HeadGRow,s2Step206HeadFvRow,s2Step206HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step206FrontHead=⟨s2Step206ExitFRow,s2Step206ExitGRow,s2Step206ExitFvRow,s2Step206ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step206Add0A=s2Step206FrontHead.f.wires := by decide +kernel
  have gEq : s2Step206Add0B=s2Step206FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step206Add1A=s2Step206FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step206Add1B=s2Step206FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step206EntryFBefore s2Step206FrontBank 167 118 ⟨166,166,118,118⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step206FrontLog s2Step206FrontPlan
  · exact s2Step206Front_entry
  · exact s2Step206EntryBank_checked
  · exact s2Step206Front_sigma
  · rfl
  · exact s2Step206Front_branch
  · rfl
  · simpa only [s2Step206FrontPlan,pairEq] using s2Step206HeadBank_checked
  · simpa only [s2Step206FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step206F4_checked
  · exact s2Step206Counter_checked
  · rfl
  · simpa only [s2Step206FrontPlan,headEq] using s2Step206ExitBank_checked

private theorem s2Step206Complete_explicit_checked : compileHmrEarlyStepLog s2Step206EntryFBefore s2Step206FrontBank 167 118 ⟨166,166,118,118⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step206CompleteLog=some s2Step206CompletePlan := by
  let Q := s2Step206EarlyControlPlan
  have hq := s2Step206EarlyControl_plan_checked
  have fv1 : s2Step206CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step206CompleteOut.fv.payload[2]?.getD s2Step206CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step206CompleteOut.fv.payload[3]?.getD s2Step206CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step206CompleteOut.fv.payload[4]?.getD s2Step206CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step206EntryFBefore s2Step206EarlyControlArena s2Step206FrontBank 167 118 ⟨166,166,118,118⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step206CompleteLog s2Step206FrontPlan Q
    s2Step206Front_checked s2Step206Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step206Complete_owned s2Step206Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step206EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 783 s2Step206CompleteOut.fv.second (s2Step206CompleteOut.fv.payload[2]?.getD s2Step206CompleteOut.fv.sign) (s2Step206CompleteOut.fv.payload[3]?.getD s2Step206CompleteOut.fv.sign) (s2Step206CompleteOut.fv.payload[4]?.getD s2Step206CompleteOut.fv.sign) 841 47 s2Step206EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep206Arena : Arena := s2Step206EntryFBefore
def s2PrivateStep206Bank : WindowBank := s2Step206FrontBank
def s2PrivateStep206Spec : HmrSourceWalkStepLog := ⟨167,118,⟨166,166,118,118⟩,47,.early s2Step206CompleteLog⟩
def s2PrivateStep206Plan : HmrSourceStepPlan := .early s2Step206CompletePlan
theorem s2PrivateStep206_source : s2PrivateStep206Spec=s2ObservedLogs192[14] := rfl
theorem s2PrivateStep206_checked : compileHmrSourceStepLog s2PrivateStep206Arena s2PrivateStep206Bank
    s2PrivateStep206Spec.fgWidth s2PrivateStep206Spec.vWidth s2PrivateStep206Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897]
    6 498 206 s2PrivateStep206Spec.need none s2PrivateStep206Spec.log=some s2PrivateStep206Plan := by
  change compileHmrSourceStepLog s2Step206EntryFBefore s2Step206FrontBank 167 118 ⟨166,166,118,118⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 6 498 206 47 none (.early s2Step206CompleteLog)=some (.early s2Step206CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 206<498)]
  rw [s2Step206Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
