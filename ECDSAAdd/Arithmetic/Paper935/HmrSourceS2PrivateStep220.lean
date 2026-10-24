import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep218
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

private def s2Step220CompleteMoves : List (Wire × Wire) := [(797,159)]

private def s2Step220EarlyControlLog : HmrEarlyControlLog := ⟨[797, 796, 804, 808, 801],[783],[814],[882, 826, 842, 885, 891, 894],[]⟩

private def s2Step220FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[808], [804], [796], [845]],[[], [], [], []]⟩,[798],[790],[801],[783],[814, 882, 826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[814, 882, 826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[801, 783, 814, 882]⟩

private def s2Step220CompleteLog : HmrEarlyStepLog := ⟨s2Step220FrontLog,s2Step220CompleteMoves,s2Step220EarlyControlLog⟩

private def s2Step220ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671],768⟩

private def s2Step220ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845],770⟩

private def s2Step220ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158],769⟩

private def s2Step220ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778],771⟩

private def s2Step220FrontOut : WindowBank := ⟨s2Step220ExitFOut,s2Step220ExitGOut,s2Step220ExitFvOut,s2Step220ExitGvOut⟩

private def s2Step220CompleteOut : WindowBank := s2Step220FrontOut.repacked s2Step220CompleteMoves

private def s2Step220EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step220EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step220EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step220EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step220EarlyControlPositiveArena,[783],s2Step220EarlyControlEqualityArena,[814],⟨⟨798,false⟩,[⟨⟨783,false⟩,814⟩]⟩⟩

private def s2Step220EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<895) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step220EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<895) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step220EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step220EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step220EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step220EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step220EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,797⟩,⟨⟨774,false⟩,796⟩,⟨⟨775,false⟩,804⟩,⟨⟨776,false⟩,808⟩,⟨⟨777,false⟩,801⟩]⟩

private def s2Step220EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step220EarlyControlZeroArena,s2Step220EarlyControlZeroPlan,s2Step220EarlyControlClassPlan,s2Step220EarlyControlFlagArena,s2Step220EarlyControlFittedArena,s2Step220EarlyControlHistoryArena,s2Step220EarlyControlSigmaArena,s2Step220EarlyControlOutputArena,s2Step220EarlyControlLog⟩

private def s2Step220CounterWork : List Wire := [801, 783, 814, 882]

private theorem s2Step220Counter_bounded : s2Step220CounterWork.toFinset⊆arenaWires := by norm_num [s2Step220CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step220HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step220CounterDuring : Arena := ⟨s2Step220HeadFvAfter.live∪s2Step220CounterWork.toFinset,Finset.union_subset s2Step220HeadFvAfter.bounded s2Step220Counter_bounded⟩

private def s2Step220EntryFFresh : List Wire := []

private def s2Step220EntryFvFresh : List Wire := []

private def s2Step220EntryGFresh : List Wire := []

private def s2Step220EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step220EntryGvAfter : Arena := s2Step220EntryFBefore

private def s2Step220EntryGvFresh : List Wire := []

private def s2Step220ExitFExtra : List Wire := [804]

private def s2Step220ExitGExtra : List Wire := [159, 808]

private def s2Step220ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<159) ∨ (160≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step220ExitGvExtra : List Wire := [796]

private def s2Step220Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step220Add0Work : List Wire := [814, 882, 826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step220Add0_bounded : s2Step220Add0Work.toFinset⊆arenaWires := by
  have h : s2Step220Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step220Add0During : Arena := ⟨s2Step220Add0Arena.live∪s2Step220Add0Work.toFinset,Finset.union_subset s2Step220Add0Arena.bounded s2Step220Add0_bounded⟩

private def s2Step220Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step220Add1Work : List Wire := [814, 882, 826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step220Add1_bounded : s2Step220Add1Work.toFinset⊆arenaWires := by
  have h : s2Step220Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step220Add1During : Arena := ⟨s2Step220Add1Arena.live∪s2Step220Add1Work.toFinset,Finset.union_subset s2Step220Add1Arena.bounded s2Step220Add1_bounded⟩

private def s2Step220F4FlagArena : Arena := ⟨s2Step220HeadFvAfter.live∪{801},Finset.union_subset s2Step220HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step220F4Plan : HmrHybridF4Plan := ⟨s2Step220F4FlagArena,[801],s2Step220Add0Arena,[783],s2Step220Add0During,s2Step220Add0Work,s2Step220Add1During,s2Step220Add1Work⟩

private def s2Step220HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 804],768⟩

private def s2Step220HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845],770⟩

private def s2Step220HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 808],769⟩

private def s2Step220HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 796],771⟩

private def s2Step220FrontHead : WindowBank := ⟨s2Step220HeadFOut,s2Step220HeadGOut,s2Step220HeadFvOut,s2Step220HeadGvOut⟩

private def s2Step220EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671],768⟩

private def s2Step220EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815],770⟩

private def s2Step220EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159],769⟩

private def s2Step220EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778],771⟩

private def s2Step220FrontPair : WindowBank := ⟨s2Step220EntryFOut,s2Step220EntryGOut,s2Step220EntryFvOut,s2Step220EntryGvOut⟩

private def s2Step220FrontSigmaArena : Arena := ⟨s2Step220EntryGvAfter.live∪{798},Finset.union_subset s2Step220EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step220HeadFFresh : List Wire := [804]

private def s2Step220HeadFvFresh : List Wire := [845]

private def s2Step220HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step220HeadGFresh : List Wire := [808]

private def s2Step220HeadGvFresh : List Wire := [796]

private def s2Step220FrontPlan : HmrSourceFront := ⟨s2Step220EntryGvAfter,s2Step220FrontPair,(growRow 768 s2Step220EntryFFresh ++ (growRow 769 s2Step220EntryGFresh ++ (growRow 770 s2Step220EntryFvFresh ++ (growRow 771 s2Step220EntryGvFresh ++ [])))),s2Step220FrontSigmaArena,[798],s2Step220HeadGBefore,[790],
  s2Step220HeadFvAfter,s2Step220FrontHead,(growRow 769 s2Step220HeadGFresh ++ (growRow 768 s2Step220HeadFFresh ++ (growRow 771 s2Step220HeadGvFresh ++ (growRow 770 s2Step220HeadFvFresh ++ [])))),s2Step220F4Plan,s2Step220CounterDuring,s2Step220CounterWork,s2Step220ExitGvAfter,s2Step220FrontOut,(shrinkRow 769 s2Step220ExitGExtra ++ (shrinkRow 768 s2Step220ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step220ExitGvExtra ++ []))))⟩

private def s2Step220CompletePlan : HmrEarlyStepPlan := ⟨s2Step220FrontPlan,s2Step220EarlyControlArena,s2Step220EarlyControlPlan,s2Step220CompleteMoves⟩

private theorem s2Step220Complete_apart : List.Disjoint (s2Step220CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [798, 790, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] := by
  have nd : ((s2Step220CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[798, 790, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step220Complete_owned : (s2Step220CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step220EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step220EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private def s2Step220CompleteMoveArena : Arena := ⟨s2Step220ExitGvAfter.live∪{159},Finset.union_subset s2Step220ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step220Complete_repack : s2Step220ExitGvAfter.checkRepack s2Step220CompleteMoves=some s2Step220EarlyControlArena := by
  have owned : 797∈s2Step220ExitGvAfter.live := by norm_num [s2Step220ExitGvAfter,arenaWires]
  have reserve : s2Step220ExitGvAfter.reserve {159}=some s2Step220CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step220ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step220CompleteMoveArena.retireSet {797}=s2Step220EarlyControlArena := by
    unfold Arena.retireSet s2Step220EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step220CompleteMoveArena,s2Step220ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step220CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step220CompleteMoveArena.retireSet {797}).checkRepack []=some s2Step220EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step220EarlyControl_branchOwned : ([790] : List Wire).toFinset⊆s2Step220EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step220EarlyControlSigmaArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step220EarlyControl_branch : compileHmrBranchRetirement s2Step220EarlyControlSigmaArena 790=some s2Step220EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step220EarlyControl_branchOwned
  · ext q
    simp [s2Step220EarlyControlOutputArena,s2Step220EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step220EarlyControl_classEqualityBorrow : s2Step220EarlyControlPositiveArena.checkBorrow (([798, 783] : List Wire).length-1) s2Step220EarlyControlLog.classWork=some s2Step220EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step220EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step220EarlyControlPositiveArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step220EarlyControlEqualityArena,s2Step220EarlyControlPositiveArena,s2Step220EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step220EarlyControl_classEqualityOwned : ([798, 783] : List Wire).toFinset⊆s2Step220EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step220EarlyControlPositiveArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step220EarlyControl_classEquality : compileHmrEqualityLog s2Step220EarlyControlPositiveArena [798, 783] 0 s2Step220EarlyControlLog.classWork=some (s2Step220EarlyControlEqualityArena,s2Step220EarlyControlLog.classWork,s2Step220EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step220EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step220EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step220EarlyControl_classOwned : ([777, 801, 798] : List Wire).toFinset⊆s2Step220EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step220EarlyControlZeroArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step220EarlyControl_positiveBorrow : s2Step220EarlyControlZeroArena.checkBorrow (1) s2Step220EarlyControlLog.positiveWork=some s2Step220EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step220EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step220EarlyControlZeroArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step220EarlyControlPositiveArena,s2Step220EarlyControlZeroArena,s2Step220EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step220EarlyControl_class : compileHmrSourceClassLog s2Step220EarlyControlZeroArena false 777 s2Step220EarlyControlZeroPlan.top 0 798 s2Step220EarlyControlLog.positiveWork s2Step220EarlyControlLog.classWork=some s2Step220EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step220EarlyControlClassPlan s2Step220EarlyControlZeroArena false 777 s2Step220EarlyControlZeroPlan.top 0 798
  constructor
  · decide +kernel
  · exact s2Step220EarlyControl_classOwned
  · exact s2Step220EarlyControl_positiveBorrow
  · exact s2Step220EarlyControl_classEquality

private theorem s2Step220EarlyControl_entryRecordOwned : ([790, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step220EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step220EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step220EarlyControl_entrySigmaOwned : ([798, 254] : List Wire).toFinset⊆s2Step220EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step220EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step220EarlyControl_fitBorrow : s2Step220EarlyControlFlagArena.checkBorrow ((47-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).length)) s2Step220EarlyControlLog.recordFresh=some s2Step220EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step220EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step220EarlyControlFlagArena (fun q => (0≤q ∧ q<895) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step220EarlyControlFittedArena,s2Step220EarlyControlFlagArena,s2Step220EarlyControlLog,arenaWires]

private theorem s2Step220EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step220EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step220EarlyControlFlagArena (fun q => (0≤q ∧ q<895) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step220EarlyControl_fit : compileHmrRecordGrowLog s2Step220EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step220EarlyControlLog.recordFresh=some s2Step220EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step220EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step220EarlyControl_fitBorrow

private theorem s2Step220EarlyControl_flagsBorrow : s2Step220EarlyControlEqualityArena.checkBorrow (6) s2Step220EarlyControlLog.flagWork=some s2Step220EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step220EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step220EarlyControlEqualityArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step220EarlyControlFlagArena,s2Step220EarlyControlEqualityArena,s2Step220EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step220EarlyControl_flagsOwned : ([814, 253, 252, 251] : List Wire).toFinset⊆s2Step220EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step220EarlyControlEqualityArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step220EarlyControl_flags : compileHmrFlagsLog s2Step220EarlyControlClassPlan.equalityArena s2Step220EarlyControlClassPlan.equality.top 253 252 251 s2Step220EarlyControlLog.flagWork=some s2Step220EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step220EarlyControl_flagsOwned⟩
  · exact s2Step220EarlyControl_flagsBorrow

private theorem s2Step220EarlyControl_historyBorrow : s2Step220EarlyControlArena.checkBorrow ((47-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).length)) s2Step220EarlyControlLog.recordFresh=some s2Step220EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step220EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step220EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step220EarlyControlHistoryArena,s2Step220EarlyControlArena,s2Step220EarlyControlLog,arenaWires]

private theorem s2Step220EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step220EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step220EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step220EarlyControl_history : compileHmrRecordGrowLog s2Step220EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step220EarlyControlLog.recordFresh=some s2Step220EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step220EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step220EarlyControl_historyBorrow

private theorem s2Step220EarlyControl_sigmaOwned : ([254, 798] : List Wire).toFinset⊆s2Step220EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step220EarlyControlHistoryArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step220EarlyControl_sigmaReleaseOwned : ([798] : List Wire).toFinset⊆s2Step220EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step220EarlyControlHistoryArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step220EarlyControl_sigmaRelease : s2Step220EarlyControlHistoryArena.release {798} (fun _ => false)=some s2Step220EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step220EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step220EarlyControlSigmaArena,s2Step220EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step220EarlyControl_sigma : compileHmrSigmaDropLog s2Step220EarlyControlHistoryArena false 0 0 254 798 []=some s2Step220EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step220EarlyControl_sigmaOwned⟩
  · exact s2Step220EarlyControl_sigmaRelease

private theorem s2Step220EarlyControl_zeroBorrow : s2Step220EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step220EarlyControlLog.zeroWork=some s2Step220EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step220EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step220EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step220EarlyControlZeroArena,s2Step220EarlyControlArena,s2Step220EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step220EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step220EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step220EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step220EarlyControl_zero : compileHmrEqualityLog s2Step220EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step220EarlyControlLog.zeroWork=some (s2Step220EarlyControlZeroArena,s2Step220EarlyControlLog.zeroWork,s2Step220EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step220EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step220EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step220EarlyControl_logged : s2Step220EarlyControlPlan.Logged s2Step220EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 798 254 253 252 251 790 47 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step220EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step220EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step220EarlyControl_zero
  · exact s2Step220EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step220EarlyControl_flags
  · exact s2Step220EarlyControl_fit
  · exact s2Step220EarlyControl_history
  · exact s2Step220EarlyControl_sigma
  · exact s2Step220EarlyControl_branch

private theorem s2Step220EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step220EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 798 254 253 252 251 790 47 s2Step220EarlyControlLog=some s2Step220EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step220EarlyControlPlan s2Step220EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 798 254 253 252 251 790 47 s2Step220EarlyControl_logged

private def s2Step220EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671],768⟩

private def s2Step220EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815],770⟩

private def s2Step220EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159],769⟩

private def s2Step220EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778],771⟩

private def s2Step220FrontBank : WindowBank := ⟨s2Step220EntryFRow,s2Step220EntryGRow,s2Step220EntryFvRow,s2Step220EntryGvRow⟩

private def s2Step220Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 804, 768]

private def s2Step220Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 808, 769]

private def s2Step220Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 770]

private def s2Step220Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 796, 771]

private theorem s2Step220Counter_apart : Disjoint s2Step220HeadFvAfter.live s2Step220CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step220HeadFvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step220Counter_borrowed : s2Step220HeadFvAfter.checkBorrow 4 s2Step220CounterWork=some s2Step220CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step220HeadFvAfter s2Step220CounterDuring s2Step220CounterWork.toFinset s2Step220Counter_bounded s2Step220Counter_apart rfl

private theorem s2Step220Counter_owned : (798::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step220HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step220HeadFvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step220Counter_checked : compileHmrCounterStepLog s2Step220HeadFvAfter true 798 [772, 773, 774, 775, 776, 777] s2Step220CounterWork=some s2Step220CounterDuring := by
  have owned : ∀q∈798::[772, 773, 774, 775, 776, 777],q∈s2Step220HeadFvAfter.live := fun q hq => s2Step220Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step220Counter_borrowed

private def s2Step220EntryFAfter : Arena := s2Step220EntryFBefore

private theorem s2Step220EntryBank_incomingDistinct : ([s2Step220EntryFRow,s2Step220EntryGRow,s2Step220EntryFvRow,s2Step220EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step220EntryF_Incoming : rowsOwned s2Step220EntryFBefore [s2Step220EntryFRow,s2Step220EntryGRow,s2Step220EntryFvRow,s2Step220EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step220EntryFRow,s2Step220EntryGRow,s2Step220EntryFvRow,s2Step220EntryGvRow] 0 s2Step220EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step220EntryFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step220EntryBank_outgoingOwned : rowsOwned s2Step220EntryGvAfter [s2Step220EntryFOut,s2Step220EntryGOut,s2Step220EntryFvOut,s2Step220EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step220EntryGvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step220EntryF_Outgoing : rowsOwned s2Step220EntryGvAfter [s2Step220EntryFOut,s2Step220EntryGOut,s2Step220EntryFvOut,s2Step220EntryGvOut] :=
  hmrRows_owned_drop s2Step220EntryGvAfter [s2Step220EntryFOut,s2Step220EntryGOut,s2Step220EntryFvOut,s2Step220EntryGvOut] 0 s2Step220EntryBank_outgoingOwned

private theorem s2Step220EntryF_distinct : (s2Step220EntryFRow.sign::s2Step220EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step220EntryF_owned : (s2Step220EntryFRow.sign::s2Step220EntryFRow.payload).toFinset⊆s2Step220EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step220EntryFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step220EntryF_reserved : s2Step220EntryFBefore.reserve s2Step220EntryFFresh.toFinset=some s2Step220EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step220EntryFFresh,arenaWires]
  · norm_num [s2Step220EntryFBefore,s2Step220EntryFFresh,arenaWires]
  · simp only [s2Step220EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step220EntryF_checked : planRowResizeLog s2Step220EntryFBefore s2Step220EntryFRow 160 s2Step220EntryFFresh=
    some (s2Step220EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671],768⟩,growRow 768 s2Step220EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step220EntryFBefore s2Step220EntryFAfter s2Step220EntryFRow 160 s2Step220EntryFFresh
    s2Step220EntryF_distinct s2Step220EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step220EntryF_reserved
  have rowEq : WindowRow.mk (s2Step220EntryFRow.payload++s2Step220EntryFFresh) s2Step220EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step220EntryFvAfter : Arena := s2Step220EntryFBefore

private def s2Step220EntryFvBefore : Arena := s2Step220EntryFBefore

private theorem s2Step220EntryFv_Incoming : rowsOwned s2Step220EntryFvBefore [s2Step220EntryFvRow,s2Step220EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step220EntryFRow,s2Step220EntryGRow,s2Step220EntryFvRow,s2Step220EntryGvRow] 2 s2Step220EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step220EntryFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step220EntryFv_Outgoing : rowsOwned s2Step220EntryGvAfter [s2Step220EntryFvOut,s2Step220EntryGvOut] :=
  hmrRows_owned_drop s2Step220EntryGvAfter [s2Step220EntryFOut,s2Step220EntryGOut,s2Step220EntryFvOut,s2Step220EntryGvOut] 2 s2Step220EntryBank_outgoingOwned

private theorem s2Step220EntryFv_distinct : (s2Step220EntryFvRow.sign::s2Step220EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step220EntryFv_owned : (s2Step220EntryFvRow.sign::s2Step220EntryFvRow.payload).toFinset⊆s2Step220EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step220EntryFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step220EntryFv_reserved : s2Step220EntryFvBefore.reserve s2Step220EntryFvFresh.toFinset=some s2Step220EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step220EntryFvFresh,arenaWires]
  · norm_num [s2Step220EntryFvBefore,s2Step220EntryFBefore,s2Step220EntryFvFresh,arenaWires]
  · simp only [s2Step220EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step220EntryFv_checked : planRowResizeLog s2Step220EntryFvBefore s2Step220EntryFvRow 124 s2Step220EntryFvFresh=
    some (s2Step220EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815],770⟩,growRow 770 s2Step220EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step220EntryFvBefore s2Step220EntryFvAfter s2Step220EntryFvRow 124 s2Step220EntryFvFresh
    s2Step220EntryFv_distinct s2Step220EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step220EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step220EntryFvRow.payload++s2Step220EntryFvFresh) s2Step220EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step220EntryGAfter : Arena := s2Step220EntryFBefore

private def s2Step220EntryGBefore : Arena := s2Step220EntryFBefore

private theorem s2Step220EntryG_Incoming : rowsOwned s2Step220EntryGBefore [s2Step220EntryGRow,s2Step220EntryFvRow,s2Step220EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step220EntryFRow,s2Step220EntryGRow,s2Step220EntryFvRow,s2Step220EntryGvRow] 1 s2Step220EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step220EntryGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step220EntryG_Outgoing : rowsOwned s2Step220EntryGvAfter [s2Step220EntryGOut,s2Step220EntryFvOut,s2Step220EntryGvOut] :=
  hmrRows_owned_drop s2Step220EntryGvAfter [s2Step220EntryFOut,s2Step220EntryGOut,s2Step220EntryFvOut,s2Step220EntryGvOut] 1 s2Step220EntryBank_outgoingOwned

private theorem s2Step220EntryG_distinct : (s2Step220EntryGRow.sign::s2Step220EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step220EntryG_owned : (s2Step220EntryGRow.sign::s2Step220EntryGRow.payload).toFinset⊆s2Step220EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step220EntryGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step220EntryG_reserved : s2Step220EntryGBefore.reserve s2Step220EntryGFresh.toFinset=some s2Step220EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step220EntryGFresh,arenaWires]
  · norm_num [s2Step220EntryGBefore,s2Step220EntryFBefore,s2Step220EntryGFresh,arenaWires]
  · simp only [s2Step220EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step220EntryG_checked : planRowResizeLog s2Step220EntryGBefore s2Step220EntryGRow 160 s2Step220EntryGFresh=
    some (s2Step220EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159],769⟩,growRow 769 s2Step220EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step220EntryGBefore s2Step220EntryGAfter s2Step220EntryGRow 160 s2Step220EntryGFresh
    s2Step220EntryG_distinct s2Step220EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step220EntryG_reserved
  have rowEq : WindowRow.mk (s2Step220EntryGRow.payload++s2Step220EntryGFresh) s2Step220EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step220EntryGvBefore : Arena := s2Step220EntryFBefore

private theorem s2Step220EntryGv_Incoming : rowsOwned s2Step220EntryGvBefore [s2Step220EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step220EntryFRow,s2Step220EntryGRow,s2Step220EntryFvRow,s2Step220EntryGvRow] 3 s2Step220EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step220EntryGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step220EntryGv_Outgoing : rowsOwned s2Step220EntryGvAfter [s2Step220EntryGvOut] :=
  hmrRows_owned_drop s2Step220EntryGvAfter [s2Step220EntryFOut,s2Step220EntryGOut,s2Step220EntryFvOut,s2Step220EntryGvOut] 3 s2Step220EntryBank_outgoingOwned

private theorem s2Step220EntryGv_distinct : (s2Step220EntryGvRow.sign::s2Step220EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step220EntryGv_owned : (s2Step220EntryGvRow.sign::s2Step220EntryGvRow.payload).toFinset⊆s2Step220EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step220EntryGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step220EntryGv_reserved : s2Step220EntryGvBefore.reserve s2Step220EntryGvFresh.toFinset=some s2Step220EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step220EntryGvFresh,arenaWires]
  · norm_num [s2Step220EntryGvBefore,s2Step220EntryFBefore,s2Step220EntryGvFresh,arenaWires]
  · simp only [s2Step220EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step220EntryGv_checked : planRowResizeLog s2Step220EntryGvBefore s2Step220EntryGvRow 124 s2Step220EntryGvFresh=
    some (s2Step220EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778],771⟩,growRow 771 s2Step220EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step220EntryGvBefore s2Step220EntryGvAfter s2Step220EntryGvRow 124 s2Step220EntryGvFresh
    s2Step220EntryGv_distinct s2Step220EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step220EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step220EntryGvRow.payload++s2Step220EntryGvFresh) s2Step220EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step220EntryBank_rows : planWindowRowsLog s2Step220EntryFBefore [(s2Step220EntryFRow,160),(s2Step220EntryGRow,160),(s2Step220EntryFvRow,124),(s2Step220EntryGvRow,124)] [s2Step220EntryFFresh,s2Step220EntryGFresh,s2Step220EntryFvFresh,s2Step220EntryGvFresh]=
    some (s2Step220EntryGvAfter,[s2Step220EntryFOut,s2Step220EntryGOut,s2Step220EntryFvOut,s2Step220EntryGvOut],(growRow 768 s2Step220EntryFFresh ++ (growRow 769 s2Step220EntryGFresh ++ (growRow 770 s2Step220EntryFvFresh ++ (growRow 771 s2Step220EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step220EntryGvAfter [] []=some (s2Step220EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step220EntryGvBefore s2Step220EntryGvAfter s2Step220EntryGvAfter
    s2Step220EntryGvRow s2Step220EntryGvOut 124 s2Step220EntryGvFresh [] [] []
    (growRow 771 s2Step220EntryGvFresh) ([]) s2Step220EntryGv_Incoming s2Step220EntryGv_checked h4 s2Step220EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step220EntryFvBefore s2Step220EntryFvAfter s2Step220EntryGvAfter
    s2Step220EntryFvRow s2Step220EntryFvOut 124 s2Step220EntryFvFresh [(s2Step220EntryGvRow,124)] [s2Step220EntryGvFresh] [s2Step220EntryGvOut]
    (growRow 770 s2Step220EntryFvFresh) ((growRow 771 s2Step220EntryGvFresh ++ [])) s2Step220EntryFv_Incoming s2Step220EntryFv_checked h3 s2Step220EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step220EntryGBefore s2Step220EntryGAfter s2Step220EntryGvAfter
    s2Step220EntryGRow s2Step220EntryGOut 160 s2Step220EntryGFresh [(s2Step220EntryFvRow,124),(s2Step220EntryGvRow,124)] [s2Step220EntryFvFresh,s2Step220EntryGvFresh] [s2Step220EntryFvOut,s2Step220EntryGvOut]
    (growRow 769 s2Step220EntryGFresh) ((growRow 770 s2Step220EntryFvFresh ++ (growRow 771 s2Step220EntryGvFresh ++ []))) s2Step220EntryG_Incoming s2Step220EntryG_checked h2 s2Step220EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step220EntryFBefore s2Step220EntryFAfter s2Step220EntryGvAfter
    s2Step220EntryFRow s2Step220EntryFOut 160 s2Step220EntryFFresh [(s2Step220EntryGRow,160),(s2Step220EntryFvRow,124),(s2Step220EntryGvRow,124)] [s2Step220EntryGFresh,s2Step220EntryFvFresh,s2Step220EntryGvFresh] [s2Step220EntryGOut,s2Step220EntryFvOut,s2Step220EntryGvOut]
    (growRow 768 s2Step220EntryFFresh) ((growRow 769 s2Step220EntryGFresh ++ (growRow 770 s2Step220EntryFvFresh ++ (growRow 771 s2Step220EntryGvFresh ++ [])))) s2Step220EntryF_Incoming s2Step220EntryF_checked h1 s2Step220EntryF_Outgoing
  exact h0

private theorem s2Step220EntryBank_checked : compileHmrBankResizeLog .entry s2Step220EntryFBefore ⟨s2Step220EntryFRow,s2Step220EntryGRow,s2Step220EntryFvRow,s2Step220EntryGvRow⟩ ⟨160,160,124,124⟩ [s2Step220EntryFFresh,s2Step220EntryGFresh,s2Step220EntryFvFresh,s2Step220EntryGvFresh]=
    some (s2Step220EntryGvAfter,⟨s2Step220EntryFOut,s2Step220EntryGOut,s2Step220EntryFvOut,s2Step220EntryGvOut⟩,(growRow 768 s2Step220EntryFFresh ++ (growRow 769 s2Step220EntryGFresh ++ (growRow 770 s2Step220EntryFvFresh ++ (growRow 771 s2Step220EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step220EntryBank_rows]
  rfl

private def s2Step220ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<159) ∨ (160≤q ∧ q<783) ∨ (784≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step220ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<159) ∨ (160≤q ∧ q<783) ∨ (784≤q ∧ q<801) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step220ExitFBefore : Arena := s2Step220ExitGAfter

private def s2Step220ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 804],768⟩

private def s2Step220ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845],770⟩

private def s2Step220ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 808],769⟩

private def s2Step220ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 796],771⟩

private theorem s2Step220ExitBank_incomingDistinct : ([s2Step220ExitGRow,s2Step220ExitFRow,s2Step220ExitFvRow,s2Step220ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step220ExitF_Incoming : rowsOwned s2Step220ExitFBefore [s2Step220ExitFRow,s2Step220ExitFvRow,s2Step220ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step220ExitGRow,s2Step220ExitFRow,s2Step220ExitFvRow,s2Step220ExitGvRow] 1 s2Step220ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step220ExitFBefore (fun q => (0≤q ∧ q<159) ∨ (160≤q ∧ q<783) ∨ (784≤q ∧ q<801) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step220ExitBank_outgoingOwned : rowsOwned s2Step220ExitGvAfter [s2Step220ExitGOut,s2Step220ExitFOut,s2Step220ExitFvOut,s2Step220ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step220ExitGvAfter (fun q => (0≤q ∧ q<159) ∨ (160≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step220ExitF_Outgoing : rowsOwned s2Step220ExitGvAfter [s2Step220ExitFOut,s2Step220ExitFvOut,s2Step220ExitGvOut] :=
  hmrRows_owned_drop s2Step220ExitGvAfter [s2Step220ExitGOut,s2Step220ExitFOut,s2Step220ExitFvOut,s2Step220ExitGvOut] 1 s2Step220ExitBank_outgoingOwned

private theorem s2Step220ExitF_distinct : (s2Step220ExitFRow.sign::s2Step220ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step220ExitF_owned : (s2Step220ExitFRow.sign::s2Step220ExitFRow.payload).toFinset⊆s2Step220ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step220ExitFBefore (fun q => (0≤q ∧ q<159) ∨ (160≤q ∧ q<783) ∨ (784≤q ∧ q<801) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step220ExitF_retired : s2Step220ExitFBefore.retireSet s2Step220ExitFExtra.toFinset=s2Step220ExitFAfter := by
  unfold Arena.retireSet s2Step220ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step220ExitFBefore,s2Step220ExitGAfter,s2Step220ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step220ExitF_checked : planRowResizeLog s2Step220ExitFBefore s2Step220ExitFRow 160 []=
    some (s2Step220ExitFAfter,s2Step220ExitFOut,shrinkRow 768 s2Step220ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step220ExitFBefore s2Step220ExitFRow 160 s2Step220ExitF_distinct s2Step220ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step220ExitFRow.payload.take 160) s2Step220ExitFRow.sign=s2Step220ExitFOut := by decide +kernel
  have hi : s2Step220ExitFRow.payload.drop 160=s2Step220ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step220ExitF_retired] at result
  exact result

private def s2Step220ExitFvAfter : Arena := s2Step220ExitFAfter

private def s2Step220ExitFvBefore : Arena := s2Step220ExitFAfter

private theorem s2Step220ExitFv_Incoming : rowsOwned s2Step220ExitFvBefore [s2Step220ExitFvRow,s2Step220ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step220ExitGRow,s2Step220ExitFRow,s2Step220ExitFvRow,s2Step220ExitGvRow] 2 s2Step220ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step220ExitFvBefore (fun q => (0≤q ∧ q<159) ∨ (160≤q ∧ q<783) ∨ (784≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step220ExitFv_Outgoing : rowsOwned s2Step220ExitGvAfter [s2Step220ExitFvOut,s2Step220ExitGvOut] :=
  hmrRows_owned_drop s2Step220ExitGvAfter [s2Step220ExitGOut,s2Step220ExitFOut,s2Step220ExitFvOut,s2Step220ExitGvOut] 2 s2Step220ExitBank_outgoingOwned

private theorem s2Step220ExitFv_distinct : (s2Step220ExitFvRow.sign::s2Step220ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step220ExitFv_owned : (s2Step220ExitFvRow.sign::s2Step220ExitFvRow.payload).toFinset⊆s2Step220ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step220ExitFvBefore (fun q => (0≤q ∧ q<159) ∨ (160≤q ∧ q<783) ∨ (784≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step220ExitFv_reserved : s2Step220ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step220ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step220ExitFv_checked : planRowResizeLog s2Step220ExitFvBefore s2Step220ExitFvRow 125 []=
    some (s2Step220ExitFvAfter,s2Step220ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step220ExitFvBefore s2Step220ExitFvAfter s2Step220ExitFvRow 125 []
    s2Step220ExitFv_distinct s2Step220ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step220ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step220ExitFvRow.payload++[]) s2Step220ExitFvRow.sign=s2Step220ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step220ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private theorem s2Step220ExitG_Incoming : rowsOwned s2Step220ExitGBefore [s2Step220ExitGRow,s2Step220ExitFRow,s2Step220ExitFvRow,s2Step220ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step220ExitGRow,s2Step220ExitFRow,s2Step220ExitFvRow,s2Step220ExitGvRow] 0 s2Step220ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step220ExitGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step220ExitG_Outgoing : rowsOwned s2Step220ExitGvAfter [s2Step220ExitGOut,s2Step220ExitFOut,s2Step220ExitFvOut,s2Step220ExitGvOut] :=
  hmrRows_owned_drop s2Step220ExitGvAfter [s2Step220ExitGOut,s2Step220ExitFOut,s2Step220ExitFvOut,s2Step220ExitGvOut] 0 s2Step220ExitBank_outgoingOwned

private theorem s2Step220ExitG_distinct : (s2Step220ExitGRow.sign::s2Step220ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step220ExitG_owned : (s2Step220ExitGRow.sign::s2Step220ExitGRow.payload).toFinset⊆s2Step220ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step220ExitGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step220ExitG_retired : s2Step220ExitGBefore.retireSet s2Step220ExitGExtra.toFinset=s2Step220ExitGAfter := by
  unfold Arena.retireSet s2Step220ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step220ExitGBefore,s2Step220ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step220ExitG_checked : planRowResizeLog s2Step220ExitGBefore s2Step220ExitGRow 159 []=
    some (s2Step220ExitGAfter,s2Step220ExitGOut,shrinkRow 769 s2Step220ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step220ExitGBefore s2Step220ExitGRow 159 s2Step220ExitG_distinct s2Step220ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step220ExitGRow.payload.take 159) s2Step220ExitGRow.sign=s2Step220ExitGOut := by decide +kernel
  have hi : s2Step220ExitGRow.payload.drop 159=s2Step220ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step220ExitG_retired] at result
  exact result

private def s2Step220ExitGvBefore : Arena := s2Step220ExitFAfter

private theorem s2Step220ExitGv_Incoming : rowsOwned s2Step220ExitGvBefore [s2Step220ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step220ExitGRow,s2Step220ExitFRow,s2Step220ExitFvRow,s2Step220ExitGvRow] 3 s2Step220ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step220ExitGvBefore (fun q => (0≤q ∧ q<159) ∨ (160≤q ∧ q<783) ∨ (784≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step220ExitGv_Outgoing : rowsOwned s2Step220ExitGvAfter [s2Step220ExitGvOut] :=
  hmrRows_owned_drop s2Step220ExitGvAfter [s2Step220ExitGOut,s2Step220ExitFOut,s2Step220ExitFvOut,s2Step220ExitGvOut] 3 s2Step220ExitBank_outgoingOwned

private theorem s2Step220ExitGv_distinct : (s2Step220ExitGvRow.sign::s2Step220ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step220ExitGv_owned : (s2Step220ExitGvRow.sign::s2Step220ExitGvRow.payload).toFinset⊆s2Step220ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step220ExitGvBefore (fun q => (0≤q ∧ q<159) ∨ (160≤q ∧ q<783) ∨ (784≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step220ExitGv_retired : s2Step220ExitGvBefore.retireSet s2Step220ExitGvExtra.toFinset=s2Step220ExitGvAfter := by
  unfold Arena.retireSet s2Step220ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step220ExitGvBefore,s2Step220ExitFAfter,s2Step220ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step220ExitGv_checked : planRowResizeLog s2Step220ExitGvBefore s2Step220ExitGvRow 124 []=
    some (s2Step220ExitGvAfter,s2Step220ExitGvOut,shrinkRow 771 s2Step220ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step220ExitGvBefore s2Step220ExitGvRow 124 s2Step220ExitGv_distinct s2Step220ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step220ExitGvRow.payload.take 124) s2Step220ExitGvRow.sign=s2Step220ExitGvOut := by decide +kernel
  have hi : s2Step220ExitGvRow.payload.drop 124=s2Step220ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step220ExitGv_retired] at result
  exact result

private theorem s2Step220ExitBank_rows : planWindowRowsLog s2Step220ExitGBefore [(s2Step220ExitGRow,159),(s2Step220ExitFRow,160),(s2Step220ExitFvRow,125),(s2Step220ExitGvRow,124)] [[],[],[],[]]=
    some (s2Step220ExitGvAfter,[s2Step220ExitGOut,s2Step220ExitFOut,s2Step220ExitFvOut,s2Step220ExitGvOut],(shrinkRow 769 s2Step220ExitGExtra ++ (shrinkRow 768 s2Step220ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step220ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step220ExitGvAfter [] []=some (s2Step220ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step220ExitGvBefore s2Step220ExitGvAfter s2Step220ExitGvAfter
    s2Step220ExitGvRow s2Step220ExitGvOut 124 [] [] [] []
    (shrinkRow 771 s2Step220ExitGvExtra) ([]) s2Step220ExitGv_Incoming s2Step220ExitGv_checked h4 s2Step220ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step220ExitFvBefore s2Step220ExitFvAfter s2Step220ExitGvAfter
    s2Step220ExitFvRow s2Step220ExitFvOut 125 [] [(s2Step220ExitGvRow,124)] [[]] [s2Step220ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step220ExitGvExtra ++ [])) s2Step220ExitFv_Incoming s2Step220ExitFv_checked h3 s2Step220ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step220ExitFBefore s2Step220ExitFAfter s2Step220ExitGvAfter
    s2Step220ExitFRow s2Step220ExitFOut 160 [] [(s2Step220ExitFvRow,125),(s2Step220ExitGvRow,124)] [[],[]] [s2Step220ExitFvOut,s2Step220ExitGvOut]
    (shrinkRow 768 s2Step220ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step220ExitGvExtra ++ []))) s2Step220ExitF_Incoming s2Step220ExitF_checked h2 s2Step220ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step220ExitGBefore s2Step220ExitGAfter s2Step220ExitGvAfter
    s2Step220ExitGRow s2Step220ExitGOut 159 [] [(s2Step220ExitFRow,160),(s2Step220ExitFvRow,125),(s2Step220ExitGvRow,124)] [[],[],[]] [s2Step220ExitFOut,s2Step220ExitFvOut,s2Step220ExitGvOut]
    (shrinkRow 769 s2Step220ExitGExtra) ((shrinkRow 768 s2Step220ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step220ExitGvExtra ++ [])))) s2Step220ExitG_Incoming s2Step220ExitG_checked h1 s2Step220ExitG_Outgoing
  exact h0

private theorem s2Step220ExitBank_checked : compileHmrBankResizeLog .exit s2Step220ExitGBefore ⟨s2Step220ExitFRow,s2Step220ExitGRow,s2Step220ExitFvRow,s2Step220ExitGvRow⟩ ⟨160,159,125,124⟩ [[],[],[],[]]=
    some (s2Step220ExitGvAfter,⟨s2Step220ExitFOut,s2Step220ExitGOut,s2Step220ExitFvOut,s2Step220ExitGvOut⟩,(shrinkRow 769 s2Step220ExitGExtra ++ (shrinkRow 768 s2Step220ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step220ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step220ExitBank_rows]
  rfl

private theorem s2Step220Add0_apart : Disjoint s2Step220Add0Arena.live s2Step220Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step220Add0Arena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step220Add0_card : s2Step220Add0Arena.live.card=889 := by
  decide +kernel

private theorem s2Step220Add0_borrowed : s2Step220Add0Arena.checkBorrow (hmrHybridCount s2Step220Add0Arena s2Step220Add0B.length) s2Step220Add0Work=some s2Step220Add0During := by
  have len : s2Step220Add0Work.length=hmrHybridCount s2Step220Add0Arena s2Step220Add0B.length := by
    rw [hmrHybridCount,s2Step220Add0_card]
    decide +kernel
  have nd : s2Step220Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step220Add0Arena s2Step220Add0During s2Step220Add0Work.toFinset s2Step220Add0_bounded s2Step220Add0_apart rfl

private theorem s2Step220Add0_distinct : (801::790::783::(s2Step220Add0A++s2Step220Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step220Add0_owned : (801::790::783::(s2Step220Add0A++s2Step220Add0B)).toFinset⊆s2Step220Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step220Add0Arena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step220Add0_checked : compileHmrHybridCinLog s2Step220Add0Arena 790 801 783 s2Step220Add0A s2Step220Add0B s2Step220Add0Work=some s2Step220Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step220Add0Arena s2Step220Add0During 790 801 783 s2Step220Add0A s2Step220Add0B s2Step220Add0Work
    (by decide +kernel) (by decide +kernel) s2Step220Add0_distinct
    (fun q hq => s2Step220Add0_owned (List.mem_toFinset.mpr hq)) s2Step220Add0_borrowed

private theorem s2Step220Add1_apart : Disjoint s2Step220Add1Arena.live s2Step220Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step220Add1Arena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step220Add1_card : s2Step220Add1Arena.live.card=889 := by
  decide +kernel

private theorem s2Step220Add1_borrowed : s2Step220Add1Arena.checkBorrow (hmrHybridCount s2Step220Add1Arena s2Step220Add1B.length) s2Step220Add1Work=some s2Step220Add1During := by
  have len : s2Step220Add1Work.length=hmrHybridCount s2Step220Add1Arena s2Step220Add1B.length := by
    rw [hmrHybridCount,s2Step220Add1_card]
    decide +kernel
  have nd : s2Step220Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step220Add1Arena s2Step220Add1During s2Step220Add1Work.toFinset s2Step220Add1_bounded s2Step220Add1_apart rfl

private theorem s2Step220Add1_distinct : (801::790::783::(s2Step220Add1A++s2Step220Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step220Add1_owned : (801::790::783::(s2Step220Add1A++s2Step220Add1B)).toFinset⊆s2Step220Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step220Add1Arena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step220Add1_checked : compileHmrHybridCinLog s2Step220Add1Arena 790 801 783 s2Step220Add1A s2Step220Add1B s2Step220Add1Work=some s2Step220Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step220Add1Arena s2Step220Add1During 790 801 783 s2Step220Add1A s2Step220Add1B s2Step220Add1Work
    (by decide +kernel) (by decide +kernel) s2Step220Add1_distinct
    (fun q hq => s2Step220Add1_owned (List.mem_toFinset.mpr hq)) s2Step220Add1_borrowed

private theorem s2Step220F4_apart : Disjoint (s2Step220Add0A++s2Step220Add0B).toFinset (s2Step220Add1A++s2Step220Add1B).toFinset := by
  have nd : ((s2Step220Add0A++s2Step220Add0B)++(s2Step220Add1A++s2Step220Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step220F4_carry : s2Step220F4FlagArena.checkBorrow 1 [783]=some s2Step220Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step220F4FlagArena,s2Step220HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step220F4FlagArena,s2Step220HeadFvAfter,s2Step220Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step220F4_distinct : (798::790::801::783::((s2Step220Add0A++s2Step220Add1A)++(s2Step220Add0B++s2Step220Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step220F4_flag : s2Step220HeadFvAfter.checkBorrow 1 [801]=some s2Step220F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step220HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step220F4_owned : (798::790::((s2Step220Add0A++s2Step220Add1A)++(s2Step220Add0B++s2Step220Add1B))).toFinset⊆s2Step220HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step220HeadFvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step220F4_checked : compileHmrHybridF4Log s2Step220HeadFvAfter 798 790 s2Step220Add0A s2Step220Add0B s2Step220Add1A s2Step220Add1B [801] [783] s2Step220Add0Work s2Step220Add1Work=some s2Step220F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step220HeadFvAfter s2Step220F4FlagArena s2Step220Add0Arena s2Step220Add0During s2Step220Add1During 798 790
    s2Step220Add0A s2Step220Add0B s2Step220Add1A s2Step220Add1B [801] [783] s2Step220Add0Work s2Step220Add1Work
    (fun q hq => s2Step220F4_owned (List.mem_toFinset.mpr hq)) s2Step220F4_flag s2Step220F4_carry
    s2Step220F4_distinct s2Step220F4_apart s2Step220Add0_checked s2Step220Add1_checked

private theorem s2Step220Front_branch : s2Step220FrontSigmaArena.checkBorrow 1 [790]=some s2Step220HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step220FrontSigmaArena,s2Step220EntryGvAfter,s2Step220EntryFBefore,arenaWires]
  · ext q
    simp only [s2Step220FrontSigmaArena,s2Step220EntryGvAfter,s2Step220EntryFBefore,s2Step220HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step220Front_entry : HmrFrontEntryValid s2Step220EntryFBefore s2Step220FrontBank 160 124 ⟨160,159,125,124⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step220FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step220EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step220EntryFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step220FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step220Front_sigma : s2Step220EntryGvAfter.checkBorrow 1 [798]=some s2Step220FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step220EntryGvAfter,s2Step220EntryFBefore,arenaWires]
  · rfl

private def s2Step220HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step220HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step220HeadFBefore : Arena := s2Step220HeadGAfter

private def s2Step220HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671],768⟩

private def s2Step220HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815],770⟩

private def s2Step220HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159],769⟩

private def s2Step220HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778],771⟩

private theorem s2Step220HeadBank_incomingDistinct : ([s2Step220HeadGRow,s2Step220HeadFRow,s2Step220HeadGvRow,s2Step220HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step220HeadF_Incoming : rowsOwned s2Step220HeadFBefore [s2Step220HeadFRow,s2Step220HeadGvRow,s2Step220HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step220HeadGRow,s2Step220HeadFRow,s2Step220HeadGvRow,s2Step220HeadFvRow] 1 s2Step220HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step220HeadFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step220HeadBank_outgoingOwned : rowsOwned s2Step220HeadFvAfter [s2Step220HeadGOut,s2Step220HeadFOut,s2Step220HeadGvOut,s2Step220HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step220HeadFvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step220HeadF_Outgoing : rowsOwned s2Step220HeadFvAfter [s2Step220HeadFOut,s2Step220HeadGvOut,s2Step220HeadFvOut] :=
  hmrRows_owned_drop s2Step220HeadFvAfter [s2Step220HeadGOut,s2Step220HeadFOut,s2Step220HeadGvOut,s2Step220HeadFvOut] 1 s2Step220HeadBank_outgoingOwned

private theorem s2Step220HeadF_distinct : (s2Step220HeadFRow.sign::s2Step220HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step220HeadF_owned : (s2Step220HeadFRow.sign::s2Step220HeadFRow.payload).toFinset⊆s2Step220HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step220HeadFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step220HeadF_reserved : s2Step220HeadFBefore.reserve s2Step220HeadFFresh.toFinset=some s2Step220HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step220HeadFFresh,arenaWires]
  · norm_num [s2Step220HeadFBefore,s2Step220HeadGAfter,s2Step220HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step220HeadFAfter,s2Step220HeadFBefore,s2Step220HeadGAfter,s2Step220HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step220HeadF_checked : planRowResizeLog s2Step220HeadFBefore s2Step220HeadFRow 161 s2Step220HeadFFresh=
    some (s2Step220HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 804],768⟩,growRow 768 s2Step220HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step220HeadFBefore s2Step220HeadFAfter s2Step220HeadFRow 161 s2Step220HeadFFresh
    s2Step220HeadF_distinct s2Step220HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step220HeadF_reserved
  have rowEq : WindowRow.mk (s2Step220HeadFRow.payload++s2Step220HeadFFresh) s2Step220HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 804],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step220HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step220HeadFvBefore : Arena := s2Step220HeadGvAfter

private theorem s2Step220HeadFv_Incoming : rowsOwned s2Step220HeadFvBefore [s2Step220HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step220HeadGRow,s2Step220HeadFRow,s2Step220HeadGvRow,s2Step220HeadFvRow] 3 s2Step220HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step220HeadFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step220HeadFv_Outgoing : rowsOwned s2Step220HeadFvAfter [s2Step220HeadFvOut] :=
  hmrRows_owned_drop s2Step220HeadFvAfter [s2Step220HeadGOut,s2Step220HeadFOut,s2Step220HeadGvOut,s2Step220HeadFvOut] 3 s2Step220HeadBank_outgoingOwned

private theorem s2Step220HeadFv_distinct : (s2Step220HeadFvRow.sign::s2Step220HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step220HeadFv_owned : (s2Step220HeadFvRow.sign::s2Step220HeadFvRow.payload).toFinset⊆s2Step220HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step220HeadFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step220HeadFv_reserved : s2Step220HeadFvBefore.reserve s2Step220HeadFvFresh.toFinset=some s2Step220HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step220HeadFvFresh,arenaWires]
  · norm_num [s2Step220HeadFvBefore,s2Step220HeadGvAfter,s2Step220HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step220HeadFvAfter,s2Step220HeadFvBefore,s2Step220HeadGvAfter,s2Step220HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step220HeadFv_checked : planRowResizeLog s2Step220HeadFvBefore s2Step220HeadFvRow 125 s2Step220HeadFvFresh=
    some (s2Step220HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845],770⟩,growRow 770 s2Step220HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step220HeadFvBefore s2Step220HeadFvAfter s2Step220HeadFvRow 125 s2Step220HeadFvFresh
    s2Step220HeadFv_distinct s2Step220HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step220HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step220HeadFvRow.payload++s2Step220HeadFvFresh) s2Step220HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step220HeadG_Incoming : rowsOwned s2Step220HeadGBefore [s2Step220HeadGRow,s2Step220HeadFRow,s2Step220HeadGvRow,s2Step220HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step220HeadGRow,s2Step220HeadFRow,s2Step220HeadGvRow,s2Step220HeadFvRow] 0 s2Step220HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step220HeadGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step220HeadG_Outgoing : rowsOwned s2Step220HeadFvAfter [s2Step220HeadGOut,s2Step220HeadFOut,s2Step220HeadGvOut,s2Step220HeadFvOut] :=
  hmrRows_owned_drop s2Step220HeadFvAfter [s2Step220HeadGOut,s2Step220HeadFOut,s2Step220HeadGvOut,s2Step220HeadFvOut] 0 s2Step220HeadBank_outgoingOwned

private theorem s2Step220HeadG_distinct : (s2Step220HeadGRow.sign::s2Step220HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step220HeadG_owned : (s2Step220HeadGRow.sign::s2Step220HeadGRow.payload).toFinset⊆s2Step220HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step220HeadGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step220HeadG_reserved : s2Step220HeadGBefore.reserve s2Step220HeadGFresh.toFinset=some s2Step220HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step220HeadGFresh,arenaWires]
  · norm_num [s2Step220HeadGBefore,s2Step220HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step220HeadGAfter,s2Step220HeadGBefore,s2Step220HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step220HeadG_checked : planRowResizeLog s2Step220HeadGBefore s2Step220HeadGRow 161 s2Step220HeadGFresh=
    some (s2Step220HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 808],769⟩,growRow 769 s2Step220HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step220HeadGBefore s2Step220HeadGAfter s2Step220HeadGRow 161 s2Step220HeadGFresh
    s2Step220HeadG_distinct s2Step220HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step220HeadG_reserved
  have rowEq : WindowRow.mk (s2Step220HeadGRow.payload++s2Step220HeadGFresh) s2Step220HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 808],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step220HeadGvBefore : Arena := s2Step220HeadFAfter

private theorem s2Step220HeadGv_Incoming : rowsOwned s2Step220HeadGvBefore [s2Step220HeadGvRow,s2Step220HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step220HeadGRow,s2Step220HeadFRow,s2Step220HeadGvRow,s2Step220HeadFvRow] 2 s2Step220HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step220HeadGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step220HeadGv_Outgoing : rowsOwned s2Step220HeadFvAfter [s2Step220HeadGvOut,s2Step220HeadFvOut] :=
  hmrRows_owned_drop s2Step220HeadFvAfter [s2Step220HeadGOut,s2Step220HeadFOut,s2Step220HeadGvOut,s2Step220HeadFvOut] 2 s2Step220HeadBank_outgoingOwned

private theorem s2Step220HeadGv_distinct : (s2Step220HeadGvRow.sign::s2Step220HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step220HeadGv_owned : (s2Step220HeadGvRow.sign::s2Step220HeadGvRow.payload).toFinset⊆s2Step220HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step220HeadGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step220HeadGv_reserved : s2Step220HeadGvBefore.reserve s2Step220HeadGvFresh.toFinset=some s2Step220HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step220HeadGvFresh,arenaWires]
  · norm_num [s2Step220HeadGvBefore,s2Step220HeadFAfter,s2Step220HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step220HeadGvAfter,s2Step220HeadGvBefore,s2Step220HeadFAfter,s2Step220HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step220HeadGv_checked : planRowResizeLog s2Step220HeadGvBefore s2Step220HeadGvRow 125 s2Step220HeadGvFresh=
    some (s2Step220HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 796],771⟩,growRow 771 s2Step220HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step220HeadGvBefore s2Step220HeadGvAfter s2Step220HeadGvRow 125 s2Step220HeadGvFresh
    s2Step220HeadGv_distinct s2Step220HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step220HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step220HeadGvRow.payload++s2Step220HeadGvFresh) s2Step220HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 796],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step220HeadBank_rows : planWindowRowsLog s2Step220HeadGBefore [(s2Step220HeadGRow,161),(s2Step220HeadFRow,161),(s2Step220HeadGvRow,125),(s2Step220HeadFvRow,125)] [s2Step220HeadGFresh,s2Step220HeadFFresh,s2Step220HeadGvFresh,s2Step220HeadFvFresh]=
    some (s2Step220HeadFvAfter,[s2Step220HeadGOut,s2Step220HeadFOut,s2Step220HeadGvOut,s2Step220HeadFvOut],(growRow 769 s2Step220HeadGFresh ++ (growRow 768 s2Step220HeadFFresh ++ (growRow 771 s2Step220HeadGvFresh ++ (growRow 770 s2Step220HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step220HeadFvAfter [] []=some (s2Step220HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step220HeadFvBefore s2Step220HeadFvAfter s2Step220HeadFvAfter
    s2Step220HeadFvRow s2Step220HeadFvOut 125 s2Step220HeadFvFresh [] [] []
    (growRow 770 s2Step220HeadFvFresh) ([]) s2Step220HeadFv_Incoming s2Step220HeadFv_checked h4 s2Step220HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step220HeadGvBefore s2Step220HeadGvAfter s2Step220HeadFvAfter
    s2Step220HeadGvRow s2Step220HeadGvOut 125 s2Step220HeadGvFresh [(s2Step220HeadFvRow,125)] [s2Step220HeadFvFresh] [s2Step220HeadFvOut]
    (growRow 771 s2Step220HeadGvFresh) ((growRow 770 s2Step220HeadFvFresh ++ [])) s2Step220HeadGv_Incoming s2Step220HeadGv_checked h3 s2Step220HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step220HeadFBefore s2Step220HeadFAfter s2Step220HeadFvAfter
    s2Step220HeadFRow s2Step220HeadFOut 161 s2Step220HeadFFresh [(s2Step220HeadGvRow,125),(s2Step220HeadFvRow,125)] [s2Step220HeadGvFresh,s2Step220HeadFvFresh] [s2Step220HeadGvOut,s2Step220HeadFvOut]
    (growRow 768 s2Step220HeadFFresh) ((growRow 771 s2Step220HeadGvFresh ++ (growRow 770 s2Step220HeadFvFresh ++ []))) s2Step220HeadF_Incoming s2Step220HeadF_checked h2 s2Step220HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step220HeadGBefore s2Step220HeadGAfter s2Step220HeadFvAfter
    s2Step220HeadGRow s2Step220HeadGOut 161 s2Step220HeadGFresh [(s2Step220HeadFRow,161),(s2Step220HeadGvRow,125),(s2Step220HeadFvRow,125)] [s2Step220HeadFFresh,s2Step220HeadGvFresh,s2Step220HeadFvFresh] [s2Step220HeadFOut,s2Step220HeadGvOut,s2Step220HeadFvOut]
    (growRow 769 s2Step220HeadGFresh) ((growRow 768 s2Step220HeadFFresh ++ (growRow 771 s2Step220HeadGvFresh ++ (growRow 770 s2Step220HeadFvFresh ++ [])))) s2Step220HeadG_Incoming s2Step220HeadG_checked h1 s2Step220HeadG_Outgoing
  exact h0

private theorem s2Step220HeadBank_checked : compileHmrBankResizeLog .headroom s2Step220HeadGBefore ⟨s2Step220HeadFRow,s2Step220HeadGRow,s2Step220HeadFvRow,s2Step220HeadGvRow⟩ ⟨161,161,125,125⟩ [s2Step220HeadGFresh,s2Step220HeadFFresh,s2Step220HeadGvFresh,s2Step220HeadFvFresh]=
    some (s2Step220HeadFvAfter,⟨s2Step220HeadFOut,s2Step220HeadGOut,s2Step220HeadFvOut,s2Step220HeadGvOut⟩,(growRow 769 s2Step220HeadGFresh ++ (growRow 768 s2Step220HeadFFresh ++ (growRow 771 s2Step220HeadGvFresh ++ (growRow 770 s2Step220HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step220HeadBank_rows]
  rfl

private theorem s2Step220Front_checked : compileHmrSourceFrontLog s2Step220EntryFBefore s2Step220FrontBank 160 124 ⟨160,159,125,124⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step220FrontLog=some s2Step220FrontPlan := by
  have pairEq : s2Step220FrontPair=⟨s2Step220HeadFRow,s2Step220HeadGRow,s2Step220HeadFvRow,s2Step220HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step220FrontHead=⟨s2Step220ExitFRow,s2Step220ExitGRow,s2Step220ExitFvRow,s2Step220ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step220Add0A=s2Step220FrontHead.f.wires := by decide +kernel
  have gEq : s2Step220Add0B=s2Step220FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step220Add1A=s2Step220FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step220Add1B=s2Step220FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step220EntryFBefore s2Step220FrontBank 160 124 ⟨160,159,125,124⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step220FrontLog s2Step220FrontPlan
  · exact s2Step220Front_entry
  · exact s2Step220EntryBank_checked
  · exact s2Step220Front_sigma
  · rfl
  · exact s2Step220Front_branch
  · rfl
  · simpa only [s2Step220FrontPlan,pairEq] using s2Step220HeadBank_checked
  · simpa only [s2Step220FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step220F4_checked
  · exact s2Step220Counter_checked
  · rfl
  · simpa only [s2Step220FrontPlan,headEq] using s2Step220ExitBank_checked

private theorem s2Step220Complete_explicit_checked : compileHmrEarlyStepLog s2Step220EntryFBefore s2Step220FrontBank 160 124 ⟨160,159,125,124⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step220CompleteLog=some s2Step220CompletePlan := by
  let Q := s2Step220EarlyControlPlan
  have hq := s2Step220EarlyControl_plan_checked
  have fv1 : s2Step220CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step220CompleteOut.fv.payload[2]?.getD s2Step220CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step220CompleteOut.fv.payload[3]?.getD s2Step220CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step220CompleteOut.fv.payload[4]?.getD s2Step220CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step220EntryFBefore s2Step220EarlyControlArena s2Step220FrontBank 160 124 ⟨160,159,125,124⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step220CompleteLog s2Step220FrontPlan Q
    s2Step220Front_checked s2Step220Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step220Complete_owned s2Step220Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step220EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 798 s2Step220CompleteOut.fv.second (s2Step220CompleteOut.fv.payload[2]?.getD s2Step220CompleteOut.fv.sign) (s2Step220CompleteOut.fv.payload[3]?.getD s2Step220CompleteOut.fv.sign) (s2Step220CompleteOut.fv.payload[4]?.getD s2Step220CompleteOut.fv.sign) 790 47 s2Step220EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep220Arena : Arena := s2Step220EntryFBefore
def s2PrivateStep220Bank : WindowBank := s2Step220FrontBank
def s2PrivateStep220Spec : HmrSourceWalkStepLog := ⟨160,124,⟨160,159,125,124⟩,47,.early s2Step220CompleteLog⟩
def s2PrivateStep220Plan : HmrSourceStepPlan := .early s2Step220CompletePlan
theorem s2PrivateStep220_source : s2PrivateStep220Spec=s2ObservedLogs208[12] := rfl
theorem s2PrivateStep220_checked : compileHmrSourceStepLog s2PrivateStep220Arena s2PrivateStep220Bank
    s2PrivateStep220Spec.fgWidth s2PrivateStep220Spec.vWidth s2PrivateStep220Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897]
    6 498 220 s2PrivateStep220Spec.need none s2PrivateStep220Spec.log=some s2PrivateStep220Plan := by
  change compileHmrSourceStepLog s2Step220EntryFBefore s2Step220FrontBank 160 124 ⟨160,159,125,124⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 6 498 220 47 none (.early s2Step220CompleteLog)=some (.early s2Step220CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 220<498)]
  rw [s2Step220Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
