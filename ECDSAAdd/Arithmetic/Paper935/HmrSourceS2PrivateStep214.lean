import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep212
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

private def s2Step214CompleteMoves : List (Wire × Wire) := []

private def s2Step214EarlyControlLog : HmrEarlyControlLog := ⟨[796, 839, 801, 789, 815],[783],[814],[882, 826, 842, 885, 891, 894],[]⟩

private def s2Step214FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [801], [], []],[[789], [839], [796], [791]],[[], [], [], []]⟩,[851],[845],[815],[783],[814, 882, 826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[814, 882, 826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[815, 783, 814, 882]⟩

private def s2Step214CompleteLog : HmrEarlyStepLog := ⟨s2Step214FrontLog,s2Step214CompleteMoves,s2Step214EarlyControlLog⟩

private def s2Step214ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674],768⟩

private def s2Step214ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791],770⟩

private def s2Step214ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161],769⟩

private def s2Step214ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822],771⟩

private def s2Step214FrontOut : WindowBank := ⟨s2Step214ExitFOut,s2Step214ExitGOut,s2Step214ExitFvOut,s2Step214ExitGvOut⟩

private def s2Step214CompleteOut : WindowBank := s2Step214FrontOut.repacked s2Step214CompleteMoves

private def s2Step214EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step214EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step214EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step214EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step214EarlyControlPositiveArena,[783],s2Step214EarlyControlEqualityArena,[814],⟨⟨851,false⟩,[⟨⟨783,false⟩,814⟩]⟩⟩

private def s2Step214EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<895) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step214EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<895) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step214EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step214EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<851) ∨ (852≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step214EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<851) ∨ (852≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step214EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step214EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,796⟩,⟨⟨774,false⟩,839⟩,⟨⟨775,false⟩,801⟩,⟨⟨776,false⟩,789⟩,⟨⟨777,false⟩,815⟩]⟩

private def s2Step214EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step214EarlyControlZeroArena,s2Step214EarlyControlZeroPlan,s2Step214EarlyControlClassPlan,s2Step214EarlyControlFlagArena,s2Step214EarlyControlFittedArena,s2Step214EarlyControlHistoryArena,s2Step214EarlyControlSigmaArena,s2Step214EarlyControlOutputArena,s2Step214EarlyControlLog⟩

private def s2Step214CounterWork : List Wire := [815, 783, 814, 882]

private theorem s2Step214Counter_bounded : s2Step214CounterWork.toFinset⊆arenaWires := by norm_num [s2Step214CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step214HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step214CounterDuring : Arena := ⟨s2Step214HeadFvAfter.live∪s2Step214CounterWork.toFinset,Finset.union_subset s2Step214HeadFvAfter.bounded s2Step214Counter_bounded⟩

private def s2Step214EntryFFresh : List Wire := []

private def s2Step214EntryFvFresh : List Wire := []

private def s2Step214EntryGFresh : List Wire := [801]

private def s2Step214EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<851) ∨ (852≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step214EntryGvAfter : Arena := s2Step214EntryGAfter

private def s2Step214EntryGvFresh : List Wire := []

private def s2Step214ExitFExtra : List Wire := [839]

private def s2Step214ExitGExtra : List Wire := [801, 789]

private def s2Step214ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step214ExitGvExtra : List Wire := [796]

private def s2Step214Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step214Add0Work : List Wire := [814, 882, 826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step214Add0_bounded : s2Step214Add0Work.toFinset⊆arenaWires := by
  have h : s2Step214Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step214Add0During : Arena := ⟨s2Step214Add0Arena.live∪s2Step214Add0Work.toFinset,Finset.union_subset s2Step214Add0Arena.bounded s2Step214Add0_bounded⟩

private def s2Step214Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step214Add1Work : List Wire := [814, 882, 826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step214Add1_bounded : s2Step214Add1Work.toFinset⊆arenaWires := by
  have h : s2Step214Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step214Add1During : Arena := ⟨s2Step214Add1Arena.live∪s2Step214Add1Work.toFinset,Finset.union_subset s2Step214Add1Arena.bounded s2Step214Add1_bounded⟩

private def s2Step214F4FlagArena : Arena := ⟨s2Step214HeadFvAfter.live∪{815},Finset.union_subset s2Step214HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step214F4Plan : HmrHybridF4Plan := ⟨s2Step214F4FlagArena,[815],s2Step214Add0Arena,[783],s2Step214Add0During,s2Step214Add0Work,s2Step214Add1During,s2Step214Add1Work⟩

private def s2Step214HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 839],768⟩

private def s2Step214HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791],770⟩

private def s2Step214HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 801, 789],769⟩

private def s2Step214HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 796],771⟩

private def s2Step214FrontHead : WindowBank := ⟨s2Step214HeadFOut,s2Step214HeadGOut,s2Step214HeadFvOut,s2Step214HeadGvOut⟩

private def s2Step214EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674],768⟩

private def s2Step214EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781],770⟩

private def s2Step214EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 801],769⟩

private def s2Step214EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822],771⟩

private def s2Step214FrontPair : WindowBank := ⟨s2Step214EntryFOut,s2Step214EntryGOut,s2Step214EntryFvOut,s2Step214EntryGvOut⟩

private def s2Step214FrontSigmaArena : Arena := ⟨s2Step214EntryGvAfter.live∪{851},Finset.union_subset s2Step214EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step214HeadFFresh : List Wire := [839]

private def s2Step214HeadFvFresh : List Wire := [791]

private def s2Step214HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step214HeadGFresh : List Wire := [789]

private def s2Step214HeadGvFresh : List Wire := [796]

private def s2Step214FrontPlan : HmrSourceFront := ⟨s2Step214EntryGvAfter,s2Step214FrontPair,(growRow 768 s2Step214EntryFFresh ++ (growRow 769 s2Step214EntryGFresh ++ (growRow 770 s2Step214EntryFvFresh ++ (growRow 771 s2Step214EntryGvFresh ++ [])))),s2Step214FrontSigmaArena,[851],s2Step214HeadGBefore,[845],
  s2Step214HeadFvAfter,s2Step214FrontHead,(growRow 769 s2Step214HeadGFresh ++ (growRow 768 s2Step214HeadFFresh ++ (growRow 771 s2Step214HeadGvFresh ++ (growRow 770 s2Step214HeadFvFresh ++ [])))),s2Step214F4Plan,s2Step214CounterDuring,s2Step214CounterWork,s2Step214ExitGvAfter,s2Step214FrontOut,(shrinkRow 769 s2Step214ExitGExtra ++ (shrinkRow 768 s2Step214ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step214ExitGvExtra ++ []))))⟩

private def s2Step214CompletePlan : HmrEarlyStepPlan := ⟨s2Step214FrontPlan,s2Step214EarlyControlArena,s2Step214EarlyControlPlan,s2Step214CompleteMoves⟩

private theorem s2Step214Complete_apart : List.Disjoint (s2Step214CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [851, 845, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] := by
  have nd : ((s2Step214CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[851, 845, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step214Complete_owned : (s2Step214CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step214EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step214EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step214Complete_repack : s2Step214ExitGvAfter.checkRepack s2Step214CompleteMoves=some s2Step214EarlyControlArena := by rfl

private theorem s2Step214EarlyControl_branchOwned : ([845] : List Wire).toFinset⊆s2Step214EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step214EarlyControlSigmaArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<851) ∨ (852≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step214EarlyControl_branch : compileHmrBranchRetirement s2Step214EarlyControlSigmaArena 845=some s2Step214EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step214EarlyControl_branchOwned
  · ext q
    simp [s2Step214EarlyControlOutputArena,s2Step214EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step214EarlyControl_classEqualityBorrow : s2Step214EarlyControlPositiveArena.checkBorrow (([851, 783] : List Wire).length-1) s2Step214EarlyControlLog.classWork=some s2Step214EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step214EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step214EarlyControlPositiveArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step214EarlyControlEqualityArena,s2Step214EarlyControlPositiveArena,s2Step214EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step214EarlyControl_classEqualityOwned : ([851, 783] : List Wire).toFinset⊆s2Step214EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step214EarlyControlPositiveArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step214EarlyControl_classEquality : compileHmrEqualityLog s2Step214EarlyControlPositiveArena [851, 783] 0 s2Step214EarlyControlLog.classWork=some (s2Step214EarlyControlEqualityArena,s2Step214EarlyControlLog.classWork,s2Step214EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step214EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step214EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step214EarlyControl_classOwned : ([777, 815, 851] : List Wire).toFinset⊆s2Step214EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step214EarlyControlZeroArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step214EarlyControl_positiveBorrow : s2Step214EarlyControlZeroArena.checkBorrow (1) s2Step214EarlyControlLog.positiveWork=some s2Step214EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step214EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step214EarlyControlZeroArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step214EarlyControlPositiveArena,s2Step214EarlyControlZeroArena,s2Step214EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step214EarlyControl_class : compileHmrSourceClassLog s2Step214EarlyControlZeroArena false 777 s2Step214EarlyControlZeroPlan.top 0 851 s2Step214EarlyControlLog.positiveWork s2Step214EarlyControlLog.classWork=some s2Step214EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step214EarlyControlClassPlan s2Step214EarlyControlZeroArena false 777 s2Step214EarlyControlZeroPlan.top 0 851
  constructor
  · decide +kernel
  · exact s2Step214EarlyControl_classOwned
  · exact s2Step214EarlyControl_positiveBorrow
  · exact s2Step214EarlyControl_classEquality

private theorem s2Step214EarlyControl_entryRecordOwned : ([845, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step214EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step214EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step214EarlyControl_entrySigmaOwned : ([851, 254] : List Wire).toFinset⊆s2Step214EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step214EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step214EarlyControl_fitBorrow : s2Step214EarlyControlFlagArena.checkBorrow ((47-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).length)) s2Step214EarlyControlLog.recordFresh=some s2Step214EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step214EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step214EarlyControlFlagArena (fun q => (0≤q ∧ q<895) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step214EarlyControlFittedArena,s2Step214EarlyControlFlagArena,s2Step214EarlyControlLog,arenaWires]

private theorem s2Step214EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step214EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step214EarlyControlFlagArena (fun q => (0≤q ∧ q<895) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step214EarlyControl_fit : compileHmrRecordGrowLog s2Step214EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step214EarlyControlLog.recordFresh=some s2Step214EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step214EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step214EarlyControl_fitBorrow

private theorem s2Step214EarlyControl_flagsBorrow : s2Step214EarlyControlEqualityArena.checkBorrow (6) s2Step214EarlyControlLog.flagWork=some s2Step214EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step214EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step214EarlyControlEqualityArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step214EarlyControlFlagArena,s2Step214EarlyControlEqualityArena,s2Step214EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step214EarlyControl_flagsOwned : ([814, 253, 252, 251] : List Wire).toFinset⊆s2Step214EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step214EarlyControlEqualityArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step214EarlyControl_flags : compileHmrFlagsLog s2Step214EarlyControlClassPlan.equalityArena s2Step214EarlyControlClassPlan.equality.top 253 252 251 s2Step214EarlyControlLog.flagWork=some s2Step214EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step214EarlyControl_flagsOwned⟩
  · exact s2Step214EarlyControl_flagsBorrow

private theorem s2Step214EarlyControl_historyBorrow : s2Step214EarlyControlArena.checkBorrow ((47-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).length)) s2Step214EarlyControlLog.recordFresh=some s2Step214EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step214EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step214EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step214EarlyControlHistoryArena,s2Step214EarlyControlArena,s2Step214EarlyControlLog,arenaWires]

private theorem s2Step214EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step214EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step214EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step214EarlyControl_history : compileHmrRecordGrowLog s2Step214EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step214EarlyControlLog.recordFresh=some s2Step214EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step214EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step214EarlyControl_historyBorrow

private theorem s2Step214EarlyControl_sigmaOwned : ([254, 851] : List Wire).toFinset⊆s2Step214EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step214EarlyControlHistoryArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step214EarlyControl_sigmaReleaseOwned : ([851] : List Wire).toFinset⊆s2Step214EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step214EarlyControlHistoryArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step214EarlyControl_sigmaRelease : s2Step214EarlyControlHistoryArena.release {851} (fun _ => false)=some s2Step214EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step214EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step214EarlyControlSigmaArena,s2Step214EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step214EarlyControl_sigma : compileHmrSigmaDropLog s2Step214EarlyControlHistoryArena false 0 0 254 851 []=some s2Step214EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step214EarlyControl_sigmaOwned⟩
  · exact s2Step214EarlyControl_sigmaRelease

private theorem s2Step214EarlyControl_zeroBorrow : s2Step214EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step214EarlyControlLog.zeroWork=some s2Step214EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step214EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step214EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step214EarlyControlZeroArena,s2Step214EarlyControlArena,s2Step214EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step214EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step214EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step214EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step214EarlyControl_zero : compileHmrEqualityLog s2Step214EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step214EarlyControlLog.zeroWork=some (s2Step214EarlyControlZeroArena,s2Step214EarlyControlLog.zeroWork,s2Step214EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step214EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step214EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step214EarlyControl_logged : s2Step214EarlyControlPlan.Logged s2Step214EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 851 254 253 252 251 845 47 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step214EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step214EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step214EarlyControl_zero
  · exact s2Step214EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step214EarlyControl_flags
  · exact s2Step214EarlyControl_fit
  · exact s2Step214EarlyControl_history
  · exact s2Step214EarlyControl_sigma
  · exact s2Step214EarlyControl_branch

private theorem s2Step214EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step214EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 851 254 253 252 251 845 47 s2Step214EarlyControlLog=some s2Step214EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step214EarlyControlPlan s2Step214EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 851 254 253 252 251 845 47 s2Step214EarlyControl_logged

private def s2Step214EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<851) ∨ (852≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step214EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674],768⟩

private def s2Step214EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781],770⟩

private def s2Step214EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161],769⟩

private def s2Step214EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822],771⟩

private def s2Step214FrontBank : WindowBank := ⟨s2Step214EntryFRow,s2Step214EntryGRow,s2Step214EntryFvRow,s2Step214EntryGvRow⟩

private def s2Step214Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 839, 768]

private def s2Step214Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 801, 789, 769]

private def s2Step214Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 770]

private def s2Step214Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 796, 771]

private theorem s2Step214Counter_apart : Disjoint s2Step214HeadFvAfter.live s2Step214CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step214HeadFvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step214Counter_borrowed : s2Step214HeadFvAfter.checkBorrow 4 s2Step214CounterWork=some s2Step214CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step214HeadFvAfter s2Step214CounterDuring s2Step214CounterWork.toFinset s2Step214Counter_bounded s2Step214Counter_apart rfl

private theorem s2Step214Counter_owned : (851::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step214HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step214HeadFvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step214Counter_checked : compileHmrCounterStepLog s2Step214HeadFvAfter true 851 [772, 773, 774, 775, 776, 777] s2Step214CounterWork=some s2Step214CounterDuring := by
  have owned : ∀q∈851::[772, 773, 774, 775, 776, 777],q∈s2Step214HeadFvAfter.live := fun q hq => s2Step214Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step214Counter_borrowed

private def s2Step214EntryFAfter : Arena := s2Step214EntryFBefore

private theorem s2Step214EntryBank_incomingDistinct : ([s2Step214EntryFRow,s2Step214EntryGRow,s2Step214EntryFvRow,s2Step214EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step214EntryF_Incoming : rowsOwned s2Step214EntryFBefore [s2Step214EntryFRow,s2Step214EntryGRow,s2Step214EntryFvRow,s2Step214EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step214EntryFRow,s2Step214EntryGRow,s2Step214EntryFvRow,s2Step214EntryGvRow] 0 s2Step214EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step214EntryFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<851) ∨ (852≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step214EntryBank_outgoingOwned : rowsOwned s2Step214EntryGvAfter [s2Step214EntryFOut,s2Step214EntryGOut,s2Step214EntryFvOut,s2Step214EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step214EntryGvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<851) ∨ (852≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step214EntryF_Outgoing : rowsOwned s2Step214EntryGvAfter [s2Step214EntryFOut,s2Step214EntryGOut,s2Step214EntryFvOut,s2Step214EntryGvOut] :=
  hmrRows_owned_drop s2Step214EntryGvAfter [s2Step214EntryFOut,s2Step214EntryGOut,s2Step214EntryFvOut,s2Step214EntryGvOut] 0 s2Step214EntryBank_outgoingOwned

private theorem s2Step214EntryF_distinct : (s2Step214EntryFRow.sign::s2Step214EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step214EntryF_owned : (s2Step214EntryFRow.sign::s2Step214EntryFRow.payload).toFinset⊆s2Step214EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step214EntryFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<851) ∨ (852≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step214EntryF_reserved : s2Step214EntryFBefore.reserve s2Step214EntryFFresh.toFinset=some s2Step214EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step214EntryFFresh,arenaWires]
  · norm_num [s2Step214EntryFBefore,s2Step214EntryFFresh,arenaWires]
  · simp only [s2Step214EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step214EntryF_checked : planRowResizeLog s2Step214EntryFBefore s2Step214EntryFRow 163 s2Step214EntryFFresh=
    some (s2Step214EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674],768⟩,growRow 768 s2Step214EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step214EntryFBefore s2Step214EntryFAfter s2Step214EntryFRow 163 s2Step214EntryFFresh
    s2Step214EntryF_distinct s2Step214EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step214EntryF_reserved
  have rowEq : WindowRow.mk (s2Step214EntryFRow.payload++s2Step214EntryFFresh) s2Step214EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step214EntryFvAfter : Arena := s2Step214EntryGAfter

private def s2Step214EntryFvBefore : Arena := s2Step214EntryGAfter

private theorem s2Step214EntryFv_Incoming : rowsOwned s2Step214EntryFvBefore [s2Step214EntryFvRow,s2Step214EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step214EntryFRow,s2Step214EntryGRow,s2Step214EntryFvRow,s2Step214EntryGvRow] 2 s2Step214EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step214EntryFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<851) ∨ (852≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step214EntryFv_Outgoing : rowsOwned s2Step214EntryGvAfter [s2Step214EntryFvOut,s2Step214EntryGvOut] :=
  hmrRows_owned_drop s2Step214EntryGvAfter [s2Step214EntryFOut,s2Step214EntryGOut,s2Step214EntryFvOut,s2Step214EntryGvOut] 2 s2Step214EntryBank_outgoingOwned

private theorem s2Step214EntryFv_distinct : (s2Step214EntryFvRow.sign::s2Step214EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step214EntryFv_owned : (s2Step214EntryFvRow.sign::s2Step214EntryFvRow.payload).toFinset⊆s2Step214EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step214EntryFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<851) ∨ (852≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step214EntryFv_reserved : s2Step214EntryFvBefore.reserve s2Step214EntryFvFresh.toFinset=some s2Step214EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step214EntryFvFresh,arenaWires]
  · norm_num [s2Step214EntryFvBefore,s2Step214EntryGAfter,s2Step214EntryFvFresh,arenaWires]
  · simp only [s2Step214EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step214EntryFv_checked : planRowResizeLog s2Step214EntryFvBefore s2Step214EntryFvRow 121 s2Step214EntryFvFresh=
    some (s2Step214EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781],770⟩,growRow 770 s2Step214EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step214EntryFvBefore s2Step214EntryFvAfter s2Step214EntryFvRow 121 s2Step214EntryFvFresh
    s2Step214EntryFv_distinct s2Step214EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step214EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step214EntryFvRow.payload++s2Step214EntryFvFresh) s2Step214EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step214EntryGBefore : Arena := s2Step214EntryFBefore

private theorem s2Step214EntryG_Incoming : rowsOwned s2Step214EntryGBefore [s2Step214EntryGRow,s2Step214EntryFvRow,s2Step214EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step214EntryFRow,s2Step214EntryGRow,s2Step214EntryFvRow,s2Step214EntryGvRow] 1 s2Step214EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step214EntryGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<851) ∨ (852≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step214EntryG_Outgoing : rowsOwned s2Step214EntryGvAfter [s2Step214EntryGOut,s2Step214EntryFvOut,s2Step214EntryGvOut] :=
  hmrRows_owned_drop s2Step214EntryGvAfter [s2Step214EntryFOut,s2Step214EntryGOut,s2Step214EntryFvOut,s2Step214EntryGvOut] 1 s2Step214EntryBank_outgoingOwned

private theorem s2Step214EntryG_distinct : (s2Step214EntryGRow.sign::s2Step214EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step214EntryG_owned : (s2Step214EntryGRow.sign::s2Step214EntryGRow.payload).toFinset⊆s2Step214EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step214EntryGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<851) ∨ (852≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step214EntryG_reserved : s2Step214EntryGBefore.reserve s2Step214EntryGFresh.toFinset=some s2Step214EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step214EntryGFresh,arenaWires]
  · norm_num [s2Step214EntryGBefore,s2Step214EntryFBefore,s2Step214EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step214EntryGAfter,s2Step214EntryGBefore,s2Step214EntryFBefore,s2Step214EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step214EntryG_checked : planRowResizeLog s2Step214EntryGBefore s2Step214EntryGRow 163 s2Step214EntryGFresh=
    some (s2Step214EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 801],769⟩,growRow 769 s2Step214EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step214EntryGBefore s2Step214EntryGAfter s2Step214EntryGRow 163 s2Step214EntryGFresh
    s2Step214EntryG_distinct s2Step214EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step214EntryG_reserved
  have rowEq : WindowRow.mk (s2Step214EntryGRow.payload++s2Step214EntryGFresh) s2Step214EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 801],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step214EntryGvBefore : Arena := s2Step214EntryGAfter

private theorem s2Step214EntryGv_Incoming : rowsOwned s2Step214EntryGvBefore [s2Step214EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step214EntryFRow,s2Step214EntryGRow,s2Step214EntryFvRow,s2Step214EntryGvRow] 3 s2Step214EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step214EntryGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<851) ∨ (852≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step214EntryGv_Outgoing : rowsOwned s2Step214EntryGvAfter [s2Step214EntryGvOut] :=
  hmrRows_owned_drop s2Step214EntryGvAfter [s2Step214EntryFOut,s2Step214EntryGOut,s2Step214EntryFvOut,s2Step214EntryGvOut] 3 s2Step214EntryBank_outgoingOwned

private theorem s2Step214EntryGv_distinct : (s2Step214EntryGvRow.sign::s2Step214EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step214EntryGv_owned : (s2Step214EntryGvRow.sign::s2Step214EntryGvRow.payload).toFinset⊆s2Step214EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step214EntryGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<851) ∨ (852≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step214EntryGv_reserved : s2Step214EntryGvBefore.reserve s2Step214EntryGvFresh.toFinset=some s2Step214EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step214EntryGvFresh,arenaWires]
  · norm_num [s2Step214EntryGvBefore,s2Step214EntryGAfter,s2Step214EntryGvFresh,arenaWires]
  · simp only [s2Step214EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step214EntryGv_checked : planRowResizeLog s2Step214EntryGvBefore s2Step214EntryGvRow 121 s2Step214EntryGvFresh=
    some (s2Step214EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822],771⟩,growRow 771 s2Step214EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step214EntryGvBefore s2Step214EntryGvAfter s2Step214EntryGvRow 121 s2Step214EntryGvFresh
    s2Step214EntryGv_distinct s2Step214EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step214EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step214EntryGvRow.payload++s2Step214EntryGvFresh) s2Step214EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step214EntryBank_rows : planWindowRowsLog s2Step214EntryFBefore [(s2Step214EntryFRow,163),(s2Step214EntryGRow,163),(s2Step214EntryFvRow,121),(s2Step214EntryGvRow,121)] [s2Step214EntryFFresh,s2Step214EntryGFresh,s2Step214EntryFvFresh,s2Step214EntryGvFresh]=
    some (s2Step214EntryGvAfter,[s2Step214EntryFOut,s2Step214EntryGOut,s2Step214EntryFvOut,s2Step214EntryGvOut],(growRow 768 s2Step214EntryFFresh ++ (growRow 769 s2Step214EntryGFresh ++ (growRow 770 s2Step214EntryFvFresh ++ (growRow 771 s2Step214EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step214EntryGvAfter [] []=some (s2Step214EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step214EntryGvBefore s2Step214EntryGvAfter s2Step214EntryGvAfter
    s2Step214EntryGvRow s2Step214EntryGvOut 121 s2Step214EntryGvFresh [] [] []
    (growRow 771 s2Step214EntryGvFresh) ([]) s2Step214EntryGv_Incoming s2Step214EntryGv_checked h4 s2Step214EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step214EntryFvBefore s2Step214EntryFvAfter s2Step214EntryGvAfter
    s2Step214EntryFvRow s2Step214EntryFvOut 121 s2Step214EntryFvFresh [(s2Step214EntryGvRow,121)] [s2Step214EntryGvFresh] [s2Step214EntryGvOut]
    (growRow 770 s2Step214EntryFvFresh) ((growRow 771 s2Step214EntryGvFresh ++ [])) s2Step214EntryFv_Incoming s2Step214EntryFv_checked h3 s2Step214EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step214EntryGBefore s2Step214EntryGAfter s2Step214EntryGvAfter
    s2Step214EntryGRow s2Step214EntryGOut 163 s2Step214EntryGFresh [(s2Step214EntryFvRow,121),(s2Step214EntryGvRow,121)] [s2Step214EntryFvFresh,s2Step214EntryGvFresh] [s2Step214EntryFvOut,s2Step214EntryGvOut]
    (growRow 769 s2Step214EntryGFresh) ((growRow 770 s2Step214EntryFvFresh ++ (growRow 771 s2Step214EntryGvFresh ++ []))) s2Step214EntryG_Incoming s2Step214EntryG_checked h2 s2Step214EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step214EntryFBefore s2Step214EntryFAfter s2Step214EntryGvAfter
    s2Step214EntryFRow s2Step214EntryFOut 163 s2Step214EntryFFresh [(s2Step214EntryGRow,163),(s2Step214EntryFvRow,121),(s2Step214EntryGvRow,121)] [s2Step214EntryGFresh,s2Step214EntryFvFresh,s2Step214EntryGvFresh] [s2Step214EntryGOut,s2Step214EntryFvOut,s2Step214EntryGvOut]
    (growRow 768 s2Step214EntryFFresh) ((growRow 769 s2Step214EntryGFresh ++ (growRow 770 s2Step214EntryFvFresh ++ (growRow 771 s2Step214EntryGvFresh ++ [])))) s2Step214EntryF_Incoming s2Step214EntryF_checked h1 s2Step214EntryF_Outgoing
  exact h0

private theorem s2Step214EntryBank_checked : compileHmrBankResizeLog .entry s2Step214EntryFBefore ⟨s2Step214EntryFRow,s2Step214EntryGRow,s2Step214EntryFvRow,s2Step214EntryGvRow⟩ ⟨163,163,121,121⟩ [s2Step214EntryFFresh,s2Step214EntryGFresh,s2Step214EntryFvFresh,s2Step214EntryGvFresh]=
    some (s2Step214EntryGvAfter,⟨s2Step214EntryFOut,s2Step214EntryGOut,s2Step214EntryFvOut,s2Step214EntryGvOut⟩,(growRow 768 s2Step214EntryFFresh ++ (growRow 769 s2Step214EntryGFresh ++ (growRow 770 s2Step214EntryFvFresh ++ (growRow 771 s2Step214EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step214EntryBank_rows]
  rfl

private def s2Step214ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step214ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step214ExitFBefore : Arena := s2Step214ExitGAfter

private def s2Step214ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 839],768⟩

private def s2Step214ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791],770⟩

private def s2Step214ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 801, 789],769⟩

private def s2Step214ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 796],771⟩

private theorem s2Step214ExitBank_incomingDistinct : ([s2Step214ExitGRow,s2Step214ExitFRow,s2Step214ExitFvRow,s2Step214ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step214ExitF_Incoming : rowsOwned s2Step214ExitFBefore [s2Step214ExitFRow,s2Step214ExitFvRow,s2Step214ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step214ExitGRow,s2Step214ExitFRow,s2Step214ExitFvRow,s2Step214ExitGvRow] 1 s2Step214ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step214ExitFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step214ExitBank_outgoingOwned : rowsOwned s2Step214ExitGvAfter [s2Step214ExitGOut,s2Step214ExitFOut,s2Step214ExitFvOut,s2Step214ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step214ExitGvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step214ExitF_Outgoing : rowsOwned s2Step214ExitGvAfter [s2Step214ExitFOut,s2Step214ExitFvOut,s2Step214ExitGvOut] :=
  hmrRows_owned_drop s2Step214ExitGvAfter [s2Step214ExitGOut,s2Step214ExitFOut,s2Step214ExitFvOut,s2Step214ExitGvOut] 1 s2Step214ExitBank_outgoingOwned

private theorem s2Step214ExitF_distinct : (s2Step214ExitFRow.sign::s2Step214ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step214ExitF_owned : (s2Step214ExitFRow.sign::s2Step214ExitFRow.payload).toFinset⊆s2Step214ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step214ExitFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step214ExitF_retired : s2Step214ExitFBefore.retireSet s2Step214ExitFExtra.toFinset=s2Step214ExitFAfter := by
  unfold Arena.retireSet s2Step214ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step214ExitFBefore,s2Step214ExitGAfter,s2Step214ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step214ExitF_checked : planRowResizeLog s2Step214ExitFBefore s2Step214ExitFRow 163 []=
    some (s2Step214ExitFAfter,s2Step214ExitFOut,shrinkRow 768 s2Step214ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step214ExitFBefore s2Step214ExitFRow 163 s2Step214ExitF_distinct s2Step214ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step214ExitFRow.payload.take 163) s2Step214ExitFRow.sign=s2Step214ExitFOut := by decide +kernel
  have hi : s2Step214ExitFRow.payload.drop 163=s2Step214ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step214ExitF_retired] at result
  exact result

private def s2Step214ExitFvAfter : Arena := s2Step214ExitFAfter

private def s2Step214ExitFvBefore : Arena := s2Step214ExitFAfter

private theorem s2Step214ExitFv_Incoming : rowsOwned s2Step214ExitFvBefore [s2Step214ExitFvRow,s2Step214ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step214ExitGRow,s2Step214ExitFRow,s2Step214ExitFvRow,s2Step214ExitGvRow] 2 s2Step214ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step214ExitFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step214ExitFv_Outgoing : rowsOwned s2Step214ExitGvAfter [s2Step214ExitFvOut,s2Step214ExitGvOut] :=
  hmrRows_owned_drop s2Step214ExitGvAfter [s2Step214ExitGOut,s2Step214ExitFOut,s2Step214ExitFvOut,s2Step214ExitGvOut] 2 s2Step214ExitBank_outgoingOwned

private theorem s2Step214ExitFv_distinct : (s2Step214ExitFvRow.sign::s2Step214ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step214ExitFv_owned : (s2Step214ExitFvRow.sign::s2Step214ExitFvRow.payload).toFinset⊆s2Step214ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step214ExitFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step214ExitFv_reserved : s2Step214ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step214ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step214ExitFv_checked : planRowResizeLog s2Step214ExitFvBefore s2Step214ExitFvRow 122 []=
    some (s2Step214ExitFvAfter,s2Step214ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step214ExitFvBefore s2Step214ExitFvAfter s2Step214ExitFvRow 122 []
    s2Step214ExitFv_distinct s2Step214ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step214ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step214ExitFvRow.payload++[]) s2Step214ExitFvRow.sign=s2Step214ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step214ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private theorem s2Step214ExitG_Incoming : rowsOwned s2Step214ExitGBefore [s2Step214ExitGRow,s2Step214ExitFRow,s2Step214ExitFvRow,s2Step214ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step214ExitGRow,s2Step214ExitFRow,s2Step214ExitFvRow,s2Step214ExitGvRow] 0 s2Step214ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step214ExitGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step214ExitG_Outgoing : rowsOwned s2Step214ExitGvAfter [s2Step214ExitGOut,s2Step214ExitFOut,s2Step214ExitFvOut,s2Step214ExitGvOut] :=
  hmrRows_owned_drop s2Step214ExitGvAfter [s2Step214ExitGOut,s2Step214ExitFOut,s2Step214ExitFvOut,s2Step214ExitGvOut] 0 s2Step214ExitBank_outgoingOwned

private theorem s2Step214ExitG_distinct : (s2Step214ExitGRow.sign::s2Step214ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step214ExitG_owned : (s2Step214ExitGRow.sign::s2Step214ExitGRow.payload).toFinset⊆s2Step214ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step214ExitGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step214ExitG_retired : s2Step214ExitGBefore.retireSet s2Step214ExitGExtra.toFinset=s2Step214ExitGAfter := by
  unfold Arena.retireSet s2Step214ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step214ExitGBefore,s2Step214ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step214ExitG_checked : planRowResizeLog s2Step214ExitGBefore s2Step214ExitGRow 162 []=
    some (s2Step214ExitGAfter,s2Step214ExitGOut,shrinkRow 769 s2Step214ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step214ExitGBefore s2Step214ExitGRow 162 s2Step214ExitG_distinct s2Step214ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step214ExitGRow.payload.take 162) s2Step214ExitGRow.sign=s2Step214ExitGOut := by decide +kernel
  have hi : s2Step214ExitGRow.payload.drop 162=s2Step214ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step214ExitG_retired] at result
  exact result

private def s2Step214ExitGvBefore : Arena := s2Step214ExitFAfter

private theorem s2Step214ExitGv_Incoming : rowsOwned s2Step214ExitGvBefore [s2Step214ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step214ExitGRow,s2Step214ExitFRow,s2Step214ExitFvRow,s2Step214ExitGvRow] 3 s2Step214ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step214ExitGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step214ExitGv_Outgoing : rowsOwned s2Step214ExitGvAfter [s2Step214ExitGvOut] :=
  hmrRows_owned_drop s2Step214ExitGvAfter [s2Step214ExitGOut,s2Step214ExitFOut,s2Step214ExitFvOut,s2Step214ExitGvOut] 3 s2Step214ExitBank_outgoingOwned

private theorem s2Step214ExitGv_distinct : (s2Step214ExitGvRow.sign::s2Step214ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step214ExitGv_owned : (s2Step214ExitGvRow.sign::s2Step214ExitGvRow.payload).toFinset⊆s2Step214ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step214ExitGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step214ExitGv_retired : s2Step214ExitGvBefore.retireSet s2Step214ExitGvExtra.toFinset=s2Step214ExitGvAfter := by
  unfold Arena.retireSet s2Step214ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step214ExitGvBefore,s2Step214ExitFAfter,s2Step214ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step214ExitGv_checked : planRowResizeLog s2Step214ExitGvBefore s2Step214ExitGvRow 121 []=
    some (s2Step214ExitGvAfter,s2Step214ExitGvOut,shrinkRow 771 s2Step214ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step214ExitGvBefore s2Step214ExitGvRow 121 s2Step214ExitGv_distinct s2Step214ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step214ExitGvRow.payload.take 121) s2Step214ExitGvRow.sign=s2Step214ExitGvOut := by decide +kernel
  have hi : s2Step214ExitGvRow.payload.drop 121=s2Step214ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step214ExitGv_retired] at result
  exact result

private theorem s2Step214ExitBank_rows : planWindowRowsLog s2Step214ExitGBefore [(s2Step214ExitGRow,162),(s2Step214ExitFRow,163),(s2Step214ExitFvRow,122),(s2Step214ExitGvRow,121)] [[],[],[],[]]=
    some (s2Step214ExitGvAfter,[s2Step214ExitGOut,s2Step214ExitFOut,s2Step214ExitFvOut,s2Step214ExitGvOut],(shrinkRow 769 s2Step214ExitGExtra ++ (shrinkRow 768 s2Step214ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step214ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step214ExitGvAfter [] []=some (s2Step214ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step214ExitGvBefore s2Step214ExitGvAfter s2Step214ExitGvAfter
    s2Step214ExitGvRow s2Step214ExitGvOut 121 [] [] [] []
    (shrinkRow 771 s2Step214ExitGvExtra) ([]) s2Step214ExitGv_Incoming s2Step214ExitGv_checked h4 s2Step214ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step214ExitFvBefore s2Step214ExitFvAfter s2Step214ExitGvAfter
    s2Step214ExitFvRow s2Step214ExitFvOut 122 [] [(s2Step214ExitGvRow,121)] [[]] [s2Step214ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step214ExitGvExtra ++ [])) s2Step214ExitFv_Incoming s2Step214ExitFv_checked h3 s2Step214ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step214ExitFBefore s2Step214ExitFAfter s2Step214ExitGvAfter
    s2Step214ExitFRow s2Step214ExitFOut 163 [] [(s2Step214ExitFvRow,122),(s2Step214ExitGvRow,121)] [[],[]] [s2Step214ExitFvOut,s2Step214ExitGvOut]
    (shrinkRow 768 s2Step214ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step214ExitGvExtra ++ []))) s2Step214ExitF_Incoming s2Step214ExitF_checked h2 s2Step214ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step214ExitGBefore s2Step214ExitGAfter s2Step214ExitGvAfter
    s2Step214ExitGRow s2Step214ExitGOut 162 [] [(s2Step214ExitFRow,163),(s2Step214ExitFvRow,122),(s2Step214ExitGvRow,121)] [[],[],[]] [s2Step214ExitFOut,s2Step214ExitFvOut,s2Step214ExitGvOut]
    (shrinkRow 769 s2Step214ExitGExtra) ((shrinkRow 768 s2Step214ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step214ExitGvExtra ++ [])))) s2Step214ExitG_Incoming s2Step214ExitG_checked h1 s2Step214ExitG_Outgoing
  exact h0

private theorem s2Step214ExitBank_checked : compileHmrBankResizeLog .exit s2Step214ExitGBefore ⟨s2Step214ExitFRow,s2Step214ExitGRow,s2Step214ExitFvRow,s2Step214ExitGvRow⟩ ⟨163,162,122,121⟩ [[],[],[],[]]=
    some (s2Step214ExitGvAfter,⟨s2Step214ExitFOut,s2Step214ExitGOut,s2Step214ExitFvOut,s2Step214ExitGvOut⟩,(shrinkRow 769 s2Step214ExitGExtra ++ (shrinkRow 768 s2Step214ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step214ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step214ExitBank_rows]
  rfl

private theorem s2Step214Add0_apart : Disjoint s2Step214Add0Arena.live s2Step214Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step214Add0Arena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step214Add0_card : s2Step214Add0Arena.live.card=889 := by
  decide +kernel

private theorem s2Step214Add0_borrowed : s2Step214Add0Arena.checkBorrow (hmrHybridCount s2Step214Add0Arena s2Step214Add0B.length) s2Step214Add0Work=some s2Step214Add0During := by
  have len : s2Step214Add0Work.length=hmrHybridCount s2Step214Add0Arena s2Step214Add0B.length := by
    rw [hmrHybridCount,s2Step214Add0_card]
    decide +kernel
  have nd : s2Step214Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step214Add0Arena s2Step214Add0During s2Step214Add0Work.toFinset s2Step214Add0_bounded s2Step214Add0_apart rfl

private theorem s2Step214Add0_distinct : (815::845::783::(s2Step214Add0A++s2Step214Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step214Add0_owned : (815::845::783::(s2Step214Add0A++s2Step214Add0B)).toFinset⊆s2Step214Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step214Add0Arena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step214Add0_checked : compileHmrHybridCinLog s2Step214Add0Arena 845 815 783 s2Step214Add0A s2Step214Add0B s2Step214Add0Work=some s2Step214Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step214Add0Arena s2Step214Add0During 845 815 783 s2Step214Add0A s2Step214Add0B s2Step214Add0Work
    (by decide +kernel) (by decide +kernel) s2Step214Add0_distinct
    (fun q hq => s2Step214Add0_owned (List.mem_toFinset.mpr hq)) s2Step214Add0_borrowed

private theorem s2Step214Add1_apart : Disjoint s2Step214Add1Arena.live s2Step214Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step214Add1Arena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step214Add1_card : s2Step214Add1Arena.live.card=889 := by
  decide +kernel

private theorem s2Step214Add1_borrowed : s2Step214Add1Arena.checkBorrow (hmrHybridCount s2Step214Add1Arena s2Step214Add1B.length) s2Step214Add1Work=some s2Step214Add1During := by
  have len : s2Step214Add1Work.length=hmrHybridCount s2Step214Add1Arena s2Step214Add1B.length := by
    rw [hmrHybridCount,s2Step214Add1_card]
    decide +kernel
  have nd : s2Step214Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step214Add1Arena s2Step214Add1During s2Step214Add1Work.toFinset s2Step214Add1_bounded s2Step214Add1_apart rfl

private theorem s2Step214Add1_distinct : (815::845::783::(s2Step214Add1A++s2Step214Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step214Add1_owned : (815::845::783::(s2Step214Add1A++s2Step214Add1B)).toFinset⊆s2Step214Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step214Add1Arena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step214Add1_checked : compileHmrHybridCinLog s2Step214Add1Arena 845 815 783 s2Step214Add1A s2Step214Add1B s2Step214Add1Work=some s2Step214Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step214Add1Arena s2Step214Add1During 845 815 783 s2Step214Add1A s2Step214Add1B s2Step214Add1Work
    (by decide +kernel) (by decide +kernel) s2Step214Add1_distinct
    (fun q hq => s2Step214Add1_owned (List.mem_toFinset.mpr hq)) s2Step214Add1_borrowed

private theorem s2Step214F4_apart : Disjoint (s2Step214Add0A++s2Step214Add0B).toFinset (s2Step214Add1A++s2Step214Add1B).toFinset := by
  have nd : ((s2Step214Add0A++s2Step214Add0B)++(s2Step214Add1A++s2Step214Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step214F4_carry : s2Step214F4FlagArena.checkBorrow 1 [783]=some s2Step214Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step214F4FlagArena,s2Step214HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step214F4FlagArena,s2Step214HeadFvAfter,s2Step214Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step214F4_distinct : (851::845::815::783::((s2Step214Add0A++s2Step214Add1A)++(s2Step214Add0B++s2Step214Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step214F4_flag : s2Step214HeadFvAfter.checkBorrow 1 [815]=some s2Step214F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step214HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step214F4_owned : (851::845::((s2Step214Add0A++s2Step214Add1A)++(s2Step214Add0B++s2Step214Add1B))).toFinset⊆s2Step214HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step214HeadFvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step214F4_checked : compileHmrHybridF4Log s2Step214HeadFvAfter 851 845 s2Step214Add0A s2Step214Add0B s2Step214Add1A s2Step214Add1B [815] [783] s2Step214Add0Work s2Step214Add1Work=some s2Step214F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step214HeadFvAfter s2Step214F4FlagArena s2Step214Add0Arena s2Step214Add0During s2Step214Add1During 851 845
    s2Step214Add0A s2Step214Add0B s2Step214Add1A s2Step214Add1B [815] [783] s2Step214Add0Work s2Step214Add1Work
    (fun q hq => s2Step214F4_owned (List.mem_toFinset.mpr hq)) s2Step214F4_flag s2Step214F4_carry
    s2Step214F4_distinct s2Step214F4_apart s2Step214Add0_checked s2Step214Add1_checked

private theorem s2Step214Front_branch : s2Step214FrontSigmaArena.checkBorrow 1 [845]=some s2Step214HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step214FrontSigmaArena,s2Step214EntryGvAfter,s2Step214EntryGAfter,arenaWires]
  · ext q
    simp only [s2Step214FrontSigmaArena,s2Step214EntryGvAfter,s2Step214EntryGAfter,s2Step214HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step214Front_entry : HmrFrontEntryValid s2Step214EntryFBefore s2Step214FrontBank 163 121 ⟨163,162,122,121⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step214FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step214EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step214EntryFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<851) ∨ (852≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step214FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step214Front_sigma : s2Step214EntryGvAfter.checkBorrow 1 [851]=some s2Step214FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step214EntryGvAfter,s2Step214EntryGAfter,arenaWires]
  · rfl

private def s2Step214HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step214HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step214HeadFBefore : Arena := s2Step214HeadGAfter

private def s2Step214HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674],768⟩

private def s2Step214HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781],770⟩

private def s2Step214HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 801],769⟩

private def s2Step214HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822],771⟩

private theorem s2Step214HeadBank_incomingDistinct : ([s2Step214HeadGRow,s2Step214HeadFRow,s2Step214HeadGvRow,s2Step214HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step214HeadF_Incoming : rowsOwned s2Step214HeadFBefore [s2Step214HeadFRow,s2Step214HeadGvRow,s2Step214HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step214HeadGRow,s2Step214HeadFRow,s2Step214HeadGvRow,s2Step214HeadFvRow] 1 s2Step214HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step214HeadFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step214HeadBank_outgoingOwned : rowsOwned s2Step214HeadFvAfter [s2Step214HeadGOut,s2Step214HeadFOut,s2Step214HeadGvOut,s2Step214HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step214HeadFvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step214HeadF_Outgoing : rowsOwned s2Step214HeadFvAfter [s2Step214HeadFOut,s2Step214HeadGvOut,s2Step214HeadFvOut] :=
  hmrRows_owned_drop s2Step214HeadFvAfter [s2Step214HeadGOut,s2Step214HeadFOut,s2Step214HeadGvOut,s2Step214HeadFvOut] 1 s2Step214HeadBank_outgoingOwned

private theorem s2Step214HeadF_distinct : (s2Step214HeadFRow.sign::s2Step214HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step214HeadF_owned : (s2Step214HeadFRow.sign::s2Step214HeadFRow.payload).toFinset⊆s2Step214HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step214HeadFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step214HeadF_reserved : s2Step214HeadFBefore.reserve s2Step214HeadFFresh.toFinset=some s2Step214HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step214HeadFFresh,arenaWires]
  · norm_num [s2Step214HeadFBefore,s2Step214HeadGAfter,s2Step214HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step214HeadFAfter,s2Step214HeadFBefore,s2Step214HeadGAfter,s2Step214HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step214HeadF_checked : planRowResizeLog s2Step214HeadFBefore s2Step214HeadFRow 164 s2Step214HeadFFresh=
    some (s2Step214HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 839],768⟩,growRow 768 s2Step214HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step214HeadFBefore s2Step214HeadFAfter s2Step214HeadFRow 164 s2Step214HeadFFresh
    s2Step214HeadF_distinct s2Step214HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step214HeadF_reserved
  have rowEq : WindowRow.mk (s2Step214HeadFRow.payload++s2Step214HeadFFresh) s2Step214HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 839],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step214HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step214HeadFvBefore : Arena := s2Step214HeadGvAfter

private theorem s2Step214HeadFv_Incoming : rowsOwned s2Step214HeadFvBefore [s2Step214HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step214HeadGRow,s2Step214HeadFRow,s2Step214HeadGvRow,s2Step214HeadFvRow] 3 s2Step214HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step214HeadFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step214HeadFv_Outgoing : rowsOwned s2Step214HeadFvAfter [s2Step214HeadFvOut] :=
  hmrRows_owned_drop s2Step214HeadFvAfter [s2Step214HeadGOut,s2Step214HeadFOut,s2Step214HeadGvOut,s2Step214HeadFvOut] 3 s2Step214HeadBank_outgoingOwned

private theorem s2Step214HeadFv_distinct : (s2Step214HeadFvRow.sign::s2Step214HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step214HeadFv_owned : (s2Step214HeadFvRow.sign::s2Step214HeadFvRow.payload).toFinset⊆s2Step214HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step214HeadFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step214HeadFv_reserved : s2Step214HeadFvBefore.reserve s2Step214HeadFvFresh.toFinset=some s2Step214HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step214HeadFvFresh,arenaWires]
  · norm_num [s2Step214HeadFvBefore,s2Step214HeadGvAfter,s2Step214HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step214HeadFvAfter,s2Step214HeadFvBefore,s2Step214HeadGvAfter,s2Step214HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step214HeadFv_checked : planRowResizeLog s2Step214HeadFvBefore s2Step214HeadFvRow 122 s2Step214HeadFvFresh=
    some (s2Step214HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791],770⟩,growRow 770 s2Step214HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step214HeadFvBefore s2Step214HeadFvAfter s2Step214HeadFvRow 122 s2Step214HeadFvFresh
    s2Step214HeadFv_distinct s2Step214HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step214HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step214HeadFvRow.payload++s2Step214HeadFvFresh) s2Step214HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step214HeadG_Incoming : rowsOwned s2Step214HeadGBefore [s2Step214HeadGRow,s2Step214HeadFRow,s2Step214HeadGvRow,s2Step214HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step214HeadGRow,s2Step214HeadFRow,s2Step214HeadGvRow,s2Step214HeadFvRow] 0 s2Step214HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step214HeadGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step214HeadG_Outgoing : rowsOwned s2Step214HeadFvAfter [s2Step214HeadGOut,s2Step214HeadFOut,s2Step214HeadGvOut,s2Step214HeadFvOut] :=
  hmrRows_owned_drop s2Step214HeadFvAfter [s2Step214HeadGOut,s2Step214HeadFOut,s2Step214HeadGvOut,s2Step214HeadFvOut] 0 s2Step214HeadBank_outgoingOwned

private theorem s2Step214HeadG_distinct : (s2Step214HeadGRow.sign::s2Step214HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step214HeadG_owned : (s2Step214HeadGRow.sign::s2Step214HeadGRow.payload).toFinset⊆s2Step214HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step214HeadGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step214HeadG_reserved : s2Step214HeadGBefore.reserve s2Step214HeadGFresh.toFinset=some s2Step214HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step214HeadGFresh,arenaWires]
  · norm_num [s2Step214HeadGBefore,s2Step214HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step214HeadGAfter,s2Step214HeadGBefore,s2Step214HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step214HeadG_checked : planRowResizeLog s2Step214HeadGBefore s2Step214HeadGRow 164 s2Step214HeadGFresh=
    some (s2Step214HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 801, 789],769⟩,growRow 769 s2Step214HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step214HeadGBefore s2Step214HeadGAfter s2Step214HeadGRow 164 s2Step214HeadGFresh
    s2Step214HeadG_distinct s2Step214HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step214HeadG_reserved
  have rowEq : WindowRow.mk (s2Step214HeadGRow.payload++s2Step214HeadGFresh) s2Step214HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 801, 789],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step214HeadGvBefore : Arena := s2Step214HeadFAfter

private theorem s2Step214HeadGv_Incoming : rowsOwned s2Step214HeadGvBefore [s2Step214HeadGvRow,s2Step214HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step214HeadGRow,s2Step214HeadFRow,s2Step214HeadGvRow,s2Step214HeadFvRow] 2 s2Step214HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step214HeadGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step214HeadGv_Outgoing : rowsOwned s2Step214HeadFvAfter [s2Step214HeadGvOut,s2Step214HeadFvOut] :=
  hmrRows_owned_drop s2Step214HeadFvAfter [s2Step214HeadGOut,s2Step214HeadFOut,s2Step214HeadGvOut,s2Step214HeadFvOut] 2 s2Step214HeadBank_outgoingOwned

private theorem s2Step214HeadGv_distinct : (s2Step214HeadGvRow.sign::s2Step214HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step214HeadGv_owned : (s2Step214HeadGvRow.sign::s2Step214HeadGvRow.payload).toFinset⊆s2Step214HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step214HeadGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step214HeadGv_reserved : s2Step214HeadGvBefore.reserve s2Step214HeadGvFresh.toFinset=some s2Step214HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step214HeadGvFresh,arenaWires]
  · norm_num [s2Step214HeadGvBefore,s2Step214HeadFAfter,s2Step214HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step214HeadGvAfter,s2Step214HeadGvBefore,s2Step214HeadFAfter,s2Step214HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step214HeadGv_checked : planRowResizeLog s2Step214HeadGvBefore s2Step214HeadGvRow 122 s2Step214HeadGvFresh=
    some (s2Step214HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 796],771⟩,growRow 771 s2Step214HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step214HeadGvBefore s2Step214HeadGvAfter s2Step214HeadGvRow 122 s2Step214HeadGvFresh
    s2Step214HeadGv_distinct s2Step214HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step214HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step214HeadGvRow.payload++s2Step214HeadGvFresh) s2Step214HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 796],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step214HeadBank_rows : planWindowRowsLog s2Step214HeadGBefore [(s2Step214HeadGRow,164),(s2Step214HeadFRow,164),(s2Step214HeadGvRow,122),(s2Step214HeadFvRow,122)] [s2Step214HeadGFresh,s2Step214HeadFFresh,s2Step214HeadGvFresh,s2Step214HeadFvFresh]=
    some (s2Step214HeadFvAfter,[s2Step214HeadGOut,s2Step214HeadFOut,s2Step214HeadGvOut,s2Step214HeadFvOut],(growRow 769 s2Step214HeadGFresh ++ (growRow 768 s2Step214HeadFFresh ++ (growRow 771 s2Step214HeadGvFresh ++ (growRow 770 s2Step214HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step214HeadFvAfter [] []=some (s2Step214HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step214HeadFvBefore s2Step214HeadFvAfter s2Step214HeadFvAfter
    s2Step214HeadFvRow s2Step214HeadFvOut 122 s2Step214HeadFvFresh [] [] []
    (growRow 770 s2Step214HeadFvFresh) ([]) s2Step214HeadFv_Incoming s2Step214HeadFv_checked h4 s2Step214HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step214HeadGvBefore s2Step214HeadGvAfter s2Step214HeadFvAfter
    s2Step214HeadGvRow s2Step214HeadGvOut 122 s2Step214HeadGvFresh [(s2Step214HeadFvRow,122)] [s2Step214HeadFvFresh] [s2Step214HeadFvOut]
    (growRow 771 s2Step214HeadGvFresh) ((growRow 770 s2Step214HeadFvFresh ++ [])) s2Step214HeadGv_Incoming s2Step214HeadGv_checked h3 s2Step214HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step214HeadFBefore s2Step214HeadFAfter s2Step214HeadFvAfter
    s2Step214HeadFRow s2Step214HeadFOut 164 s2Step214HeadFFresh [(s2Step214HeadGvRow,122),(s2Step214HeadFvRow,122)] [s2Step214HeadGvFresh,s2Step214HeadFvFresh] [s2Step214HeadGvOut,s2Step214HeadFvOut]
    (growRow 768 s2Step214HeadFFresh) ((growRow 771 s2Step214HeadGvFresh ++ (growRow 770 s2Step214HeadFvFresh ++ []))) s2Step214HeadF_Incoming s2Step214HeadF_checked h2 s2Step214HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step214HeadGBefore s2Step214HeadGAfter s2Step214HeadFvAfter
    s2Step214HeadGRow s2Step214HeadGOut 164 s2Step214HeadGFresh [(s2Step214HeadFRow,164),(s2Step214HeadGvRow,122),(s2Step214HeadFvRow,122)] [s2Step214HeadFFresh,s2Step214HeadGvFresh,s2Step214HeadFvFresh] [s2Step214HeadFOut,s2Step214HeadGvOut,s2Step214HeadFvOut]
    (growRow 769 s2Step214HeadGFresh) ((growRow 768 s2Step214HeadFFresh ++ (growRow 771 s2Step214HeadGvFresh ++ (growRow 770 s2Step214HeadFvFresh ++ [])))) s2Step214HeadG_Incoming s2Step214HeadG_checked h1 s2Step214HeadG_Outgoing
  exact h0

private theorem s2Step214HeadBank_checked : compileHmrBankResizeLog .headroom s2Step214HeadGBefore ⟨s2Step214HeadFRow,s2Step214HeadGRow,s2Step214HeadFvRow,s2Step214HeadGvRow⟩ ⟨164,164,122,122⟩ [s2Step214HeadGFresh,s2Step214HeadFFresh,s2Step214HeadGvFresh,s2Step214HeadFvFresh]=
    some (s2Step214HeadFvAfter,⟨s2Step214HeadFOut,s2Step214HeadGOut,s2Step214HeadFvOut,s2Step214HeadGvOut⟩,(growRow 769 s2Step214HeadGFresh ++ (growRow 768 s2Step214HeadFFresh ++ (growRow 771 s2Step214HeadGvFresh ++ (growRow 770 s2Step214HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step214HeadBank_rows]
  rfl

private theorem s2Step214Front_checked : compileHmrSourceFrontLog s2Step214EntryFBefore s2Step214FrontBank 163 121 ⟨163,162,122,121⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step214FrontLog=some s2Step214FrontPlan := by
  have pairEq : s2Step214FrontPair=⟨s2Step214HeadFRow,s2Step214HeadGRow,s2Step214HeadFvRow,s2Step214HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step214FrontHead=⟨s2Step214ExitFRow,s2Step214ExitGRow,s2Step214ExitFvRow,s2Step214ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step214Add0A=s2Step214FrontHead.f.wires := by decide +kernel
  have gEq : s2Step214Add0B=s2Step214FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step214Add1A=s2Step214FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step214Add1B=s2Step214FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step214EntryFBefore s2Step214FrontBank 163 121 ⟨163,162,122,121⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step214FrontLog s2Step214FrontPlan
  · exact s2Step214Front_entry
  · exact s2Step214EntryBank_checked
  · exact s2Step214Front_sigma
  · rfl
  · exact s2Step214Front_branch
  · rfl
  · simpa only [s2Step214FrontPlan,pairEq] using s2Step214HeadBank_checked
  · simpa only [s2Step214FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step214F4_checked
  · exact s2Step214Counter_checked
  · rfl
  · simpa only [s2Step214FrontPlan,headEq] using s2Step214ExitBank_checked

private theorem s2Step214Complete_explicit_checked : compileHmrEarlyStepLog s2Step214EntryFBefore s2Step214FrontBank 163 121 ⟨163,162,122,121⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step214CompleteLog=some s2Step214CompletePlan := by
  let Q := s2Step214EarlyControlPlan
  have hq := s2Step214EarlyControl_plan_checked
  have fv1 : s2Step214CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step214CompleteOut.fv.payload[2]?.getD s2Step214CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step214CompleteOut.fv.payload[3]?.getD s2Step214CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step214CompleteOut.fv.payload[4]?.getD s2Step214CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step214EntryFBefore s2Step214EarlyControlArena s2Step214FrontBank 163 121 ⟨163,162,122,121⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step214CompleteLog s2Step214FrontPlan Q
    s2Step214Front_checked s2Step214Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step214Complete_owned s2Step214Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step214EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 851 s2Step214CompleteOut.fv.second (s2Step214CompleteOut.fv.payload[2]?.getD s2Step214CompleteOut.fv.sign) (s2Step214CompleteOut.fv.payload[3]?.getD s2Step214CompleteOut.fv.sign) (s2Step214CompleteOut.fv.payload[4]?.getD s2Step214CompleteOut.fv.sign) 845 47 s2Step214EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep214Arena : Arena := s2Step214EntryFBefore
def s2PrivateStep214Bank : WindowBank := s2Step214FrontBank
def s2PrivateStep214Spec : HmrSourceWalkStepLog := ⟨163,121,⟨163,162,122,121⟩,47,.early s2Step214CompleteLog⟩
def s2PrivateStep214Plan : HmrSourceStepPlan := .early s2Step214CompletePlan
theorem s2PrivateStep214_source : s2PrivateStep214Spec=s2ObservedLogs208[6] := rfl
theorem s2PrivateStep214_checked : compileHmrSourceStepLog s2PrivateStep214Arena s2PrivateStep214Bank
    s2PrivateStep214Spec.fgWidth s2PrivateStep214Spec.vWidth s2PrivateStep214Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897]
    6 498 214 s2PrivateStep214Spec.need none s2PrivateStep214Spec.log=some s2PrivateStep214Plan := by
  change compileHmrSourceStepLog s2Step214EntryFBefore s2Step214FrontBank 163 121 ⟨163,162,122,121⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 6 498 214 47 none (.early s2Step214CompleteLog)=some (.early s2Step214CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 214<498)]
  rw [s2Step214Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
