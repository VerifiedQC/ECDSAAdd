import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep251
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

private def s2Step253CompleteMoves : List (Wire × Wire) := [(827,143)]

private def s2Step253EarlyControlLog : HmrEarlyControlLog := ⟨[827, 830, 792, 782, 814],[809],[885],[891, 894, 896, 901, 902, 903],[]⟩

private def s2Step253FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [837]],[[782], [792], [830], [842]],[[], [], [], []]⟩,[784],[800],[814],[809],[885, 891, 894, 896, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[885, 891, 894, 896, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[814, 809, 885, 891]⟩

private def s2Step253CompleteLog : HmrEarlyStepLog := ⟨s2Step253FrontLog,s2Step253CompleteMoves,s2Step253EarlyControlLog⟩

private def s2Step253ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655],768⟩

private def s2Step253ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842],770⟩

private def s2Step253ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142],769⟩

private def s2Step253ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837],771⟩

private def s2Step253FrontOut : WindowBank := ⟨s2Step253ExitFOut,s2Step253ExitGOut,s2Step253ExitFvOut,s2Step253ExitGvOut⟩

private def s2Step253CompleteOut : WindowBank := s2Step253FrontOut.repacked s2Step253CompleteMoves

private def s2Step253EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step253EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step253EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step253EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step253EarlyControlPositiveArena,[809],s2Step253EarlyControlEqualityArena,[885],⟨⟨784,false⟩,[⟨⟨809,false⟩,885⟩]⟩⟩

private def s2Step253EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<904)),Finset.filter_subset _ _⟩

private def s2Step253EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<904)),Finset.filter_subset _ _⟩

private def s2Step253EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step253EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step253EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step253EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step253EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,827⟩,⟨⟨774,false⟩,830⟩,⟨⟨775,false⟩,792⟩,⟨⟨776,false⟩,782⟩,⟨⟨777,false⟩,814⟩]⟩

private def s2Step253EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step253EarlyControlZeroArena,s2Step253EarlyControlZeroPlan,s2Step253EarlyControlClassPlan,s2Step253EarlyControlFlagArena,s2Step253EarlyControlFittedArena,s2Step253EarlyControlHistoryArena,s2Step253EarlyControlSigmaArena,s2Step253EarlyControlOutputArena,s2Step253EarlyControlLog⟩

private def s2Step253CounterWork : List Wire := [814, 809, 885, 891]

private theorem s2Step253Counter_bounded : s2Step253CounterWork.toFinset⊆arenaWires := by norm_num [s2Step253CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step253HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step253CounterDuring : Arena := ⟨s2Step253HeadFvAfter.live∪s2Step253CounterWork.toFinset,Finset.union_subset s2Step253HeadFvAfter.bounded s2Step253Counter_bounded⟩

private def s2Step253EntryFFresh : List Wire := []

private def s2Step253EntryFvFresh : List Wire := []

private def s2Step253EntryGFresh : List Wire := []

private def s2Step253EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step253EntryGvFresh : List Wire := [837]

private def s2Step253ExitFExtra : List Wire := [792]

private def s2Step253ExitGExtra : List Wire := [143, 782]

private def s2Step253ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<143) ∨ (144≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step253ExitGvExtra : List Wire := [830]

private def s2Step253Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step253Add0Work : List Wire := [885, 891, 894, 896, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step253Add0_bounded : s2Step253Add0Work.toFinset⊆arenaWires := by
  have h : s2Step253Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step253Add0During : Arena := ⟨s2Step253Add0Arena.live∪s2Step253Add0Work.toFinset,Finset.union_subset s2Step253Add0Arena.bounded s2Step253Add0_bounded⟩

private def s2Step253Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step253Add1Work : List Wire := [885, 891, 894, 896, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step253Add1_bounded : s2Step253Add1Work.toFinset⊆arenaWires := by
  have h : s2Step253Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step253Add1During : Arena := ⟨s2Step253Add1Arena.live∪s2Step253Add1Work.toFinset,Finset.union_subset s2Step253Add1Arena.bounded s2Step253Add1_bounded⟩

private def s2Step253F4FlagArena : Arena := ⟨s2Step253HeadFvAfter.live∪{814},Finset.union_subset s2Step253HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step253F4Plan : HmrHybridF4Plan := ⟨s2Step253F4FlagArena,[814],s2Step253Add0Arena,[809],s2Step253Add0During,s2Step253Add0Work,s2Step253Add1During,s2Step253Add1Work⟩

private def s2Step253HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 792],768⟩

private def s2Step253HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842],770⟩

private def s2Step253HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 782],769⟩

private def s2Step253HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 830],771⟩

private def s2Step253FrontHead : WindowBank := ⟨s2Step253HeadFOut,s2Step253HeadGOut,s2Step253HeadFvOut,s2Step253HeadGvOut⟩

private def s2Step253EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655],768⟩

private def s2Step253EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835],770⟩

private def s2Step253EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143],769⟩

private def s2Step253EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837],771⟩

private def s2Step253FrontPair : WindowBank := ⟨s2Step253EntryFOut,s2Step253EntryGOut,s2Step253EntryFvOut,s2Step253EntryGvOut⟩

private def s2Step253FrontSigmaArena : Arena := ⟨s2Step253EntryGvAfter.live∪{784},Finset.union_subset s2Step253EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step253HeadFFresh : List Wire := [792]

private def s2Step253HeadFvFresh : List Wire := [842]

private def s2Step253HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step253HeadGFresh : List Wire := [782]

private def s2Step253HeadGvFresh : List Wire := [830]

private def s2Step253FrontPlan : HmrSourceFront := ⟨s2Step253EntryGvAfter,s2Step253FrontPair,(growRow 768 s2Step253EntryFFresh ++ (growRow 769 s2Step253EntryGFresh ++ (growRow 770 s2Step253EntryFvFresh ++ (growRow 771 s2Step253EntryGvFresh ++ [])))),s2Step253FrontSigmaArena,[784],s2Step253HeadGBefore,[800],
  s2Step253HeadFvAfter,s2Step253FrontHead,(growRow 769 s2Step253HeadGFresh ++ (growRow 768 s2Step253HeadFFresh ++ (growRow 771 s2Step253HeadGvFresh ++ (growRow 770 s2Step253HeadFvFresh ++ [])))),s2Step253F4Plan,s2Step253CounterDuring,s2Step253CounterWork,s2Step253ExitGvAfter,s2Step253FrontOut,(shrinkRow 769 s2Step253ExitGExtra ++ (shrinkRow 768 s2Step253ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step253ExitGvExtra ++ []))))⟩

private def s2Step253CompletePlan : HmrEarlyStepPlan := ⟨s2Step253FrontPlan,s2Step253EarlyControlArena,s2Step253EarlyControlPlan,s2Step253CompleteMoves⟩

private theorem s2Step253Complete_apart : List.Disjoint (s2Step253CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [784, 800, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] := by
  have nd : ((s2Step253CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[784, 800, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step253Complete_owned : (s2Step253CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step253EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step253EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private def s2Step253CompleteMoveArena : Arena := ⟨s2Step253ExitGvAfter.live∪{143},Finset.union_subset s2Step253ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step253Complete_repack : s2Step253ExitGvAfter.checkRepack s2Step253CompleteMoves=some s2Step253EarlyControlArena := by
  have owned : 827∈s2Step253ExitGvAfter.live := by norm_num [s2Step253ExitGvAfter,arenaWires]
  have reserve : s2Step253ExitGvAfter.reserve {143}=some s2Step253CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step253ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step253CompleteMoveArena.retireSet {827}=s2Step253EarlyControlArena := by
    unfold Arena.retireSet s2Step253EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step253CompleteMoveArena,s2Step253ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step253CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step253CompleteMoveArena.retireSet {827}).checkRepack []=some s2Step253EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step253EarlyControl_branchOwned : ([800] : List Wire).toFinset⊆s2Step253EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step253EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step253EarlyControl_branch : compileHmrBranchRetirement s2Step253EarlyControlSigmaArena 800=some s2Step253EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step253EarlyControl_branchOwned
  · ext q
    simp [s2Step253EarlyControlOutputArena,s2Step253EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step253EarlyControl_classEqualityBorrow : s2Step253EarlyControlPositiveArena.checkBorrow (([784, 809] : List Wire).length-1) s2Step253EarlyControlLog.classWork=some s2Step253EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step253EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step253EarlyControlPositiveArena (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step253EarlyControlEqualityArena,s2Step253EarlyControlPositiveArena,s2Step253EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step253EarlyControl_classEqualityOwned : ([784, 809] : List Wire).toFinset⊆s2Step253EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step253EarlyControlPositiveArena (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step253EarlyControl_classEquality : compileHmrEqualityLog s2Step253EarlyControlPositiveArena [784, 809] 0 s2Step253EarlyControlLog.classWork=some (s2Step253EarlyControlEqualityArena,s2Step253EarlyControlLog.classWork,s2Step253EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step253EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step253EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step253EarlyControl_classOwned : ([777, 814, 784] : List Wire).toFinset⊆s2Step253EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step253EarlyControlZeroArena (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step253EarlyControl_positiveBorrow : s2Step253EarlyControlZeroArena.checkBorrow (1) s2Step253EarlyControlLog.positiveWork=some s2Step253EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step253EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step253EarlyControlZeroArena (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step253EarlyControlPositiveArena,s2Step253EarlyControlZeroArena,s2Step253EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step253EarlyControl_class : compileHmrSourceClassLog s2Step253EarlyControlZeroArena false 777 s2Step253EarlyControlZeroPlan.top 0 784 s2Step253EarlyControlLog.positiveWork s2Step253EarlyControlLog.classWork=some s2Step253EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step253EarlyControlClassPlan s2Step253EarlyControlZeroArena false 777 s2Step253EarlyControlZeroPlan.top 0 784
  constructor
  · decide +kernel
  · exact s2Step253EarlyControl_classOwned
  · exact s2Step253EarlyControl_positiveBorrow
  · exact s2Step253EarlyControl_classEquality

private theorem s2Step253EarlyControl_entryRecordOwned : ([800, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).toFinset⊆s2Step253EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step253EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step253EarlyControl_entrySigmaOwned : ([784, 254] : List Wire).toFinset⊆s2Step253EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step253EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step253EarlyControl_fitBorrow : s2Step253EarlyControlFlagArena.checkBorrow ((51-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).length)) s2Step253EarlyControlLog.recordFresh=some s2Step253EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step253EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step253EarlyControlFlagArena (fun q => (0≤q ∧ q<904)) rfl
      decide +kernel
    · ext q
      simp [s2Step253EarlyControlFittedArena,s2Step253EarlyControlFlagArena,s2Step253EarlyControlLog,arenaWires]

private theorem s2Step253EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).toFinset⊆s2Step253EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step253EarlyControlFlagArena (fun q => (0≤q ∧ q<904)) rfl
  decide +kernel

private theorem s2Step253EarlyControl_fit : compileHmrRecordGrowLog s2Step253EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 51 s2Step253EarlyControlLog.recordFresh=some s2Step253EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step253EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step253EarlyControl_fitBorrow

private theorem s2Step253EarlyControl_flagsBorrow : s2Step253EarlyControlEqualityArena.checkBorrow (6) s2Step253EarlyControlLog.flagWork=some s2Step253EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step253EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step253EarlyControlEqualityArena (fun q => (0≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step253EarlyControlFlagArena,s2Step253EarlyControlEqualityArena,s2Step253EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step253EarlyControl_flagsOwned : ([885, 253, 252, 251] : List Wire).toFinset⊆s2Step253EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step253EarlyControlEqualityArena (fun q => (0≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step253EarlyControl_flags : compileHmrFlagsLog s2Step253EarlyControlClassPlan.equalityArena s2Step253EarlyControlClassPlan.equality.top 253 252 251 s2Step253EarlyControlLog.flagWork=some s2Step253EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step253EarlyControl_flagsOwned⟩
  · exact s2Step253EarlyControl_flagsBorrow

private theorem s2Step253EarlyControl_historyBorrow : s2Step253EarlyControlArena.checkBorrow ((51-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).length)) s2Step253EarlyControlLog.recordFresh=some s2Step253EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step253EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step253EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step253EarlyControlHistoryArena,s2Step253EarlyControlArena,s2Step253EarlyControlLog,arenaWires]

private theorem s2Step253EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).toFinset⊆s2Step253EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step253EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step253EarlyControl_history : compileHmrRecordGrowLog s2Step253EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 51 s2Step253EarlyControlLog.recordFresh=some s2Step253EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step253EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step253EarlyControl_historyBorrow

private theorem s2Step253EarlyControl_sigmaOwned : ([254, 784] : List Wire).toFinset⊆s2Step253EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step253EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step253EarlyControl_sigmaReleaseOwned : ([784] : List Wire).toFinset⊆s2Step253EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step253EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step253EarlyControl_sigmaRelease : s2Step253EarlyControlHistoryArena.release {784} (fun _ => false)=some s2Step253EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step253EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step253EarlyControlSigmaArena,s2Step253EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step253EarlyControl_sigma : compileHmrSigmaDropLog s2Step253EarlyControlHistoryArena false 0 0 254 784 []=some s2Step253EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step253EarlyControl_sigmaOwned⟩
  · exact s2Step253EarlyControl_sigmaRelease

private theorem s2Step253EarlyControl_zeroBorrow : s2Step253EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step253EarlyControlLog.zeroWork=some s2Step253EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step253EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step253EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step253EarlyControlZeroArena,s2Step253EarlyControlArena,s2Step253EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step253EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step253EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step253EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step253EarlyControl_zero : compileHmrEqualityLog s2Step253EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step253EarlyControlLog.zeroWork=some (s2Step253EarlyControlZeroArena,s2Step253EarlyControlLog.zeroWork,s2Step253EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step253EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step253EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step253EarlyControl_logged : s2Step253EarlyControlPlan.Logged s2Step253EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 777 784 254 253 252 251 800 51 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step253EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step253EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step253EarlyControl_zero
  · exact s2Step253EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step253EarlyControl_flags
  · exact s2Step253EarlyControl_fit
  · exact s2Step253EarlyControl_history
  · exact s2Step253EarlyControl_sigma
  · exact s2Step253EarlyControl_branch

private theorem s2Step253EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step253EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 777 784 254 253 252 251 800 51 s2Step253EarlyControlLog=some s2Step253EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step253EarlyControlPlan s2Step253EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 777 784 254 253 252 251 800 51 s2Step253EarlyControl_logged

private def s2Step253EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<837) ∨ (838≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step253EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655],768⟩

private def s2Step253EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835],770⟩

private def s2Step253EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143],769⟩

private def s2Step253EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803],771⟩

private def s2Step253FrontBank : WindowBank := ⟨s2Step253EntryFRow,s2Step253EntryGRow,s2Step253EntryFvRow,s2Step253EntryGvRow⟩

private def s2Step253Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 792, 768]

private def s2Step253Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 782, 769]

private def s2Step253Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 770]

private def s2Step253Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 830, 771]

private theorem s2Step253Counter_apart : Disjoint s2Step253HeadFvAfter.live s2Step253CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step253HeadFvAfter (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step253Counter_borrowed : s2Step253HeadFvAfter.checkBorrow 4 s2Step253CounterWork=some s2Step253CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step253HeadFvAfter s2Step253CounterDuring s2Step253CounterWork.toFinset s2Step253Counter_bounded s2Step253Counter_apart rfl

private theorem s2Step253Counter_owned : (784::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step253HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step253HeadFvAfter (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step253Counter_checked : compileHmrCounterStepLog s2Step253HeadFvAfter true 784 [772, 773, 774, 775, 776, 777] s2Step253CounterWork=some s2Step253CounterDuring := by
  have owned : ∀q∈784::[772, 773, 774, 775, 776, 777],q∈s2Step253HeadFvAfter.live := fun q hq => s2Step253Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step253Counter_borrowed

private def s2Step253EntryFAfter : Arena := s2Step253EntryFBefore

private theorem s2Step253EntryBank_incomingDistinct : ([s2Step253EntryFRow,s2Step253EntryGRow,s2Step253EntryFvRow,s2Step253EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step253EntryF_Incoming : rowsOwned s2Step253EntryFBefore [s2Step253EntryFRow,s2Step253EntryGRow,s2Step253EntryFvRow,s2Step253EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step253EntryFRow,s2Step253EntryGRow,s2Step253EntryFvRow,s2Step253EntryGvRow] 0 s2Step253EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step253EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<837) ∨ (838≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step253EntryBank_outgoingOwned : rowsOwned s2Step253EntryGvAfter [s2Step253EntryFOut,s2Step253EntryGOut,s2Step253EntryFvOut,s2Step253EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step253EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step253EntryF_Outgoing : rowsOwned s2Step253EntryGvAfter [s2Step253EntryFOut,s2Step253EntryGOut,s2Step253EntryFvOut,s2Step253EntryGvOut] :=
  hmrRows_owned_drop s2Step253EntryGvAfter [s2Step253EntryFOut,s2Step253EntryGOut,s2Step253EntryFvOut,s2Step253EntryGvOut] 0 s2Step253EntryBank_outgoingOwned

private theorem s2Step253EntryF_distinct : (s2Step253EntryFRow.sign::s2Step253EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step253EntryF_owned : (s2Step253EntryFRow.sign::s2Step253EntryFRow.payload).toFinset⊆s2Step253EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step253EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<837) ∨ (838≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step253EntryF_reserved : s2Step253EntryFBefore.reserve s2Step253EntryFFresh.toFinset=some s2Step253EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step253EntryFFresh,arenaWires]
  · norm_num [s2Step253EntryFBefore,s2Step253EntryFFresh,arenaWires]
  · simp only [s2Step253EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step253EntryF_checked : planRowResizeLog s2Step253EntryFBefore s2Step253EntryFRow 144 s2Step253EntryFFresh=
    some (s2Step253EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655],768⟩,growRow 768 s2Step253EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step253EntryFBefore s2Step253EntryFAfter s2Step253EntryFRow 144 s2Step253EntryFFresh
    s2Step253EntryF_distinct s2Step253EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step253EntryF_reserved
  have rowEq : WindowRow.mk (s2Step253EntryFRow.payload++s2Step253EntryFFresh) s2Step253EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step253EntryFvAfter : Arena := s2Step253EntryFBefore

private def s2Step253EntryFvBefore : Arena := s2Step253EntryFBefore

private theorem s2Step253EntryFv_Incoming : rowsOwned s2Step253EntryFvBefore [s2Step253EntryFvRow,s2Step253EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step253EntryFRow,s2Step253EntryGRow,s2Step253EntryFvRow,s2Step253EntryGvRow] 2 s2Step253EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step253EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<837) ∨ (838≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step253EntryFv_Outgoing : rowsOwned s2Step253EntryGvAfter [s2Step253EntryFvOut,s2Step253EntryGvOut] :=
  hmrRows_owned_drop s2Step253EntryGvAfter [s2Step253EntryFOut,s2Step253EntryGOut,s2Step253EntryFvOut,s2Step253EntryGvOut] 2 s2Step253EntryBank_outgoingOwned

private theorem s2Step253EntryFv_distinct : (s2Step253EntryFvRow.sign::s2Step253EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step253EntryFv_owned : (s2Step253EntryFvRow.sign::s2Step253EntryFvRow.payload).toFinset⊆s2Step253EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step253EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<837) ∨ (838≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step253EntryFv_reserved : s2Step253EntryFvBefore.reserve s2Step253EntryFvFresh.toFinset=some s2Step253EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step253EntryFvFresh,arenaWires]
  · norm_num [s2Step253EntryFvBefore,s2Step253EntryFBefore,s2Step253EntryFvFresh,arenaWires]
  · simp only [s2Step253EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step253EntryFv_checked : planRowResizeLog s2Step253EntryFvBefore s2Step253EntryFvRow 142 s2Step253EntryFvFresh=
    some (s2Step253EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835],770⟩,growRow 770 s2Step253EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step253EntryFvBefore s2Step253EntryFvAfter s2Step253EntryFvRow 142 s2Step253EntryFvFresh
    s2Step253EntryFv_distinct s2Step253EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step253EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step253EntryFvRow.payload++s2Step253EntryFvFresh) s2Step253EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step253EntryGAfter : Arena := s2Step253EntryFBefore

private def s2Step253EntryGBefore : Arena := s2Step253EntryFBefore

private theorem s2Step253EntryG_Incoming : rowsOwned s2Step253EntryGBefore [s2Step253EntryGRow,s2Step253EntryFvRow,s2Step253EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step253EntryFRow,s2Step253EntryGRow,s2Step253EntryFvRow,s2Step253EntryGvRow] 1 s2Step253EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step253EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<837) ∨ (838≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step253EntryG_Outgoing : rowsOwned s2Step253EntryGvAfter [s2Step253EntryGOut,s2Step253EntryFvOut,s2Step253EntryGvOut] :=
  hmrRows_owned_drop s2Step253EntryGvAfter [s2Step253EntryFOut,s2Step253EntryGOut,s2Step253EntryFvOut,s2Step253EntryGvOut] 1 s2Step253EntryBank_outgoingOwned

private theorem s2Step253EntryG_distinct : (s2Step253EntryGRow.sign::s2Step253EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step253EntryG_owned : (s2Step253EntryGRow.sign::s2Step253EntryGRow.payload).toFinset⊆s2Step253EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step253EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<837) ∨ (838≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step253EntryG_reserved : s2Step253EntryGBefore.reserve s2Step253EntryGFresh.toFinset=some s2Step253EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step253EntryGFresh,arenaWires]
  · norm_num [s2Step253EntryGBefore,s2Step253EntryFBefore,s2Step253EntryGFresh,arenaWires]
  · simp only [s2Step253EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step253EntryG_checked : planRowResizeLog s2Step253EntryGBefore s2Step253EntryGRow 144 s2Step253EntryGFresh=
    some (s2Step253EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143],769⟩,growRow 769 s2Step253EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step253EntryGBefore s2Step253EntryGAfter s2Step253EntryGRow 144 s2Step253EntryGFresh
    s2Step253EntryG_distinct s2Step253EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step253EntryG_reserved
  have rowEq : WindowRow.mk (s2Step253EntryGRow.payload++s2Step253EntryGFresh) s2Step253EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step253EntryGvBefore : Arena := s2Step253EntryFBefore

private theorem s2Step253EntryGv_Incoming : rowsOwned s2Step253EntryGvBefore [s2Step253EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step253EntryFRow,s2Step253EntryGRow,s2Step253EntryFvRow,s2Step253EntryGvRow] 3 s2Step253EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step253EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<837) ∨ (838≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step253EntryGv_Outgoing : rowsOwned s2Step253EntryGvAfter [s2Step253EntryGvOut] :=
  hmrRows_owned_drop s2Step253EntryGvAfter [s2Step253EntryFOut,s2Step253EntryGOut,s2Step253EntryFvOut,s2Step253EntryGvOut] 3 s2Step253EntryBank_outgoingOwned

private theorem s2Step253EntryGv_distinct : (s2Step253EntryGvRow.sign::s2Step253EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step253EntryGv_owned : (s2Step253EntryGvRow.sign::s2Step253EntryGvRow.payload).toFinset⊆s2Step253EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step253EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<837) ∨ (838≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step253EntryGv_reserved : s2Step253EntryGvBefore.reserve s2Step253EntryGvFresh.toFinset=some s2Step253EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step253EntryGvFresh,arenaWires]
  · norm_num [s2Step253EntryGvBefore,s2Step253EntryFBefore,s2Step253EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step253EntryGvAfter,s2Step253EntryGvBefore,s2Step253EntryFBefore,s2Step253EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step253EntryGv_checked : planRowResizeLog s2Step253EntryGvBefore s2Step253EntryGvRow 142 s2Step253EntryGvFresh=
    some (s2Step253EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837],771⟩,growRow 771 s2Step253EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step253EntryGvBefore s2Step253EntryGvAfter s2Step253EntryGvRow 142 s2Step253EntryGvFresh
    s2Step253EntryGv_distinct s2Step253EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step253EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step253EntryGvRow.payload++s2Step253EntryGvFresh) s2Step253EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step253EntryBank_rows : planWindowRowsLog s2Step253EntryFBefore [(s2Step253EntryFRow,144),(s2Step253EntryGRow,144),(s2Step253EntryFvRow,142),(s2Step253EntryGvRow,142)] [s2Step253EntryFFresh,s2Step253EntryGFresh,s2Step253EntryFvFresh,s2Step253EntryGvFresh]=
    some (s2Step253EntryGvAfter,[s2Step253EntryFOut,s2Step253EntryGOut,s2Step253EntryFvOut,s2Step253EntryGvOut],(growRow 768 s2Step253EntryFFresh ++ (growRow 769 s2Step253EntryGFresh ++ (growRow 770 s2Step253EntryFvFresh ++ (growRow 771 s2Step253EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step253EntryGvAfter [] []=some (s2Step253EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step253EntryGvBefore s2Step253EntryGvAfter s2Step253EntryGvAfter
    s2Step253EntryGvRow s2Step253EntryGvOut 142 s2Step253EntryGvFresh [] [] []
    (growRow 771 s2Step253EntryGvFresh) ([]) s2Step253EntryGv_Incoming s2Step253EntryGv_checked h4 s2Step253EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step253EntryFvBefore s2Step253EntryFvAfter s2Step253EntryGvAfter
    s2Step253EntryFvRow s2Step253EntryFvOut 142 s2Step253EntryFvFresh [(s2Step253EntryGvRow,142)] [s2Step253EntryGvFresh] [s2Step253EntryGvOut]
    (growRow 770 s2Step253EntryFvFresh) ((growRow 771 s2Step253EntryGvFresh ++ [])) s2Step253EntryFv_Incoming s2Step253EntryFv_checked h3 s2Step253EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step253EntryGBefore s2Step253EntryGAfter s2Step253EntryGvAfter
    s2Step253EntryGRow s2Step253EntryGOut 144 s2Step253EntryGFresh [(s2Step253EntryFvRow,142),(s2Step253EntryGvRow,142)] [s2Step253EntryFvFresh,s2Step253EntryGvFresh] [s2Step253EntryFvOut,s2Step253EntryGvOut]
    (growRow 769 s2Step253EntryGFresh) ((growRow 770 s2Step253EntryFvFresh ++ (growRow 771 s2Step253EntryGvFresh ++ []))) s2Step253EntryG_Incoming s2Step253EntryG_checked h2 s2Step253EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step253EntryFBefore s2Step253EntryFAfter s2Step253EntryGvAfter
    s2Step253EntryFRow s2Step253EntryFOut 144 s2Step253EntryFFresh [(s2Step253EntryGRow,144),(s2Step253EntryFvRow,142),(s2Step253EntryGvRow,142)] [s2Step253EntryGFresh,s2Step253EntryFvFresh,s2Step253EntryGvFresh] [s2Step253EntryGOut,s2Step253EntryFvOut,s2Step253EntryGvOut]
    (growRow 768 s2Step253EntryFFresh) ((growRow 769 s2Step253EntryGFresh ++ (growRow 770 s2Step253EntryFvFresh ++ (growRow 771 s2Step253EntryGvFresh ++ [])))) s2Step253EntryF_Incoming s2Step253EntryF_checked h1 s2Step253EntryF_Outgoing
  exact h0

private theorem s2Step253EntryBank_checked : compileHmrBankResizeLog .entry s2Step253EntryFBefore ⟨s2Step253EntryFRow,s2Step253EntryGRow,s2Step253EntryFvRow,s2Step253EntryGvRow⟩ ⟨144,144,142,142⟩ [s2Step253EntryFFresh,s2Step253EntryGFresh,s2Step253EntryFvFresh,s2Step253EntryGvFresh]=
    some (s2Step253EntryGvAfter,⟨s2Step253EntryFOut,s2Step253EntryGOut,s2Step253EntryFvOut,s2Step253EntryGvOut⟩,(growRow 768 s2Step253EntryFFresh ++ (growRow 769 s2Step253EntryGFresh ++ (growRow 770 s2Step253EntryFvFresh ++ (growRow 771 s2Step253EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step253EntryBank_rows]
  rfl

private def s2Step253ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<143) ∨ (144≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step253ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<143) ∨ (144≤q ∧ q<782) ∨ (783≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step253ExitFBefore : Arena := s2Step253ExitGAfter

private def s2Step253ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 792],768⟩

private def s2Step253ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842],770⟩

private def s2Step253ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 782],769⟩

private def s2Step253ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 830],771⟩

private theorem s2Step253ExitBank_incomingDistinct : ([s2Step253ExitGRow,s2Step253ExitFRow,s2Step253ExitFvRow,s2Step253ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step253ExitF_Incoming : rowsOwned s2Step253ExitFBefore [s2Step253ExitFRow,s2Step253ExitFvRow,s2Step253ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step253ExitGRow,s2Step253ExitFRow,s2Step253ExitFvRow,s2Step253ExitGvRow] 1 s2Step253ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step253ExitFBefore (fun q => (0≤q ∧ q<143) ∨ (144≤q ∧ q<782) ∨ (783≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step253ExitBank_outgoingOwned : rowsOwned s2Step253ExitGvAfter [s2Step253ExitGOut,s2Step253ExitFOut,s2Step253ExitFvOut,s2Step253ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step253ExitGvAfter (fun q => (0≤q ∧ q<143) ∨ (144≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step253ExitF_Outgoing : rowsOwned s2Step253ExitGvAfter [s2Step253ExitFOut,s2Step253ExitFvOut,s2Step253ExitGvOut] :=
  hmrRows_owned_drop s2Step253ExitGvAfter [s2Step253ExitGOut,s2Step253ExitFOut,s2Step253ExitFvOut,s2Step253ExitGvOut] 1 s2Step253ExitBank_outgoingOwned

private theorem s2Step253ExitF_distinct : (s2Step253ExitFRow.sign::s2Step253ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step253ExitF_owned : (s2Step253ExitFRow.sign::s2Step253ExitFRow.payload).toFinset⊆s2Step253ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step253ExitFBefore (fun q => (0≤q ∧ q<143) ∨ (144≤q ∧ q<782) ∨ (783≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step253ExitF_retired : s2Step253ExitFBefore.retireSet s2Step253ExitFExtra.toFinset=s2Step253ExitFAfter := by
  unfold Arena.retireSet s2Step253ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step253ExitFBefore,s2Step253ExitGAfter,s2Step253ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step253ExitF_checked : planRowResizeLog s2Step253ExitFBefore s2Step253ExitFRow 144 []=
    some (s2Step253ExitFAfter,s2Step253ExitFOut,shrinkRow 768 s2Step253ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step253ExitFBefore s2Step253ExitFRow 144 s2Step253ExitF_distinct s2Step253ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step253ExitFRow.payload.take 144) s2Step253ExitFRow.sign=s2Step253ExitFOut := by decide +kernel
  have hi : s2Step253ExitFRow.payload.drop 144=s2Step253ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step253ExitF_retired] at result
  exact result

private def s2Step253ExitFvAfter : Arena := s2Step253ExitFAfter

private def s2Step253ExitFvBefore : Arena := s2Step253ExitFAfter

private theorem s2Step253ExitFv_Incoming : rowsOwned s2Step253ExitFvBefore [s2Step253ExitFvRow,s2Step253ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step253ExitGRow,s2Step253ExitFRow,s2Step253ExitFvRow,s2Step253ExitGvRow] 2 s2Step253ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step253ExitFvBefore (fun q => (0≤q ∧ q<143) ∨ (144≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step253ExitFv_Outgoing : rowsOwned s2Step253ExitGvAfter [s2Step253ExitFvOut,s2Step253ExitGvOut] :=
  hmrRows_owned_drop s2Step253ExitGvAfter [s2Step253ExitGOut,s2Step253ExitFOut,s2Step253ExitFvOut,s2Step253ExitGvOut] 2 s2Step253ExitBank_outgoingOwned

private theorem s2Step253ExitFv_distinct : (s2Step253ExitFvRow.sign::s2Step253ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step253ExitFv_owned : (s2Step253ExitFvRow.sign::s2Step253ExitFvRow.payload).toFinset⊆s2Step253ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step253ExitFvBefore (fun q => (0≤q ∧ q<143) ∨ (144≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step253ExitFv_reserved : s2Step253ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step253ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step253ExitFv_checked : planRowResizeLog s2Step253ExitFvBefore s2Step253ExitFvRow 143 []=
    some (s2Step253ExitFvAfter,s2Step253ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step253ExitFvBefore s2Step253ExitFvAfter s2Step253ExitFvRow 143 []
    s2Step253ExitFv_distinct s2Step253ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step253ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step253ExitFvRow.payload++[]) s2Step253ExitFvRow.sign=s2Step253ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step253ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private theorem s2Step253ExitG_Incoming : rowsOwned s2Step253ExitGBefore [s2Step253ExitGRow,s2Step253ExitFRow,s2Step253ExitFvRow,s2Step253ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step253ExitGRow,s2Step253ExitFRow,s2Step253ExitFvRow,s2Step253ExitGvRow] 0 s2Step253ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step253ExitGBefore (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step253ExitG_Outgoing : rowsOwned s2Step253ExitGvAfter [s2Step253ExitGOut,s2Step253ExitFOut,s2Step253ExitFvOut,s2Step253ExitGvOut] :=
  hmrRows_owned_drop s2Step253ExitGvAfter [s2Step253ExitGOut,s2Step253ExitFOut,s2Step253ExitFvOut,s2Step253ExitGvOut] 0 s2Step253ExitBank_outgoingOwned

private theorem s2Step253ExitG_distinct : (s2Step253ExitGRow.sign::s2Step253ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step253ExitG_owned : (s2Step253ExitGRow.sign::s2Step253ExitGRow.payload).toFinset⊆s2Step253ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step253ExitGBefore (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step253ExitG_retired : s2Step253ExitGBefore.retireSet s2Step253ExitGExtra.toFinset=s2Step253ExitGAfter := by
  unfold Arena.retireSet s2Step253ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step253ExitGBefore,s2Step253ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step253ExitG_checked : planRowResizeLog s2Step253ExitGBefore s2Step253ExitGRow 143 []=
    some (s2Step253ExitGAfter,s2Step253ExitGOut,shrinkRow 769 s2Step253ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step253ExitGBefore s2Step253ExitGRow 143 s2Step253ExitG_distinct s2Step253ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step253ExitGRow.payload.take 143) s2Step253ExitGRow.sign=s2Step253ExitGOut := by decide +kernel
  have hi : s2Step253ExitGRow.payload.drop 143=s2Step253ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step253ExitG_retired] at result
  exact result

private def s2Step253ExitGvBefore : Arena := s2Step253ExitFAfter

private theorem s2Step253ExitGv_Incoming : rowsOwned s2Step253ExitGvBefore [s2Step253ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step253ExitGRow,s2Step253ExitFRow,s2Step253ExitFvRow,s2Step253ExitGvRow] 3 s2Step253ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step253ExitGvBefore (fun q => (0≤q ∧ q<143) ∨ (144≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step253ExitGv_Outgoing : rowsOwned s2Step253ExitGvAfter [s2Step253ExitGvOut] :=
  hmrRows_owned_drop s2Step253ExitGvAfter [s2Step253ExitGOut,s2Step253ExitFOut,s2Step253ExitFvOut,s2Step253ExitGvOut] 3 s2Step253ExitBank_outgoingOwned

private theorem s2Step253ExitGv_distinct : (s2Step253ExitGvRow.sign::s2Step253ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step253ExitGv_owned : (s2Step253ExitGvRow.sign::s2Step253ExitGvRow.payload).toFinset⊆s2Step253ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step253ExitGvBefore (fun q => (0≤q ∧ q<143) ∨ (144≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step253ExitGv_retired : s2Step253ExitGvBefore.retireSet s2Step253ExitGvExtra.toFinset=s2Step253ExitGvAfter := by
  unfold Arena.retireSet s2Step253ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step253ExitGvBefore,s2Step253ExitFAfter,s2Step253ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step253ExitGv_checked : planRowResizeLog s2Step253ExitGvBefore s2Step253ExitGvRow 142 []=
    some (s2Step253ExitGvAfter,s2Step253ExitGvOut,shrinkRow 771 s2Step253ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step253ExitGvBefore s2Step253ExitGvRow 142 s2Step253ExitGv_distinct s2Step253ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step253ExitGvRow.payload.take 142) s2Step253ExitGvRow.sign=s2Step253ExitGvOut := by decide +kernel
  have hi : s2Step253ExitGvRow.payload.drop 142=s2Step253ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step253ExitGv_retired] at result
  exact result

private theorem s2Step253ExitBank_rows : planWindowRowsLog s2Step253ExitGBefore [(s2Step253ExitGRow,143),(s2Step253ExitFRow,144),(s2Step253ExitFvRow,143),(s2Step253ExitGvRow,142)] [[],[],[],[]]=
    some (s2Step253ExitGvAfter,[s2Step253ExitGOut,s2Step253ExitFOut,s2Step253ExitFvOut,s2Step253ExitGvOut],(shrinkRow 769 s2Step253ExitGExtra ++ (shrinkRow 768 s2Step253ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step253ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step253ExitGvAfter [] []=some (s2Step253ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step253ExitGvBefore s2Step253ExitGvAfter s2Step253ExitGvAfter
    s2Step253ExitGvRow s2Step253ExitGvOut 142 [] [] [] []
    (shrinkRow 771 s2Step253ExitGvExtra) ([]) s2Step253ExitGv_Incoming s2Step253ExitGv_checked h4 s2Step253ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step253ExitFvBefore s2Step253ExitFvAfter s2Step253ExitGvAfter
    s2Step253ExitFvRow s2Step253ExitFvOut 143 [] [(s2Step253ExitGvRow,142)] [[]] [s2Step253ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step253ExitGvExtra ++ [])) s2Step253ExitFv_Incoming s2Step253ExitFv_checked h3 s2Step253ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step253ExitFBefore s2Step253ExitFAfter s2Step253ExitGvAfter
    s2Step253ExitFRow s2Step253ExitFOut 144 [] [(s2Step253ExitFvRow,143),(s2Step253ExitGvRow,142)] [[],[]] [s2Step253ExitFvOut,s2Step253ExitGvOut]
    (shrinkRow 768 s2Step253ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step253ExitGvExtra ++ []))) s2Step253ExitF_Incoming s2Step253ExitF_checked h2 s2Step253ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step253ExitGBefore s2Step253ExitGAfter s2Step253ExitGvAfter
    s2Step253ExitGRow s2Step253ExitGOut 143 [] [(s2Step253ExitFRow,144),(s2Step253ExitFvRow,143),(s2Step253ExitGvRow,142)] [[],[],[]] [s2Step253ExitFOut,s2Step253ExitFvOut,s2Step253ExitGvOut]
    (shrinkRow 769 s2Step253ExitGExtra) ((shrinkRow 768 s2Step253ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step253ExitGvExtra ++ [])))) s2Step253ExitG_Incoming s2Step253ExitG_checked h1 s2Step253ExitG_Outgoing
  exact h0

private theorem s2Step253ExitBank_checked : compileHmrBankResizeLog .exit s2Step253ExitGBefore ⟨s2Step253ExitFRow,s2Step253ExitGRow,s2Step253ExitFvRow,s2Step253ExitGvRow⟩ ⟨144,143,143,142⟩ [[],[],[],[]]=
    some (s2Step253ExitGvAfter,⟨s2Step253ExitFOut,s2Step253ExitGOut,s2Step253ExitFvOut,s2Step253ExitGvOut⟩,(shrinkRow 769 s2Step253ExitGExtra ++ (shrinkRow 768 s2Step253ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step253ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step253ExitBank_rows]
  rfl

private theorem s2Step253Add0_apart : Disjoint s2Step253Add0Arena.live s2Step253Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step253Add0Arena (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step253Add0_card : s2Step253Add0Arena.live.card=897 := by
  decide +kernel

private theorem s2Step253Add0_borrowed : s2Step253Add0Arena.checkBorrow (hmrHybridCount s2Step253Add0Arena s2Step253Add0B.length) s2Step253Add0Work=some s2Step253Add0During := by
  have len : s2Step253Add0Work.length=hmrHybridCount s2Step253Add0Arena s2Step253Add0B.length := by
    rw [hmrHybridCount,s2Step253Add0_card]
    decide +kernel
  have nd : s2Step253Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step253Add0Arena s2Step253Add0During s2Step253Add0Work.toFinset s2Step253Add0_bounded s2Step253Add0_apart rfl

private theorem s2Step253Add0_distinct : (814::800::809::(s2Step253Add0A++s2Step253Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step253Add0_owned : (814::800::809::(s2Step253Add0A++s2Step253Add0B)).toFinset⊆s2Step253Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step253Add0Arena (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step253Add0_checked : compileHmrHybridCinLog s2Step253Add0Arena 800 814 809 s2Step253Add0A s2Step253Add0B s2Step253Add0Work=some s2Step253Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step253Add0Arena s2Step253Add0During 800 814 809 s2Step253Add0A s2Step253Add0B s2Step253Add0Work
    (by decide +kernel) (by decide +kernel) s2Step253Add0_distinct
    (fun q hq => s2Step253Add0_owned (List.mem_toFinset.mpr hq)) s2Step253Add0_borrowed

private theorem s2Step253Add1_apart : Disjoint s2Step253Add1Arena.live s2Step253Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step253Add1Arena (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step253Add1_card : s2Step253Add1Arena.live.card=897 := by
  decide +kernel

private theorem s2Step253Add1_borrowed : s2Step253Add1Arena.checkBorrow (hmrHybridCount s2Step253Add1Arena s2Step253Add1B.length) s2Step253Add1Work=some s2Step253Add1During := by
  have len : s2Step253Add1Work.length=hmrHybridCount s2Step253Add1Arena s2Step253Add1B.length := by
    rw [hmrHybridCount,s2Step253Add1_card]
    decide +kernel
  have nd : s2Step253Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step253Add1Arena s2Step253Add1During s2Step253Add1Work.toFinset s2Step253Add1_bounded s2Step253Add1_apart rfl

private theorem s2Step253Add1_distinct : (814::800::809::(s2Step253Add1A++s2Step253Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step253Add1_owned : (814::800::809::(s2Step253Add1A++s2Step253Add1B)).toFinset⊆s2Step253Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step253Add1Arena (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step253Add1_checked : compileHmrHybridCinLog s2Step253Add1Arena 800 814 809 s2Step253Add1A s2Step253Add1B s2Step253Add1Work=some s2Step253Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step253Add1Arena s2Step253Add1During 800 814 809 s2Step253Add1A s2Step253Add1B s2Step253Add1Work
    (by decide +kernel) (by decide +kernel) s2Step253Add1_distinct
    (fun q hq => s2Step253Add1_owned (List.mem_toFinset.mpr hq)) s2Step253Add1_borrowed

private theorem s2Step253F4_apart : Disjoint (s2Step253Add0A++s2Step253Add0B).toFinset (s2Step253Add1A++s2Step253Add1B).toFinset := by
  have nd : ((s2Step253Add0A++s2Step253Add0B)++(s2Step253Add1A++s2Step253Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step253F4_carry : s2Step253F4FlagArena.checkBorrow 1 [809]=some s2Step253Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step253F4FlagArena,s2Step253HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step253F4FlagArena,s2Step253HeadFvAfter,s2Step253Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step253F4_distinct : (784::800::814::809::((s2Step253Add0A++s2Step253Add1A)++(s2Step253Add0B++s2Step253Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step253F4_flag : s2Step253HeadFvAfter.checkBorrow 1 [814]=some s2Step253F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step253HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step253F4_owned : (784::800::((s2Step253Add0A++s2Step253Add1A)++(s2Step253Add0B++s2Step253Add1B))).toFinset⊆s2Step253HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step253HeadFvAfter (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step253F4_checked : compileHmrHybridF4Log s2Step253HeadFvAfter 784 800 s2Step253Add0A s2Step253Add0B s2Step253Add1A s2Step253Add1B [814] [809] s2Step253Add0Work s2Step253Add1Work=some s2Step253F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step253HeadFvAfter s2Step253F4FlagArena s2Step253Add0Arena s2Step253Add0During s2Step253Add1During 784 800
    s2Step253Add0A s2Step253Add0B s2Step253Add1A s2Step253Add1B [814] [809] s2Step253Add0Work s2Step253Add1Work
    (fun q hq => s2Step253F4_owned (List.mem_toFinset.mpr hq)) s2Step253F4_flag s2Step253F4_carry
    s2Step253F4_distinct s2Step253F4_apart s2Step253Add0_checked s2Step253Add1_checked

private theorem s2Step253Front_branch : s2Step253FrontSigmaArena.checkBorrow 1 [800]=some s2Step253HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step253FrontSigmaArena,s2Step253EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step253FrontSigmaArena,s2Step253EntryGvAfter,s2Step253HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step253Front_entry : HmrFrontEntryValid s2Step253EntryFBefore s2Step253FrontBank 144 142 ⟨144,143,143,142⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step253FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step253EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step253EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<837) ∨ (838≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step253FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step253Front_sigma : s2Step253EntryGvAfter.checkBorrow 1 [784]=some s2Step253FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step253EntryGvAfter,arenaWires]
  · rfl

private def s2Step253HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step253HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step253HeadFBefore : Arena := s2Step253HeadGAfter

private def s2Step253HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655],768⟩

private def s2Step253HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835],770⟩

private def s2Step253HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143],769⟩

private def s2Step253HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837],771⟩

private theorem s2Step253HeadBank_incomingDistinct : ([s2Step253HeadGRow,s2Step253HeadFRow,s2Step253HeadGvRow,s2Step253HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step253HeadF_Incoming : rowsOwned s2Step253HeadFBefore [s2Step253HeadFRow,s2Step253HeadGvRow,s2Step253HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step253HeadGRow,s2Step253HeadFRow,s2Step253HeadGvRow,s2Step253HeadFvRow] 1 s2Step253HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step253HeadFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step253HeadBank_outgoingOwned : rowsOwned s2Step253HeadFvAfter [s2Step253HeadGOut,s2Step253HeadFOut,s2Step253HeadGvOut,s2Step253HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step253HeadFvAfter (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step253HeadF_Outgoing : rowsOwned s2Step253HeadFvAfter [s2Step253HeadFOut,s2Step253HeadGvOut,s2Step253HeadFvOut] :=
  hmrRows_owned_drop s2Step253HeadFvAfter [s2Step253HeadGOut,s2Step253HeadFOut,s2Step253HeadGvOut,s2Step253HeadFvOut] 1 s2Step253HeadBank_outgoingOwned

private theorem s2Step253HeadF_distinct : (s2Step253HeadFRow.sign::s2Step253HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step253HeadF_owned : (s2Step253HeadFRow.sign::s2Step253HeadFRow.payload).toFinset⊆s2Step253HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step253HeadFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step253HeadF_reserved : s2Step253HeadFBefore.reserve s2Step253HeadFFresh.toFinset=some s2Step253HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step253HeadFFresh,arenaWires]
  · norm_num [s2Step253HeadFBefore,s2Step253HeadGAfter,s2Step253HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step253HeadFAfter,s2Step253HeadFBefore,s2Step253HeadGAfter,s2Step253HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step253HeadF_checked : planRowResizeLog s2Step253HeadFBefore s2Step253HeadFRow 145 s2Step253HeadFFresh=
    some (s2Step253HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 792],768⟩,growRow 768 s2Step253HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step253HeadFBefore s2Step253HeadFAfter s2Step253HeadFRow 145 s2Step253HeadFFresh
    s2Step253HeadF_distinct s2Step253HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step253HeadF_reserved
  have rowEq : WindowRow.mk (s2Step253HeadFRow.payload++s2Step253HeadFFresh) s2Step253HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 792],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step253HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step253HeadFvBefore : Arena := s2Step253HeadGvAfter

private theorem s2Step253HeadFv_Incoming : rowsOwned s2Step253HeadFvBefore [s2Step253HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step253HeadGRow,s2Step253HeadFRow,s2Step253HeadGvRow,s2Step253HeadFvRow] 3 s2Step253HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step253HeadFvBefore (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step253HeadFv_Outgoing : rowsOwned s2Step253HeadFvAfter [s2Step253HeadFvOut] :=
  hmrRows_owned_drop s2Step253HeadFvAfter [s2Step253HeadGOut,s2Step253HeadFOut,s2Step253HeadGvOut,s2Step253HeadFvOut] 3 s2Step253HeadBank_outgoingOwned

private theorem s2Step253HeadFv_distinct : (s2Step253HeadFvRow.sign::s2Step253HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step253HeadFv_owned : (s2Step253HeadFvRow.sign::s2Step253HeadFvRow.payload).toFinset⊆s2Step253HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step253HeadFvBefore (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step253HeadFv_reserved : s2Step253HeadFvBefore.reserve s2Step253HeadFvFresh.toFinset=some s2Step253HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step253HeadFvFresh,arenaWires]
  · norm_num [s2Step253HeadFvBefore,s2Step253HeadGvAfter,s2Step253HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step253HeadFvAfter,s2Step253HeadFvBefore,s2Step253HeadGvAfter,s2Step253HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step253HeadFv_checked : planRowResizeLog s2Step253HeadFvBefore s2Step253HeadFvRow 143 s2Step253HeadFvFresh=
    some (s2Step253HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842],770⟩,growRow 770 s2Step253HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step253HeadFvBefore s2Step253HeadFvAfter s2Step253HeadFvRow 143 s2Step253HeadFvFresh
    s2Step253HeadFv_distinct s2Step253HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step253HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step253HeadFvRow.payload++s2Step253HeadFvFresh) s2Step253HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step253HeadG_Incoming : rowsOwned s2Step253HeadGBefore [s2Step253HeadGRow,s2Step253HeadFRow,s2Step253HeadGvRow,s2Step253HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step253HeadGRow,s2Step253HeadFRow,s2Step253HeadGvRow,s2Step253HeadFvRow] 0 s2Step253HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step253HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step253HeadG_Outgoing : rowsOwned s2Step253HeadFvAfter [s2Step253HeadGOut,s2Step253HeadFOut,s2Step253HeadGvOut,s2Step253HeadFvOut] :=
  hmrRows_owned_drop s2Step253HeadFvAfter [s2Step253HeadGOut,s2Step253HeadFOut,s2Step253HeadGvOut,s2Step253HeadFvOut] 0 s2Step253HeadBank_outgoingOwned

private theorem s2Step253HeadG_distinct : (s2Step253HeadGRow.sign::s2Step253HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step253HeadG_owned : (s2Step253HeadGRow.sign::s2Step253HeadGRow.payload).toFinset⊆s2Step253HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step253HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step253HeadG_reserved : s2Step253HeadGBefore.reserve s2Step253HeadGFresh.toFinset=some s2Step253HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step253HeadGFresh,arenaWires]
  · norm_num [s2Step253HeadGBefore,s2Step253HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step253HeadGAfter,s2Step253HeadGBefore,s2Step253HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step253HeadG_checked : planRowResizeLog s2Step253HeadGBefore s2Step253HeadGRow 145 s2Step253HeadGFresh=
    some (s2Step253HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 782],769⟩,growRow 769 s2Step253HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step253HeadGBefore s2Step253HeadGAfter s2Step253HeadGRow 145 s2Step253HeadGFresh
    s2Step253HeadG_distinct s2Step253HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step253HeadG_reserved
  have rowEq : WindowRow.mk (s2Step253HeadGRow.payload++s2Step253HeadGFresh) s2Step253HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 782],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step253HeadGvBefore : Arena := s2Step253HeadFAfter

private theorem s2Step253HeadGv_Incoming : rowsOwned s2Step253HeadGvBefore [s2Step253HeadGvRow,s2Step253HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step253HeadGRow,s2Step253HeadFRow,s2Step253HeadGvRow,s2Step253HeadFvRow] 2 s2Step253HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step253HeadGvBefore (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step253HeadGv_Outgoing : rowsOwned s2Step253HeadFvAfter [s2Step253HeadGvOut,s2Step253HeadFvOut] :=
  hmrRows_owned_drop s2Step253HeadFvAfter [s2Step253HeadGOut,s2Step253HeadFOut,s2Step253HeadGvOut,s2Step253HeadFvOut] 2 s2Step253HeadBank_outgoingOwned

private theorem s2Step253HeadGv_distinct : (s2Step253HeadGvRow.sign::s2Step253HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step253HeadGv_owned : (s2Step253HeadGvRow.sign::s2Step253HeadGvRow.payload).toFinset⊆s2Step253HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step253HeadGvBefore (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step253HeadGv_reserved : s2Step253HeadGvBefore.reserve s2Step253HeadGvFresh.toFinset=some s2Step253HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step253HeadGvFresh,arenaWires]
  · norm_num [s2Step253HeadGvBefore,s2Step253HeadFAfter,s2Step253HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step253HeadGvAfter,s2Step253HeadGvBefore,s2Step253HeadFAfter,s2Step253HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step253HeadGv_checked : planRowResizeLog s2Step253HeadGvBefore s2Step253HeadGvRow 143 s2Step253HeadGvFresh=
    some (s2Step253HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 830],771⟩,growRow 771 s2Step253HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step253HeadGvBefore s2Step253HeadGvAfter s2Step253HeadGvRow 143 s2Step253HeadGvFresh
    s2Step253HeadGv_distinct s2Step253HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step253HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step253HeadGvRow.payload++s2Step253HeadGvFresh) s2Step253HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 830],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step253HeadBank_rows : planWindowRowsLog s2Step253HeadGBefore [(s2Step253HeadGRow,145),(s2Step253HeadFRow,145),(s2Step253HeadGvRow,143),(s2Step253HeadFvRow,143)] [s2Step253HeadGFresh,s2Step253HeadFFresh,s2Step253HeadGvFresh,s2Step253HeadFvFresh]=
    some (s2Step253HeadFvAfter,[s2Step253HeadGOut,s2Step253HeadFOut,s2Step253HeadGvOut,s2Step253HeadFvOut],(growRow 769 s2Step253HeadGFresh ++ (growRow 768 s2Step253HeadFFresh ++ (growRow 771 s2Step253HeadGvFresh ++ (growRow 770 s2Step253HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step253HeadFvAfter [] []=some (s2Step253HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step253HeadFvBefore s2Step253HeadFvAfter s2Step253HeadFvAfter
    s2Step253HeadFvRow s2Step253HeadFvOut 143 s2Step253HeadFvFresh [] [] []
    (growRow 770 s2Step253HeadFvFresh) ([]) s2Step253HeadFv_Incoming s2Step253HeadFv_checked h4 s2Step253HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step253HeadGvBefore s2Step253HeadGvAfter s2Step253HeadFvAfter
    s2Step253HeadGvRow s2Step253HeadGvOut 143 s2Step253HeadGvFresh [(s2Step253HeadFvRow,143)] [s2Step253HeadFvFresh] [s2Step253HeadFvOut]
    (growRow 771 s2Step253HeadGvFresh) ((growRow 770 s2Step253HeadFvFresh ++ [])) s2Step253HeadGv_Incoming s2Step253HeadGv_checked h3 s2Step253HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step253HeadFBefore s2Step253HeadFAfter s2Step253HeadFvAfter
    s2Step253HeadFRow s2Step253HeadFOut 145 s2Step253HeadFFresh [(s2Step253HeadGvRow,143),(s2Step253HeadFvRow,143)] [s2Step253HeadGvFresh,s2Step253HeadFvFresh] [s2Step253HeadGvOut,s2Step253HeadFvOut]
    (growRow 768 s2Step253HeadFFresh) ((growRow 771 s2Step253HeadGvFresh ++ (growRow 770 s2Step253HeadFvFresh ++ []))) s2Step253HeadF_Incoming s2Step253HeadF_checked h2 s2Step253HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step253HeadGBefore s2Step253HeadGAfter s2Step253HeadFvAfter
    s2Step253HeadGRow s2Step253HeadGOut 145 s2Step253HeadGFresh [(s2Step253HeadFRow,145),(s2Step253HeadGvRow,143),(s2Step253HeadFvRow,143)] [s2Step253HeadFFresh,s2Step253HeadGvFresh,s2Step253HeadFvFresh] [s2Step253HeadFOut,s2Step253HeadGvOut,s2Step253HeadFvOut]
    (growRow 769 s2Step253HeadGFresh) ((growRow 768 s2Step253HeadFFresh ++ (growRow 771 s2Step253HeadGvFresh ++ (growRow 770 s2Step253HeadFvFresh ++ [])))) s2Step253HeadG_Incoming s2Step253HeadG_checked h1 s2Step253HeadG_Outgoing
  exact h0

private theorem s2Step253HeadBank_checked : compileHmrBankResizeLog .headroom s2Step253HeadGBefore ⟨s2Step253HeadFRow,s2Step253HeadGRow,s2Step253HeadFvRow,s2Step253HeadGvRow⟩ ⟨145,145,143,143⟩ [s2Step253HeadGFresh,s2Step253HeadFFresh,s2Step253HeadGvFresh,s2Step253HeadFvFresh]=
    some (s2Step253HeadFvAfter,⟨s2Step253HeadFOut,s2Step253HeadGOut,s2Step253HeadFvOut,s2Step253HeadGvOut⟩,(growRow 769 s2Step253HeadGFresh ++ (growRow 768 s2Step253HeadFFresh ++ (growRow 771 s2Step253HeadGvFresh ++ (growRow 770 s2Step253HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step253HeadBank_rows]
  rfl

private theorem s2Step253Front_checked : compileHmrSourceFrontLog s2Step253EntryFBefore s2Step253FrontBank 144 142 ⟨144,143,143,142⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step253FrontLog=some s2Step253FrontPlan := by
  have pairEq : s2Step253FrontPair=⟨s2Step253HeadFRow,s2Step253HeadGRow,s2Step253HeadFvRow,s2Step253HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step253FrontHead=⟨s2Step253ExitFRow,s2Step253ExitGRow,s2Step253ExitFvRow,s2Step253ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step253Add0A=s2Step253FrontHead.f.wires := by decide +kernel
  have gEq : s2Step253Add0B=s2Step253FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step253Add1A=s2Step253FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step253Add1B=s2Step253FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step253EntryFBefore s2Step253FrontBank 144 142 ⟨144,143,143,142⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step253FrontLog s2Step253FrontPlan
  · exact s2Step253Front_entry
  · exact s2Step253EntryBank_checked
  · exact s2Step253Front_sigma
  · rfl
  · exact s2Step253Front_branch
  · rfl
  · simpa only [s2Step253FrontPlan,pairEq] using s2Step253HeadBank_checked
  · simpa only [s2Step253FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step253F4_checked
  · exact s2Step253Counter_checked
  · rfl
  · simpa only [s2Step253FrontPlan,headEq] using s2Step253ExitBank_checked

private theorem s2Step253Complete_explicit_checked : compileHmrEarlyStepLog s2Step253EntryFBefore s2Step253FrontBank 144 142 ⟨144,143,143,142⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 51 s2Step253CompleteLog=some s2Step253CompletePlan := by
  let Q := s2Step253EarlyControlPlan
  have hq := s2Step253EarlyControl_plan_checked
  have fv1 : s2Step253CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step253CompleteOut.fv.payload[2]?.getD s2Step253CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step253CompleteOut.fv.payload[3]?.getD s2Step253CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step253CompleteOut.fv.payload[4]?.getD s2Step253CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step253EntryFBefore s2Step253EarlyControlArena s2Step253FrontBank 144 142 ⟨144,143,143,142⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 51 s2Step253CompleteLog s2Step253FrontPlan Q
    s2Step253Front_checked s2Step253Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step253Complete_owned s2Step253Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step253EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 777 784 s2Step253CompleteOut.fv.second (s2Step253CompleteOut.fv.payload[2]?.getD s2Step253CompleteOut.fv.sign) (s2Step253CompleteOut.fv.payload[3]?.getD s2Step253CompleteOut.fv.sign) (s2Step253CompleteOut.fv.payload[4]?.getD s2Step253CompleteOut.fv.sign) 800 51 s2Step253EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep253Arena : Arena := s2Step253EntryFBefore
def s2PrivateStep253Bank : WindowBank := s2Step253FrontBank
def s2PrivateStep253Spec : HmrSourceWalkStepLog := ⟨144,142,⟨144,143,143,142⟩,51,.early s2Step253CompleteLog⟩
def s2PrivateStep253Plan : HmrSourceStepPlan := .early s2Step253CompletePlan
theorem s2PrivateStep253_source : s2PrivateStep253Spec=s2ObservedLogs240[13] := rfl
theorem s2PrivateStep253_checked : compileHmrSourceStepLog s2PrivateStep253Arena s2PrivateStep253Bank
    s2PrivateStep253Spec.fgWidth s2PrivateStep253Spec.vWidth s2PrivateStep253Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900]
    6 498 253 s2PrivateStep253Spec.need none s2PrivateStep253Spec.log=some s2PrivateStep253Plan := by
  change compileHmrSourceStepLog s2Step253EntryFBefore s2Step253FrontBank 144 142 ⟨144,143,143,142⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 6 498 253 51 none (.early s2Step253CompleteLog)=some (.early s2Step253CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 253<498)]
  rw [s2Step253Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
