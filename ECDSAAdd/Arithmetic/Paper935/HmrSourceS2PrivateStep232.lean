import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep230
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

private def s2Step232CompleteMoves : List (Wire × Wire) := [(793,153)]

private def s2Step232EarlyControlLog : HmrEarlyControlLog := ⟨[793, 797, 787, 809, 821],[810],[800],[814, 882, 826, 842, 885, 891],[]⟩

private def s2Step232FrontLog : HmrFrontAllocationLog := ⟨⟨[[787], [], [], []],[[821], [809], [797], [805]],[[], [], [], []]⟩,[820],[847],[810],[800],[814, 882, 826, 842, 885, 891, 894, 896, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[814, 882, 826, 842, 885, 891, 894, 896, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[810, 800, 814, 882]⟩

private def s2Step232CompleteLog : HmrEarlyStepLog := ⟨s2Step232FrontLog,s2Step232CompleteMoves,s2Step232EarlyControlLog⟩

private def s2Step232ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664],768⟩

private def s2Step232ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805],770⟩

private def s2Step232ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152],769⟩

private def s2Step232ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849],771⟩

private def s2Step232FrontOut : WindowBank := ⟨s2Step232ExitFOut,s2Step232ExitGOut,s2Step232ExitFvOut,s2Step232ExitGvOut⟩

private def s2Step232CompleteOut : WindowBank := s2Step232FrontOut.repacked s2Step232CompleteMoves

private def s2Step232EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<821) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step232EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step232EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step232EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step232EarlyControlPositiveArena,[810],s2Step232EarlyControlEqualityArena,[800],⟨⟨820,false⟩,[⟨⟨810,false⟩,800⟩]⟩⟩

private def s2Step232EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step232EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step232EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<821) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step232EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step232EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step232EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step232EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,793⟩,⟨⟨774,false⟩,797⟩,⟨⟨775,false⟩,787⟩,⟨⟨776,false⟩,809⟩,⟨⟨777,false⟩,821⟩]⟩

private def s2Step232EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step232EarlyControlZeroArena,s2Step232EarlyControlZeroPlan,s2Step232EarlyControlClassPlan,s2Step232EarlyControlFlagArena,s2Step232EarlyControlFittedArena,s2Step232EarlyControlHistoryArena,s2Step232EarlyControlSigmaArena,s2Step232EarlyControlOutputArena,s2Step232EarlyControlLog⟩

private def s2Step232CounterWork : List Wire := [810, 800, 814, 882]

private theorem s2Step232Counter_bounded : s2Step232CounterWork.toFinset⊆arenaWires := by norm_num [s2Step232CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step232HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step232CounterDuring : Arena := ⟨s2Step232HeadFvAfter.live∪s2Step232CounterWork.toFinset,Finset.union_subset s2Step232HeadFvAfter.bounded s2Step232Counter_bounded⟩

private def s2Step232EntryFFresh : List Wire := [787]

private def s2Step232EntryFvFresh : List Wire := []

private def s2Step232EntryGFresh : List Wire := []

private def s2Step232EntryFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step232EntryGvAfter : Arena := s2Step232EntryFAfter

private def s2Step232EntryGvFresh : List Wire := []

private def s2Step232ExitFExtra : List Wire := [787, 809]

private def s2Step232ExitGExtra : List Wire := [153, 821]

private def s2Step232ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<153) ∨ (154≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<821) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step232ExitGvExtra : List Wire := [797]

private def s2Step232Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step232Add0Work : List Wire := [814, 882, 826, 842, 885, 891, 894, 896, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step232Add0_bounded : s2Step232Add0Work.toFinset⊆arenaWires := by
  have h : s2Step232Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step232Add0During : Arena := ⟨s2Step232Add0Arena.live∪s2Step232Add0Work.toFinset,Finset.union_subset s2Step232Add0Arena.bounded s2Step232Add0_bounded⟩

private def s2Step232Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step232Add1Work : List Wire := [814, 882, 826, 842, 885, 891, 894, 896, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step232Add1_bounded : s2Step232Add1Work.toFinset⊆arenaWires := by
  have h : s2Step232Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step232Add1During : Arena := ⟨s2Step232Add1Arena.live∪s2Step232Add1Work.toFinset,Finset.union_subset s2Step232Add1Arena.bounded s2Step232Add1_bounded⟩

private def s2Step232F4FlagArena : Arena := ⟨s2Step232HeadFvAfter.live∪{810},Finset.union_subset s2Step232HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step232F4Plan : HmrHybridF4Plan := ⟨s2Step232F4FlagArena,[810],s2Step232Add0Arena,[800],s2Step232Add0During,s2Step232Add0Work,s2Step232Add1During,s2Step232Add1Work⟩

private def s2Step232HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 787, 809],768⟩

private def s2Step232HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805],770⟩

private def s2Step232HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 821],769⟩

private def s2Step232HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 797],771⟩

private def s2Step232FrontHead : WindowBank := ⟨s2Step232HeadFOut,s2Step232HeadGOut,s2Step232HeadFvOut,s2Step232HeadGvOut⟩

private def s2Step232EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 787],768⟩

private def s2Step232EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804],770⟩

private def s2Step232EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153],769⟩

private def s2Step232EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849],771⟩

private def s2Step232FrontPair : WindowBank := ⟨s2Step232EntryFOut,s2Step232EntryGOut,s2Step232EntryFvOut,s2Step232EntryGvOut⟩

private def s2Step232FrontSigmaArena : Arena := ⟨s2Step232EntryGvAfter.live∪{820},Finset.union_subset s2Step232EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step232HeadFFresh : List Wire := [809]

private def s2Step232HeadFvFresh : List Wire := [805]

private def s2Step232HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<821) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step232HeadGFresh : List Wire := [821]

private def s2Step232HeadGvFresh : List Wire := [797]

private def s2Step232FrontPlan : HmrSourceFront := ⟨s2Step232EntryGvAfter,s2Step232FrontPair,(growRow 768 s2Step232EntryFFresh ++ (growRow 769 s2Step232EntryGFresh ++ (growRow 770 s2Step232EntryFvFresh ++ (growRow 771 s2Step232EntryGvFresh ++ [])))),s2Step232FrontSigmaArena,[820],s2Step232HeadGBefore,[847],
  s2Step232HeadFvAfter,s2Step232FrontHead,(growRow 769 s2Step232HeadGFresh ++ (growRow 768 s2Step232HeadFFresh ++ (growRow 771 s2Step232HeadGvFresh ++ (growRow 770 s2Step232HeadFvFresh ++ [])))),s2Step232F4Plan,s2Step232CounterDuring,s2Step232CounterWork,s2Step232ExitGvAfter,s2Step232FrontOut,(shrinkRow 769 s2Step232ExitGExtra ++ (shrinkRow 768 s2Step232ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step232ExitGvExtra ++ []))))⟩

private def s2Step232CompletePlan : HmrEarlyStepPlan := ⟨s2Step232FrontPlan,s2Step232EarlyControlArena,s2Step232EarlyControlPlan,s2Step232CompleteMoves⟩

private theorem s2Step232Complete_apart : List.Disjoint (s2Step232CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [820, 847, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] := by
  have nd : ((s2Step232CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[820, 847, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step232Complete_owned : (s2Step232CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step232EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step232EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<821) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private def s2Step232CompleteMoveArena : Arena := ⟨s2Step232ExitGvAfter.live∪{153},Finset.union_subset s2Step232ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step232Complete_repack : s2Step232ExitGvAfter.checkRepack s2Step232CompleteMoves=some s2Step232EarlyControlArena := by
  have owned : 793∈s2Step232ExitGvAfter.live := by norm_num [s2Step232ExitGvAfter,arenaWires]
  have reserve : s2Step232ExitGvAfter.reserve {153}=some s2Step232CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step232ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step232CompleteMoveArena.retireSet {793}=s2Step232EarlyControlArena := by
    unfold Arena.retireSet s2Step232EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step232CompleteMoveArena,s2Step232ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step232CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step232CompleteMoveArena.retireSet {793}).checkRepack []=some s2Step232EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step232EarlyControl_branchOwned : ([847] : List Wire).toFinset⊆s2Step232EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step232EarlyControlSigmaArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step232EarlyControl_branch : compileHmrBranchRetirement s2Step232EarlyControlSigmaArena 847=some s2Step232EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step232EarlyControl_branchOwned
  · ext q
    simp [s2Step232EarlyControlOutputArena,s2Step232EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step232EarlyControl_classEqualityBorrow : s2Step232EarlyControlPositiveArena.checkBorrow (([820, 810] : List Wire).length-1) s2Step232EarlyControlLog.classWork=some s2Step232EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step232EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step232EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step232EarlyControlEqualityArena,s2Step232EarlyControlPositiveArena,s2Step232EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step232EarlyControl_classEqualityOwned : ([820, 810] : List Wire).toFinset⊆s2Step232EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step232EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step232EarlyControl_classEquality : compileHmrEqualityLog s2Step232EarlyControlPositiveArena [820, 810] 0 s2Step232EarlyControlLog.classWork=some (s2Step232EarlyControlEqualityArena,s2Step232EarlyControlLog.classWork,s2Step232EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step232EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step232EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step232EarlyControl_classOwned : ([777, 821, 820] : List Wire).toFinset⊆s2Step232EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step232EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step232EarlyControl_positiveBorrow : s2Step232EarlyControlZeroArena.checkBorrow (1) s2Step232EarlyControlLog.positiveWork=some s2Step232EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step232EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step232EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step232EarlyControlPositiveArena,s2Step232EarlyControlZeroArena,s2Step232EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step232EarlyControl_class : compileHmrSourceClassLog s2Step232EarlyControlZeroArena false 777 s2Step232EarlyControlZeroPlan.top 0 820 s2Step232EarlyControlLog.positiveWork s2Step232EarlyControlLog.classWork=some s2Step232EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step232EarlyControlClassPlan s2Step232EarlyControlZeroArena false 777 s2Step232EarlyControlZeroPlan.top 0 820
  constructor
  · decide +kernel
  · exact s2Step232EarlyControl_classOwned
  · exact s2Step232EarlyControl_positiveBorrow
  · exact s2Step232EarlyControl_classEquality

private theorem s2Step232EarlyControl_entryRecordOwned : ([847, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] : List Wire).toFinset⊆s2Step232EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step232EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<821) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step232EarlyControl_entrySigmaOwned : ([820, 254] : List Wire).toFinset⊆s2Step232EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step232EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<821) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step232EarlyControl_fitBorrow : s2Step232EarlyControlFlagArena.checkBorrow ((49-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] : List Wire).length)) s2Step232EarlyControlLog.recordFresh=some s2Step232EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step232EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step232EarlyControlFlagArena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step232EarlyControlFittedArena,s2Step232EarlyControlFlagArena,s2Step232EarlyControlLog,arenaWires]

private theorem s2Step232EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] : List Wire).toFinset⊆s2Step232EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step232EarlyControlFlagArena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step232EarlyControl_fit : compileHmrRecordGrowLog s2Step232EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 49 s2Step232EarlyControlLog.recordFresh=some s2Step232EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step232EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step232EarlyControl_fitBorrow

private theorem s2Step232EarlyControl_flagsBorrow : s2Step232EarlyControlEqualityArena.checkBorrow (6) s2Step232EarlyControlLog.flagWork=some s2Step232EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step232EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step232EarlyControlEqualityArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step232EarlyControlFlagArena,s2Step232EarlyControlEqualityArena,s2Step232EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step232EarlyControl_flagsOwned : ([800, 253, 252, 251] : List Wire).toFinset⊆s2Step232EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step232EarlyControlEqualityArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step232EarlyControl_flags : compileHmrFlagsLog s2Step232EarlyControlClassPlan.equalityArena s2Step232EarlyControlClassPlan.equality.top 253 252 251 s2Step232EarlyControlLog.flagWork=some s2Step232EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step232EarlyControl_flagsOwned⟩
  · exact s2Step232EarlyControl_flagsBorrow

private theorem s2Step232EarlyControl_historyBorrow : s2Step232EarlyControlArena.checkBorrow ((49-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] : List Wire).length)) s2Step232EarlyControlLog.recordFresh=some s2Step232EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step232EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step232EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<821) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step232EarlyControlHistoryArena,s2Step232EarlyControlArena,s2Step232EarlyControlLog,arenaWires]

private theorem s2Step232EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] : List Wire).toFinset⊆s2Step232EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step232EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<821) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step232EarlyControl_history : compileHmrRecordGrowLog s2Step232EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 49 s2Step232EarlyControlLog.recordFresh=some s2Step232EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step232EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step232EarlyControl_historyBorrow

private theorem s2Step232EarlyControl_sigmaOwned : ([254, 820] : List Wire).toFinset⊆s2Step232EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step232EarlyControlHistoryArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<821) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step232EarlyControl_sigmaReleaseOwned : ([820] : List Wire).toFinset⊆s2Step232EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step232EarlyControlHistoryArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<821) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step232EarlyControl_sigmaRelease : s2Step232EarlyControlHistoryArena.release {820} (fun _ => false)=some s2Step232EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step232EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step232EarlyControlSigmaArena,s2Step232EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step232EarlyControl_sigma : compileHmrSigmaDropLog s2Step232EarlyControlHistoryArena false 0 0 254 820 []=some s2Step232EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step232EarlyControl_sigmaOwned⟩
  · exact s2Step232EarlyControl_sigmaRelease

private theorem s2Step232EarlyControl_zeroBorrow : s2Step232EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step232EarlyControlLog.zeroWork=some s2Step232EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step232EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step232EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<821) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step232EarlyControlZeroArena,s2Step232EarlyControlArena,s2Step232EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step232EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step232EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step232EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<821) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step232EarlyControl_zero : compileHmrEqualityLog s2Step232EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step232EarlyControlLog.zeroWork=some (s2Step232EarlyControlZeroArena,s2Step232EarlyControlLog.zeroWork,s2Step232EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step232EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step232EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step232EarlyControl_logged : s2Step232EarlyControlPlan.Logged s2Step232EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 777 820 254 253 252 251 847 49 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step232EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step232EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step232EarlyControl_zero
  · exact s2Step232EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step232EarlyControl_flags
  · exact s2Step232EarlyControl_fit
  · exact s2Step232EarlyControl_history
  · exact s2Step232EarlyControl_sigma
  · exact s2Step232EarlyControl_branch

private theorem s2Step232EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step232EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 777 820 254 253 252 251 847 49 s2Step232EarlyControlLog=some s2Step232EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step232EarlyControlPlan s2Step232EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 777 820 254 253 252 251 847 49 s2Step232EarlyControl_logged

private def s2Step232EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step232EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664],768⟩

private def s2Step232EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804],770⟩

private def s2Step232EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153],769⟩

private def s2Step232EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849],771⟩

private def s2Step232FrontBank : WindowBank := ⟨s2Step232EntryFRow,s2Step232EntryGRow,s2Step232EntryFvRow,s2Step232EntryGvRow⟩

private def s2Step232Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 787, 809, 768]

private def s2Step232Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 821, 769]

private def s2Step232Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 770]

private def s2Step232Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 797, 771]

private theorem s2Step232Counter_apart : Disjoint s2Step232HeadFvAfter.live s2Step232CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step232HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step232Counter_borrowed : s2Step232HeadFvAfter.checkBorrow 4 s2Step232CounterWork=some s2Step232CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step232HeadFvAfter s2Step232CounterDuring s2Step232CounterWork.toFinset s2Step232Counter_bounded s2Step232Counter_apart rfl

private theorem s2Step232Counter_owned : (820::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step232HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step232HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step232Counter_checked : compileHmrCounterStepLog s2Step232HeadFvAfter true 820 [772, 773, 774, 775, 776, 777] s2Step232CounterWork=some s2Step232CounterDuring := by
  have owned : ∀q∈820::[772, 773, 774, 775, 776, 777],q∈s2Step232HeadFvAfter.live := fun q hq => s2Step232Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step232Counter_borrowed

private theorem s2Step232EntryBank_incomingDistinct : ([s2Step232EntryFRow,s2Step232EntryGRow,s2Step232EntryFvRow,s2Step232EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step232EntryF_Incoming : rowsOwned s2Step232EntryFBefore [s2Step232EntryFRow,s2Step232EntryGRow,s2Step232EntryFvRow,s2Step232EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step232EntryFRow,s2Step232EntryGRow,s2Step232EntryFvRow,s2Step232EntryGvRow] 0 s2Step232EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step232EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step232EntryBank_outgoingOwned : rowsOwned s2Step232EntryGvAfter [s2Step232EntryFOut,s2Step232EntryGOut,s2Step232EntryFvOut,s2Step232EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step232EntryGvAfter (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step232EntryF_Outgoing : rowsOwned s2Step232EntryGvAfter [s2Step232EntryFOut,s2Step232EntryGOut,s2Step232EntryFvOut,s2Step232EntryGvOut] :=
  hmrRows_owned_drop s2Step232EntryGvAfter [s2Step232EntryFOut,s2Step232EntryGOut,s2Step232EntryFvOut,s2Step232EntryGvOut] 0 s2Step232EntryBank_outgoingOwned

private theorem s2Step232EntryF_distinct : (s2Step232EntryFRow.sign::s2Step232EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step232EntryF_owned : (s2Step232EntryFRow.sign::s2Step232EntryFRow.payload).toFinset⊆s2Step232EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step232EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step232EntryF_reserved : s2Step232EntryFBefore.reserve s2Step232EntryFFresh.toFinset=some s2Step232EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step232EntryFFresh,arenaWires]
  · norm_num [s2Step232EntryFBefore,s2Step232EntryFFresh,arenaWires]
  · ext q
    simp only [s2Step232EntryFAfter,s2Step232EntryFBefore,s2Step232EntryFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step232EntryF_checked : planRowResizeLog s2Step232EntryFBefore s2Step232EntryFRow 154 s2Step232EntryFFresh=
    some (s2Step232EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 787],768⟩,growRow 768 s2Step232EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step232EntryFBefore s2Step232EntryFAfter s2Step232EntryFRow 154 s2Step232EntryFFresh
    s2Step232EntryF_distinct s2Step232EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step232EntryF_reserved
  have rowEq : WindowRow.mk (s2Step232EntryFRow.payload++s2Step232EntryFFresh) s2Step232EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 787],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step232EntryFvAfter : Arena := s2Step232EntryFAfter

private def s2Step232EntryFvBefore : Arena := s2Step232EntryFAfter

private theorem s2Step232EntryFv_Incoming : rowsOwned s2Step232EntryFvBefore [s2Step232EntryFvRow,s2Step232EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step232EntryFRow,s2Step232EntryGRow,s2Step232EntryFvRow,s2Step232EntryGvRow] 2 s2Step232EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step232EntryFvBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step232EntryFv_Outgoing : rowsOwned s2Step232EntryGvAfter [s2Step232EntryFvOut,s2Step232EntryGvOut] :=
  hmrRows_owned_drop s2Step232EntryGvAfter [s2Step232EntryFOut,s2Step232EntryGOut,s2Step232EntryFvOut,s2Step232EntryGvOut] 2 s2Step232EntryBank_outgoingOwned

private theorem s2Step232EntryFv_distinct : (s2Step232EntryFvRow.sign::s2Step232EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step232EntryFv_owned : (s2Step232EntryFvRow.sign::s2Step232EntryFvRow.payload).toFinset⊆s2Step232EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step232EntryFvBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step232EntryFv_reserved : s2Step232EntryFvBefore.reserve s2Step232EntryFvFresh.toFinset=some s2Step232EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step232EntryFvFresh,arenaWires]
  · norm_num [s2Step232EntryFvBefore,s2Step232EntryFAfter,s2Step232EntryFvFresh,arenaWires]
  · simp only [s2Step232EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step232EntryFv_checked : planRowResizeLog s2Step232EntryFvBefore s2Step232EntryFvRow 130 s2Step232EntryFvFresh=
    some (s2Step232EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804],770⟩,growRow 770 s2Step232EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step232EntryFvBefore s2Step232EntryFvAfter s2Step232EntryFvRow 130 s2Step232EntryFvFresh
    s2Step232EntryFv_distinct s2Step232EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step232EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step232EntryFvRow.payload++s2Step232EntryFvFresh) s2Step232EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step232EntryGAfter : Arena := s2Step232EntryFAfter

private def s2Step232EntryGBefore : Arena := s2Step232EntryFAfter

private theorem s2Step232EntryG_Incoming : rowsOwned s2Step232EntryGBefore [s2Step232EntryGRow,s2Step232EntryFvRow,s2Step232EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step232EntryFRow,s2Step232EntryGRow,s2Step232EntryFvRow,s2Step232EntryGvRow] 1 s2Step232EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step232EntryGBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step232EntryG_Outgoing : rowsOwned s2Step232EntryGvAfter [s2Step232EntryGOut,s2Step232EntryFvOut,s2Step232EntryGvOut] :=
  hmrRows_owned_drop s2Step232EntryGvAfter [s2Step232EntryFOut,s2Step232EntryGOut,s2Step232EntryFvOut,s2Step232EntryGvOut] 1 s2Step232EntryBank_outgoingOwned

private theorem s2Step232EntryG_distinct : (s2Step232EntryGRow.sign::s2Step232EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step232EntryG_owned : (s2Step232EntryGRow.sign::s2Step232EntryGRow.payload).toFinset⊆s2Step232EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step232EntryGBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step232EntryG_reserved : s2Step232EntryGBefore.reserve s2Step232EntryGFresh.toFinset=some s2Step232EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step232EntryGFresh,arenaWires]
  · norm_num [s2Step232EntryGBefore,s2Step232EntryFAfter,s2Step232EntryGFresh,arenaWires]
  · simp only [s2Step232EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step232EntryG_checked : planRowResizeLog s2Step232EntryGBefore s2Step232EntryGRow 154 s2Step232EntryGFresh=
    some (s2Step232EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153],769⟩,growRow 769 s2Step232EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step232EntryGBefore s2Step232EntryGAfter s2Step232EntryGRow 154 s2Step232EntryGFresh
    s2Step232EntryG_distinct s2Step232EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step232EntryG_reserved
  have rowEq : WindowRow.mk (s2Step232EntryGRow.payload++s2Step232EntryGFresh) s2Step232EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step232EntryGvBefore : Arena := s2Step232EntryFAfter

private theorem s2Step232EntryGv_Incoming : rowsOwned s2Step232EntryGvBefore [s2Step232EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step232EntryFRow,s2Step232EntryGRow,s2Step232EntryFvRow,s2Step232EntryGvRow] 3 s2Step232EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step232EntryGvBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step232EntryGv_Outgoing : rowsOwned s2Step232EntryGvAfter [s2Step232EntryGvOut] :=
  hmrRows_owned_drop s2Step232EntryGvAfter [s2Step232EntryFOut,s2Step232EntryGOut,s2Step232EntryFvOut,s2Step232EntryGvOut] 3 s2Step232EntryBank_outgoingOwned

private theorem s2Step232EntryGv_distinct : (s2Step232EntryGvRow.sign::s2Step232EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step232EntryGv_owned : (s2Step232EntryGvRow.sign::s2Step232EntryGvRow.payload).toFinset⊆s2Step232EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step232EntryGvBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step232EntryGv_reserved : s2Step232EntryGvBefore.reserve s2Step232EntryGvFresh.toFinset=some s2Step232EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step232EntryGvFresh,arenaWires]
  · norm_num [s2Step232EntryGvBefore,s2Step232EntryFAfter,s2Step232EntryGvFresh,arenaWires]
  · simp only [s2Step232EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step232EntryGv_checked : planRowResizeLog s2Step232EntryGvBefore s2Step232EntryGvRow 130 s2Step232EntryGvFresh=
    some (s2Step232EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849],771⟩,growRow 771 s2Step232EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step232EntryGvBefore s2Step232EntryGvAfter s2Step232EntryGvRow 130 s2Step232EntryGvFresh
    s2Step232EntryGv_distinct s2Step232EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step232EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step232EntryGvRow.payload++s2Step232EntryGvFresh) s2Step232EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step232EntryBank_rows : planWindowRowsLog s2Step232EntryFBefore [(s2Step232EntryFRow,154),(s2Step232EntryGRow,154),(s2Step232EntryFvRow,130),(s2Step232EntryGvRow,130)] [s2Step232EntryFFresh,s2Step232EntryGFresh,s2Step232EntryFvFresh,s2Step232EntryGvFresh]=
    some (s2Step232EntryGvAfter,[s2Step232EntryFOut,s2Step232EntryGOut,s2Step232EntryFvOut,s2Step232EntryGvOut],(growRow 768 s2Step232EntryFFresh ++ (growRow 769 s2Step232EntryGFresh ++ (growRow 770 s2Step232EntryFvFresh ++ (growRow 771 s2Step232EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step232EntryGvAfter [] []=some (s2Step232EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step232EntryGvBefore s2Step232EntryGvAfter s2Step232EntryGvAfter
    s2Step232EntryGvRow s2Step232EntryGvOut 130 s2Step232EntryGvFresh [] [] []
    (growRow 771 s2Step232EntryGvFresh) ([]) s2Step232EntryGv_Incoming s2Step232EntryGv_checked h4 s2Step232EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step232EntryFvBefore s2Step232EntryFvAfter s2Step232EntryGvAfter
    s2Step232EntryFvRow s2Step232EntryFvOut 130 s2Step232EntryFvFresh [(s2Step232EntryGvRow,130)] [s2Step232EntryGvFresh] [s2Step232EntryGvOut]
    (growRow 770 s2Step232EntryFvFresh) ((growRow 771 s2Step232EntryGvFresh ++ [])) s2Step232EntryFv_Incoming s2Step232EntryFv_checked h3 s2Step232EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step232EntryGBefore s2Step232EntryGAfter s2Step232EntryGvAfter
    s2Step232EntryGRow s2Step232EntryGOut 154 s2Step232EntryGFresh [(s2Step232EntryFvRow,130),(s2Step232EntryGvRow,130)] [s2Step232EntryFvFresh,s2Step232EntryGvFresh] [s2Step232EntryFvOut,s2Step232EntryGvOut]
    (growRow 769 s2Step232EntryGFresh) ((growRow 770 s2Step232EntryFvFresh ++ (growRow 771 s2Step232EntryGvFresh ++ []))) s2Step232EntryG_Incoming s2Step232EntryG_checked h2 s2Step232EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step232EntryFBefore s2Step232EntryFAfter s2Step232EntryGvAfter
    s2Step232EntryFRow s2Step232EntryFOut 154 s2Step232EntryFFresh [(s2Step232EntryGRow,154),(s2Step232EntryFvRow,130),(s2Step232EntryGvRow,130)] [s2Step232EntryGFresh,s2Step232EntryFvFresh,s2Step232EntryGvFresh] [s2Step232EntryGOut,s2Step232EntryFvOut,s2Step232EntryGvOut]
    (growRow 768 s2Step232EntryFFresh) ((growRow 769 s2Step232EntryGFresh ++ (growRow 770 s2Step232EntryFvFresh ++ (growRow 771 s2Step232EntryGvFresh ++ [])))) s2Step232EntryF_Incoming s2Step232EntryF_checked h1 s2Step232EntryF_Outgoing
  exact h0

private theorem s2Step232EntryBank_checked : compileHmrBankResizeLog .entry s2Step232EntryFBefore ⟨s2Step232EntryFRow,s2Step232EntryGRow,s2Step232EntryFvRow,s2Step232EntryGvRow⟩ ⟨154,154,130,130⟩ [s2Step232EntryFFresh,s2Step232EntryGFresh,s2Step232EntryFvFresh,s2Step232EntryGvFresh]=
    some (s2Step232EntryGvAfter,⟨s2Step232EntryFOut,s2Step232EntryGOut,s2Step232EntryFvOut,s2Step232EntryGvOut⟩,(growRow 768 s2Step232EntryFFresh ++ (growRow 769 s2Step232EntryGFresh ++ (growRow 770 s2Step232EntryFvFresh ++ (growRow 771 s2Step232EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step232EntryBank_rows]
  rfl

private def s2Step232ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<153) ∨ (154≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<821) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step232ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<153) ∨ (154≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<821) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step232ExitFBefore : Arena := s2Step232ExitGAfter

private def s2Step232ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 787, 809],768⟩

private def s2Step232ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805],770⟩

private def s2Step232ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 821],769⟩

private def s2Step232ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 797],771⟩

private theorem s2Step232ExitBank_incomingDistinct : ([s2Step232ExitGRow,s2Step232ExitFRow,s2Step232ExitFvRow,s2Step232ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step232ExitF_Incoming : rowsOwned s2Step232ExitFBefore [s2Step232ExitFRow,s2Step232ExitFvRow,s2Step232ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step232ExitGRow,s2Step232ExitFRow,s2Step232ExitFvRow,s2Step232ExitGvRow] 1 s2Step232ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step232ExitFBefore (fun q => (0≤q ∧ q<153) ∨ (154≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<821) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step232ExitBank_outgoingOwned : rowsOwned s2Step232ExitGvAfter [s2Step232ExitGOut,s2Step232ExitFOut,s2Step232ExitFvOut,s2Step232ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step232ExitGvAfter (fun q => (0≤q ∧ q<153) ∨ (154≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<821) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step232ExitF_Outgoing : rowsOwned s2Step232ExitGvAfter [s2Step232ExitFOut,s2Step232ExitFvOut,s2Step232ExitGvOut] :=
  hmrRows_owned_drop s2Step232ExitGvAfter [s2Step232ExitGOut,s2Step232ExitFOut,s2Step232ExitFvOut,s2Step232ExitGvOut] 1 s2Step232ExitBank_outgoingOwned

private theorem s2Step232ExitF_distinct : (s2Step232ExitFRow.sign::s2Step232ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step232ExitF_owned : (s2Step232ExitFRow.sign::s2Step232ExitFRow.payload).toFinset⊆s2Step232ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step232ExitFBefore (fun q => (0≤q ∧ q<153) ∨ (154≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<821) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step232ExitF_retired : s2Step232ExitFBefore.retireSet s2Step232ExitFExtra.toFinset=s2Step232ExitFAfter := by
  unfold Arena.retireSet s2Step232ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step232ExitFBefore,s2Step232ExitGAfter,s2Step232ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step232ExitF_checked : planRowResizeLog s2Step232ExitFBefore s2Step232ExitFRow 153 []=
    some (s2Step232ExitFAfter,s2Step232ExitFOut,shrinkRow 768 s2Step232ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step232ExitFBefore s2Step232ExitFRow 153 s2Step232ExitF_distinct s2Step232ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step232ExitFRow.payload.take 153) s2Step232ExitFRow.sign=s2Step232ExitFOut := by decide +kernel
  have hi : s2Step232ExitFRow.payload.drop 153=s2Step232ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step232ExitF_retired] at result
  exact result

private def s2Step232ExitFvAfter : Arena := s2Step232ExitFAfter

private def s2Step232ExitFvBefore : Arena := s2Step232ExitFAfter

private theorem s2Step232ExitFv_Incoming : rowsOwned s2Step232ExitFvBefore [s2Step232ExitFvRow,s2Step232ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step232ExitGRow,s2Step232ExitFRow,s2Step232ExitFvRow,s2Step232ExitGvRow] 2 s2Step232ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step232ExitFvBefore (fun q => (0≤q ∧ q<153) ∨ (154≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<821) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step232ExitFv_Outgoing : rowsOwned s2Step232ExitGvAfter [s2Step232ExitFvOut,s2Step232ExitGvOut] :=
  hmrRows_owned_drop s2Step232ExitGvAfter [s2Step232ExitGOut,s2Step232ExitFOut,s2Step232ExitFvOut,s2Step232ExitGvOut] 2 s2Step232ExitBank_outgoingOwned

private theorem s2Step232ExitFv_distinct : (s2Step232ExitFvRow.sign::s2Step232ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step232ExitFv_owned : (s2Step232ExitFvRow.sign::s2Step232ExitFvRow.payload).toFinset⊆s2Step232ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step232ExitFvBefore (fun q => (0≤q ∧ q<153) ∨ (154≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<821) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step232ExitFv_reserved : s2Step232ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step232ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step232ExitFv_checked : planRowResizeLog s2Step232ExitFvBefore s2Step232ExitFvRow 131 []=
    some (s2Step232ExitFvAfter,s2Step232ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step232ExitFvBefore s2Step232ExitFvAfter s2Step232ExitFvRow 131 []
    s2Step232ExitFv_distinct s2Step232ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step232ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step232ExitFvRow.payload++[]) s2Step232ExitFvRow.sign=s2Step232ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step232ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private theorem s2Step232ExitG_Incoming : rowsOwned s2Step232ExitGBefore [s2Step232ExitGRow,s2Step232ExitFRow,s2Step232ExitFvRow,s2Step232ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step232ExitGRow,s2Step232ExitFRow,s2Step232ExitFvRow,s2Step232ExitGvRow] 0 s2Step232ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step232ExitGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step232ExitG_Outgoing : rowsOwned s2Step232ExitGvAfter [s2Step232ExitGOut,s2Step232ExitFOut,s2Step232ExitFvOut,s2Step232ExitGvOut] :=
  hmrRows_owned_drop s2Step232ExitGvAfter [s2Step232ExitGOut,s2Step232ExitFOut,s2Step232ExitFvOut,s2Step232ExitGvOut] 0 s2Step232ExitBank_outgoingOwned

private theorem s2Step232ExitG_distinct : (s2Step232ExitGRow.sign::s2Step232ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step232ExitG_owned : (s2Step232ExitGRow.sign::s2Step232ExitGRow.payload).toFinset⊆s2Step232ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step232ExitGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step232ExitG_retired : s2Step232ExitGBefore.retireSet s2Step232ExitGExtra.toFinset=s2Step232ExitGAfter := by
  unfold Arena.retireSet s2Step232ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step232ExitGBefore,s2Step232ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step232ExitG_checked : planRowResizeLog s2Step232ExitGBefore s2Step232ExitGRow 153 []=
    some (s2Step232ExitGAfter,s2Step232ExitGOut,shrinkRow 769 s2Step232ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step232ExitGBefore s2Step232ExitGRow 153 s2Step232ExitG_distinct s2Step232ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step232ExitGRow.payload.take 153) s2Step232ExitGRow.sign=s2Step232ExitGOut := by decide +kernel
  have hi : s2Step232ExitGRow.payload.drop 153=s2Step232ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step232ExitG_retired] at result
  exact result

private def s2Step232ExitGvBefore : Arena := s2Step232ExitFAfter

private theorem s2Step232ExitGv_Incoming : rowsOwned s2Step232ExitGvBefore [s2Step232ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step232ExitGRow,s2Step232ExitFRow,s2Step232ExitFvRow,s2Step232ExitGvRow] 3 s2Step232ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step232ExitGvBefore (fun q => (0≤q ∧ q<153) ∨ (154≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<821) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step232ExitGv_Outgoing : rowsOwned s2Step232ExitGvAfter [s2Step232ExitGvOut] :=
  hmrRows_owned_drop s2Step232ExitGvAfter [s2Step232ExitGOut,s2Step232ExitFOut,s2Step232ExitFvOut,s2Step232ExitGvOut] 3 s2Step232ExitBank_outgoingOwned

private theorem s2Step232ExitGv_distinct : (s2Step232ExitGvRow.sign::s2Step232ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step232ExitGv_owned : (s2Step232ExitGvRow.sign::s2Step232ExitGvRow.payload).toFinset⊆s2Step232ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step232ExitGvBefore (fun q => (0≤q ∧ q<153) ∨ (154≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<821) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step232ExitGv_retired : s2Step232ExitGvBefore.retireSet s2Step232ExitGvExtra.toFinset=s2Step232ExitGvAfter := by
  unfold Arena.retireSet s2Step232ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step232ExitGvBefore,s2Step232ExitFAfter,s2Step232ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step232ExitGv_checked : planRowResizeLog s2Step232ExitGvBefore s2Step232ExitGvRow 130 []=
    some (s2Step232ExitGvAfter,s2Step232ExitGvOut,shrinkRow 771 s2Step232ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step232ExitGvBefore s2Step232ExitGvRow 130 s2Step232ExitGv_distinct s2Step232ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step232ExitGvRow.payload.take 130) s2Step232ExitGvRow.sign=s2Step232ExitGvOut := by decide +kernel
  have hi : s2Step232ExitGvRow.payload.drop 130=s2Step232ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step232ExitGv_retired] at result
  exact result

private theorem s2Step232ExitBank_rows : planWindowRowsLog s2Step232ExitGBefore [(s2Step232ExitGRow,153),(s2Step232ExitFRow,153),(s2Step232ExitFvRow,131),(s2Step232ExitGvRow,130)] [[],[],[],[]]=
    some (s2Step232ExitGvAfter,[s2Step232ExitGOut,s2Step232ExitFOut,s2Step232ExitFvOut,s2Step232ExitGvOut],(shrinkRow 769 s2Step232ExitGExtra ++ (shrinkRow 768 s2Step232ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step232ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step232ExitGvAfter [] []=some (s2Step232ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step232ExitGvBefore s2Step232ExitGvAfter s2Step232ExitGvAfter
    s2Step232ExitGvRow s2Step232ExitGvOut 130 [] [] [] []
    (shrinkRow 771 s2Step232ExitGvExtra) ([]) s2Step232ExitGv_Incoming s2Step232ExitGv_checked h4 s2Step232ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step232ExitFvBefore s2Step232ExitFvAfter s2Step232ExitGvAfter
    s2Step232ExitFvRow s2Step232ExitFvOut 131 [] [(s2Step232ExitGvRow,130)] [[]] [s2Step232ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step232ExitGvExtra ++ [])) s2Step232ExitFv_Incoming s2Step232ExitFv_checked h3 s2Step232ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step232ExitFBefore s2Step232ExitFAfter s2Step232ExitGvAfter
    s2Step232ExitFRow s2Step232ExitFOut 153 [] [(s2Step232ExitFvRow,131),(s2Step232ExitGvRow,130)] [[],[]] [s2Step232ExitFvOut,s2Step232ExitGvOut]
    (shrinkRow 768 s2Step232ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step232ExitGvExtra ++ []))) s2Step232ExitF_Incoming s2Step232ExitF_checked h2 s2Step232ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step232ExitGBefore s2Step232ExitGAfter s2Step232ExitGvAfter
    s2Step232ExitGRow s2Step232ExitGOut 153 [] [(s2Step232ExitFRow,153),(s2Step232ExitFvRow,131),(s2Step232ExitGvRow,130)] [[],[],[]] [s2Step232ExitFOut,s2Step232ExitFvOut,s2Step232ExitGvOut]
    (shrinkRow 769 s2Step232ExitGExtra) ((shrinkRow 768 s2Step232ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step232ExitGvExtra ++ [])))) s2Step232ExitG_Incoming s2Step232ExitG_checked h1 s2Step232ExitG_Outgoing
  exact h0

private theorem s2Step232ExitBank_checked : compileHmrBankResizeLog .exit s2Step232ExitGBefore ⟨s2Step232ExitFRow,s2Step232ExitGRow,s2Step232ExitFvRow,s2Step232ExitGvRow⟩ ⟨153,153,131,130⟩ [[],[],[],[]]=
    some (s2Step232ExitGvAfter,⟨s2Step232ExitFOut,s2Step232ExitGOut,s2Step232ExitFvOut,s2Step232ExitGvOut⟩,(shrinkRow 769 s2Step232ExitGExtra ++ (shrinkRow 768 s2Step232ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step232ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step232ExitBank_rows]
  rfl

private theorem s2Step232Add0_apart : Disjoint s2Step232Add0Arena.live s2Step232Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step232Add0Arena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step232Add0_card : s2Step232Add0Arena.live.card=891 := by
  decide +kernel

private theorem s2Step232Add0_borrowed : s2Step232Add0Arena.checkBorrow (hmrHybridCount s2Step232Add0Arena s2Step232Add0B.length) s2Step232Add0Work=some s2Step232Add0During := by
  have len : s2Step232Add0Work.length=hmrHybridCount s2Step232Add0Arena s2Step232Add0B.length := by
    rw [hmrHybridCount,s2Step232Add0_card]
    decide +kernel
  have nd : s2Step232Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step232Add0Arena s2Step232Add0During s2Step232Add0Work.toFinset s2Step232Add0_bounded s2Step232Add0_apart rfl

private theorem s2Step232Add0_distinct : (810::847::800::(s2Step232Add0A++s2Step232Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step232Add0_owned : (810::847::800::(s2Step232Add0A++s2Step232Add0B)).toFinset⊆s2Step232Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step232Add0Arena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step232Add0_checked : compileHmrHybridCinLog s2Step232Add0Arena 847 810 800 s2Step232Add0A s2Step232Add0B s2Step232Add0Work=some s2Step232Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step232Add0Arena s2Step232Add0During 847 810 800 s2Step232Add0A s2Step232Add0B s2Step232Add0Work
    (by decide +kernel) (by decide +kernel) s2Step232Add0_distinct
    (fun q hq => s2Step232Add0_owned (List.mem_toFinset.mpr hq)) s2Step232Add0_borrowed

private theorem s2Step232Add1_apart : Disjoint s2Step232Add1Arena.live s2Step232Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step232Add1Arena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step232Add1_card : s2Step232Add1Arena.live.card=891 := by
  decide +kernel

private theorem s2Step232Add1_borrowed : s2Step232Add1Arena.checkBorrow (hmrHybridCount s2Step232Add1Arena s2Step232Add1B.length) s2Step232Add1Work=some s2Step232Add1During := by
  have len : s2Step232Add1Work.length=hmrHybridCount s2Step232Add1Arena s2Step232Add1B.length := by
    rw [hmrHybridCount,s2Step232Add1_card]
    decide +kernel
  have nd : s2Step232Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step232Add1Arena s2Step232Add1During s2Step232Add1Work.toFinset s2Step232Add1_bounded s2Step232Add1_apart rfl

private theorem s2Step232Add1_distinct : (810::847::800::(s2Step232Add1A++s2Step232Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step232Add1_owned : (810::847::800::(s2Step232Add1A++s2Step232Add1B)).toFinset⊆s2Step232Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step232Add1Arena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step232Add1_checked : compileHmrHybridCinLog s2Step232Add1Arena 847 810 800 s2Step232Add1A s2Step232Add1B s2Step232Add1Work=some s2Step232Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step232Add1Arena s2Step232Add1During 847 810 800 s2Step232Add1A s2Step232Add1B s2Step232Add1Work
    (by decide +kernel) (by decide +kernel) s2Step232Add1_distinct
    (fun q hq => s2Step232Add1_owned (List.mem_toFinset.mpr hq)) s2Step232Add1_borrowed

private theorem s2Step232F4_apart : Disjoint (s2Step232Add0A++s2Step232Add0B).toFinset (s2Step232Add1A++s2Step232Add1B).toFinset := by
  have nd : ((s2Step232Add0A++s2Step232Add0B)++(s2Step232Add1A++s2Step232Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step232F4_carry : s2Step232F4FlagArena.checkBorrow 1 [800]=some s2Step232Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step232F4FlagArena,s2Step232HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step232F4FlagArena,s2Step232HeadFvAfter,s2Step232Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step232F4_distinct : (820::847::810::800::((s2Step232Add0A++s2Step232Add1A)++(s2Step232Add0B++s2Step232Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step232F4_flag : s2Step232HeadFvAfter.checkBorrow 1 [810]=some s2Step232F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step232HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step232F4_owned : (820::847::((s2Step232Add0A++s2Step232Add1A)++(s2Step232Add0B++s2Step232Add1B))).toFinset⊆s2Step232HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step232HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step232F4_checked : compileHmrHybridF4Log s2Step232HeadFvAfter 820 847 s2Step232Add0A s2Step232Add0B s2Step232Add1A s2Step232Add1B [810] [800] s2Step232Add0Work s2Step232Add1Work=some s2Step232F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step232HeadFvAfter s2Step232F4FlagArena s2Step232Add0Arena s2Step232Add0During s2Step232Add1During 820 847
    s2Step232Add0A s2Step232Add0B s2Step232Add1A s2Step232Add1B [810] [800] s2Step232Add0Work s2Step232Add1Work
    (fun q hq => s2Step232F4_owned (List.mem_toFinset.mpr hq)) s2Step232F4_flag s2Step232F4_carry
    s2Step232F4_distinct s2Step232F4_apart s2Step232Add0_checked s2Step232Add1_checked

private theorem s2Step232Front_branch : s2Step232FrontSigmaArena.checkBorrow 1 [847]=some s2Step232HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step232FrontSigmaArena,s2Step232EntryGvAfter,s2Step232EntryFAfter,arenaWires]
  · ext q
    simp only [s2Step232FrontSigmaArena,s2Step232EntryGvAfter,s2Step232EntryFAfter,s2Step232HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step232Front_entry : HmrFrontEntryValid s2Step232EntryFBefore s2Step232FrontBank 154 130 ⟨153,153,131,130⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step232FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step232EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step232EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step232FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step232Front_sigma : s2Step232EntryGvAfter.checkBorrow 1 [820]=some s2Step232FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step232EntryGvAfter,s2Step232EntryFAfter,arenaWires]
  · rfl

private def s2Step232HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step232HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step232HeadFBefore : Arena := s2Step232HeadGAfter

private def s2Step232HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 787],768⟩

private def s2Step232HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804],770⟩

private def s2Step232HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153],769⟩

private def s2Step232HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849],771⟩

private theorem s2Step232HeadBank_incomingDistinct : ([s2Step232HeadGRow,s2Step232HeadFRow,s2Step232HeadGvRow,s2Step232HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step232HeadF_Incoming : rowsOwned s2Step232HeadFBefore [s2Step232HeadFRow,s2Step232HeadGvRow,s2Step232HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step232HeadGRow,s2Step232HeadFRow,s2Step232HeadGvRow,s2Step232HeadFvRow] 1 s2Step232HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step232HeadFBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step232HeadBank_outgoingOwned : rowsOwned s2Step232HeadFvAfter [s2Step232HeadGOut,s2Step232HeadFOut,s2Step232HeadGvOut,s2Step232HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step232HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step232HeadF_Outgoing : rowsOwned s2Step232HeadFvAfter [s2Step232HeadFOut,s2Step232HeadGvOut,s2Step232HeadFvOut] :=
  hmrRows_owned_drop s2Step232HeadFvAfter [s2Step232HeadGOut,s2Step232HeadFOut,s2Step232HeadGvOut,s2Step232HeadFvOut] 1 s2Step232HeadBank_outgoingOwned

private theorem s2Step232HeadF_distinct : (s2Step232HeadFRow.sign::s2Step232HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step232HeadF_owned : (s2Step232HeadFRow.sign::s2Step232HeadFRow.payload).toFinset⊆s2Step232HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step232HeadFBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step232HeadF_reserved : s2Step232HeadFBefore.reserve s2Step232HeadFFresh.toFinset=some s2Step232HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step232HeadFFresh,arenaWires]
  · norm_num [s2Step232HeadFBefore,s2Step232HeadGAfter,s2Step232HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step232HeadFAfter,s2Step232HeadFBefore,s2Step232HeadGAfter,s2Step232HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step232HeadF_checked : planRowResizeLog s2Step232HeadFBefore s2Step232HeadFRow 155 s2Step232HeadFFresh=
    some (s2Step232HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 787, 809],768⟩,growRow 768 s2Step232HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step232HeadFBefore s2Step232HeadFAfter s2Step232HeadFRow 155 s2Step232HeadFFresh
    s2Step232HeadF_distinct s2Step232HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step232HeadF_reserved
  have rowEq : WindowRow.mk (s2Step232HeadFRow.payload++s2Step232HeadFFresh) s2Step232HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 787, 809],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step232HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step232HeadFvBefore : Arena := s2Step232HeadGvAfter

private theorem s2Step232HeadFv_Incoming : rowsOwned s2Step232HeadFvBefore [s2Step232HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step232HeadGRow,s2Step232HeadFRow,s2Step232HeadGvRow,s2Step232HeadFvRow] 3 s2Step232HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step232HeadFvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step232HeadFv_Outgoing : rowsOwned s2Step232HeadFvAfter [s2Step232HeadFvOut] :=
  hmrRows_owned_drop s2Step232HeadFvAfter [s2Step232HeadGOut,s2Step232HeadFOut,s2Step232HeadGvOut,s2Step232HeadFvOut] 3 s2Step232HeadBank_outgoingOwned

private theorem s2Step232HeadFv_distinct : (s2Step232HeadFvRow.sign::s2Step232HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step232HeadFv_owned : (s2Step232HeadFvRow.sign::s2Step232HeadFvRow.payload).toFinset⊆s2Step232HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step232HeadFvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step232HeadFv_reserved : s2Step232HeadFvBefore.reserve s2Step232HeadFvFresh.toFinset=some s2Step232HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step232HeadFvFresh,arenaWires]
  · norm_num [s2Step232HeadFvBefore,s2Step232HeadGvAfter,s2Step232HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step232HeadFvAfter,s2Step232HeadFvBefore,s2Step232HeadGvAfter,s2Step232HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step232HeadFv_checked : planRowResizeLog s2Step232HeadFvBefore s2Step232HeadFvRow 131 s2Step232HeadFvFresh=
    some (s2Step232HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805],770⟩,growRow 770 s2Step232HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step232HeadFvBefore s2Step232HeadFvAfter s2Step232HeadFvRow 131 s2Step232HeadFvFresh
    s2Step232HeadFv_distinct s2Step232HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step232HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step232HeadFvRow.payload++s2Step232HeadFvFresh) s2Step232HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step232HeadG_Incoming : rowsOwned s2Step232HeadGBefore [s2Step232HeadGRow,s2Step232HeadFRow,s2Step232HeadGvRow,s2Step232HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step232HeadGRow,s2Step232HeadFRow,s2Step232HeadGvRow,s2Step232HeadFvRow] 0 s2Step232HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step232HeadGBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<821) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step232HeadG_Outgoing : rowsOwned s2Step232HeadFvAfter [s2Step232HeadGOut,s2Step232HeadFOut,s2Step232HeadGvOut,s2Step232HeadFvOut] :=
  hmrRows_owned_drop s2Step232HeadFvAfter [s2Step232HeadGOut,s2Step232HeadFOut,s2Step232HeadGvOut,s2Step232HeadFvOut] 0 s2Step232HeadBank_outgoingOwned

private theorem s2Step232HeadG_distinct : (s2Step232HeadGRow.sign::s2Step232HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step232HeadG_owned : (s2Step232HeadGRow.sign::s2Step232HeadGRow.payload).toFinset⊆s2Step232HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step232HeadGBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<821) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step232HeadG_reserved : s2Step232HeadGBefore.reserve s2Step232HeadGFresh.toFinset=some s2Step232HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step232HeadGFresh,arenaWires]
  · norm_num [s2Step232HeadGBefore,s2Step232HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step232HeadGAfter,s2Step232HeadGBefore,s2Step232HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step232HeadG_checked : planRowResizeLog s2Step232HeadGBefore s2Step232HeadGRow 155 s2Step232HeadGFresh=
    some (s2Step232HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 821],769⟩,growRow 769 s2Step232HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step232HeadGBefore s2Step232HeadGAfter s2Step232HeadGRow 155 s2Step232HeadGFresh
    s2Step232HeadG_distinct s2Step232HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step232HeadG_reserved
  have rowEq : WindowRow.mk (s2Step232HeadGRow.payload++s2Step232HeadGFresh) s2Step232HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 821],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step232HeadGvBefore : Arena := s2Step232HeadFAfter

private theorem s2Step232HeadGv_Incoming : rowsOwned s2Step232HeadGvBefore [s2Step232HeadGvRow,s2Step232HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step232HeadGRow,s2Step232HeadFRow,s2Step232HeadGvRow,s2Step232HeadFvRow] 2 s2Step232HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step232HeadGvBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step232HeadGv_Outgoing : rowsOwned s2Step232HeadFvAfter [s2Step232HeadGvOut,s2Step232HeadFvOut] :=
  hmrRows_owned_drop s2Step232HeadFvAfter [s2Step232HeadGOut,s2Step232HeadFOut,s2Step232HeadGvOut,s2Step232HeadFvOut] 2 s2Step232HeadBank_outgoingOwned

private theorem s2Step232HeadGv_distinct : (s2Step232HeadGvRow.sign::s2Step232HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step232HeadGv_owned : (s2Step232HeadGvRow.sign::s2Step232HeadGvRow.payload).toFinset⊆s2Step232HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step232HeadGvBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step232HeadGv_reserved : s2Step232HeadGvBefore.reserve s2Step232HeadGvFresh.toFinset=some s2Step232HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step232HeadGvFresh,arenaWires]
  · norm_num [s2Step232HeadGvBefore,s2Step232HeadFAfter,s2Step232HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step232HeadGvAfter,s2Step232HeadGvBefore,s2Step232HeadFAfter,s2Step232HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step232HeadGv_checked : planRowResizeLog s2Step232HeadGvBefore s2Step232HeadGvRow 131 s2Step232HeadGvFresh=
    some (s2Step232HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 797],771⟩,growRow 771 s2Step232HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step232HeadGvBefore s2Step232HeadGvAfter s2Step232HeadGvRow 131 s2Step232HeadGvFresh
    s2Step232HeadGv_distinct s2Step232HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step232HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step232HeadGvRow.payload++s2Step232HeadGvFresh) s2Step232HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 797],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step232HeadBank_rows : planWindowRowsLog s2Step232HeadGBefore [(s2Step232HeadGRow,155),(s2Step232HeadFRow,155),(s2Step232HeadGvRow,131),(s2Step232HeadFvRow,131)] [s2Step232HeadGFresh,s2Step232HeadFFresh,s2Step232HeadGvFresh,s2Step232HeadFvFresh]=
    some (s2Step232HeadFvAfter,[s2Step232HeadGOut,s2Step232HeadFOut,s2Step232HeadGvOut,s2Step232HeadFvOut],(growRow 769 s2Step232HeadGFresh ++ (growRow 768 s2Step232HeadFFresh ++ (growRow 771 s2Step232HeadGvFresh ++ (growRow 770 s2Step232HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step232HeadFvAfter [] []=some (s2Step232HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step232HeadFvBefore s2Step232HeadFvAfter s2Step232HeadFvAfter
    s2Step232HeadFvRow s2Step232HeadFvOut 131 s2Step232HeadFvFresh [] [] []
    (growRow 770 s2Step232HeadFvFresh) ([]) s2Step232HeadFv_Incoming s2Step232HeadFv_checked h4 s2Step232HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step232HeadGvBefore s2Step232HeadGvAfter s2Step232HeadFvAfter
    s2Step232HeadGvRow s2Step232HeadGvOut 131 s2Step232HeadGvFresh [(s2Step232HeadFvRow,131)] [s2Step232HeadFvFresh] [s2Step232HeadFvOut]
    (growRow 771 s2Step232HeadGvFresh) ((growRow 770 s2Step232HeadFvFresh ++ [])) s2Step232HeadGv_Incoming s2Step232HeadGv_checked h3 s2Step232HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step232HeadFBefore s2Step232HeadFAfter s2Step232HeadFvAfter
    s2Step232HeadFRow s2Step232HeadFOut 155 s2Step232HeadFFresh [(s2Step232HeadGvRow,131),(s2Step232HeadFvRow,131)] [s2Step232HeadGvFresh,s2Step232HeadFvFresh] [s2Step232HeadGvOut,s2Step232HeadFvOut]
    (growRow 768 s2Step232HeadFFresh) ((growRow 771 s2Step232HeadGvFresh ++ (growRow 770 s2Step232HeadFvFresh ++ []))) s2Step232HeadF_Incoming s2Step232HeadF_checked h2 s2Step232HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step232HeadGBefore s2Step232HeadGAfter s2Step232HeadFvAfter
    s2Step232HeadGRow s2Step232HeadGOut 155 s2Step232HeadGFresh [(s2Step232HeadFRow,155),(s2Step232HeadGvRow,131),(s2Step232HeadFvRow,131)] [s2Step232HeadFFresh,s2Step232HeadGvFresh,s2Step232HeadFvFresh] [s2Step232HeadFOut,s2Step232HeadGvOut,s2Step232HeadFvOut]
    (growRow 769 s2Step232HeadGFresh) ((growRow 768 s2Step232HeadFFresh ++ (growRow 771 s2Step232HeadGvFresh ++ (growRow 770 s2Step232HeadFvFresh ++ [])))) s2Step232HeadG_Incoming s2Step232HeadG_checked h1 s2Step232HeadG_Outgoing
  exact h0

private theorem s2Step232HeadBank_checked : compileHmrBankResizeLog .headroom s2Step232HeadGBefore ⟨s2Step232HeadFRow,s2Step232HeadGRow,s2Step232HeadFvRow,s2Step232HeadGvRow⟩ ⟨155,155,131,131⟩ [s2Step232HeadGFresh,s2Step232HeadFFresh,s2Step232HeadGvFresh,s2Step232HeadFvFresh]=
    some (s2Step232HeadFvAfter,⟨s2Step232HeadFOut,s2Step232HeadGOut,s2Step232HeadFvOut,s2Step232HeadGvOut⟩,(growRow 769 s2Step232HeadGFresh ++ (growRow 768 s2Step232HeadFFresh ++ (growRow 771 s2Step232HeadGvFresh ++ (growRow 770 s2Step232HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step232HeadBank_rows]
  rfl

private theorem s2Step232Front_checked : compileHmrSourceFrontLog s2Step232EntryFBefore s2Step232FrontBank 154 130 ⟨153,153,131,130⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step232FrontLog=some s2Step232FrontPlan := by
  have pairEq : s2Step232FrontPair=⟨s2Step232HeadFRow,s2Step232HeadGRow,s2Step232HeadFvRow,s2Step232HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step232FrontHead=⟨s2Step232ExitFRow,s2Step232ExitGRow,s2Step232ExitFvRow,s2Step232ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step232Add0A=s2Step232FrontHead.f.wires := by decide +kernel
  have gEq : s2Step232Add0B=s2Step232FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step232Add1A=s2Step232FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step232Add1B=s2Step232FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step232EntryFBefore s2Step232FrontBank 154 130 ⟨153,153,131,130⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step232FrontLog s2Step232FrontPlan
  · exact s2Step232Front_entry
  · exact s2Step232EntryBank_checked
  · exact s2Step232Front_sigma
  · rfl
  · exact s2Step232Front_branch
  · rfl
  · simpa only [s2Step232FrontPlan,pairEq] using s2Step232HeadBank_checked
  · simpa only [s2Step232FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step232F4_checked
  · exact s2Step232Counter_checked
  · rfl
  · simpa only [s2Step232FrontPlan,headEq] using s2Step232ExitBank_checked

private theorem s2Step232Complete_explicit_checked : compileHmrEarlyStepLog s2Step232EntryFBefore s2Step232FrontBank 154 130 ⟨153,153,131,130⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 49 s2Step232CompleteLog=some s2Step232CompletePlan := by
  let Q := s2Step232EarlyControlPlan
  have hq := s2Step232EarlyControl_plan_checked
  have fv1 : s2Step232CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step232CompleteOut.fv.payload[2]?.getD s2Step232CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step232CompleteOut.fv.payload[3]?.getD s2Step232CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step232CompleteOut.fv.payload[4]?.getD s2Step232CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step232EntryFBefore s2Step232EarlyControlArena s2Step232FrontBank 154 130 ⟨153,153,131,130⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 49 s2Step232CompleteLog s2Step232FrontPlan Q
    s2Step232Front_checked s2Step232Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step232Complete_owned s2Step232Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step232EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 777 820 s2Step232CompleteOut.fv.second (s2Step232CompleteOut.fv.payload[2]?.getD s2Step232CompleteOut.fv.sign) (s2Step232CompleteOut.fv.payload[3]?.getD s2Step232CompleteOut.fv.sign) (s2Step232CompleteOut.fv.payload[4]?.getD s2Step232CompleteOut.fv.sign) 847 49 s2Step232EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep232Arena : Arena := s2Step232EntryFBefore
def s2PrivateStep232Bank : WindowBank := s2Step232FrontBank
def s2PrivateStep232Spec : HmrSourceWalkStepLog := ⟨154,130,⟨153,153,131,130⟩,49,.early s2Step232CompleteLog⟩
def s2PrivateStep232Plan : HmrSourceStepPlan := .early s2Step232CompletePlan
theorem s2PrivateStep232_source : s2PrivateStep232Spec=s2ObservedLogs224[8] := rfl
theorem s2PrivateStep232_checked : compileHmrSourceStepLog s2PrivateStep232Arena s2PrivateStep232Bank
    s2PrivateStep232Spec.fgWidth s2PrivateStep232Spec.vWidth s2PrivateStep232Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898]
    6 498 232 s2PrivateStep232Spec.need none s2PrivateStep232Spec.log=some s2PrivateStep232Plan := by
  change compileHmrSourceStepLog s2Step232EntryFBefore s2Step232FrontBank 154 130 ⟨153,153,131,130⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 6 498 232 49 none (.early s2Step232CompleteLog)=some (.early s2Step232CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 232<498)]
  rw [s2Step232Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
