import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep232
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

private def s2Step234CompleteMoves : List (Wire × Wire) := [(819,152)]

private def s2Step234EarlyControlLog : HmrEarlyControlLog := ⟨[819, 793, 810, 800, 797],[787],[814],[882, 826, 842, 885, 891, 894],[]⟩

private def s2Step234FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [793]],[[787], [797], [810], [800]],[[], [], [], []]⟩,[820],[809],[814],[882],[826, 842, 885, 891, 894, 896, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[826, 842, 885, 891, 894, 896, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[814, 882, 826, 842]⟩

private def s2Step234CompleteLog : HmrEarlyStepLog := ⟨s2Step234FrontLog,s2Step234CompleteMoves,s2Step234EarlyControlLog⟩

private def s2Step234ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664],768⟩

private def s2Step234ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821],770⟩

private def s2Step234ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151],769⟩

private def s2Step234ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847],771⟩

private def s2Step234FrontOut : WindowBank := ⟨s2Step234ExitFOut,s2Step234ExitGOut,s2Step234ExitFvOut,s2Step234ExitGvOut⟩

private def s2Step234CompleteOut : WindowBank := s2Step234FrontOut.repacked s2Step234CompleteMoves

private def s2Step234EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step234EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step234EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step234EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step234EarlyControlPositiveArena,[787],s2Step234EarlyControlEqualityArena,[814],⟨⟨820,false⟩,[⟨⟨787,false⟩,814⟩]⟩⟩

private def s2Step234EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step234EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step234EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step234EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step234EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step234EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step234EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,819⟩,⟨⟨774,false⟩,793⟩,⟨⟨775,false⟩,810⟩,⟨⟨776,false⟩,800⟩,⟨⟨777,false⟩,797⟩]⟩

private def s2Step234EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step234EarlyControlZeroArena,s2Step234EarlyControlZeroPlan,s2Step234EarlyControlClassPlan,s2Step234EarlyControlFlagArena,s2Step234EarlyControlFittedArena,s2Step234EarlyControlHistoryArena,s2Step234EarlyControlSigmaArena,s2Step234EarlyControlOutputArena,s2Step234EarlyControlLog⟩

private def s2Step234CounterWork : List Wire := [814, 882, 826, 842]

private theorem s2Step234Counter_bounded : s2Step234CounterWork.toFinset⊆arenaWires := by norm_num [s2Step234CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step234HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step234CounterDuring : Arena := ⟨s2Step234HeadFvAfter.live∪s2Step234CounterWork.toFinset,Finset.union_subset s2Step234HeadFvAfter.bounded s2Step234Counter_bounded⟩

private def s2Step234EntryFFresh : List Wire := []

private def s2Step234EntryFvFresh : List Wire := []

private def s2Step234EntryGFresh : List Wire := []

private def s2Step234EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step234EntryGvFresh : List Wire := [793]

private def s2Step234ExitFExtra : List Wire := [797]

private def s2Step234ExitFvExtra : List Wire := [800]

private def s2Step234ExitGExtra : List Wire := [152, 787]

private def s2Step234ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<152) ∨ (153≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step234ExitGvExtra : List Wire := [793, 810]

private def s2Step234Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step234Add0Work : List Wire := [826, 842, 885, 891, 894, 896, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step234Add0_bounded : s2Step234Add0Work.toFinset⊆arenaWires := by
  have h : s2Step234Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step234Add0During : Arena := ⟨s2Step234Add0Arena.live∪s2Step234Add0Work.toFinset,Finset.union_subset s2Step234Add0Arena.bounded s2Step234Add0_bounded⟩

private def s2Step234Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step234Add1Work : List Wire := [826, 842, 885, 891, 894, 896, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step234Add1_bounded : s2Step234Add1Work.toFinset⊆arenaWires := by
  have h : s2Step234Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step234Add1During : Arena := ⟨s2Step234Add1Arena.live∪s2Step234Add1Work.toFinset,Finset.union_subset s2Step234Add1Arena.bounded s2Step234Add1_bounded⟩

private def s2Step234F4FlagArena : Arena := ⟨s2Step234HeadFvAfter.live∪{814},Finset.union_subset s2Step234HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step234F4Plan : HmrHybridF4Plan := ⟨s2Step234F4FlagArena,[814],s2Step234Add0Arena,[882],s2Step234Add0During,s2Step234Add0Work,s2Step234Add1During,s2Step234Add1Work⟩

private def s2Step234HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 797],768⟩

private def s2Step234HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 800],770⟩

private def s2Step234HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 787],769⟩

private def s2Step234HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 793, 810],771⟩

private def s2Step234FrontHead : WindowBank := ⟨s2Step234HeadFOut,s2Step234HeadGOut,s2Step234HeadFvOut,s2Step234HeadGvOut⟩

private def s2Step234EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664],768⟩

private def s2Step234EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821],770⟩

private def s2Step234EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152],769⟩

private def s2Step234EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 793],771⟩

private def s2Step234FrontPair : WindowBank := ⟨s2Step234EntryFOut,s2Step234EntryGOut,s2Step234EntryFvOut,s2Step234EntryGvOut⟩

private def s2Step234FrontSigmaArena : Arena := ⟨s2Step234EntryGvAfter.live∪{820},Finset.union_subset s2Step234EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step234HeadFFresh : List Wire := [797]

private def s2Step234HeadFvFresh : List Wire := [800]

private def s2Step234HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step234HeadGFresh : List Wire := [787]

private def s2Step234HeadGvFresh : List Wire := [810]

private def s2Step234FrontPlan : HmrSourceFront := ⟨s2Step234EntryGvAfter,s2Step234FrontPair,(growRow 768 s2Step234EntryFFresh ++ (growRow 769 s2Step234EntryGFresh ++ (growRow 770 s2Step234EntryFvFresh ++ (growRow 771 s2Step234EntryGvFresh ++ [])))),s2Step234FrontSigmaArena,[820],s2Step234HeadGBefore,[809],
  s2Step234HeadFvAfter,s2Step234FrontHead,(growRow 769 s2Step234HeadGFresh ++ (growRow 768 s2Step234HeadFFresh ++ (growRow 771 s2Step234HeadGvFresh ++ (growRow 770 s2Step234HeadFvFresh ++ [])))),s2Step234F4Plan,s2Step234CounterDuring,s2Step234CounterWork,s2Step234ExitGvAfter,s2Step234FrontOut,(shrinkRow 769 s2Step234ExitGExtra ++ (shrinkRow 768 s2Step234ExitFExtra ++ (shrinkRow 770 s2Step234ExitFvExtra ++ (shrinkRow 771 s2Step234ExitGvExtra ++ []))))⟩

private def s2Step234CompletePlan : HmrEarlyStepPlan := ⟨s2Step234FrontPlan,s2Step234EarlyControlArena,s2Step234EarlyControlPlan,s2Step234CompleteMoves⟩

private theorem s2Step234Complete_apart : List.Disjoint (s2Step234CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [820, 809, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] := by
  have nd : ((s2Step234CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[820, 809, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step234Complete_owned : (s2Step234CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step234EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step234EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private def s2Step234CompleteMoveArena : Arena := ⟨s2Step234ExitGvAfter.live∪{152},Finset.union_subset s2Step234ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step234Complete_repack : s2Step234ExitGvAfter.checkRepack s2Step234CompleteMoves=some s2Step234EarlyControlArena := by
  have owned : 819∈s2Step234ExitGvAfter.live := by norm_num [s2Step234ExitGvAfter,arenaWires]
  have reserve : s2Step234ExitGvAfter.reserve {152}=some s2Step234CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step234ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step234CompleteMoveArena.retireSet {819}=s2Step234EarlyControlArena := by
    unfold Arena.retireSet s2Step234EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step234CompleteMoveArena,s2Step234ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step234CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step234CompleteMoveArena.retireSet {819}).checkRepack []=some s2Step234EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step234EarlyControl_branchOwned : ([809] : List Wire).toFinset⊆s2Step234EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step234EarlyControlSigmaArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step234EarlyControl_branch : compileHmrBranchRetirement s2Step234EarlyControlSigmaArena 809=some s2Step234EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step234EarlyControl_branchOwned
  · ext q
    simp [s2Step234EarlyControlOutputArena,s2Step234EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step234EarlyControl_classEqualityBorrow : s2Step234EarlyControlPositiveArena.checkBorrow (([820, 787] : List Wire).length-1) s2Step234EarlyControlLog.classWork=some s2Step234EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step234EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step234EarlyControlPositiveArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step234EarlyControlEqualityArena,s2Step234EarlyControlPositiveArena,s2Step234EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step234EarlyControl_classEqualityOwned : ([820, 787] : List Wire).toFinset⊆s2Step234EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step234EarlyControlPositiveArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step234EarlyControl_classEquality : compileHmrEqualityLog s2Step234EarlyControlPositiveArena [820, 787] 0 s2Step234EarlyControlLog.classWork=some (s2Step234EarlyControlEqualityArena,s2Step234EarlyControlLog.classWork,s2Step234EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step234EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step234EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step234EarlyControl_classOwned : ([777, 797, 820] : List Wire).toFinset⊆s2Step234EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step234EarlyControlZeroArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step234EarlyControl_positiveBorrow : s2Step234EarlyControlZeroArena.checkBorrow (1) s2Step234EarlyControlLog.positiveWork=some s2Step234EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step234EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step234EarlyControlZeroArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step234EarlyControlPositiveArena,s2Step234EarlyControlZeroArena,s2Step234EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step234EarlyControl_class : compileHmrSourceClassLog s2Step234EarlyControlZeroArena false 777 s2Step234EarlyControlZeroPlan.top 0 820 s2Step234EarlyControlLog.positiveWork s2Step234EarlyControlLog.classWork=some s2Step234EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step234EarlyControlClassPlan s2Step234EarlyControlZeroArena false 777 s2Step234EarlyControlZeroPlan.top 0 820
  constructor
  · decide +kernel
  · exact s2Step234EarlyControl_classOwned
  · exact s2Step234EarlyControl_positiveBorrow
  · exact s2Step234EarlyControl_classEquality

private theorem s2Step234EarlyControl_entryRecordOwned : ([809, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] : List Wire).toFinset⊆s2Step234EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step234EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step234EarlyControl_entrySigmaOwned : ([820, 254] : List Wire).toFinset⊆s2Step234EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step234EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step234EarlyControl_fitBorrow : s2Step234EarlyControlFlagArena.checkBorrow ((49-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] : List Wire).length)) s2Step234EarlyControlLog.recordFresh=some s2Step234EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step234EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step234EarlyControlFlagArena (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step234EarlyControlFittedArena,s2Step234EarlyControlFlagArena,s2Step234EarlyControlLog,arenaWires]

private theorem s2Step234EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] : List Wire).toFinset⊆s2Step234EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step234EarlyControlFlagArena (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step234EarlyControl_fit : compileHmrRecordGrowLog s2Step234EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 49 s2Step234EarlyControlLog.recordFresh=some s2Step234EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step234EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step234EarlyControl_fitBorrow

private theorem s2Step234EarlyControl_flagsBorrow : s2Step234EarlyControlEqualityArena.checkBorrow (6) s2Step234EarlyControlLog.flagWork=some s2Step234EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step234EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step234EarlyControlEqualityArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step234EarlyControlFlagArena,s2Step234EarlyControlEqualityArena,s2Step234EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step234EarlyControl_flagsOwned : ([814, 253, 252, 251] : List Wire).toFinset⊆s2Step234EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step234EarlyControlEqualityArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step234EarlyControl_flags : compileHmrFlagsLog s2Step234EarlyControlClassPlan.equalityArena s2Step234EarlyControlClassPlan.equality.top 253 252 251 s2Step234EarlyControlLog.flagWork=some s2Step234EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step234EarlyControl_flagsOwned⟩
  · exact s2Step234EarlyControl_flagsBorrow

private theorem s2Step234EarlyControl_historyBorrow : s2Step234EarlyControlArena.checkBorrow ((49-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] : List Wire).length)) s2Step234EarlyControlLog.recordFresh=some s2Step234EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step234EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step234EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step234EarlyControlHistoryArena,s2Step234EarlyControlArena,s2Step234EarlyControlLog,arenaWires]

private theorem s2Step234EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] : List Wire).toFinset⊆s2Step234EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step234EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step234EarlyControl_history : compileHmrRecordGrowLog s2Step234EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 49 s2Step234EarlyControlLog.recordFresh=some s2Step234EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step234EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step234EarlyControl_historyBorrow

private theorem s2Step234EarlyControl_sigmaOwned : ([254, 820] : List Wire).toFinset⊆s2Step234EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step234EarlyControlHistoryArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step234EarlyControl_sigmaReleaseOwned : ([820] : List Wire).toFinset⊆s2Step234EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step234EarlyControlHistoryArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step234EarlyControl_sigmaRelease : s2Step234EarlyControlHistoryArena.release {820} (fun _ => false)=some s2Step234EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step234EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step234EarlyControlSigmaArena,s2Step234EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step234EarlyControl_sigma : compileHmrSigmaDropLog s2Step234EarlyControlHistoryArena false 0 0 254 820 []=some s2Step234EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step234EarlyControl_sigmaOwned⟩
  · exact s2Step234EarlyControl_sigmaRelease

private theorem s2Step234EarlyControl_zeroBorrow : s2Step234EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step234EarlyControlLog.zeroWork=some s2Step234EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step234EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step234EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step234EarlyControlZeroArena,s2Step234EarlyControlArena,s2Step234EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step234EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step234EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step234EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step234EarlyControl_zero : compileHmrEqualityLog s2Step234EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step234EarlyControlLog.zeroWork=some (s2Step234EarlyControlZeroArena,s2Step234EarlyControlLog.zeroWork,s2Step234EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step234EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step234EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step234EarlyControl_logged : s2Step234EarlyControlPlan.Logged s2Step234EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 777 820 254 253 252 251 809 49 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step234EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step234EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step234EarlyControl_zero
  · exact s2Step234EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step234EarlyControl_flags
  · exact s2Step234EarlyControl_fit
  · exact s2Step234EarlyControl_history
  · exact s2Step234EarlyControl_sigma
  · exact s2Step234EarlyControl_branch

private theorem s2Step234EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step234EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 777 820 254 253 252 251 809 49 s2Step234EarlyControlLog=some s2Step234EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step234EarlyControlPlan s2Step234EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 777 820 254 253 252 251 809 49 s2Step234EarlyControl_logged

private def s2Step234EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step234EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664],768⟩

private def s2Step234EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821],770⟩

private def s2Step234EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152],769⟩

private def s2Step234EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847],771⟩

private def s2Step234FrontBank : WindowBank := ⟨s2Step234EntryFRow,s2Step234EntryGRow,s2Step234EntryFvRow,s2Step234EntryGvRow⟩

private def s2Step234Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 797, 768]

private def s2Step234Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 787, 769]

private def s2Step234Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 800, 770]

private def s2Step234Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 793, 810, 771]

private theorem s2Step234Counter_apart : Disjoint s2Step234HeadFvAfter.live s2Step234CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step234HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step234Counter_borrowed : s2Step234HeadFvAfter.checkBorrow 4 s2Step234CounterWork=some s2Step234CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step234HeadFvAfter s2Step234CounterDuring s2Step234CounterWork.toFinset s2Step234Counter_bounded s2Step234Counter_apart rfl

private theorem s2Step234Counter_owned : (820::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step234HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step234HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step234Counter_checked : compileHmrCounterStepLog s2Step234HeadFvAfter true 820 [772, 773, 774, 775, 776, 777] s2Step234CounterWork=some s2Step234CounterDuring := by
  have owned : ∀q∈820::[772, 773, 774, 775, 776, 777],q∈s2Step234HeadFvAfter.live := fun q hq => s2Step234Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step234Counter_borrowed

private def s2Step234EntryFAfter : Arena := s2Step234EntryFBefore

private theorem s2Step234EntryBank_incomingDistinct : ([s2Step234EntryFRow,s2Step234EntryGRow,s2Step234EntryFvRow,s2Step234EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step234EntryF_Incoming : rowsOwned s2Step234EntryFBefore [s2Step234EntryFRow,s2Step234EntryGRow,s2Step234EntryFvRow,s2Step234EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step234EntryFRow,s2Step234EntryGRow,s2Step234EntryFvRow,s2Step234EntryGvRow] 0 s2Step234EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step234EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step234EntryBank_outgoingOwned : rowsOwned s2Step234EntryGvAfter [s2Step234EntryFOut,s2Step234EntryGOut,s2Step234EntryFvOut,s2Step234EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step234EntryGvAfter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step234EntryF_Outgoing : rowsOwned s2Step234EntryGvAfter [s2Step234EntryFOut,s2Step234EntryGOut,s2Step234EntryFvOut,s2Step234EntryGvOut] :=
  hmrRows_owned_drop s2Step234EntryGvAfter [s2Step234EntryFOut,s2Step234EntryGOut,s2Step234EntryFvOut,s2Step234EntryGvOut] 0 s2Step234EntryBank_outgoingOwned

private theorem s2Step234EntryF_distinct : (s2Step234EntryFRow.sign::s2Step234EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step234EntryF_owned : (s2Step234EntryFRow.sign::s2Step234EntryFRow.payload).toFinset⊆s2Step234EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step234EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step234EntryF_reserved : s2Step234EntryFBefore.reserve s2Step234EntryFFresh.toFinset=some s2Step234EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step234EntryFFresh,arenaWires]
  · norm_num [s2Step234EntryFBefore,s2Step234EntryFFresh,arenaWires]
  · simp only [s2Step234EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step234EntryF_checked : planRowResizeLog s2Step234EntryFBefore s2Step234EntryFRow 153 s2Step234EntryFFresh=
    some (s2Step234EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664],768⟩,growRow 768 s2Step234EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step234EntryFBefore s2Step234EntryFAfter s2Step234EntryFRow 153 s2Step234EntryFFresh
    s2Step234EntryF_distinct s2Step234EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step234EntryF_reserved
  have rowEq : WindowRow.mk (s2Step234EntryFRow.payload++s2Step234EntryFFresh) s2Step234EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step234EntryFvAfter : Arena := s2Step234EntryFBefore

private def s2Step234EntryFvBefore : Arena := s2Step234EntryFBefore

private theorem s2Step234EntryFv_Incoming : rowsOwned s2Step234EntryFvBefore [s2Step234EntryFvRow,s2Step234EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step234EntryFRow,s2Step234EntryGRow,s2Step234EntryFvRow,s2Step234EntryGvRow] 2 s2Step234EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step234EntryFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step234EntryFv_Outgoing : rowsOwned s2Step234EntryGvAfter [s2Step234EntryFvOut,s2Step234EntryGvOut] :=
  hmrRows_owned_drop s2Step234EntryGvAfter [s2Step234EntryFOut,s2Step234EntryGOut,s2Step234EntryFvOut,s2Step234EntryGvOut] 2 s2Step234EntryBank_outgoingOwned

private theorem s2Step234EntryFv_distinct : (s2Step234EntryFvRow.sign::s2Step234EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step234EntryFv_owned : (s2Step234EntryFvRow.sign::s2Step234EntryFvRow.payload).toFinset⊆s2Step234EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step234EntryFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step234EntryFv_reserved : s2Step234EntryFvBefore.reserve s2Step234EntryFvFresh.toFinset=some s2Step234EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step234EntryFvFresh,arenaWires]
  · norm_num [s2Step234EntryFvBefore,s2Step234EntryFBefore,s2Step234EntryFvFresh,arenaWires]
  · simp only [s2Step234EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step234EntryFv_checked : planRowResizeLog s2Step234EntryFvBefore s2Step234EntryFvRow 132 s2Step234EntryFvFresh=
    some (s2Step234EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821],770⟩,growRow 770 s2Step234EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step234EntryFvBefore s2Step234EntryFvAfter s2Step234EntryFvRow 132 s2Step234EntryFvFresh
    s2Step234EntryFv_distinct s2Step234EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step234EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step234EntryFvRow.payload++s2Step234EntryFvFresh) s2Step234EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step234EntryGAfter : Arena := s2Step234EntryFBefore

private def s2Step234EntryGBefore : Arena := s2Step234EntryFBefore

private theorem s2Step234EntryG_Incoming : rowsOwned s2Step234EntryGBefore [s2Step234EntryGRow,s2Step234EntryFvRow,s2Step234EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step234EntryFRow,s2Step234EntryGRow,s2Step234EntryFvRow,s2Step234EntryGvRow] 1 s2Step234EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step234EntryGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step234EntryG_Outgoing : rowsOwned s2Step234EntryGvAfter [s2Step234EntryGOut,s2Step234EntryFvOut,s2Step234EntryGvOut] :=
  hmrRows_owned_drop s2Step234EntryGvAfter [s2Step234EntryFOut,s2Step234EntryGOut,s2Step234EntryFvOut,s2Step234EntryGvOut] 1 s2Step234EntryBank_outgoingOwned

private theorem s2Step234EntryG_distinct : (s2Step234EntryGRow.sign::s2Step234EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step234EntryG_owned : (s2Step234EntryGRow.sign::s2Step234EntryGRow.payload).toFinset⊆s2Step234EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step234EntryGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step234EntryG_reserved : s2Step234EntryGBefore.reserve s2Step234EntryGFresh.toFinset=some s2Step234EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step234EntryGFresh,arenaWires]
  · norm_num [s2Step234EntryGBefore,s2Step234EntryFBefore,s2Step234EntryGFresh,arenaWires]
  · simp only [s2Step234EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step234EntryG_checked : planRowResizeLog s2Step234EntryGBefore s2Step234EntryGRow 153 s2Step234EntryGFresh=
    some (s2Step234EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152],769⟩,growRow 769 s2Step234EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step234EntryGBefore s2Step234EntryGAfter s2Step234EntryGRow 153 s2Step234EntryGFresh
    s2Step234EntryG_distinct s2Step234EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step234EntryG_reserved
  have rowEq : WindowRow.mk (s2Step234EntryGRow.payload++s2Step234EntryGFresh) s2Step234EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step234EntryGvBefore : Arena := s2Step234EntryFBefore

private theorem s2Step234EntryGv_Incoming : rowsOwned s2Step234EntryGvBefore [s2Step234EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step234EntryFRow,s2Step234EntryGRow,s2Step234EntryFvRow,s2Step234EntryGvRow] 3 s2Step234EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step234EntryGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step234EntryGv_Outgoing : rowsOwned s2Step234EntryGvAfter [s2Step234EntryGvOut] :=
  hmrRows_owned_drop s2Step234EntryGvAfter [s2Step234EntryFOut,s2Step234EntryGOut,s2Step234EntryFvOut,s2Step234EntryGvOut] 3 s2Step234EntryBank_outgoingOwned

private theorem s2Step234EntryGv_distinct : (s2Step234EntryGvRow.sign::s2Step234EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step234EntryGv_owned : (s2Step234EntryGvRow.sign::s2Step234EntryGvRow.payload).toFinset⊆s2Step234EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step234EntryGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step234EntryGv_reserved : s2Step234EntryGvBefore.reserve s2Step234EntryGvFresh.toFinset=some s2Step234EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step234EntryGvFresh,arenaWires]
  · norm_num [s2Step234EntryGvBefore,s2Step234EntryFBefore,s2Step234EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step234EntryGvAfter,s2Step234EntryGvBefore,s2Step234EntryFBefore,s2Step234EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step234EntryGv_checked : planRowResizeLog s2Step234EntryGvBefore s2Step234EntryGvRow 132 s2Step234EntryGvFresh=
    some (s2Step234EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 793],771⟩,growRow 771 s2Step234EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step234EntryGvBefore s2Step234EntryGvAfter s2Step234EntryGvRow 132 s2Step234EntryGvFresh
    s2Step234EntryGv_distinct s2Step234EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step234EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step234EntryGvRow.payload++s2Step234EntryGvFresh) s2Step234EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 793],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step234EntryBank_rows : planWindowRowsLog s2Step234EntryFBefore [(s2Step234EntryFRow,153),(s2Step234EntryGRow,153),(s2Step234EntryFvRow,132),(s2Step234EntryGvRow,132)] [s2Step234EntryFFresh,s2Step234EntryGFresh,s2Step234EntryFvFresh,s2Step234EntryGvFresh]=
    some (s2Step234EntryGvAfter,[s2Step234EntryFOut,s2Step234EntryGOut,s2Step234EntryFvOut,s2Step234EntryGvOut],(growRow 768 s2Step234EntryFFresh ++ (growRow 769 s2Step234EntryGFresh ++ (growRow 770 s2Step234EntryFvFresh ++ (growRow 771 s2Step234EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step234EntryGvAfter [] []=some (s2Step234EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step234EntryGvBefore s2Step234EntryGvAfter s2Step234EntryGvAfter
    s2Step234EntryGvRow s2Step234EntryGvOut 132 s2Step234EntryGvFresh [] [] []
    (growRow 771 s2Step234EntryGvFresh) ([]) s2Step234EntryGv_Incoming s2Step234EntryGv_checked h4 s2Step234EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step234EntryFvBefore s2Step234EntryFvAfter s2Step234EntryGvAfter
    s2Step234EntryFvRow s2Step234EntryFvOut 132 s2Step234EntryFvFresh [(s2Step234EntryGvRow,132)] [s2Step234EntryGvFresh] [s2Step234EntryGvOut]
    (growRow 770 s2Step234EntryFvFresh) ((growRow 771 s2Step234EntryGvFresh ++ [])) s2Step234EntryFv_Incoming s2Step234EntryFv_checked h3 s2Step234EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step234EntryGBefore s2Step234EntryGAfter s2Step234EntryGvAfter
    s2Step234EntryGRow s2Step234EntryGOut 153 s2Step234EntryGFresh [(s2Step234EntryFvRow,132),(s2Step234EntryGvRow,132)] [s2Step234EntryFvFresh,s2Step234EntryGvFresh] [s2Step234EntryFvOut,s2Step234EntryGvOut]
    (growRow 769 s2Step234EntryGFresh) ((growRow 770 s2Step234EntryFvFresh ++ (growRow 771 s2Step234EntryGvFresh ++ []))) s2Step234EntryG_Incoming s2Step234EntryG_checked h2 s2Step234EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step234EntryFBefore s2Step234EntryFAfter s2Step234EntryGvAfter
    s2Step234EntryFRow s2Step234EntryFOut 153 s2Step234EntryFFresh [(s2Step234EntryGRow,153),(s2Step234EntryFvRow,132),(s2Step234EntryGvRow,132)] [s2Step234EntryGFresh,s2Step234EntryFvFresh,s2Step234EntryGvFresh] [s2Step234EntryGOut,s2Step234EntryFvOut,s2Step234EntryGvOut]
    (growRow 768 s2Step234EntryFFresh) ((growRow 769 s2Step234EntryGFresh ++ (growRow 770 s2Step234EntryFvFresh ++ (growRow 771 s2Step234EntryGvFresh ++ [])))) s2Step234EntryF_Incoming s2Step234EntryF_checked h1 s2Step234EntryF_Outgoing
  exact h0

private theorem s2Step234EntryBank_checked : compileHmrBankResizeLog .entry s2Step234EntryFBefore ⟨s2Step234EntryFRow,s2Step234EntryGRow,s2Step234EntryFvRow,s2Step234EntryGvRow⟩ ⟨153,153,132,132⟩ [s2Step234EntryFFresh,s2Step234EntryGFresh,s2Step234EntryFvFresh,s2Step234EntryGvFresh]=
    some (s2Step234EntryGvAfter,⟨s2Step234EntryFOut,s2Step234EntryGOut,s2Step234EntryFvOut,s2Step234EntryGvOut⟩,(growRow 768 s2Step234EntryFFresh ++ (growRow 769 s2Step234EntryGFresh ++ (growRow 770 s2Step234EntryFvFresh ++ (growRow 771 s2Step234EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step234EntryBank_rows]
  rfl

private def s2Step234ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<152) ∨ (153≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step234ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<152) ∨ (153≤q ∧ q<787) ∨ (788≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step234ExitFBefore : Arena := s2Step234ExitGAfter

private def s2Step234ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 797],768⟩

private def s2Step234ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 800],770⟩

private def s2Step234ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 787],769⟩

private def s2Step234ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 793, 810],771⟩

private theorem s2Step234ExitBank_incomingDistinct : ([s2Step234ExitGRow,s2Step234ExitFRow,s2Step234ExitFvRow,s2Step234ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step234ExitF_Incoming : rowsOwned s2Step234ExitFBefore [s2Step234ExitFRow,s2Step234ExitFvRow,s2Step234ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step234ExitGRow,s2Step234ExitFRow,s2Step234ExitFvRow,s2Step234ExitGvRow] 1 s2Step234ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step234ExitFBefore (fun q => (0≤q ∧ q<152) ∨ (153≤q ∧ q<787) ∨ (788≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step234ExitBank_outgoingOwned : rowsOwned s2Step234ExitGvAfter [s2Step234ExitGOut,s2Step234ExitFOut,s2Step234ExitFvOut,s2Step234ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step234ExitGvAfter (fun q => (0≤q ∧ q<152) ∨ (153≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step234ExitF_Outgoing : rowsOwned s2Step234ExitGvAfter [s2Step234ExitFOut,s2Step234ExitFvOut,s2Step234ExitGvOut] :=
  hmrRows_owned_drop s2Step234ExitGvAfter [s2Step234ExitGOut,s2Step234ExitFOut,s2Step234ExitFvOut,s2Step234ExitGvOut] 1 s2Step234ExitBank_outgoingOwned

private theorem s2Step234ExitF_distinct : (s2Step234ExitFRow.sign::s2Step234ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step234ExitF_owned : (s2Step234ExitFRow.sign::s2Step234ExitFRow.payload).toFinset⊆s2Step234ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step234ExitFBefore (fun q => (0≤q ∧ q<152) ∨ (153≤q ∧ q<787) ∨ (788≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step234ExitF_retired : s2Step234ExitFBefore.retireSet s2Step234ExitFExtra.toFinset=s2Step234ExitFAfter := by
  unfold Arena.retireSet s2Step234ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step234ExitFBefore,s2Step234ExitGAfter,s2Step234ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step234ExitF_checked : planRowResizeLog s2Step234ExitFBefore s2Step234ExitFRow 153 []=
    some (s2Step234ExitFAfter,s2Step234ExitFOut,shrinkRow 768 s2Step234ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step234ExitFBefore s2Step234ExitFRow 153 s2Step234ExitF_distinct s2Step234ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step234ExitFRow.payload.take 153) s2Step234ExitFRow.sign=s2Step234ExitFOut := by decide +kernel
  have hi : s2Step234ExitFRow.payload.drop 153=s2Step234ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step234ExitF_retired] at result
  exact result

private def s2Step234ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<152) ∨ (153≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step234ExitFvBefore : Arena := s2Step234ExitFAfter

private theorem s2Step234ExitFv_Incoming : rowsOwned s2Step234ExitFvBefore [s2Step234ExitFvRow,s2Step234ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step234ExitGRow,s2Step234ExitFRow,s2Step234ExitFvRow,s2Step234ExitGvRow] 2 s2Step234ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step234ExitFvBefore (fun q => (0≤q ∧ q<152) ∨ (153≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step234ExitFv_Outgoing : rowsOwned s2Step234ExitGvAfter [s2Step234ExitFvOut,s2Step234ExitGvOut] :=
  hmrRows_owned_drop s2Step234ExitGvAfter [s2Step234ExitGOut,s2Step234ExitFOut,s2Step234ExitFvOut,s2Step234ExitGvOut] 2 s2Step234ExitBank_outgoingOwned

private theorem s2Step234ExitFv_distinct : (s2Step234ExitFvRow.sign::s2Step234ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step234ExitFv_owned : (s2Step234ExitFvRow.sign::s2Step234ExitFvRow.payload).toFinset⊆s2Step234ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step234ExitFvBefore (fun q => (0≤q ∧ q<152) ∨ (153≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step234ExitFv_retired : s2Step234ExitFvBefore.retireSet s2Step234ExitFvExtra.toFinset=s2Step234ExitFvAfter := by
  unfold Arena.retireSet s2Step234ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step234ExitFvBefore,s2Step234ExitFAfter,s2Step234ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step234ExitFv_checked : planRowResizeLog s2Step234ExitFvBefore s2Step234ExitFvRow 132 []=
    some (s2Step234ExitFvAfter,s2Step234ExitFvOut,shrinkRow 770 s2Step234ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step234ExitFvBefore s2Step234ExitFvRow 132 s2Step234ExitFv_distinct s2Step234ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step234ExitFvRow.payload.take 132) s2Step234ExitFvRow.sign=s2Step234ExitFvOut := by decide +kernel
  have hi : s2Step234ExitFvRow.payload.drop 132=s2Step234ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step234ExitFv_retired] at result
  exact result

private def s2Step234ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private theorem s2Step234ExitG_Incoming : rowsOwned s2Step234ExitGBefore [s2Step234ExitGRow,s2Step234ExitFRow,s2Step234ExitFvRow,s2Step234ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step234ExitGRow,s2Step234ExitFRow,s2Step234ExitFvRow,s2Step234ExitGvRow] 0 s2Step234ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step234ExitGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step234ExitG_Outgoing : rowsOwned s2Step234ExitGvAfter [s2Step234ExitGOut,s2Step234ExitFOut,s2Step234ExitFvOut,s2Step234ExitGvOut] :=
  hmrRows_owned_drop s2Step234ExitGvAfter [s2Step234ExitGOut,s2Step234ExitFOut,s2Step234ExitFvOut,s2Step234ExitGvOut] 0 s2Step234ExitBank_outgoingOwned

private theorem s2Step234ExitG_distinct : (s2Step234ExitGRow.sign::s2Step234ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step234ExitG_owned : (s2Step234ExitGRow.sign::s2Step234ExitGRow.payload).toFinset⊆s2Step234ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step234ExitGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step234ExitG_retired : s2Step234ExitGBefore.retireSet s2Step234ExitGExtra.toFinset=s2Step234ExitGAfter := by
  unfold Arena.retireSet s2Step234ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step234ExitGBefore,s2Step234ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step234ExitG_checked : planRowResizeLog s2Step234ExitGBefore s2Step234ExitGRow 152 []=
    some (s2Step234ExitGAfter,s2Step234ExitGOut,shrinkRow 769 s2Step234ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step234ExitGBefore s2Step234ExitGRow 152 s2Step234ExitG_distinct s2Step234ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step234ExitGRow.payload.take 152) s2Step234ExitGRow.sign=s2Step234ExitGOut := by decide +kernel
  have hi : s2Step234ExitGRow.payload.drop 152=s2Step234ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step234ExitG_retired] at result
  exact result

private def s2Step234ExitGvBefore : Arena := s2Step234ExitFvAfter

private theorem s2Step234ExitGv_Incoming : rowsOwned s2Step234ExitGvBefore [s2Step234ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step234ExitGRow,s2Step234ExitFRow,s2Step234ExitFvRow,s2Step234ExitGvRow] 3 s2Step234ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step234ExitGvBefore (fun q => (0≤q ∧ q<152) ∨ (153≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step234ExitGv_Outgoing : rowsOwned s2Step234ExitGvAfter [s2Step234ExitGvOut] :=
  hmrRows_owned_drop s2Step234ExitGvAfter [s2Step234ExitGOut,s2Step234ExitFOut,s2Step234ExitFvOut,s2Step234ExitGvOut] 3 s2Step234ExitBank_outgoingOwned

private theorem s2Step234ExitGv_distinct : (s2Step234ExitGvRow.sign::s2Step234ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step234ExitGv_owned : (s2Step234ExitGvRow.sign::s2Step234ExitGvRow.payload).toFinset⊆s2Step234ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step234ExitGvBefore (fun q => (0≤q ∧ q<152) ∨ (153≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step234ExitGv_retired : s2Step234ExitGvBefore.retireSet s2Step234ExitGvExtra.toFinset=s2Step234ExitGvAfter := by
  unfold Arena.retireSet s2Step234ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step234ExitGvBefore,s2Step234ExitFvAfter,s2Step234ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step234ExitGv_checked : planRowResizeLog s2Step234ExitGvBefore s2Step234ExitGvRow 131 []=
    some (s2Step234ExitGvAfter,s2Step234ExitGvOut,shrinkRow 771 s2Step234ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step234ExitGvBefore s2Step234ExitGvRow 131 s2Step234ExitGv_distinct s2Step234ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step234ExitGvRow.payload.take 131) s2Step234ExitGvRow.sign=s2Step234ExitGvOut := by decide +kernel
  have hi : s2Step234ExitGvRow.payload.drop 131=s2Step234ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step234ExitGv_retired] at result
  exact result

private theorem s2Step234ExitBank_rows : planWindowRowsLog s2Step234ExitGBefore [(s2Step234ExitGRow,152),(s2Step234ExitFRow,153),(s2Step234ExitFvRow,132),(s2Step234ExitGvRow,131)] [[],[],[],[]]=
    some (s2Step234ExitGvAfter,[s2Step234ExitGOut,s2Step234ExitFOut,s2Step234ExitFvOut,s2Step234ExitGvOut],(shrinkRow 769 s2Step234ExitGExtra ++ (shrinkRow 768 s2Step234ExitFExtra ++ (shrinkRow 770 s2Step234ExitFvExtra ++ (shrinkRow 771 s2Step234ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step234ExitGvAfter [] []=some (s2Step234ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step234ExitGvBefore s2Step234ExitGvAfter s2Step234ExitGvAfter
    s2Step234ExitGvRow s2Step234ExitGvOut 131 [] [] [] []
    (shrinkRow 771 s2Step234ExitGvExtra) ([]) s2Step234ExitGv_Incoming s2Step234ExitGv_checked h4 s2Step234ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step234ExitFvBefore s2Step234ExitFvAfter s2Step234ExitGvAfter
    s2Step234ExitFvRow s2Step234ExitFvOut 132 [] [(s2Step234ExitGvRow,131)] [[]] [s2Step234ExitGvOut]
    (shrinkRow 770 s2Step234ExitFvExtra) ((shrinkRow 771 s2Step234ExitGvExtra ++ [])) s2Step234ExitFv_Incoming s2Step234ExitFv_checked h3 s2Step234ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step234ExitFBefore s2Step234ExitFAfter s2Step234ExitGvAfter
    s2Step234ExitFRow s2Step234ExitFOut 153 [] [(s2Step234ExitFvRow,132),(s2Step234ExitGvRow,131)] [[],[]] [s2Step234ExitFvOut,s2Step234ExitGvOut]
    (shrinkRow 768 s2Step234ExitFExtra) ((shrinkRow 770 s2Step234ExitFvExtra ++ (shrinkRow 771 s2Step234ExitGvExtra ++ []))) s2Step234ExitF_Incoming s2Step234ExitF_checked h2 s2Step234ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step234ExitGBefore s2Step234ExitGAfter s2Step234ExitGvAfter
    s2Step234ExitGRow s2Step234ExitGOut 152 [] [(s2Step234ExitFRow,153),(s2Step234ExitFvRow,132),(s2Step234ExitGvRow,131)] [[],[],[]] [s2Step234ExitFOut,s2Step234ExitFvOut,s2Step234ExitGvOut]
    (shrinkRow 769 s2Step234ExitGExtra) ((shrinkRow 768 s2Step234ExitFExtra ++ (shrinkRow 770 s2Step234ExitFvExtra ++ (shrinkRow 771 s2Step234ExitGvExtra ++ [])))) s2Step234ExitG_Incoming s2Step234ExitG_checked h1 s2Step234ExitG_Outgoing
  exact h0

private theorem s2Step234ExitBank_checked : compileHmrBankResizeLog .exit s2Step234ExitGBefore ⟨s2Step234ExitFRow,s2Step234ExitGRow,s2Step234ExitFvRow,s2Step234ExitGvRow⟩ ⟨153,152,132,131⟩ [[],[],[],[]]=
    some (s2Step234ExitGvAfter,⟨s2Step234ExitFOut,s2Step234ExitGOut,s2Step234ExitFvOut,s2Step234ExitGvOut⟩,(shrinkRow 769 s2Step234ExitGExtra ++ (shrinkRow 768 s2Step234ExitFExtra ++ (shrinkRow 770 s2Step234ExitFvExtra ++ (shrinkRow 771 s2Step234ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step234ExitBank_rows]
  rfl

private theorem s2Step234Add0_apart : Disjoint s2Step234Add0Arena.live s2Step234Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step234Add0Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step234Add0_card : s2Step234Add0Arena.live.card=893 := by
  decide +kernel

private theorem s2Step234Add0_borrowed : s2Step234Add0Arena.checkBorrow (hmrHybridCount s2Step234Add0Arena s2Step234Add0B.length) s2Step234Add0Work=some s2Step234Add0During := by
  have len : s2Step234Add0Work.length=hmrHybridCount s2Step234Add0Arena s2Step234Add0B.length := by
    rw [hmrHybridCount,s2Step234Add0_card]
    decide +kernel
  have nd : s2Step234Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step234Add0Arena s2Step234Add0During s2Step234Add0Work.toFinset s2Step234Add0_bounded s2Step234Add0_apart rfl

private theorem s2Step234Add0_distinct : (814::809::882::(s2Step234Add0A++s2Step234Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step234Add0_owned : (814::809::882::(s2Step234Add0A++s2Step234Add0B)).toFinset⊆s2Step234Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step234Add0Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step234Add0_checked : compileHmrHybridCinLog s2Step234Add0Arena 809 814 882 s2Step234Add0A s2Step234Add0B s2Step234Add0Work=some s2Step234Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step234Add0Arena s2Step234Add0During 809 814 882 s2Step234Add0A s2Step234Add0B s2Step234Add0Work
    (by decide +kernel) (by decide +kernel) s2Step234Add0_distinct
    (fun q hq => s2Step234Add0_owned (List.mem_toFinset.mpr hq)) s2Step234Add0_borrowed

private theorem s2Step234Add1_apart : Disjoint s2Step234Add1Arena.live s2Step234Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step234Add1Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step234Add1_card : s2Step234Add1Arena.live.card=893 := by
  decide +kernel

private theorem s2Step234Add1_borrowed : s2Step234Add1Arena.checkBorrow (hmrHybridCount s2Step234Add1Arena s2Step234Add1B.length) s2Step234Add1Work=some s2Step234Add1During := by
  have len : s2Step234Add1Work.length=hmrHybridCount s2Step234Add1Arena s2Step234Add1B.length := by
    rw [hmrHybridCount,s2Step234Add1_card]
    decide +kernel
  have nd : s2Step234Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step234Add1Arena s2Step234Add1During s2Step234Add1Work.toFinset s2Step234Add1_bounded s2Step234Add1_apart rfl

private theorem s2Step234Add1_distinct : (814::809::882::(s2Step234Add1A++s2Step234Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step234Add1_owned : (814::809::882::(s2Step234Add1A++s2Step234Add1B)).toFinset⊆s2Step234Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step234Add1Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step234Add1_checked : compileHmrHybridCinLog s2Step234Add1Arena 809 814 882 s2Step234Add1A s2Step234Add1B s2Step234Add1Work=some s2Step234Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step234Add1Arena s2Step234Add1During 809 814 882 s2Step234Add1A s2Step234Add1B s2Step234Add1Work
    (by decide +kernel) (by decide +kernel) s2Step234Add1_distinct
    (fun q hq => s2Step234Add1_owned (List.mem_toFinset.mpr hq)) s2Step234Add1_borrowed

private theorem s2Step234F4_apart : Disjoint (s2Step234Add0A++s2Step234Add0B).toFinset (s2Step234Add1A++s2Step234Add1B).toFinset := by
  have nd : ((s2Step234Add0A++s2Step234Add0B)++(s2Step234Add1A++s2Step234Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step234F4_carry : s2Step234F4FlagArena.checkBorrow 1 [882]=some s2Step234Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step234F4FlagArena,s2Step234HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step234F4FlagArena,s2Step234HeadFvAfter,s2Step234Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step234F4_distinct : (820::809::814::882::((s2Step234Add0A++s2Step234Add1A)++(s2Step234Add0B++s2Step234Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step234F4_flag : s2Step234HeadFvAfter.checkBorrow 1 [814]=some s2Step234F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step234HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step234F4_owned : (820::809::((s2Step234Add0A++s2Step234Add1A)++(s2Step234Add0B++s2Step234Add1B))).toFinset⊆s2Step234HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step234HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step234F4_checked : compileHmrHybridF4Log s2Step234HeadFvAfter 820 809 s2Step234Add0A s2Step234Add0B s2Step234Add1A s2Step234Add1B [814] [882] s2Step234Add0Work s2Step234Add1Work=some s2Step234F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step234HeadFvAfter s2Step234F4FlagArena s2Step234Add0Arena s2Step234Add0During s2Step234Add1During 820 809
    s2Step234Add0A s2Step234Add0B s2Step234Add1A s2Step234Add1B [814] [882] s2Step234Add0Work s2Step234Add1Work
    (fun q hq => s2Step234F4_owned (List.mem_toFinset.mpr hq)) s2Step234F4_flag s2Step234F4_carry
    s2Step234F4_distinct s2Step234F4_apart s2Step234Add0_checked s2Step234Add1_checked

private theorem s2Step234Front_branch : s2Step234FrontSigmaArena.checkBorrow 1 [809]=some s2Step234HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step234FrontSigmaArena,s2Step234EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step234FrontSigmaArena,s2Step234EntryGvAfter,s2Step234HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step234Front_entry : HmrFrontEntryValid s2Step234EntryFBefore s2Step234FrontBank 153 132 ⟨153,152,132,131⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step234FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step234EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step234EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step234FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step234Front_sigma : s2Step234EntryGvAfter.checkBorrow 1 [820]=some s2Step234FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step234EntryGvAfter,arenaWires]
  · rfl

private def s2Step234HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step234HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step234HeadFBefore : Arena := s2Step234HeadGAfter

private def s2Step234HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664],768⟩

private def s2Step234HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821],770⟩

private def s2Step234HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152],769⟩

private def s2Step234HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 793],771⟩

private theorem s2Step234HeadBank_incomingDistinct : ([s2Step234HeadGRow,s2Step234HeadFRow,s2Step234HeadGvRow,s2Step234HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step234HeadF_Incoming : rowsOwned s2Step234HeadFBefore [s2Step234HeadFRow,s2Step234HeadGvRow,s2Step234HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step234HeadGRow,s2Step234HeadFRow,s2Step234HeadGvRow,s2Step234HeadFvRow] 1 s2Step234HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step234HeadFBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step234HeadBank_outgoingOwned : rowsOwned s2Step234HeadFvAfter [s2Step234HeadGOut,s2Step234HeadFOut,s2Step234HeadGvOut,s2Step234HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step234HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step234HeadF_Outgoing : rowsOwned s2Step234HeadFvAfter [s2Step234HeadFOut,s2Step234HeadGvOut,s2Step234HeadFvOut] :=
  hmrRows_owned_drop s2Step234HeadFvAfter [s2Step234HeadGOut,s2Step234HeadFOut,s2Step234HeadGvOut,s2Step234HeadFvOut] 1 s2Step234HeadBank_outgoingOwned

private theorem s2Step234HeadF_distinct : (s2Step234HeadFRow.sign::s2Step234HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step234HeadF_owned : (s2Step234HeadFRow.sign::s2Step234HeadFRow.payload).toFinset⊆s2Step234HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step234HeadFBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step234HeadF_reserved : s2Step234HeadFBefore.reserve s2Step234HeadFFresh.toFinset=some s2Step234HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step234HeadFFresh,arenaWires]
  · norm_num [s2Step234HeadFBefore,s2Step234HeadGAfter,s2Step234HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step234HeadFAfter,s2Step234HeadFBefore,s2Step234HeadGAfter,s2Step234HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step234HeadF_checked : planRowResizeLog s2Step234HeadFBefore s2Step234HeadFRow 154 s2Step234HeadFFresh=
    some (s2Step234HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 797],768⟩,growRow 768 s2Step234HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step234HeadFBefore s2Step234HeadFAfter s2Step234HeadFRow 154 s2Step234HeadFFresh
    s2Step234HeadF_distinct s2Step234HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step234HeadF_reserved
  have rowEq : WindowRow.mk (s2Step234HeadFRow.payload++s2Step234HeadFFresh) s2Step234HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 797],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step234HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step234HeadFvBefore : Arena := s2Step234HeadGvAfter

private theorem s2Step234HeadFv_Incoming : rowsOwned s2Step234HeadFvBefore [s2Step234HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step234HeadGRow,s2Step234HeadFRow,s2Step234HeadGvRow,s2Step234HeadFvRow] 3 s2Step234HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step234HeadFvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step234HeadFv_Outgoing : rowsOwned s2Step234HeadFvAfter [s2Step234HeadFvOut] :=
  hmrRows_owned_drop s2Step234HeadFvAfter [s2Step234HeadGOut,s2Step234HeadFOut,s2Step234HeadGvOut,s2Step234HeadFvOut] 3 s2Step234HeadBank_outgoingOwned

private theorem s2Step234HeadFv_distinct : (s2Step234HeadFvRow.sign::s2Step234HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step234HeadFv_owned : (s2Step234HeadFvRow.sign::s2Step234HeadFvRow.payload).toFinset⊆s2Step234HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step234HeadFvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step234HeadFv_reserved : s2Step234HeadFvBefore.reserve s2Step234HeadFvFresh.toFinset=some s2Step234HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step234HeadFvFresh,arenaWires]
  · norm_num [s2Step234HeadFvBefore,s2Step234HeadGvAfter,s2Step234HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step234HeadFvAfter,s2Step234HeadFvBefore,s2Step234HeadGvAfter,s2Step234HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step234HeadFv_checked : planRowResizeLog s2Step234HeadFvBefore s2Step234HeadFvRow 133 s2Step234HeadFvFresh=
    some (s2Step234HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 800],770⟩,growRow 770 s2Step234HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step234HeadFvBefore s2Step234HeadFvAfter s2Step234HeadFvRow 133 s2Step234HeadFvFresh
    s2Step234HeadFv_distinct s2Step234HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step234HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step234HeadFvRow.payload++s2Step234HeadFvFresh) s2Step234HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 800],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step234HeadG_Incoming : rowsOwned s2Step234HeadGBefore [s2Step234HeadGRow,s2Step234HeadFRow,s2Step234HeadGvRow,s2Step234HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step234HeadGRow,s2Step234HeadFRow,s2Step234HeadGvRow,s2Step234HeadFvRow] 0 s2Step234HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step234HeadGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step234HeadG_Outgoing : rowsOwned s2Step234HeadFvAfter [s2Step234HeadGOut,s2Step234HeadFOut,s2Step234HeadGvOut,s2Step234HeadFvOut] :=
  hmrRows_owned_drop s2Step234HeadFvAfter [s2Step234HeadGOut,s2Step234HeadFOut,s2Step234HeadGvOut,s2Step234HeadFvOut] 0 s2Step234HeadBank_outgoingOwned

private theorem s2Step234HeadG_distinct : (s2Step234HeadGRow.sign::s2Step234HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step234HeadG_owned : (s2Step234HeadGRow.sign::s2Step234HeadGRow.payload).toFinset⊆s2Step234HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step234HeadGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step234HeadG_reserved : s2Step234HeadGBefore.reserve s2Step234HeadGFresh.toFinset=some s2Step234HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step234HeadGFresh,arenaWires]
  · norm_num [s2Step234HeadGBefore,s2Step234HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step234HeadGAfter,s2Step234HeadGBefore,s2Step234HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step234HeadG_checked : planRowResizeLog s2Step234HeadGBefore s2Step234HeadGRow 154 s2Step234HeadGFresh=
    some (s2Step234HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 787],769⟩,growRow 769 s2Step234HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step234HeadGBefore s2Step234HeadGAfter s2Step234HeadGRow 154 s2Step234HeadGFresh
    s2Step234HeadG_distinct s2Step234HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step234HeadG_reserved
  have rowEq : WindowRow.mk (s2Step234HeadGRow.payload++s2Step234HeadGFresh) s2Step234HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 787],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step234HeadGvBefore : Arena := s2Step234HeadFAfter

private theorem s2Step234HeadGv_Incoming : rowsOwned s2Step234HeadGvBefore [s2Step234HeadGvRow,s2Step234HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step234HeadGRow,s2Step234HeadFRow,s2Step234HeadGvRow,s2Step234HeadFvRow] 2 s2Step234HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step234HeadGvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step234HeadGv_Outgoing : rowsOwned s2Step234HeadFvAfter [s2Step234HeadGvOut,s2Step234HeadFvOut] :=
  hmrRows_owned_drop s2Step234HeadFvAfter [s2Step234HeadGOut,s2Step234HeadFOut,s2Step234HeadGvOut,s2Step234HeadFvOut] 2 s2Step234HeadBank_outgoingOwned

private theorem s2Step234HeadGv_distinct : (s2Step234HeadGvRow.sign::s2Step234HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step234HeadGv_owned : (s2Step234HeadGvRow.sign::s2Step234HeadGvRow.payload).toFinset⊆s2Step234HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step234HeadGvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step234HeadGv_reserved : s2Step234HeadGvBefore.reserve s2Step234HeadGvFresh.toFinset=some s2Step234HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step234HeadGvFresh,arenaWires]
  · norm_num [s2Step234HeadGvBefore,s2Step234HeadFAfter,s2Step234HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step234HeadGvAfter,s2Step234HeadGvBefore,s2Step234HeadFAfter,s2Step234HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step234HeadGv_checked : planRowResizeLog s2Step234HeadGvBefore s2Step234HeadGvRow 133 s2Step234HeadGvFresh=
    some (s2Step234HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 793, 810],771⟩,growRow 771 s2Step234HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step234HeadGvBefore s2Step234HeadGvAfter s2Step234HeadGvRow 133 s2Step234HeadGvFresh
    s2Step234HeadGv_distinct s2Step234HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step234HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step234HeadGvRow.payload++s2Step234HeadGvFresh) s2Step234HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 793, 810],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step234HeadBank_rows : planWindowRowsLog s2Step234HeadGBefore [(s2Step234HeadGRow,154),(s2Step234HeadFRow,154),(s2Step234HeadGvRow,133),(s2Step234HeadFvRow,133)] [s2Step234HeadGFresh,s2Step234HeadFFresh,s2Step234HeadGvFresh,s2Step234HeadFvFresh]=
    some (s2Step234HeadFvAfter,[s2Step234HeadGOut,s2Step234HeadFOut,s2Step234HeadGvOut,s2Step234HeadFvOut],(growRow 769 s2Step234HeadGFresh ++ (growRow 768 s2Step234HeadFFresh ++ (growRow 771 s2Step234HeadGvFresh ++ (growRow 770 s2Step234HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step234HeadFvAfter [] []=some (s2Step234HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step234HeadFvBefore s2Step234HeadFvAfter s2Step234HeadFvAfter
    s2Step234HeadFvRow s2Step234HeadFvOut 133 s2Step234HeadFvFresh [] [] []
    (growRow 770 s2Step234HeadFvFresh) ([]) s2Step234HeadFv_Incoming s2Step234HeadFv_checked h4 s2Step234HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step234HeadGvBefore s2Step234HeadGvAfter s2Step234HeadFvAfter
    s2Step234HeadGvRow s2Step234HeadGvOut 133 s2Step234HeadGvFresh [(s2Step234HeadFvRow,133)] [s2Step234HeadFvFresh] [s2Step234HeadFvOut]
    (growRow 771 s2Step234HeadGvFresh) ((growRow 770 s2Step234HeadFvFresh ++ [])) s2Step234HeadGv_Incoming s2Step234HeadGv_checked h3 s2Step234HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step234HeadFBefore s2Step234HeadFAfter s2Step234HeadFvAfter
    s2Step234HeadFRow s2Step234HeadFOut 154 s2Step234HeadFFresh [(s2Step234HeadGvRow,133),(s2Step234HeadFvRow,133)] [s2Step234HeadGvFresh,s2Step234HeadFvFresh] [s2Step234HeadGvOut,s2Step234HeadFvOut]
    (growRow 768 s2Step234HeadFFresh) ((growRow 771 s2Step234HeadGvFresh ++ (growRow 770 s2Step234HeadFvFresh ++ []))) s2Step234HeadF_Incoming s2Step234HeadF_checked h2 s2Step234HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step234HeadGBefore s2Step234HeadGAfter s2Step234HeadFvAfter
    s2Step234HeadGRow s2Step234HeadGOut 154 s2Step234HeadGFresh [(s2Step234HeadFRow,154),(s2Step234HeadGvRow,133),(s2Step234HeadFvRow,133)] [s2Step234HeadFFresh,s2Step234HeadGvFresh,s2Step234HeadFvFresh] [s2Step234HeadFOut,s2Step234HeadGvOut,s2Step234HeadFvOut]
    (growRow 769 s2Step234HeadGFresh) ((growRow 768 s2Step234HeadFFresh ++ (growRow 771 s2Step234HeadGvFresh ++ (growRow 770 s2Step234HeadFvFresh ++ [])))) s2Step234HeadG_Incoming s2Step234HeadG_checked h1 s2Step234HeadG_Outgoing
  exact h0

private theorem s2Step234HeadBank_checked : compileHmrBankResizeLog .headroom s2Step234HeadGBefore ⟨s2Step234HeadFRow,s2Step234HeadGRow,s2Step234HeadFvRow,s2Step234HeadGvRow⟩ ⟨154,154,133,133⟩ [s2Step234HeadGFresh,s2Step234HeadFFresh,s2Step234HeadGvFresh,s2Step234HeadFvFresh]=
    some (s2Step234HeadFvAfter,⟨s2Step234HeadFOut,s2Step234HeadGOut,s2Step234HeadFvOut,s2Step234HeadGvOut⟩,(growRow 769 s2Step234HeadGFresh ++ (growRow 768 s2Step234HeadFFresh ++ (growRow 771 s2Step234HeadGvFresh ++ (growRow 770 s2Step234HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step234HeadBank_rows]
  rfl

private theorem s2Step234Front_checked : compileHmrSourceFrontLog s2Step234EntryFBefore s2Step234FrontBank 153 132 ⟨153,152,132,131⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step234FrontLog=some s2Step234FrontPlan := by
  have pairEq : s2Step234FrontPair=⟨s2Step234HeadFRow,s2Step234HeadGRow,s2Step234HeadFvRow,s2Step234HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step234FrontHead=⟨s2Step234ExitFRow,s2Step234ExitGRow,s2Step234ExitFvRow,s2Step234ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step234Add0A=s2Step234FrontHead.f.wires := by decide +kernel
  have gEq : s2Step234Add0B=s2Step234FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step234Add1A=s2Step234FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step234Add1B=s2Step234FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step234EntryFBefore s2Step234FrontBank 153 132 ⟨153,152,132,131⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step234FrontLog s2Step234FrontPlan
  · exact s2Step234Front_entry
  · exact s2Step234EntryBank_checked
  · exact s2Step234Front_sigma
  · rfl
  · exact s2Step234Front_branch
  · rfl
  · simpa only [s2Step234FrontPlan,pairEq] using s2Step234HeadBank_checked
  · simpa only [s2Step234FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step234F4_checked
  · exact s2Step234Counter_checked
  · rfl
  · simpa only [s2Step234FrontPlan,headEq] using s2Step234ExitBank_checked

private theorem s2Step234Complete_explicit_checked : compileHmrEarlyStepLog s2Step234EntryFBefore s2Step234FrontBank 153 132 ⟨153,152,132,131⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 49 s2Step234CompleteLog=some s2Step234CompletePlan := by
  let Q := s2Step234EarlyControlPlan
  have hq := s2Step234EarlyControl_plan_checked
  have fv1 : s2Step234CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step234CompleteOut.fv.payload[2]?.getD s2Step234CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step234CompleteOut.fv.payload[3]?.getD s2Step234CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step234CompleteOut.fv.payload[4]?.getD s2Step234CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step234EntryFBefore s2Step234EarlyControlArena s2Step234FrontBank 153 132 ⟨153,152,132,131⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 49 s2Step234CompleteLog s2Step234FrontPlan Q
    s2Step234Front_checked s2Step234Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step234Complete_owned s2Step234Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step234EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 777 820 s2Step234CompleteOut.fv.second (s2Step234CompleteOut.fv.payload[2]?.getD s2Step234CompleteOut.fv.sign) (s2Step234CompleteOut.fv.payload[3]?.getD s2Step234CompleteOut.fv.sign) (s2Step234CompleteOut.fv.payload[4]?.getD s2Step234CompleteOut.fv.sign) 809 49 s2Step234EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep234Arena : Arena := s2Step234EntryFBefore
def s2PrivateStep234Bank : WindowBank := s2Step234FrontBank
def s2PrivateStep234Spec : HmrSourceWalkStepLog := ⟨153,132,⟨153,152,132,131⟩,49,.early s2Step234CompleteLog⟩
def s2PrivateStep234Plan : HmrSourceStepPlan := .early s2Step234CompletePlan
theorem s2PrivateStep234_source : s2PrivateStep234Spec=s2ObservedLogs224[10] := rfl
theorem s2PrivateStep234_checked : compileHmrSourceStepLog s2PrivateStep234Arena s2PrivateStep234Bank
    s2PrivateStep234Spec.fgWidth s2PrivateStep234Spec.vWidth s2PrivateStep234Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898]
    6 498 234 s2PrivateStep234Spec.need none s2PrivateStep234Spec.log=some s2PrivateStep234Plan := by
  change compileHmrSourceStepLog s2Step234EntryFBefore s2Step234FrontBank 153 132 ⟨153,152,132,131⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 6 498 234 49 none (.early s2Step234CompleteLog)=some (.early s2Step234CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 234<498)]
  rw [s2Step234Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
