import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep231
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

private def s2Step233CompleteMoves : List (Wire × Wire) := []

private def s2Step233EarlyControlLog : HmrEarlyControlLog := ⟨[809, 787, 797, 810, 800],[814],[882],[826, 842, 885, 891, 894, 896],[]⟩

private def s2Step233FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [847]],[[797], [787], [809], [821]],[[], [], [], []]⟩,[820],[793],[810],[800],[814, 882, 826, 842, 885, 891, 894, 896, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[814, 882, 826, 842, 885, 891, 894, 896, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[810, 800, 814, 882]⟩

private def s2Step233CompleteLog : HmrEarlyStepLog := ⟨s2Step233FrontLog,s2Step233CompleteMoves,s2Step233EarlyControlLog⟩

private def s2Step233ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664],768⟩

private def s2Step233ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821],770⟩

private def s2Step233ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152],769⟩

private def s2Step233ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847],771⟩

private def s2Step233FrontOut : WindowBank := ⟨s2Step233ExitFOut,s2Step233ExitGOut,s2Step233ExitFvOut,s2Step233ExitGvOut⟩

private def s2Step233CompleteOut : WindowBank := s2Step233FrontOut.repacked s2Step233CompleteMoves

private def s2Step233EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step233EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step233EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step233EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step233EarlyControlPositiveArena,[814],s2Step233EarlyControlEqualityArena,[882],⟨⟨820,false⟩,[⟨⟨814,false⟩,882⟩]⟩⟩

private def s2Step233EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step233EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step233EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step233EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step233EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step233EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step233EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,809⟩,⟨⟨774,false⟩,787⟩,⟨⟨775,false⟩,797⟩,⟨⟨776,false⟩,810⟩,⟨⟨777,false⟩,800⟩]⟩

private def s2Step233EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step233EarlyControlZeroArena,s2Step233EarlyControlZeroPlan,s2Step233EarlyControlClassPlan,s2Step233EarlyControlFlagArena,s2Step233EarlyControlFittedArena,s2Step233EarlyControlHistoryArena,s2Step233EarlyControlSigmaArena,s2Step233EarlyControlOutputArena,s2Step233EarlyControlLog⟩

private def s2Step233CounterWork : List Wire := [810, 800, 814, 882]

private theorem s2Step233Counter_bounded : s2Step233CounterWork.toFinset⊆arenaWires := by norm_num [s2Step233CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step233HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step233CounterDuring : Arena := ⟨s2Step233HeadFvAfter.live∪s2Step233CounterWork.toFinset,Finset.union_subset s2Step233HeadFvAfter.bounded s2Step233Counter_bounded⟩

private def s2Step233EntryFFresh : List Wire := []

private def s2Step233EntryFvFresh : List Wire := []

private def s2Step233EntryGFresh : List Wire := []

private def s2Step233EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step233EntryGvFresh : List Wire := [847]

private def s2Step233ExitFExtra : List Wire := [787]

private def s2Step233ExitGExtra : List Wire := [797]

private def s2Step233ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step233ExitGvExtra : List Wire := [809]

private def s2Step233Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step233Add0Work : List Wire := [814, 882, 826, 842, 885, 891, 894, 896, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step233Add0_bounded : s2Step233Add0Work.toFinset⊆arenaWires := by
  have h : s2Step233Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step233Add0During : Arena := ⟨s2Step233Add0Arena.live∪s2Step233Add0Work.toFinset,Finset.union_subset s2Step233Add0Arena.bounded s2Step233Add0_bounded⟩

private def s2Step233Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step233Add1Work : List Wire := [814, 882, 826, 842, 885, 891, 894, 896, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step233Add1_bounded : s2Step233Add1Work.toFinset⊆arenaWires := by
  have h : s2Step233Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step233Add1During : Arena := ⟨s2Step233Add1Arena.live∪s2Step233Add1Work.toFinset,Finset.union_subset s2Step233Add1Arena.bounded s2Step233Add1_bounded⟩

private def s2Step233F4FlagArena : Arena := ⟨s2Step233HeadFvAfter.live∪{810},Finset.union_subset s2Step233HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step233F4Plan : HmrHybridF4Plan := ⟨s2Step233F4FlagArena,[810],s2Step233Add0Arena,[800],s2Step233Add0During,s2Step233Add0Work,s2Step233Add1During,s2Step233Add1Work⟩

private def s2Step233HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 787],768⟩

private def s2Step233HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821],770⟩

private def s2Step233HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 797],769⟩

private def s2Step233HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 809],771⟩

private def s2Step233FrontHead : WindowBank := ⟨s2Step233HeadFOut,s2Step233HeadGOut,s2Step233HeadFvOut,s2Step233HeadGvOut⟩

private def s2Step233EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664],768⟩

private def s2Step233EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805],770⟩

private def s2Step233EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152],769⟩

private def s2Step233EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847],771⟩

private def s2Step233FrontPair : WindowBank := ⟨s2Step233EntryFOut,s2Step233EntryGOut,s2Step233EntryFvOut,s2Step233EntryGvOut⟩

private def s2Step233FrontSigmaArena : Arena := ⟨s2Step233EntryGvAfter.live∪{820},Finset.union_subset s2Step233EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step233HeadFFresh : List Wire := [787]

private def s2Step233HeadFvFresh : List Wire := [821]

private def s2Step233HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<821) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step233HeadGFresh : List Wire := [797]

private def s2Step233HeadGvFresh : List Wire := [809]

private def s2Step233FrontPlan : HmrSourceFront := ⟨s2Step233EntryGvAfter,s2Step233FrontPair,(growRow 768 s2Step233EntryFFresh ++ (growRow 769 s2Step233EntryGFresh ++ (growRow 770 s2Step233EntryFvFresh ++ (growRow 771 s2Step233EntryGvFresh ++ [])))),s2Step233FrontSigmaArena,[820],s2Step233HeadGBefore,[793],
  s2Step233HeadFvAfter,s2Step233FrontHead,(growRow 769 s2Step233HeadGFresh ++ (growRow 768 s2Step233HeadFFresh ++ (growRow 771 s2Step233HeadGvFresh ++ (growRow 770 s2Step233HeadFvFresh ++ [])))),s2Step233F4Plan,s2Step233CounterDuring,s2Step233CounterWork,s2Step233ExitGvAfter,s2Step233FrontOut,(shrinkRow 769 s2Step233ExitGExtra ++ (shrinkRow 768 s2Step233ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step233ExitGvExtra ++ []))))⟩

private def s2Step233CompletePlan : HmrEarlyStepPlan := ⟨s2Step233FrontPlan,s2Step233EarlyControlArena,s2Step233EarlyControlPlan,s2Step233CompleteMoves⟩

private theorem s2Step233Complete_apart : List.Disjoint (s2Step233CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [820, 793, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] := by
  have nd : ((s2Step233CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[820, 793, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step233Complete_owned : (s2Step233CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step233EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step233EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step233Complete_repack : s2Step233ExitGvAfter.checkRepack s2Step233CompleteMoves=some s2Step233EarlyControlArena := by rfl

private theorem s2Step233EarlyControl_branchOwned : ([793] : List Wire).toFinset⊆s2Step233EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step233EarlyControlSigmaArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step233EarlyControl_branch : compileHmrBranchRetirement s2Step233EarlyControlSigmaArena 793=some s2Step233EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step233EarlyControl_branchOwned
  · ext q
    simp [s2Step233EarlyControlOutputArena,s2Step233EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step233EarlyControl_classEqualityBorrow : s2Step233EarlyControlPositiveArena.checkBorrow (([820, 814] : List Wire).length-1) s2Step233EarlyControlLog.classWork=some s2Step233EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step233EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step233EarlyControlPositiveArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step233EarlyControlEqualityArena,s2Step233EarlyControlPositiveArena,s2Step233EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step233EarlyControl_classEqualityOwned : ([820, 814] : List Wire).toFinset⊆s2Step233EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step233EarlyControlPositiveArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step233EarlyControl_classEquality : compileHmrEqualityLog s2Step233EarlyControlPositiveArena [820, 814] 0 s2Step233EarlyControlLog.classWork=some (s2Step233EarlyControlEqualityArena,s2Step233EarlyControlLog.classWork,s2Step233EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step233EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step233EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step233EarlyControl_classOwned : ([777, 800, 820] : List Wire).toFinset⊆s2Step233EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step233EarlyControlZeroArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step233EarlyControl_positiveBorrow : s2Step233EarlyControlZeroArena.checkBorrow (1) s2Step233EarlyControlLog.positiveWork=some s2Step233EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step233EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step233EarlyControlZeroArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step233EarlyControlPositiveArena,s2Step233EarlyControlZeroArena,s2Step233EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step233EarlyControl_class : compileHmrSourceClassLog s2Step233EarlyControlZeroArena false 777 s2Step233EarlyControlZeroPlan.top 0 820 s2Step233EarlyControlLog.positiveWork s2Step233EarlyControlLog.classWork=some s2Step233EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step233EarlyControlClassPlan s2Step233EarlyControlZeroArena false 777 s2Step233EarlyControlZeroPlan.top 0 820
  constructor
  · decide +kernel
  · exact s2Step233EarlyControl_classOwned
  · exact s2Step233EarlyControl_positiveBorrow
  · exact s2Step233EarlyControl_classEquality

private theorem s2Step233EarlyControl_entryRecordOwned : ([793, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] : List Wire).toFinset⊆s2Step233EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step233EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step233EarlyControl_entrySigmaOwned : ([820, 254] : List Wire).toFinset⊆s2Step233EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step233EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step233EarlyControl_fitBorrow : s2Step233EarlyControlFlagArena.checkBorrow ((49-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] : List Wire).length)) s2Step233EarlyControlLog.recordFresh=some s2Step233EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step233EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step233EarlyControlFlagArena (fun q => (0≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step233EarlyControlFittedArena,s2Step233EarlyControlFlagArena,s2Step233EarlyControlLog,arenaWires]

private theorem s2Step233EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] : List Wire).toFinset⊆s2Step233EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step233EarlyControlFlagArena (fun q => (0≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step233EarlyControl_fit : compileHmrRecordGrowLog s2Step233EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 49 s2Step233EarlyControlLog.recordFresh=some s2Step233EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step233EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step233EarlyControl_fitBorrow

private theorem s2Step233EarlyControl_flagsBorrow : s2Step233EarlyControlEqualityArena.checkBorrow (6) s2Step233EarlyControlLog.flagWork=some s2Step233EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step233EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step233EarlyControlEqualityArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step233EarlyControlFlagArena,s2Step233EarlyControlEqualityArena,s2Step233EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step233EarlyControl_flagsOwned : ([882, 253, 252, 251] : List Wire).toFinset⊆s2Step233EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step233EarlyControlEqualityArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step233EarlyControl_flags : compileHmrFlagsLog s2Step233EarlyControlClassPlan.equalityArena s2Step233EarlyControlClassPlan.equality.top 253 252 251 s2Step233EarlyControlLog.flagWork=some s2Step233EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step233EarlyControl_flagsOwned⟩
  · exact s2Step233EarlyControl_flagsBorrow

private theorem s2Step233EarlyControl_historyBorrow : s2Step233EarlyControlArena.checkBorrow ((49-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] : List Wire).length)) s2Step233EarlyControlLog.recordFresh=some s2Step233EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step233EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step233EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step233EarlyControlHistoryArena,s2Step233EarlyControlArena,s2Step233EarlyControlLog,arenaWires]

private theorem s2Step233EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] : List Wire).toFinset⊆s2Step233EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step233EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step233EarlyControl_history : compileHmrRecordGrowLog s2Step233EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 49 s2Step233EarlyControlLog.recordFresh=some s2Step233EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step233EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step233EarlyControl_historyBorrow

private theorem s2Step233EarlyControl_sigmaOwned : ([254, 820] : List Wire).toFinset⊆s2Step233EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step233EarlyControlHistoryArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step233EarlyControl_sigmaReleaseOwned : ([820] : List Wire).toFinset⊆s2Step233EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step233EarlyControlHistoryArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step233EarlyControl_sigmaRelease : s2Step233EarlyControlHistoryArena.release {820} (fun _ => false)=some s2Step233EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step233EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step233EarlyControlSigmaArena,s2Step233EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step233EarlyControl_sigma : compileHmrSigmaDropLog s2Step233EarlyControlHistoryArena false 0 0 254 820 []=some s2Step233EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step233EarlyControl_sigmaOwned⟩
  · exact s2Step233EarlyControl_sigmaRelease

private theorem s2Step233EarlyControl_zeroBorrow : s2Step233EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step233EarlyControlLog.zeroWork=some s2Step233EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step233EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step233EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step233EarlyControlZeroArena,s2Step233EarlyControlArena,s2Step233EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step233EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step233EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step233EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step233EarlyControl_zero : compileHmrEqualityLog s2Step233EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step233EarlyControlLog.zeroWork=some (s2Step233EarlyControlZeroArena,s2Step233EarlyControlLog.zeroWork,s2Step233EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step233EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step233EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step233EarlyControl_logged : s2Step233EarlyControlPlan.Logged s2Step233EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 777 820 254 253 252 251 793 49 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step233EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step233EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step233EarlyControl_zero
  · exact s2Step233EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step233EarlyControl_flags
  · exact s2Step233EarlyControl_fit
  · exact s2Step233EarlyControl_history
  · exact s2Step233EarlyControl_sigma
  · exact s2Step233EarlyControl_branch

private theorem s2Step233EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step233EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 777 820 254 253 252 251 793 49 s2Step233EarlyControlLog=some s2Step233EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step233EarlyControlPlan s2Step233EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 777 820 254 253 252 251 793 49 s2Step233EarlyControl_logged

private def s2Step233EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step233EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664],768⟩

private def s2Step233EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805],770⟩

private def s2Step233EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152],769⟩

private def s2Step233EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849],771⟩

private def s2Step233FrontBank : WindowBank := ⟨s2Step233EntryFRow,s2Step233EntryGRow,s2Step233EntryFvRow,s2Step233EntryGvRow⟩

private def s2Step233Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 787, 768]

private def s2Step233Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 797, 769]

private def s2Step233Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 770]

private def s2Step233Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 809, 771]

private theorem s2Step233Counter_apart : Disjoint s2Step233HeadFvAfter.live s2Step233CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step233HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step233Counter_borrowed : s2Step233HeadFvAfter.checkBorrow 4 s2Step233CounterWork=some s2Step233CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step233HeadFvAfter s2Step233CounterDuring s2Step233CounterWork.toFinset s2Step233Counter_bounded s2Step233Counter_apart rfl

private theorem s2Step233Counter_owned : (820::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step233HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step233HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step233Counter_checked : compileHmrCounterStepLog s2Step233HeadFvAfter true 820 [772, 773, 774, 775, 776, 777] s2Step233CounterWork=some s2Step233CounterDuring := by
  have owned : ∀q∈820::[772, 773, 774, 775, 776, 777],q∈s2Step233HeadFvAfter.live := fun q hq => s2Step233Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step233Counter_borrowed

private def s2Step233EntryFAfter : Arena := s2Step233EntryFBefore

private theorem s2Step233EntryBank_incomingDistinct : ([s2Step233EntryFRow,s2Step233EntryGRow,s2Step233EntryFvRow,s2Step233EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step233EntryF_Incoming : rowsOwned s2Step233EntryFBefore [s2Step233EntryFRow,s2Step233EntryGRow,s2Step233EntryFvRow,s2Step233EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step233EntryFRow,s2Step233EntryGRow,s2Step233EntryFvRow,s2Step233EntryGvRow] 0 s2Step233EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step233EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step233EntryBank_outgoingOwned : rowsOwned s2Step233EntryGvAfter [s2Step233EntryFOut,s2Step233EntryGOut,s2Step233EntryFvOut,s2Step233EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step233EntryGvAfter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step233EntryF_Outgoing : rowsOwned s2Step233EntryGvAfter [s2Step233EntryFOut,s2Step233EntryGOut,s2Step233EntryFvOut,s2Step233EntryGvOut] :=
  hmrRows_owned_drop s2Step233EntryGvAfter [s2Step233EntryFOut,s2Step233EntryGOut,s2Step233EntryFvOut,s2Step233EntryGvOut] 0 s2Step233EntryBank_outgoingOwned

private theorem s2Step233EntryF_distinct : (s2Step233EntryFRow.sign::s2Step233EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step233EntryF_owned : (s2Step233EntryFRow.sign::s2Step233EntryFRow.payload).toFinset⊆s2Step233EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step233EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step233EntryF_reserved : s2Step233EntryFBefore.reserve s2Step233EntryFFresh.toFinset=some s2Step233EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step233EntryFFresh,arenaWires]
  · norm_num [s2Step233EntryFBefore,s2Step233EntryFFresh,arenaWires]
  · simp only [s2Step233EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step233EntryF_checked : planRowResizeLog s2Step233EntryFBefore s2Step233EntryFRow 153 s2Step233EntryFFresh=
    some (s2Step233EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664],768⟩,growRow 768 s2Step233EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step233EntryFBefore s2Step233EntryFAfter s2Step233EntryFRow 153 s2Step233EntryFFresh
    s2Step233EntryF_distinct s2Step233EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step233EntryF_reserved
  have rowEq : WindowRow.mk (s2Step233EntryFRow.payload++s2Step233EntryFFresh) s2Step233EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step233EntryFvAfter : Arena := s2Step233EntryFBefore

private def s2Step233EntryFvBefore : Arena := s2Step233EntryFBefore

private theorem s2Step233EntryFv_Incoming : rowsOwned s2Step233EntryFvBefore [s2Step233EntryFvRow,s2Step233EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step233EntryFRow,s2Step233EntryGRow,s2Step233EntryFvRow,s2Step233EntryGvRow] 2 s2Step233EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step233EntryFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step233EntryFv_Outgoing : rowsOwned s2Step233EntryGvAfter [s2Step233EntryFvOut,s2Step233EntryGvOut] :=
  hmrRows_owned_drop s2Step233EntryGvAfter [s2Step233EntryFOut,s2Step233EntryGOut,s2Step233EntryFvOut,s2Step233EntryGvOut] 2 s2Step233EntryBank_outgoingOwned

private theorem s2Step233EntryFv_distinct : (s2Step233EntryFvRow.sign::s2Step233EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step233EntryFv_owned : (s2Step233EntryFvRow.sign::s2Step233EntryFvRow.payload).toFinset⊆s2Step233EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step233EntryFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step233EntryFv_reserved : s2Step233EntryFvBefore.reserve s2Step233EntryFvFresh.toFinset=some s2Step233EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step233EntryFvFresh,arenaWires]
  · norm_num [s2Step233EntryFvBefore,s2Step233EntryFBefore,s2Step233EntryFvFresh,arenaWires]
  · simp only [s2Step233EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step233EntryFv_checked : planRowResizeLog s2Step233EntryFvBefore s2Step233EntryFvRow 131 s2Step233EntryFvFresh=
    some (s2Step233EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805],770⟩,growRow 770 s2Step233EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step233EntryFvBefore s2Step233EntryFvAfter s2Step233EntryFvRow 131 s2Step233EntryFvFresh
    s2Step233EntryFv_distinct s2Step233EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step233EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step233EntryFvRow.payload++s2Step233EntryFvFresh) s2Step233EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step233EntryGAfter : Arena := s2Step233EntryFBefore

private def s2Step233EntryGBefore : Arena := s2Step233EntryFBefore

private theorem s2Step233EntryG_Incoming : rowsOwned s2Step233EntryGBefore [s2Step233EntryGRow,s2Step233EntryFvRow,s2Step233EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step233EntryFRow,s2Step233EntryGRow,s2Step233EntryFvRow,s2Step233EntryGvRow] 1 s2Step233EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step233EntryGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step233EntryG_Outgoing : rowsOwned s2Step233EntryGvAfter [s2Step233EntryGOut,s2Step233EntryFvOut,s2Step233EntryGvOut] :=
  hmrRows_owned_drop s2Step233EntryGvAfter [s2Step233EntryFOut,s2Step233EntryGOut,s2Step233EntryFvOut,s2Step233EntryGvOut] 1 s2Step233EntryBank_outgoingOwned

private theorem s2Step233EntryG_distinct : (s2Step233EntryGRow.sign::s2Step233EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step233EntryG_owned : (s2Step233EntryGRow.sign::s2Step233EntryGRow.payload).toFinset⊆s2Step233EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step233EntryGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step233EntryG_reserved : s2Step233EntryGBefore.reserve s2Step233EntryGFresh.toFinset=some s2Step233EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step233EntryGFresh,arenaWires]
  · norm_num [s2Step233EntryGBefore,s2Step233EntryFBefore,s2Step233EntryGFresh,arenaWires]
  · simp only [s2Step233EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step233EntryG_checked : planRowResizeLog s2Step233EntryGBefore s2Step233EntryGRow 153 s2Step233EntryGFresh=
    some (s2Step233EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152],769⟩,growRow 769 s2Step233EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step233EntryGBefore s2Step233EntryGAfter s2Step233EntryGRow 153 s2Step233EntryGFresh
    s2Step233EntryG_distinct s2Step233EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step233EntryG_reserved
  have rowEq : WindowRow.mk (s2Step233EntryGRow.payload++s2Step233EntryGFresh) s2Step233EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step233EntryGvBefore : Arena := s2Step233EntryFBefore

private theorem s2Step233EntryGv_Incoming : rowsOwned s2Step233EntryGvBefore [s2Step233EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step233EntryFRow,s2Step233EntryGRow,s2Step233EntryFvRow,s2Step233EntryGvRow] 3 s2Step233EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step233EntryGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step233EntryGv_Outgoing : rowsOwned s2Step233EntryGvAfter [s2Step233EntryGvOut] :=
  hmrRows_owned_drop s2Step233EntryGvAfter [s2Step233EntryFOut,s2Step233EntryGOut,s2Step233EntryFvOut,s2Step233EntryGvOut] 3 s2Step233EntryBank_outgoingOwned

private theorem s2Step233EntryGv_distinct : (s2Step233EntryGvRow.sign::s2Step233EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step233EntryGv_owned : (s2Step233EntryGvRow.sign::s2Step233EntryGvRow.payload).toFinset⊆s2Step233EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step233EntryGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step233EntryGv_reserved : s2Step233EntryGvBefore.reserve s2Step233EntryGvFresh.toFinset=some s2Step233EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step233EntryGvFresh,arenaWires]
  · norm_num [s2Step233EntryGvBefore,s2Step233EntryFBefore,s2Step233EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step233EntryGvAfter,s2Step233EntryGvBefore,s2Step233EntryFBefore,s2Step233EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step233EntryGv_checked : planRowResizeLog s2Step233EntryGvBefore s2Step233EntryGvRow 131 s2Step233EntryGvFresh=
    some (s2Step233EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847],771⟩,growRow 771 s2Step233EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step233EntryGvBefore s2Step233EntryGvAfter s2Step233EntryGvRow 131 s2Step233EntryGvFresh
    s2Step233EntryGv_distinct s2Step233EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step233EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step233EntryGvRow.payload++s2Step233EntryGvFresh) s2Step233EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step233EntryBank_rows : planWindowRowsLog s2Step233EntryFBefore [(s2Step233EntryFRow,153),(s2Step233EntryGRow,153),(s2Step233EntryFvRow,131),(s2Step233EntryGvRow,131)] [s2Step233EntryFFresh,s2Step233EntryGFresh,s2Step233EntryFvFresh,s2Step233EntryGvFresh]=
    some (s2Step233EntryGvAfter,[s2Step233EntryFOut,s2Step233EntryGOut,s2Step233EntryFvOut,s2Step233EntryGvOut],(growRow 768 s2Step233EntryFFresh ++ (growRow 769 s2Step233EntryGFresh ++ (growRow 770 s2Step233EntryFvFresh ++ (growRow 771 s2Step233EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step233EntryGvAfter [] []=some (s2Step233EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step233EntryGvBefore s2Step233EntryGvAfter s2Step233EntryGvAfter
    s2Step233EntryGvRow s2Step233EntryGvOut 131 s2Step233EntryGvFresh [] [] []
    (growRow 771 s2Step233EntryGvFresh) ([]) s2Step233EntryGv_Incoming s2Step233EntryGv_checked h4 s2Step233EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step233EntryFvBefore s2Step233EntryFvAfter s2Step233EntryGvAfter
    s2Step233EntryFvRow s2Step233EntryFvOut 131 s2Step233EntryFvFresh [(s2Step233EntryGvRow,131)] [s2Step233EntryGvFresh] [s2Step233EntryGvOut]
    (growRow 770 s2Step233EntryFvFresh) ((growRow 771 s2Step233EntryGvFresh ++ [])) s2Step233EntryFv_Incoming s2Step233EntryFv_checked h3 s2Step233EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step233EntryGBefore s2Step233EntryGAfter s2Step233EntryGvAfter
    s2Step233EntryGRow s2Step233EntryGOut 153 s2Step233EntryGFresh [(s2Step233EntryFvRow,131),(s2Step233EntryGvRow,131)] [s2Step233EntryFvFresh,s2Step233EntryGvFresh] [s2Step233EntryFvOut,s2Step233EntryGvOut]
    (growRow 769 s2Step233EntryGFresh) ((growRow 770 s2Step233EntryFvFresh ++ (growRow 771 s2Step233EntryGvFresh ++ []))) s2Step233EntryG_Incoming s2Step233EntryG_checked h2 s2Step233EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step233EntryFBefore s2Step233EntryFAfter s2Step233EntryGvAfter
    s2Step233EntryFRow s2Step233EntryFOut 153 s2Step233EntryFFresh [(s2Step233EntryGRow,153),(s2Step233EntryFvRow,131),(s2Step233EntryGvRow,131)] [s2Step233EntryGFresh,s2Step233EntryFvFresh,s2Step233EntryGvFresh] [s2Step233EntryGOut,s2Step233EntryFvOut,s2Step233EntryGvOut]
    (growRow 768 s2Step233EntryFFresh) ((growRow 769 s2Step233EntryGFresh ++ (growRow 770 s2Step233EntryFvFresh ++ (growRow 771 s2Step233EntryGvFresh ++ [])))) s2Step233EntryF_Incoming s2Step233EntryF_checked h1 s2Step233EntryF_Outgoing
  exact h0

private theorem s2Step233EntryBank_checked : compileHmrBankResizeLog .entry s2Step233EntryFBefore ⟨s2Step233EntryFRow,s2Step233EntryGRow,s2Step233EntryFvRow,s2Step233EntryGvRow⟩ ⟨153,153,131,131⟩ [s2Step233EntryFFresh,s2Step233EntryGFresh,s2Step233EntryFvFresh,s2Step233EntryGvFresh]=
    some (s2Step233EntryGvAfter,⟨s2Step233EntryFOut,s2Step233EntryGOut,s2Step233EntryFvOut,s2Step233EntryGvOut⟩,(growRow 768 s2Step233EntryFFresh ++ (growRow 769 s2Step233EntryGFresh ++ (growRow 770 s2Step233EntryFvFresh ++ (growRow 771 s2Step233EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step233EntryBank_rows]
  rfl

private def s2Step233ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step233ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step233ExitFBefore : Arena := s2Step233ExitGAfter

private def s2Step233ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 787],768⟩

private def s2Step233ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821],770⟩

private def s2Step233ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 797],769⟩

private def s2Step233ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 809],771⟩

private theorem s2Step233ExitBank_incomingDistinct : ([s2Step233ExitGRow,s2Step233ExitFRow,s2Step233ExitFvRow,s2Step233ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step233ExitF_Incoming : rowsOwned s2Step233ExitFBefore [s2Step233ExitFRow,s2Step233ExitFvRow,s2Step233ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step233ExitGRow,s2Step233ExitFRow,s2Step233ExitFvRow,s2Step233ExitGvRow] 1 s2Step233ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step233ExitFBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step233ExitBank_outgoingOwned : rowsOwned s2Step233ExitGvAfter [s2Step233ExitGOut,s2Step233ExitFOut,s2Step233ExitFvOut,s2Step233ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step233ExitGvAfter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step233ExitF_Outgoing : rowsOwned s2Step233ExitGvAfter [s2Step233ExitFOut,s2Step233ExitFvOut,s2Step233ExitGvOut] :=
  hmrRows_owned_drop s2Step233ExitGvAfter [s2Step233ExitGOut,s2Step233ExitFOut,s2Step233ExitFvOut,s2Step233ExitGvOut] 1 s2Step233ExitBank_outgoingOwned

private theorem s2Step233ExitF_distinct : (s2Step233ExitFRow.sign::s2Step233ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step233ExitF_owned : (s2Step233ExitFRow.sign::s2Step233ExitFRow.payload).toFinset⊆s2Step233ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step233ExitFBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step233ExitF_retired : s2Step233ExitFBefore.retireSet s2Step233ExitFExtra.toFinset=s2Step233ExitFAfter := by
  unfold Arena.retireSet s2Step233ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step233ExitFBefore,s2Step233ExitGAfter,s2Step233ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step233ExitF_checked : planRowResizeLog s2Step233ExitFBefore s2Step233ExitFRow 153 []=
    some (s2Step233ExitFAfter,s2Step233ExitFOut,shrinkRow 768 s2Step233ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step233ExitFBefore s2Step233ExitFRow 153 s2Step233ExitF_distinct s2Step233ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step233ExitFRow.payload.take 153) s2Step233ExitFRow.sign=s2Step233ExitFOut := by decide +kernel
  have hi : s2Step233ExitFRow.payload.drop 153=s2Step233ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step233ExitF_retired] at result
  exact result

private def s2Step233ExitFvAfter : Arena := s2Step233ExitFAfter

private def s2Step233ExitFvBefore : Arena := s2Step233ExitFAfter

private theorem s2Step233ExitFv_Incoming : rowsOwned s2Step233ExitFvBefore [s2Step233ExitFvRow,s2Step233ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step233ExitGRow,s2Step233ExitFRow,s2Step233ExitFvRow,s2Step233ExitGvRow] 2 s2Step233ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step233ExitFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step233ExitFv_Outgoing : rowsOwned s2Step233ExitGvAfter [s2Step233ExitFvOut,s2Step233ExitGvOut] :=
  hmrRows_owned_drop s2Step233ExitGvAfter [s2Step233ExitGOut,s2Step233ExitFOut,s2Step233ExitFvOut,s2Step233ExitGvOut] 2 s2Step233ExitBank_outgoingOwned

private theorem s2Step233ExitFv_distinct : (s2Step233ExitFvRow.sign::s2Step233ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step233ExitFv_owned : (s2Step233ExitFvRow.sign::s2Step233ExitFvRow.payload).toFinset⊆s2Step233ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step233ExitFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step233ExitFv_reserved : s2Step233ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step233ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step233ExitFv_checked : planRowResizeLog s2Step233ExitFvBefore s2Step233ExitFvRow 132 []=
    some (s2Step233ExitFvAfter,s2Step233ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step233ExitFvBefore s2Step233ExitFvAfter s2Step233ExitFvRow 132 []
    s2Step233ExitFv_distinct s2Step233ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step233ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step233ExitFvRow.payload++[]) s2Step233ExitFvRow.sign=s2Step233ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step233ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private theorem s2Step233ExitG_Incoming : rowsOwned s2Step233ExitGBefore [s2Step233ExitGRow,s2Step233ExitFRow,s2Step233ExitFvRow,s2Step233ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step233ExitGRow,s2Step233ExitFRow,s2Step233ExitFvRow,s2Step233ExitGvRow] 0 s2Step233ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step233ExitGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step233ExitG_Outgoing : rowsOwned s2Step233ExitGvAfter [s2Step233ExitGOut,s2Step233ExitFOut,s2Step233ExitFvOut,s2Step233ExitGvOut] :=
  hmrRows_owned_drop s2Step233ExitGvAfter [s2Step233ExitGOut,s2Step233ExitFOut,s2Step233ExitFvOut,s2Step233ExitGvOut] 0 s2Step233ExitBank_outgoingOwned

private theorem s2Step233ExitG_distinct : (s2Step233ExitGRow.sign::s2Step233ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step233ExitG_owned : (s2Step233ExitGRow.sign::s2Step233ExitGRow.payload).toFinset⊆s2Step233ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step233ExitGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step233ExitG_retired : s2Step233ExitGBefore.retireSet s2Step233ExitGExtra.toFinset=s2Step233ExitGAfter := by
  unfold Arena.retireSet s2Step233ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step233ExitGBefore,s2Step233ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step233ExitG_checked : planRowResizeLog s2Step233ExitGBefore s2Step233ExitGRow 153 []=
    some (s2Step233ExitGAfter,s2Step233ExitGOut,shrinkRow 769 s2Step233ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step233ExitGBefore s2Step233ExitGRow 153 s2Step233ExitG_distinct s2Step233ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step233ExitGRow.payload.take 153) s2Step233ExitGRow.sign=s2Step233ExitGOut := by decide +kernel
  have hi : s2Step233ExitGRow.payload.drop 153=s2Step233ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step233ExitG_retired] at result
  exact result

private def s2Step233ExitGvBefore : Arena := s2Step233ExitFAfter

private theorem s2Step233ExitGv_Incoming : rowsOwned s2Step233ExitGvBefore [s2Step233ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step233ExitGRow,s2Step233ExitFRow,s2Step233ExitFvRow,s2Step233ExitGvRow] 3 s2Step233ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step233ExitGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step233ExitGv_Outgoing : rowsOwned s2Step233ExitGvAfter [s2Step233ExitGvOut] :=
  hmrRows_owned_drop s2Step233ExitGvAfter [s2Step233ExitGOut,s2Step233ExitFOut,s2Step233ExitFvOut,s2Step233ExitGvOut] 3 s2Step233ExitBank_outgoingOwned

private theorem s2Step233ExitGv_distinct : (s2Step233ExitGvRow.sign::s2Step233ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step233ExitGv_owned : (s2Step233ExitGvRow.sign::s2Step233ExitGvRow.payload).toFinset⊆s2Step233ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step233ExitGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step233ExitGv_retired : s2Step233ExitGvBefore.retireSet s2Step233ExitGvExtra.toFinset=s2Step233ExitGvAfter := by
  unfold Arena.retireSet s2Step233ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step233ExitGvBefore,s2Step233ExitFAfter,s2Step233ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step233ExitGv_checked : planRowResizeLog s2Step233ExitGvBefore s2Step233ExitGvRow 131 []=
    some (s2Step233ExitGvAfter,s2Step233ExitGvOut,shrinkRow 771 s2Step233ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step233ExitGvBefore s2Step233ExitGvRow 131 s2Step233ExitGv_distinct s2Step233ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step233ExitGvRow.payload.take 131) s2Step233ExitGvRow.sign=s2Step233ExitGvOut := by decide +kernel
  have hi : s2Step233ExitGvRow.payload.drop 131=s2Step233ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step233ExitGv_retired] at result
  exact result

private theorem s2Step233ExitBank_rows : planWindowRowsLog s2Step233ExitGBefore [(s2Step233ExitGRow,153),(s2Step233ExitFRow,153),(s2Step233ExitFvRow,132),(s2Step233ExitGvRow,131)] [[],[],[],[]]=
    some (s2Step233ExitGvAfter,[s2Step233ExitGOut,s2Step233ExitFOut,s2Step233ExitFvOut,s2Step233ExitGvOut],(shrinkRow 769 s2Step233ExitGExtra ++ (shrinkRow 768 s2Step233ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step233ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step233ExitGvAfter [] []=some (s2Step233ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step233ExitGvBefore s2Step233ExitGvAfter s2Step233ExitGvAfter
    s2Step233ExitGvRow s2Step233ExitGvOut 131 [] [] [] []
    (shrinkRow 771 s2Step233ExitGvExtra) ([]) s2Step233ExitGv_Incoming s2Step233ExitGv_checked h4 s2Step233ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step233ExitFvBefore s2Step233ExitFvAfter s2Step233ExitGvAfter
    s2Step233ExitFvRow s2Step233ExitFvOut 132 [] [(s2Step233ExitGvRow,131)] [[]] [s2Step233ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step233ExitGvExtra ++ [])) s2Step233ExitFv_Incoming s2Step233ExitFv_checked h3 s2Step233ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step233ExitFBefore s2Step233ExitFAfter s2Step233ExitGvAfter
    s2Step233ExitFRow s2Step233ExitFOut 153 [] [(s2Step233ExitFvRow,132),(s2Step233ExitGvRow,131)] [[],[]] [s2Step233ExitFvOut,s2Step233ExitGvOut]
    (shrinkRow 768 s2Step233ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step233ExitGvExtra ++ []))) s2Step233ExitF_Incoming s2Step233ExitF_checked h2 s2Step233ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step233ExitGBefore s2Step233ExitGAfter s2Step233ExitGvAfter
    s2Step233ExitGRow s2Step233ExitGOut 153 [] [(s2Step233ExitFRow,153),(s2Step233ExitFvRow,132),(s2Step233ExitGvRow,131)] [[],[],[]] [s2Step233ExitFOut,s2Step233ExitFvOut,s2Step233ExitGvOut]
    (shrinkRow 769 s2Step233ExitGExtra) ((shrinkRow 768 s2Step233ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step233ExitGvExtra ++ [])))) s2Step233ExitG_Incoming s2Step233ExitG_checked h1 s2Step233ExitG_Outgoing
  exact h0

private theorem s2Step233ExitBank_checked : compileHmrBankResizeLog .exit s2Step233ExitGBefore ⟨s2Step233ExitFRow,s2Step233ExitGRow,s2Step233ExitFvRow,s2Step233ExitGvRow⟩ ⟨153,153,132,131⟩ [[],[],[],[]]=
    some (s2Step233ExitGvAfter,⟨s2Step233ExitFOut,s2Step233ExitGOut,s2Step233ExitFvOut,s2Step233ExitGvOut⟩,(shrinkRow 769 s2Step233ExitGExtra ++ (shrinkRow 768 s2Step233ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step233ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step233ExitBank_rows]
  rfl

private theorem s2Step233Add0_apart : Disjoint s2Step233Add0Arena.live s2Step233Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step233Add0Arena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step233Add0_card : s2Step233Add0Arena.live.card=891 := by
  decide +kernel

private theorem s2Step233Add0_borrowed : s2Step233Add0Arena.checkBorrow (hmrHybridCount s2Step233Add0Arena s2Step233Add0B.length) s2Step233Add0Work=some s2Step233Add0During := by
  have len : s2Step233Add0Work.length=hmrHybridCount s2Step233Add0Arena s2Step233Add0B.length := by
    rw [hmrHybridCount,s2Step233Add0_card]
    decide +kernel
  have nd : s2Step233Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step233Add0Arena s2Step233Add0During s2Step233Add0Work.toFinset s2Step233Add0_bounded s2Step233Add0_apart rfl

private theorem s2Step233Add0_distinct : (810::793::800::(s2Step233Add0A++s2Step233Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step233Add0_owned : (810::793::800::(s2Step233Add0A++s2Step233Add0B)).toFinset⊆s2Step233Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step233Add0Arena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step233Add0_checked : compileHmrHybridCinLog s2Step233Add0Arena 793 810 800 s2Step233Add0A s2Step233Add0B s2Step233Add0Work=some s2Step233Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step233Add0Arena s2Step233Add0During 793 810 800 s2Step233Add0A s2Step233Add0B s2Step233Add0Work
    (by decide +kernel) (by decide +kernel) s2Step233Add0_distinct
    (fun q hq => s2Step233Add0_owned (List.mem_toFinset.mpr hq)) s2Step233Add0_borrowed

private theorem s2Step233Add1_apart : Disjoint s2Step233Add1Arena.live s2Step233Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step233Add1Arena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step233Add1_card : s2Step233Add1Arena.live.card=891 := by
  decide +kernel

private theorem s2Step233Add1_borrowed : s2Step233Add1Arena.checkBorrow (hmrHybridCount s2Step233Add1Arena s2Step233Add1B.length) s2Step233Add1Work=some s2Step233Add1During := by
  have len : s2Step233Add1Work.length=hmrHybridCount s2Step233Add1Arena s2Step233Add1B.length := by
    rw [hmrHybridCount,s2Step233Add1_card]
    decide +kernel
  have nd : s2Step233Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step233Add1Arena s2Step233Add1During s2Step233Add1Work.toFinset s2Step233Add1_bounded s2Step233Add1_apart rfl

private theorem s2Step233Add1_distinct : (810::793::800::(s2Step233Add1A++s2Step233Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step233Add1_owned : (810::793::800::(s2Step233Add1A++s2Step233Add1B)).toFinset⊆s2Step233Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step233Add1Arena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step233Add1_checked : compileHmrHybridCinLog s2Step233Add1Arena 793 810 800 s2Step233Add1A s2Step233Add1B s2Step233Add1Work=some s2Step233Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step233Add1Arena s2Step233Add1During 793 810 800 s2Step233Add1A s2Step233Add1B s2Step233Add1Work
    (by decide +kernel) (by decide +kernel) s2Step233Add1_distinct
    (fun q hq => s2Step233Add1_owned (List.mem_toFinset.mpr hq)) s2Step233Add1_borrowed

private theorem s2Step233F4_apart : Disjoint (s2Step233Add0A++s2Step233Add0B).toFinset (s2Step233Add1A++s2Step233Add1B).toFinset := by
  have nd : ((s2Step233Add0A++s2Step233Add0B)++(s2Step233Add1A++s2Step233Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step233F4_carry : s2Step233F4FlagArena.checkBorrow 1 [800]=some s2Step233Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step233F4FlagArena,s2Step233HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step233F4FlagArena,s2Step233HeadFvAfter,s2Step233Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step233F4_distinct : (820::793::810::800::((s2Step233Add0A++s2Step233Add1A)++(s2Step233Add0B++s2Step233Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step233F4_flag : s2Step233HeadFvAfter.checkBorrow 1 [810]=some s2Step233F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step233HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step233F4_owned : (820::793::((s2Step233Add0A++s2Step233Add1A)++(s2Step233Add0B++s2Step233Add1B))).toFinset⊆s2Step233HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step233HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step233F4_checked : compileHmrHybridF4Log s2Step233HeadFvAfter 820 793 s2Step233Add0A s2Step233Add0B s2Step233Add1A s2Step233Add1B [810] [800] s2Step233Add0Work s2Step233Add1Work=some s2Step233F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step233HeadFvAfter s2Step233F4FlagArena s2Step233Add0Arena s2Step233Add0During s2Step233Add1During 820 793
    s2Step233Add0A s2Step233Add0B s2Step233Add1A s2Step233Add1B [810] [800] s2Step233Add0Work s2Step233Add1Work
    (fun q hq => s2Step233F4_owned (List.mem_toFinset.mpr hq)) s2Step233F4_flag s2Step233F4_carry
    s2Step233F4_distinct s2Step233F4_apart s2Step233Add0_checked s2Step233Add1_checked

private theorem s2Step233Front_branch : s2Step233FrontSigmaArena.checkBorrow 1 [793]=some s2Step233HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step233FrontSigmaArena,s2Step233EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step233FrontSigmaArena,s2Step233EntryGvAfter,s2Step233HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step233Front_entry : HmrFrontEntryValid s2Step233EntryFBefore s2Step233FrontBank 153 131 ⟨153,153,132,131⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step233FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step233EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step233EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step233FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step233Front_sigma : s2Step233EntryGvAfter.checkBorrow 1 [820]=some s2Step233FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step233EntryGvAfter,arenaWires]
  · rfl

private def s2Step233HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<821) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step233HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<821) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step233HeadFBefore : Arena := s2Step233HeadGAfter

private def s2Step233HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664],768⟩

private def s2Step233HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805],770⟩

private def s2Step233HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152],769⟩

private def s2Step233HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847],771⟩

private theorem s2Step233HeadBank_incomingDistinct : ([s2Step233HeadGRow,s2Step233HeadFRow,s2Step233HeadGvRow,s2Step233HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step233HeadF_Incoming : rowsOwned s2Step233HeadFBefore [s2Step233HeadFRow,s2Step233HeadGvRow,s2Step233HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step233HeadGRow,s2Step233HeadFRow,s2Step233HeadGvRow,s2Step233HeadFvRow] 1 s2Step233HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step233HeadFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<821) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step233HeadBank_outgoingOwned : rowsOwned s2Step233HeadFvAfter [s2Step233HeadGOut,s2Step233HeadFOut,s2Step233HeadGvOut,s2Step233HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step233HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step233HeadF_Outgoing : rowsOwned s2Step233HeadFvAfter [s2Step233HeadFOut,s2Step233HeadGvOut,s2Step233HeadFvOut] :=
  hmrRows_owned_drop s2Step233HeadFvAfter [s2Step233HeadGOut,s2Step233HeadFOut,s2Step233HeadGvOut,s2Step233HeadFvOut] 1 s2Step233HeadBank_outgoingOwned

private theorem s2Step233HeadF_distinct : (s2Step233HeadFRow.sign::s2Step233HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step233HeadF_owned : (s2Step233HeadFRow.sign::s2Step233HeadFRow.payload).toFinset⊆s2Step233HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step233HeadFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<821) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step233HeadF_reserved : s2Step233HeadFBefore.reserve s2Step233HeadFFresh.toFinset=some s2Step233HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step233HeadFFresh,arenaWires]
  · norm_num [s2Step233HeadFBefore,s2Step233HeadGAfter,s2Step233HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step233HeadFAfter,s2Step233HeadFBefore,s2Step233HeadGAfter,s2Step233HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step233HeadF_checked : planRowResizeLog s2Step233HeadFBefore s2Step233HeadFRow 154 s2Step233HeadFFresh=
    some (s2Step233HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 787],768⟩,growRow 768 s2Step233HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step233HeadFBefore s2Step233HeadFAfter s2Step233HeadFRow 154 s2Step233HeadFFresh
    s2Step233HeadF_distinct s2Step233HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step233HeadF_reserved
  have rowEq : WindowRow.mk (s2Step233HeadFRow.payload++s2Step233HeadFFresh) s2Step233HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 787],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step233HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<821) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step233HeadFvBefore : Arena := s2Step233HeadGvAfter

private theorem s2Step233HeadFv_Incoming : rowsOwned s2Step233HeadFvBefore [s2Step233HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step233HeadGRow,s2Step233HeadFRow,s2Step233HeadGvRow,s2Step233HeadFvRow] 3 s2Step233HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step233HeadFvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<821) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step233HeadFv_Outgoing : rowsOwned s2Step233HeadFvAfter [s2Step233HeadFvOut] :=
  hmrRows_owned_drop s2Step233HeadFvAfter [s2Step233HeadGOut,s2Step233HeadFOut,s2Step233HeadGvOut,s2Step233HeadFvOut] 3 s2Step233HeadBank_outgoingOwned

private theorem s2Step233HeadFv_distinct : (s2Step233HeadFvRow.sign::s2Step233HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step233HeadFv_owned : (s2Step233HeadFvRow.sign::s2Step233HeadFvRow.payload).toFinset⊆s2Step233HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step233HeadFvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<821) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step233HeadFv_reserved : s2Step233HeadFvBefore.reserve s2Step233HeadFvFresh.toFinset=some s2Step233HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step233HeadFvFresh,arenaWires]
  · norm_num [s2Step233HeadFvBefore,s2Step233HeadGvAfter,s2Step233HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step233HeadFvAfter,s2Step233HeadFvBefore,s2Step233HeadGvAfter,s2Step233HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step233HeadFv_checked : planRowResizeLog s2Step233HeadFvBefore s2Step233HeadFvRow 132 s2Step233HeadFvFresh=
    some (s2Step233HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821],770⟩,growRow 770 s2Step233HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step233HeadFvBefore s2Step233HeadFvAfter s2Step233HeadFvRow 132 s2Step233HeadFvFresh
    s2Step233HeadFv_distinct s2Step233HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step233HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step233HeadFvRow.payload++s2Step233HeadFvFresh) s2Step233HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step233HeadG_Incoming : rowsOwned s2Step233HeadGBefore [s2Step233HeadGRow,s2Step233HeadFRow,s2Step233HeadGvRow,s2Step233HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step233HeadGRow,s2Step233HeadFRow,s2Step233HeadGvRow,s2Step233HeadFvRow] 0 s2Step233HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step233HeadGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<821) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step233HeadG_Outgoing : rowsOwned s2Step233HeadFvAfter [s2Step233HeadGOut,s2Step233HeadFOut,s2Step233HeadGvOut,s2Step233HeadFvOut] :=
  hmrRows_owned_drop s2Step233HeadFvAfter [s2Step233HeadGOut,s2Step233HeadFOut,s2Step233HeadGvOut,s2Step233HeadFvOut] 0 s2Step233HeadBank_outgoingOwned

private theorem s2Step233HeadG_distinct : (s2Step233HeadGRow.sign::s2Step233HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step233HeadG_owned : (s2Step233HeadGRow.sign::s2Step233HeadGRow.payload).toFinset⊆s2Step233HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step233HeadGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<821) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step233HeadG_reserved : s2Step233HeadGBefore.reserve s2Step233HeadGFresh.toFinset=some s2Step233HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step233HeadGFresh,arenaWires]
  · norm_num [s2Step233HeadGBefore,s2Step233HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step233HeadGAfter,s2Step233HeadGBefore,s2Step233HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step233HeadG_checked : planRowResizeLog s2Step233HeadGBefore s2Step233HeadGRow 154 s2Step233HeadGFresh=
    some (s2Step233HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 797],769⟩,growRow 769 s2Step233HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step233HeadGBefore s2Step233HeadGAfter s2Step233HeadGRow 154 s2Step233HeadGFresh
    s2Step233HeadG_distinct s2Step233HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step233HeadG_reserved
  have rowEq : WindowRow.mk (s2Step233HeadGRow.payload++s2Step233HeadGFresh) s2Step233HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 797],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step233HeadGvBefore : Arena := s2Step233HeadFAfter

private theorem s2Step233HeadGv_Incoming : rowsOwned s2Step233HeadGvBefore [s2Step233HeadGvRow,s2Step233HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step233HeadGRow,s2Step233HeadFRow,s2Step233HeadGvRow,s2Step233HeadFvRow] 2 s2Step233HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step233HeadGvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<821) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step233HeadGv_Outgoing : rowsOwned s2Step233HeadFvAfter [s2Step233HeadGvOut,s2Step233HeadFvOut] :=
  hmrRows_owned_drop s2Step233HeadFvAfter [s2Step233HeadGOut,s2Step233HeadFOut,s2Step233HeadGvOut,s2Step233HeadFvOut] 2 s2Step233HeadBank_outgoingOwned

private theorem s2Step233HeadGv_distinct : (s2Step233HeadGvRow.sign::s2Step233HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step233HeadGv_owned : (s2Step233HeadGvRow.sign::s2Step233HeadGvRow.payload).toFinset⊆s2Step233HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step233HeadGvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<821) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step233HeadGv_reserved : s2Step233HeadGvBefore.reserve s2Step233HeadGvFresh.toFinset=some s2Step233HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step233HeadGvFresh,arenaWires]
  · norm_num [s2Step233HeadGvBefore,s2Step233HeadFAfter,s2Step233HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step233HeadGvAfter,s2Step233HeadGvBefore,s2Step233HeadFAfter,s2Step233HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step233HeadGv_checked : planRowResizeLog s2Step233HeadGvBefore s2Step233HeadGvRow 132 s2Step233HeadGvFresh=
    some (s2Step233HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 809],771⟩,growRow 771 s2Step233HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step233HeadGvBefore s2Step233HeadGvAfter s2Step233HeadGvRow 132 s2Step233HeadGvFresh
    s2Step233HeadGv_distinct s2Step233HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step233HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step233HeadGvRow.payload++s2Step233HeadGvFresh) s2Step233HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 809],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step233HeadBank_rows : planWindowRowsLog s2Step233HeadGBefore [(s2Step233HeadGRow,154),(s2Step233HeadFRow,154),(s2Step233HeadGvRow,132),(s2Step233HeadFvRow,132)] [s2Step233HeadGFresh,s2Step233HeadFFresh,s2Step233HeadGvFresh,s2Step233HeadFvFresh]=
    some (s2Step233HeadFvAfter,[s2Step233HeadGOut,s2Step233HeadFOut,s2Step233HeadGvOut,s2Step233HeadFvOut],(growRow 769 s2Step233HeadGFresh ++ (growRow 768 s2Step233HeadFFresh ++ (growRow 771 s2Step233HeadGvFresh ++ (growRow 770 s2Step233HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step233HeadFvAfter [] []=some (s2Step233HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step233HeadFvBefore s2Step233HeadFvAfter s2Step233HeadFvAfter
    s2Step233HeadFvRow s2Step233HeadFvOut 132 s2Step233HeadFvFresh [] [] []
    (growRow 770 s2Step233HeadFvFresh) ([]) s2Step233HeadFv_Incoming s2Step233HeadFv_checked h4 s2Step233HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step233HeadGvBefore s2Step233HeadGvAfter s2Step233HeadFvAfter
    s2Step233HeadGvRow s2Step233HeadGvOut 132 s2Step233HeadGvFresh [(s2Step233HeadFvRow,132)] [s2Step233HeadFvFresh] [s2Step233HeadFvOut]
    (growRow 771 s2Step233HeadGvFresh) ((growRow 770 s2Step233HeadFvFresh ++ [])) s2Step233HeadGv_Incoming s2Step233HeadGv_checked h3 s2Step233HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step233HeadFBefore s2Step233HeadFAfter s2Step233HeadFvAfter
    s2Step233HeadFRow s2Step233HeadFOut 154 s2Step233HeadFFresh [(s2Step233HeadGvRow,132),(s2Step233HeadFvRow,132)] [s2Step233HeadGvFresh,s2Step233HeadFvFresh] [s2Step233HeadGvOut,s2Step233HeadFvOut]
    (growRow 768 s2Step233HeadFFresh) ((growRow 771 s2Step233HeadGvFresh ++ (growRow 770 s2Step233HeadFvFresh ++ []))) s2Step233HeadF_Incoming s2Step233HeadF_checked h2 s2Step233HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step233HeadGBefore s2Step233HeadGAfter s2Step233HeadFvAfter
    s2Step233HeadGRow s2Step233HeadGOut 154 s2Step233HeadGFresh [(s2Step233HeadFRow,154),(s2Step233HeadGvRow,132),(s2Step233HeadFvRow,132)] [s2Step233HeadFFresh,s2Step233HeadGvFresh,s2Step233HeadFvFresh] [s2Step233HeadFOut,s2Step233HeadGvOut,s2Step233HeadFvOut]
    (growRow 769 s2Step233HeadGFresh) ((growRow 768 s2Step233HeadFFresh ++ (growRow 771 s2Step233HeadGvFresh ++ (growRow 770 s2Step233HeadFvFresh ++ [])))) s2Step233HeadG_Incoming s2Step233HeadG_checked h1 s2Step233HeadG_Outgoing
  exact h0

private theorem s2Step233HeadBank_checked : compileHmrBankResizeLog .headroom s2Step233HeadGBefore ⟨s2Step233HeadFRow,s2Step233HeadGRow,s2Step233HeadFvRow,s2Step233HeadGvRow⟩ ⟨154,154,132,132⟩ [s2Step233HeadGFresh,s2Step233HeadFFresh,s2Step233HeadGvFresh,s2Step233HeadFvFresh]=
    some (s2Step233HeadFvAfter,⟨s2Step233HeadFOut,s2Step233HeadGOut,s2Step233HeadFvOut,s2Step233HeadGvOut⟩,(growRow 769 s2Step233HeadGFresh ++ (growRow 768 s2Step233HeadFFresh ++ (growRow 771 s2Step233HeadGvFresh ++ (growRow 770 s2Step233HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step233HeadBank_rows]
  rfl

private theorem s2Step233Front_checked : compileHmrSourceFrontLog s2Step233EntryFBefore s2Step233FrontBank 153 131 ⟨153,153,132,131⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step233FrontLog=some s2Step233FrontPlan := by
  have pairEq : s2Step233FrontPair=⟨s2Step233HeadFRow,s2Step233HeadGRow,s2Step233HeadFvRow,s2Step233HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step233FrontHead=⟨s2Step233ExitFRow,s2Step233ExitGRow,s2Step233ExitFvRow,s2Step233ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step233Add0A=s2Step233FrontHead.f.wires := by decide +kernel
  have gEq : s2Step233Add0B=s2Step233FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step233Add1A=s2Step233FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step233Add1B=s2Step233FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step233EntryFBefore s2Step233FrontBank 153 131 ⟨153,153,132,131⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step233FrontLog s2Step233FrontPlan
  · exact s2Step233Front_entry
  · exact s2Step233EntryBank_checked
  · exact s2Step233Front_sigma
  · rfl
  · exact s2Step233Front_branch
  · rfl
  · simpa only [s2Step233FrontPlan,pairEq] using s2Step233HeadBank_checked
  · simpa only [s2Step233FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step233F4_checked
  · exact s2Step233Counter_checked
  · rfl
  · simpa only [s2Step233FrontPlan,headEq] using s2Step233ExitBank_checked

private theorem s2Step233Complete_explicit_checked : compileHmrEarlyStepLog s2Step233EntryFBefore s2Step233FrontBank 153 131 ⟨153,153,132,131⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 49 s2Step233CompleteLog=some s2Step233CompletePlan := by
  let Q := s2Step233EarlyControlPlan
  have hq := s2Step233EarlyControl_plan_checked
  have fv1 : s2Step233CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step233CompleteOut.fv.payload[2]?.getD s2Step233CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step233CompleteOut.fv.payload[3]?.getD s2Step233CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step233CompleteOut.fv.payload[4]?.getD s2Step233CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step233EntryFBefore s2Step233EarlyControlArena s2Step233FrontBank 153 131 ⟨153,153,132,131⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 49 s2Step233CompleteLog s2Step233FrontPlan Q
    s2Step233Front_checked s2Step233Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step233Complete_owned s2Step233Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step233EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 777 820 s2Step233CompleteOut.fv.second (s2Step233CompleteOut.fv.payload[2]?.getD s2Step233CompleteOut.fv.sign) (s2Step233CompleteOut.fv.payload[3]?.getD s2Step233CompleteOut.fv.sign) (s2Step233CompleteOut.fv.payload[4]?.getD s2Step233CompleteOut.fv.sign) 793 49 s2Step233EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep233Arena : Arena := s2Step233EntryFBefore
def s2PrivateStep233Bank : WindowBank := s2Step233FrontBank
def s2PrivateStep233Spec : HmrSourceWalkStepLog := ⟨153,131,⟨153,153,132,131⟩,49,.early s2Step233CompleteLog⟩
def s2PrivateStep233Plan : HmrSourceStepPlan := .early s2Step233CompletePlan
theorem s2PrivateStep233_source : s2PrivateStep233Spec=s2ObservedLogs224[9] := rfl
theorem s2PrivateStep233_checked : compileHmrSourceStepLog s2PrivateStep233Arena s2PrivateStep233Bank
    s2PrivateStep233Spec.fgWidth s2PrivateStep233Spec.vWidth s2PrivateStep233Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898]
    6 498 233 s2PrivateStep233Spec.need none s2PrivateStep233Spec.log=some s2PrivateStep233Plan := by
  change compileHmrSourceStepLog s2Step233EntryFBefore s2Step233FrontBank 153 131 ⟨153,153,132,131⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 6 498 233 49 none (.early s2Step233CompleteLog)=some (.early s2Step233CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 233<498)]
  rw [s2Step233Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
