import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep252
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

private def s2Step254CompleteMoves : List (Wire × Wire) := []

private def s2Step254EarlyControlLog : HmrEarlyControlLog := ⟨[784, 814, 782, 800, 792],[885],[891],[894, 896, 901, 902, 903, 904],[]⟩

private def s2Step254FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [800], [], [784]],[[792], [782], [814], [809]],[[], [], [], []]⟩,[827],[830],[885],[891],[894, 896, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[894, 896, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[885, 891, 894, 896]⟩

private def s2Step254CompleteLog : HmrEarlyStepLog := ⟨s2Step254FrontLog,s2Step254CompleteMoves,s2Step254EarlyControlLog⟩

private def s2Step254ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655],768⟩

private def s2Step254ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809],770⟩

private def s2Step254ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142],769⟩

private def s2Step254ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837],771⟩

private def s2Step254FrontOut : WindowBank := ⟨s2Step254ExitFOut,s2Step254ExitGOut,s2Step254ExitFvOut,s2Step254ExitGvOut⟩

private def s2Step254CompleteOut : WindowBank := s2Step254FrontOut.repacked s2Step254CompleteMoves

private def s2Step254EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step254EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step254EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step254EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step254EarlyControlPositiveArena,[885],s2Step254EarlyControlEqualityArena,[891],⟨⟨827,false⟩,[⟨⟨885,false⟩,891⟩]⟩⟩

private def s2Step254EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<905)),Finset.filter_subset _ _⟩

private def s2Step254EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<905)),Finset.filter_subset _ _⟩

private def s2Step254EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step254EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step254EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step254EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step254EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,784⟩,⟨⟨774,false⟩,814⟩,⟨⟨775,false⟩,782⟩,⟨⟨776,false⟩,800⟩,⟨⟨777,false⟩,792⟩]⟩

private def s2Step254EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step254EarlyControlZeroArena,s2Step254EarlyControlZeroPlan,s2Step254EarlyControlClassPlan,s2Step254EarlyControlFlagArena,s2Step254EarlyControlFittedArena,s2Step254EarlyControlHistoryArena,s2Step254EarlyControlSigmaArena,s2Step254EarlyControlOutputArena,s2Step254EarlyControlLog⟩

private def s2Step254CounterWork : List Wire := [885, 891, 894, 896]

private theorem s2Step254Counter_bounded : s2Step254CounterWork.toFinset⊆arenaWires := by norm_num [s2Step254CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step254HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step254CounterDuring : Arena := ⟨s2Step254HeadFvAfter.live∪s2Step254CounterWork.toFinset,Finset.union_subset s2Step254HeadFvAfter.bounded s2Step254Counter_bounded⟩

private def s2Step254EntryFFresh : List Wire := []

private def s2Step254EntryFvFresh : List Wire := []

private def s2Step254EntryGFresh : List Wire := [800]

private def s2Step254EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step254EntryGvFresh : List Wire := [784]

private def s2Step254ExitFExtra : List Wire := [782]

private def s2Step254ExitGExtra : List Wire := [800, 792]

private def s2Step254ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step254ExitGvExtra : List Wire := [784, 814]

private def s2Step254Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step254Add0Work : List Wire := [894, 896, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step254Add0_bounded : s2Step254Add0Work.toFinset⊆arenaWires := by
  have h : s2Step254Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step254Add0During : Arena := ⟨s2Step254Add0Arena.live∪s2Step254Add0Work.toFinset,Finset.union_subset s2Step254Add0Arena.bounded s2Step254Add0_bounded⟩

private def s2Step254Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step254Add1Work : List Wire := [894, 896, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step254Add1_bounded : s2Step254Add1Work.toFinset⊆arenaWires := by
  have h : s2Step254Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step254Add1During : Arena := ⟨s2Step254Add1Arena.live∪s2Step254Add1Work.toFinset,Finset.union_subset s2Step254Add1Arena.bounded s2Step254Add1_bounded⟩

private def s2Step254F4FlagArena : Arena := ⟨s2Step254HeadFvAfter.live∪{885},Finset.union_subset s2Step254HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step254F4Plan : HmrHybridF4Plan := ⟨s2Step254F4FlagArena,[885],s2Step254Add0Arena,[891],s2Step254Add0During,s2Step254Add0Work,s2Step254Add1During,s2Step254Add1Work⟩

private def s2Step254HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 782],768⟩

private def s2Step254HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809],770⟩

private def s2Step254HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 800, 792],769⟩

private def s2Step254HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 784, 814],771⟩

private def s2Step254FrontHead : WindowBank := ⟨s2Step254HeadFOut,s2Step254HeadGOut,s2Step254HeadFvOut,s2Step254HeadGvOut⟩

private def s2Step254EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655],768⟩

private def s2Step254EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842],770⟩

private def s2Step254EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 800],769⟩

private def s2Step254EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 784],771⟩

private def s2Step254FrontPair : WindowBank := ⟨s2Step254EntryFOut,s2Step254EntryGOut,s2Step254EntryFvOut,s2Step254EntryGvOut⟩

private def s2Step254FrontSigmaArena : Arena := ⟨s2Step254EntryGvAfter.live∪{827},Finset.union_subset s2Step254EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step254HeadFFresh : List Wire := [782]

private def s2Step254HeadFvFresh : List Wire := [809]

private def s2Step254HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step254HeadGFresh : List Wire := [792]

private def s2Step254HeadGvFresh : List Wire := [814]

private def s2Step254FrontPlan : HmrSourceFront := ⟨s2Step254EntryGvAfter,s2Step254FrontPair,(growRow 768 s2Step254EntryFFresh ++ (growRow 769 s2Step254EntryGFresh ++ (growRow 770 s2Step254EntryFvFresh ++ (growRow 771 s2Step254EntryGvFresh ++ [])))),s2Step254FrontSigmaArena,[827],s2Step254HeadGBefore,[830],
  s2Step254HeadFvAfter,s2Step254FrontHead,(growRow 769 s2Step254HeadGFresh ++ (growRow 768 s2Step254HeadFFresh ++ (growRow 771 s2Step254HeadGvFresh ++ (growRow 770 s2Step254HeadFvFresh ++ [])))),s2Step254F4Plan,s2Step254CounterDuring,s2Step254CounterWork,s2Step254ExitGvAfter,s2Step254FrontOut,(shrinkRow 769 s2Step254ExitGExtra ++ (shrinkRow 768 s2Step254ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step254ExitGvExtra ++ []))))⟩

private def s2Step254CompletePlan : HmrEarlyStepPlan := ⟨s2Step254FrontPlan,s2Step254EarlyControlArena,s2Step254EarlyControlPlan,s2Step254CompleteMoves⟩

private theorem s2Step254Complete_apart : List.Disjoint (s2Step254CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [827, 830, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] := by
  have nd : ((s2Step254CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[827, 830, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step254Complete_owned : (s2Step254CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step254EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step254EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step254Complete_repack : s2Step254ExitGvAfter.checkRepack s2Step254CompleteMoves=some s2Step254EarlyControlArena := by rfl

private theorem s2Step254EarlyControl_branchOwned : ([830] : List Wire).toFinset⊆s2Step254EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step254EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step254EarlyControl_branch : compileHmrBranchRetirement s2Step254EarlyControlSigmaArena 830=some s2Step254EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step254EarlyControl_branchOwned
  · ext q
    simp [s2Step254EarlyControlOutputArena,s2Step254EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step254EarlyControl_classEqualityBorrow : s2Step254EarlyControlPositiveArena.checkBorrow (([827, 885] : List Wire).length-1) s2Step254EarlyControlLog.classWork=some s2Step254EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step254EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step254EarlyControlPositiveArena (fun q => (0≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step254EarlyControlEqualityArena,s2Step254EarlyControlPositiveArena,s2Step254EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step254EarlyControl_classEqualityOwned : ([827, 885] : List Wire).toFinset⊆s2Step254EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step254EarlyControlPositiveArena (fun q => (0≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step254EarlyControl_classEquality : compileHmrEqualityLog s2Step254EarlyControlPositiveArena [827, 885] 0 s2Step254EarlyControlLog.classWork=some (s2Step254EarlyControlEqualityArena,s2Step254EarlyControlLog.classWork,s2Step254EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step254EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step254EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step254EarlyControl_classOwned : ([777, 792, 827] : List Wire).toFinset⊆s2Step254EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step254EarlyControlZeroArena (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step254EarlyControl_positiveBorrow : s2Step254EarlyControlZeroArena.checkBorrow (1) s2Step254EarlyControlLog.positiveWork=some s2Step254EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step254EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step254EarlyControlZeroArena (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step254EarlyControlPositiveArena,s2Step254EarlyControlZeroArena,s2Step254EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step254EarlyControl_class : compileHmrSourceClassLog s2Step254EarlyControlZeroArena false 777 s2Step254EarlyControlZeroPlan.top 0 827 s2Step254EarlyControlLog.positiveWork s2Step254EarlyControlLog.classWork=some s2Step254EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step254EarlyControlClassPlan s2Step254EarlyControlZeroArena false 777 s2Step254EarlyControlZeroPlan.top 0 827
  constructor
  · decide +kernel
  · exact s2Step254EarlyControl_classOwned
  · exact s2Step254EarlyControl_positiveBorrow
  · exact s2Step254EarlyControl_classEquality

private theorem s2Step254EarlyControl_entryRecordOwned : ([830, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).toFinset⊆s2Step254EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step254EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step254EarlyControl_entrySigmaOwned : ([827, 254] : List Wire).toFinset⊆s2Step254EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step254EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step254EarlyControl_fitBorrow : s2Step254EarlyControlFlagArena.checkBorrow ((51-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).length)) s2Step254EarlyControlLog.recordFresh=some s2Step254EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step254EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step254EarlyControlFlagArena (fun q => (0≤q ∧ q<905)) rfl
      decide +kernel
    · ext q
      simp [s2Step254EarlyControlFittedArena,s2Step254EarlyControlFlagArena,s2Step254EarlyControlLog,arenaWires]

private theorem s2Step254EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).toFinset⊆s2Step254EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step254EarlyControlFlagArena (fun q => (0≤q ∧ q<905)) rfl
  decide +kernel

private theorem s2Step254EarlyControl_fit : compileHmrRecordGrowLog s2Step254EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 51 s2Step254EarlyControlLog.recordFresh=some s2Step254EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step254EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step254EarlyControl_fitBorrow

private theorem s2Step254EarlyControl_flagsBorrow : s2Step254EarlyControlEqualityArena.checkBorrow (6) s2Step254EarlyControlLog.flagWork=some s2Step254EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step254EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step254EarlyControlEqualityArena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step254EarlyControlFlagArena,s2Step254EarlyControlEqualityArena,s2Step254EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step254EarlyControl_flagsOwned : ([891, 253, 252, 251] : List Wire).toFinset⊆s2Step254EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step254EarlyControlEqualityArena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step254EarlyControl_flags : compileHmrFlagsLog s2Step254EarlyControlClassPlan.equalityArena s2Step254EarlyControlClassPlan.equality.top 253 252 251 s2Step254EarlyControlLog.flagWork=some s2Step254EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step254EarlyControl_flagsOwned⟩
  · exact s2Step254EarlyControl_flagsBorrow

private theorem s2Step254EarlyControl_historyBorrow : s2Step254EarlyControlArena.checkBorrow ((51-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).length)) s2Step254EarlyControlLog.recordFresh=some s2Step254EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step254EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step254EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step254EarlyControlHistoryArena,s2Step254EarlyControlArena,s2Step254EarlyControlLog,arenaWires]

private theorem s2Step254EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).toFinset⊆s2Step254EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step254EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step254EarlyControl_history : compileHmrRecordGrowLog s2Step254EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 51 s2Step254EarlyControlLog.recordFresh=some s2Step254EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step254EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step254EarlyControl_historyBorrow

private theorem s2Step254EarlyControl_sigmaOwned : ([254, 827] : List Wire).toFinset⊆s2Step254EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step254EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step254EarlyControl_sigmaReleaseOwned : ([827] : List Wire).toFinset⊆s2Step254EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step254EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step254EarlyControl_sigmaRelease : s2Step254EarlyControlHistoryArena.release {827} (fun _ => false)=some s2Step254EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step254EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step254EarlyControlSigmaArena,s2Step254EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step254EarlyControl_sigma : compileHmrSigmaDropLog s2Step254EarlyControlHistoryArena false 0 0 254 827 []=some s2Step254EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step254EarlyControl_sigmaOwned⟩
  · exact s2Step254EarlyControl_sigmaRelease

private theorem s2Step254EarlyControl_zeroBorrow : s2Step254EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step254EarlyControlLog.zeroWork=some s2Step254EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step254EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step254EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step254EarlyControlZeroArena,s2Step254EarlyControlArena,s2Step254EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step254EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step254EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step254EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step254EarlyControl_zero : compileHmrEqualityLog s2Step254EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step254EarlyControlLog.zeroWork=some (s2Step254EarlyControlZeroArena,s2Step254EarlyControlLog.zeroWork,s2Step254EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step254EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step254EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step254EarlyControl_logged : s2Step254EarlyControlPlan.Logged s2Step254EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 777 827 254 253 252 251 830 51 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step254EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step254EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step254EarlyControl_zero
  · exact s2Step254EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step254EarlyControl_flags
  · exact s2Step254EarlyControl_fit
  · exact s2Step254EarlyControl_history
  · exact s2Step254EarlyControl_sigma
  · exact s2Step254EarlyControl_branch

private theorem s2Step254EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step254EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 777 827 254 253 252 251 830 51 s2Step254EarlyControlLog=some s2Step254EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step254EarlyControlPlan s2Step254EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 777 827 254 253 252 251 830 51 s2Step254EarlyControl_logged

private def s2Step254EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step254EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655],768⟩

private def s2Step254EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842],770⟩

private def s2Step254EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142],769⟩

private def s2Step254EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837],771⟩

private def s2Step254FrontBank : WindowBank := ⟨s2Step254EntryFRow,s2Step254EntryGRow,s2Step254EntryFvRow,s2Step254EntryGvRow⟩

private def s2Step254Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 782, 768]

private def s2Step254Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 800, 792, 769]

private def s2Step254Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 770]

private def s2Step254Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 784, 814, 771]

private theorem s2Step254Counter_apart : Disjoint s2Step254HeadFvAfter.live s2Step254CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step254HeadFvAfter (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step254Counter_borrowed : s2Step254HeadFvAfter.checkBorrow 4 s2Step254CounterWork=some s2Step254CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step254HeadFvAfter s2Step254CounterDuring s2Step254CounterWork.toFinset s2Step254Counter_bounded s2Step254Counter_apart rfl

private theorem s2Step254Counter_owned : (827::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step254HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step254HeadFvAfter (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step254Counter_checked : compileHmrCounterStepLog s2Step254HeadFvAfter true 827 [772, 773, 774, 775, 776, 777] s2Step254CounterWork=some s2Step254CounterDuring := by
  have owned : ∀q∈827::[772, 773, 774, 775, 776, 777],q∈s2Step254HeadFvAfter.live := fun q hq => s2Step254Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step254Counter_borrowed

private def s2Step254EntryFAfter : Arena := s2Step254EntryFBefore

private theorem s2Step254EntryBank_incomingDistinct : ([s2Step254EntryFRow,s2Step254EntryGRow,s2Step254EntryFvRow,s2Step254EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step254EntryF_Incoming : rowsOwned s2Step254EntryFBefore [s2Step254EntryFRow,s2Step254EntryGRow,s2Step254EntryFvRow,s2Step254EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step254EntryFRow,s2Step254EntryGRow,s2Step254EntryFvRow,s2Step254EntryGvRow] 0 s2Step254EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step254EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step254EntryBank_outgoingOwned : rowsOwned s2Step254EntryGvAfter [s2Step254EntryFOut,s2Step254EntryGOut,s2Step254EntryFvOut,s2Step254EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step254EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step254EntryF_Outgoing : rowsOwned s2Step254EntryGvAfter [s2Step254EntryFOut,s2Step254EntryGOut,s2Step254EntryFvOut,s2Step254EntryGvOut] :=
  hmrRows_owned_drop s2Step254EntryGvAfter [s2Step254EntryFOut,s2Step254EntryGOut,s2Step254EntryFvOut,s2Step254EntryGvOut] 0 s2Step254EntryBank_outgoingOwned

private theorem s2Step254EntryF_distinct : (s2Step254EntryFRow.sign::s2Step254EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step254EntryF_owned : (s2Step254EntryFRow.sign::s2Step254EntryFRow.payload).toFinset⊆s2Step254EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step254EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step254EntryF_reserved : s2Step254EntryFBefore.reserve s2Step254EntryFFresh.toFinset=some s2Step254EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step254EntryFFresh,arenaWires]
  · norm_num [s2Step254EntryFBefore,s2Step254EntryFFresh,arenaWires]
  · simp only [s2Step254EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step254EntryF_checked : planRowResizeLog s2Step254EntryFBefore s2Step254EntryFRow 144 s2Step254EntryFFresh=
    some (s2Step254EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655],768⟩,growRow 768 s2Step254EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step254EntryFBefore s2Step254EntryFAfter s2Step254EntryFRow 144 s2Step254EntryFFresh
    s2Step254EntryF_distinct s2Step254EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step254EntryF_reserved
  have rowEq : WindowRow.mk (s2Step254EntryFRow.payload++s2Step254EntryFFresh) s2Step254EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step254EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step254EntryFvAfter : Arena := s2Step254EntryGAfter

private def s2Step254EntryFvBefore : Arena := s2Step254EntryGAfter

private theorem s2Step254EntryFv_Incoming : rowsOwned s2Step254EntryFvBefore [s2Step254EntryFvRow,s2Step254EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step254EntryFRow,s2Step254EntryGRow,s2Step254EntryFvRow,s2Step254EntryGvRow] 2 s2Step254EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step254EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step254EntryFv_Outgoing : rowsOwned s2Step254EntryGvAfter [s2Step254EntryFvOut,s2Step254EntryGvOut] :=
  hmrRows_owned_drop s2Step254EntryGvAfter [s2Step254EntryFOut,s2Step254EntryGOut,s2Step254EntryFvOut,s2Step254EntryGvOut] 2 s2Step254EntryBank_outgoingOwned

private theorem s2Step254EntryFv_distinct : (s2Step254EntryFvRow.sign::s2Step254EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step254EntryFv_owned : (s2Step254EntryFvRow.sign::s2Step254EntryFvRow.payload).toFinset⊆s2Step254EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step254EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step254EntryFv_reserved : s2Step254EntryFvBefore.reserve s2Step254EntryFvFresh.toFinset=some s2Step254EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step254EntryFvFresh,arenaWires]
  · norm_num [s2Step254EntryFvBefore,s2Step254EntryGAfter,s2Step254EntryFvFresh,arenaWires]
  · simp only [s2Step254EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step254EntryFv_checked : planRowResizeLog s2Step254EntryFvBefore s2Step254EntryFvRow 143 s2Step254EntryFvFresh=
    some (s2Step254EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842],770⟩,growRow 770 s2Step254EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step254EntryFvBefore s2Step254EntryFvAfter s2Step254EntryFvRow 143 s2Step254EntryFvFresh
    s2Step254EntryFv_distinct s2Step254EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step254EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step254EntryFvRow.payload++s2Step254EntryFvFresh) s2Step254EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step254EntryGBefore : Arena := s2Step254EntryFBefore

private theorem s2Step254EntryG_Incoming : rowsOwned s2Step254EntryGBefore [s2Step254EntryGRow,s2Step254EntryFvRow,s2Step254EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step254EntryFRow,s2Step254EntryGRow,s2Step254EntryFvRow,s2Step254EntryGvRow] 1 s2Step254EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step254EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step254EntryG_Outgoing : rowsOwned s2Step254EntryGvAfter [s2Step254EntryGOut,s2Step254EntryFvOut,s2Step254EntryGvOut] :=
  hmrRows_owned_drop s2Step254EntryGvAfter [s2Step254EntryFOut,s2Step254EntryGOut,s2Step254EntryFvOut,s2Step254EntryGvOut] 1 s2Step254EntryBank_outgoingOwned

private theorem s2Step254EntryG_distinct : (s2Step254EntryGRow.sign::s2Step254EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step254EntryG_owned : (s2Step254EntryGRow.sign::s2Step254EntryGRow.payload).toFinset⊆s2Step254EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step254EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step254EntryG_reserved : s2Step254EntryGBefore.reserve s2Step254EntryGFresh.toFinset=some s2Step254EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step254EntryGFresh,arenaWires]
  · norm_num [s2Step254EntryGBefore,s2Step254EntryFBefore,s2Step254EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step254EntryGAfter,s2Step254EntryGBefore,s2Step254EntryFBefore,s2Step254EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step254EntryG_checked : planRowResizeLog s2Step254EntryGBefore s2Step254EntryGRow 144 s2Step254EntryGFresh=
    some (s2Step254EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 800],769⟩,growRow 769 s2Step254EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step254EntryGBefore s2Step254EntryGAfter s2Step254EntryGRow 144 s2Step254EntryGFresh
    s2Step254EntryG_distinct s2Step254EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step254EntryG_reserved
  have rowEq : WindowRow.mk (s2Step254EntryGRow.payload++s2Step254EntryGFresh) s2Step254EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 800],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step254EntryGvBefore : Arena := s2Step254EntryGAfter

private theorem s2Step254EntryGv_Incoming : rowsOwned s2Step254EntryGvBefore [s2Step254EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step254EntryFRow,s2Step254EntryGRow,s2Step254EntryFvRow,s2Step254EntryGvRow] 3 s2Step254EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step254EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step254EntryGv_Outgoing : rowsOwned s2Step254EntryGvAfter [s2Step254EntryGvOut] :=
  hmrRows_owned_drop s2Step254EntryGvAfter [s2Step254EntryFOut,s2Step254EntryGOut,s2Step254EntryFvOut,s2Step254EntryGvOut] 3 s2Step254EntryBank_outgoingOwned

private theorem s2Step254EntryGv_distinct : (s2Step254EntryGvRow.sign::s2Step254EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step254EntryGv_owned : (s2Step254EntryGvRow.sign::s2Step254EntryGvRow.payload).toFinset⊆s2Step254EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step254EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step254EntryGv_reserved : s2Step254EntryGvBefore.reserve s2Step254EntryGvFresh.toFinset=some s2Step254EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step254EntryGvFresh,arenaWires]
  · norm_num [s2Step254EntryGvBefore,s2Step254EntryGAfter,s2Step254EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step254EntryGvAfter,s2Step254EntryGvBefore,s2Step254EntryGAfter,s2Step254EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step254EntryGv_checked : planRowResizeLog s2Step254EntryGvBefore s2Step254EntryGvRow 143 s2Step254EntryGvFresh=
    some (s2Step254EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 784],771⟩,growRow 771 s2Step254EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step254EntryGvBefore s2Step254EntryGvAfter s2Step254EntryGvRow 143 s2Step254EntryGvFresh
    s2Step254EntryGv_distinct s2Step254EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step254EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step254EntryGvRow.payload++s2Step254EntryGvFresh) s2Step254EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 784],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step254EntryBank_rows : planWindowRowsLog s2Step254EntryFBefore [(s2Step254EntryFRow,144),(s2Step254EntryGRow,144),(s2Step254EntryFvRow,143),(s2Step254EntryGvRow,143)] [s2Step254EntryFFresh,s2Step254EntryGFresh,s2Step254EntryFvFresh,s2Step254EntryGvFresh]=
    some (s2Step254EntryGvAfter,[s2Step254EntryFOut,s2Step254EntryGOut,s2Step254EntryFvOut,s2Step254EntryGvOut],(growRow 768 s2Step254EntryFFresh ++ (growRow 769 s2Step254EntryGFresh ++ (growRow 770 s2Step254EntryFvFresh ++ (growRow 771 s2Step254EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step254EntryGvAfter [] []=some (s2Step254EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step254EntryGvBefore s2Step254EntryGvAfter s2Step254EntryGvAfter
    s2Step254EntryGvRow s2Step254EntryGvOut 143 s2Step254EntryGvFresh [] [] []
    (growRow 771 s2Step254EntryGvFresh) ([]) s2Step254EntryGv_Incoming s2Step254EntryGv_checked h4 s2Step254EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step254EntryFvBefore s2Step254EntryFvAfter s2Step254EntryGvAfter
    s2Step254EntryFvRow s2Step254EntryFvOut 143 s2Step254EntryFvFresh [(s2Step254EntryGvRow,143)] [s2Step254EntryGvFresh] [s2Step254EntryGvOut]
    (growRow 770 s2Step254EntryFvFresh) ((growRow 771 s2Step254EntryGvFresh ++ [])) s2Step254EntryFv_Incoming s2Step254EntryFv_checked h3 s2Step254EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step254EntryGBefore s2Step254EntryGAfter s2Step254EntryGvAfter
    s2Step254EntryGRow s2Step254EntryGOut 144 s2Step254EntryGFresh [(s2Step254EntryFvRow,143),(s2Step254EntryGvRow,143)] [s2Step254EntryFvFresh,s2Step254EntryGvFresh] [s2Step254EntryFvOut,s2Step254EntryGvOut]
    (growRow 769 s2Step254EntryGFresh) ((growRow 770 s2Step254EntryFvFresh ++ (growRow 771 s2Step254EntryGvFresh ++ []))) s2Step254EntryG_Incoming s2Step254EntryG_checked h2 s2Step254EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step254EntryFBefore s2Step254EntryFAfter s2Step254EntryGvAfter
    s2Step254EntryFRow s2Step254EntryFOut 144 s2Step254EntryFFresh [(s2Step254EntryGRow,144),(s2Step254EntryFvRow,143),(s2Step254EntryGvRow,143)] [s2Step254EntryGFresh,s2Step254EntryFvFresh,s2Step254EntryGvFresh] [s2Step254EntryGOut,s2Step254EntryFvOut,s2Step254EntryGvOut]
    (growRow 768 s2Step254EntryFFresh) ((growRow 769 s2Step254EntryGFresh ++ (growRow 770 s2Step254EntryFvFresh ++ (growRow 771 s2Step254EntryGvFresh ++ [])))) s2Step254EntryF_Incoming s2Step254EntryF_checked h1 s2Step254EntryF_Outgoing
  exact h0

private theorem s2Step254EntryBank_checked : compileHmrBankResizeLog .entry s2Step254EntryFBefore ⟨s2Step254EntryFRow,s2Step254EntryGRow,s2Step254EntryFvRow,s2Step254EntryGvRow⟩ ⟨144,144,143,143⟩ [s2Step254EntryFFresh,s2Step254EntryGFresh,s2Step254EntryFvFresh,s2Step254EntryGvFresh]=
    some (s2Step254EntryGvAfter,⟨s2Step254EntryFOut,s2Step254EntryGOut,s2Step254EntryFvOut,s2Step254EntryGvOut⟩,(growRow 768 s2Step254EntryFFresh ++ (growRow 769 s2Step254EntryGFresh ++ (growRow 770 s2Step254EntryFvFresh ++ (growRow 771 s2Step254EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step254EntryBank_rows]
  rfl

private def s2Step254ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step254ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step254ExitFBefore : Arena := s2Step254ExitGAfter

private def s2Step254ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 782],768⟩

private def s2Step254ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809],770⟩

private def s2Step254ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 800, 792],769⟩

private def s2Step254ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 784, 814],771⟩

private theorem s2Step254ExitBank_incomingDistinct : ([s2Step254ExitGRow,s2Step254ExitFRow,s2Step254ExitFvRow,s2Step254ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step254ExitF_Incoming : rowsOwned s2Step254ExitFBefore [s2Step254ExitFRow,s2Step254ExitFvRow,s2Step254ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step254ExitGRow,s2Step254ExitFRow,s2Step254ExitFvRow,s2Step254ExitGvRow] 1 s2Step254ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step254ExitFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step254ExitBank_outgoingOwned : rowsOwned s2Step254ExitGvAfter [s2Step254ExitGOut,s2Step254ExitFOut,s2Step254ExitFvOut,s2Step254ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step254ExitGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step254ExitF_Outgoing : rowsOwned s2Step254ExitGvAfter [s2Step254ExitFOut,s2Step254ExitFvOut,s2Step254ExitGvOut] :=
  hmrRows_owned_drop s2Step254ExitGvAfter [s2Step254ExitGOut,s2Step254ExitFOut,s2Step254ExitFvOut,s2Step254ExitGvOut] 1 s2Step254ExitBank_outgoingOwned

private theorem s2Step254ExitF_distinct : (s2Step254ExitFRow.sign::s2Step254ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step254ExitF_owned : (s2Step254ExitFRow.sign::s2Step254ExitFRow.payload).toFinset⊆s2Step254ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step254ExitFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step254ExitF_retired : s2Step254ExitFBefore.retireSet s2Step254ExitFExtra.toFinset=s2Step254ExitFAfter := by
  unfold Arena.retireSet s2Step254ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step254ExitFBefore,s2Step254ExitGAfter,s2Step254ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step254ExitF_checked : planRowResizeLog s2Step254ExitFBefore s2Step254ExitFRow 144 []=
    some (s2Step254ExitFAfter,s2Step254ExitFOut,shrinkRow 768 s2Step254ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step254ExitFBefore s2Step254ExitFRow 144 s2Step254ExitF_distinct s2Step254ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step254ExitFRow.payload.take 144) s2Step254ExitFRow.sign=s2Step254ExitFOut := by decide +kernel
  have hi : s2Step254ExitFRow.payload.drop 144=s2Step254ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step254ExitF_retired] at result
  exact result

private def s2Step254ExitFvAfter : Arena := s2Step254ExitFAfter

private def s2Step254ExitFvBefore : Arena := s2Step254ExitFAfter

private theorem s2Step254ExitFv_Incoming : rowsOwned s2Step254ExitFvBefore [s2Step254ExitFvRow,s2Step254ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step254ExitGRow,s2Step254ExitFRow,s2Step254ExitFvRow,s2Step254ExitGvRow] 2 s2Step254ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step254ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step254ExitFv_Outgoing : rowsOwned s2Step254ExitGvAfter [s2Step254ExitFvOut,s2Step254ExitGvOut] :=
  hmrRows_owned_drop s2Step254ExitGvAfter [s2Step254ExitGOut,s2Step254ExitFOut,s2Step254ExitFvOut,s2Step254ExitGvOut] 2 s2Step254ExitBank_outgoingOwned

private theorem s2Step254ExitFv_distinct : (s2Step254ExitFvRow.sign::s2Step254ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step254ExitFv_owned : (s2Step254ExitFvRow.sign::s2Step254ExitFvRow.payload).toFinset⊆s2Step254ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step254ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step254ExitFv_reserved : s2Step254ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step254ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step254ExitFv_checked : planRowResizeLog s2Step254ExitFvBefore s2Step254ExitFvRow 144 []=
    some (s2Step254ExitFvAfter,s2Step254ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step254ExitFvBefore s2Step254ExitFvAfter s2Step254ExitFvRow 144 []
    s2Step254ExitFv_distinct s2Step254ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step254ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step254ExitFvRow.payload++[]) s2Step254ExitFvRow.sign=s2Step254ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step254ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private theorem s2Step254ExitG_Incoming : rowsOwned s2Step254ExitGBefore [s2Step254ExitGRow,s2Step254ExitFRow,s2Step254ExitFvRow,s2Step254ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step254ExitGRow,s2Step254ExitFRow,s2Step254ExitFvRow,s2Step254ExitGvRow] 0 s2Step254ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step254ExitGBefore (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step254ExitG_Outgoing : rowsOwned s2Step254ExitGvAfter [s2Step254ExitGOut,s2Step254ExitFOut,s2Step254ExitFvOut,s2Step254ExitGvOut] :=
  hmrRows_owned_drop s2Step254ExitGvAfter [s2Step254ExitGOut,s2Step254ExitFOut,s2Step254ExitFvOut,s2Step254ExitGvOut] 0 s2Step254ExitBank_outgoingOwned

private theorem s2Step254ExitG_distinct : (s2Step254ExitGRow.sign::s2Step254ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step254ExitG_owned : (s2Step254ExitGRow.sign::s2Step254ExitGRow.payload).toFinset⊆s2Step254ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step254ExitGBefore (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step254ExitG_retired : s2Step254ExitGBefore.retireSet s2Step254ExitGExtra.toFinset=s2Step254ExitGAfter := by
  unfold Arena.retireSet s2Step254ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step254ExitGBefore,s2Step254ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step254ExitG_checked : planRowResizeLog s2Step254ExitGBefore s2Step254ExitGRow 143 []=
    some (s2Step254ExitGAfter,s2Step254ExitGOut,shrinkRow 769 s2Step254ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step254ExitGBefore s2Step254ExitGRow 143 s2Step254ExitG_distinct s2Step254ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step254ExitGRow.payload.take 143) s2Step254ExitGRow.sign=s2Step254ExitGOut := by decide +kernel
  have hi : s2Step254ExitGRow.payload.drop 143=s2Step254ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step254ExitG_retired] at result
  exact result

private def s2Step254ExitGvBefore : Arena := s2Step254ExitFAfter

private theorem s2Step254ExitGv_Incoming : rowsOwned s2Step254ExitGvBefore [s2Step254ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step254ExitGRow,s2Step254ExitFRow,s2Step254ExitFvRow,s2Step254ExitGvRow] 3 s2Step254ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step254ExitGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step254ExitGv_Outgoing : rowsOwned s2Step254ExitGvAfter [s2Step254ExitGvOut] :=
  hmrRows_owned_drop s2Step254ExitGvAfter [s2Step254ExitGOut,s2Step254ExitFOut,s2Step254ExitFvOut,s2Step254ExitGvOut] 3 s2Step254ExitBank_outgoingOwned

private theorem s2Step254ExitGv_distinct : (s2Step254ExitGvRow.sign::s2Step254ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step254ExitGv_owned : (s2Step254ExitGvRow.sign::s2Step254ExitGvRow.payload).toFinset⊆s2Step254ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step254ExitGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step254ExitGv_retired : s2Step254ExitGvBefore.retireSet s2Step254ExitGvExtra.toFinset=s2Step254ExitGvAfter := by
  unfold Arena.retireSet s2Step254ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step254ExitGvBefore,s2Step254ExitFAfter,s2Step254ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step254ExitGv_checked : planRowResizeLog s2Step254ExitGvBefore s2Step254ExitGvRow 142 []=
    some (s2Step254ExitGvAfter,s2Step254ExitGvOut,shrinkRow 771 s2Step254ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step254ExitGvBefore s2Step254ExitGvRow 142 s2Step254ExitGv_distinct s2Step254ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step254ExitGvRow.payload.take 142) s2Step254ExitGvRow.sign=s2Step254ExitGvOut := by decide +kernel
  have hi : s2Step254ExitGvRow.payload.drop 142=s2Step254ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step254ExitGv_retired] at result
  exact result

private theorem s2Step254ExitBank_rows : planWindowRowsLog s2Step254ExitGBefore [(s2Step254ExitGRow,143),(s2Step254ExitFRow,144),(s2Step254ExitFvRow,144),(s2Step254ExitGvRow,142)] [[],[],[],[]]=
    some (s2Step254ExitGvAfter,[s2Step254ExitGOut,s2Step254ExitFOut,s2Step254ExitFvOut,s2Step254ExitGvOut],(shrinkRow 769 s2Step254ExitGExtra ++ (shrinkRow 768 s2Step254ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step254ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step254ExitGvAfter [] []=some (s2Step254ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step254ExitGvBefore s2Step254ExitGvAfter s2Step254ExitGvAfter
    s2Step254ExitGvRow s2Step254ExitGvOut 142 [] [] [] []
    (shrinkRow 771 s2Step254ExitGvExtra) ([]) s2Step254ExitGv_Incoming s2Step254ExitGv_checked h4 s2Step254ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step254ExitFvBefore s2Step254ExitFvAfter s2Step254ExitGvAfter
    s2Step254ExitFvRow s2Step254ExitFvOut 144 [] [(s2Step254ExitGvRow,142)] [[]] [s2Step254ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step254ExitGvExtra ++ [])) s2Step254ExitFv_Incoming s2Step254ExitFv_checked h3 s2Step254ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step254ExitFBefore s2Step254ExitFAfter s2Step254ExitGvAfter
    s2Step254ExitFRow s2Step254ExitFOut 144 [] [(s2Step254ExitFvRow,144),(s2Step254ExitGvRow,142)] [[],[]] [s2Step254ExitFvOut,s2Step254ExitGvOut]
    (shrinkRow 768 s2Step254ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step254ExitGvExtra ++ []))) s2Step254ExitF_Incoming s2Step254ExitF_checked h2 s2Step254ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step254ExitGBefore s2Step254ExitGAfter s2Step254ExitGvAfter
    s2Step254ExitGRow s2Step254ExitGOut 143 [] [(s2Step254ExitFRow,144),(s2Step254ExitFvRow,144),(s2Step254ExitGvRow,142)] [[],[],[]] [s2Step254ExitFOut,s2Step254ExitFvOut,s2Step254ExitGvOut]
    (shrinkRow 769 s2Step254ExitGExtra) ((shrinkRow 768 s2Step254ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step254ExitGvExtra ++ [])))) s2Step254ExitG_Incoming s2Step254ExitG_checked h1 s2Step254ExitG_Outgoing
  exact h0

private theorem s2Step254ExitBank_checked : compileHmrBankResizeLog .exit s2Step254ExitGBefore ⟨s2Step254ExitFRow,s2Step254ExitGRow,s2Step254ExitFvRow,s2Step254ExitGvRow⟩ ⟨144,143,144,142⟩ [[],[],[],[]]=
    some (s2Step254ExitGvAfter,⟨s2Step254ExitFOut,s2Step254ExitGOut,s2Step254ExitFvOut,s2Step254ExitGvOut⟩,(shrinkRow 769 s2Step254ExitGExtra ++ (shrinkRow 768 s2Step254ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step254ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step254ExitBank_rows]
  rfl

private theorem s2Step254Add0_apart : Disjoint s2Step254Add0Arena.live s2Step254Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step254Add0Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step254Add0_card : s2Step254Add0Arena.live.card=899 := by
  decide +kernel

private theorem s2Step254Add0_borrowed : s2Step254Add0Arena.checkBorrow (hmrHybridCount s2Step254Add0Arena s2Step254Add0B.length) s2Step254Add0Work=some s2Step254Add0During := by
  have len : s2Step254Add0Work.length=hmrHybridCount s2Step254Add0Arena s2Step254Add0B.length := by
    rw [hmrHybridCount,s2Step254Add0_card]
    decide +kernel
  have nd : s2Step254Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step254Add0Arena s2Step254Add0During s2Step254Add0Work.toFinset s2Step254Add0_bounded s2Step254Add0_apart rfl

private theorem s2Step254Add0_distinct : (885::830::891::(s2Step254Add0A++s2Step254Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step254Add0_owned : (885::830::891::(s2Step254Add0A++s2Step254Add0B)).toFinset⊆s2Step254Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step254Add0Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step254Add0_checked : compileHmrHybridCinLog s2Step254Add0Arena 830 885 891 s2Step254Add0A s2Step254Add0B s2Step254Add0Work=some s2Step254Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step254Add0Arena s2Step254Add0During 830 885 891 s2Step254Add0A s2Step254Add0B s2Step254Add0Work
    (by decide +kernel) (by decide +kernel) s2Step254Add0_distinct
    (fun q hq => s2Step254Add0_owned (List.mem_toFinset.mpr hq)) s2Step254Add0_borrowed

private theorem s2Step254Add1_apart : Disjoint s2Step254Add1Arena.live s2Step254Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step254Add1Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step254Add1_card : s2Step254Add1Arena.live.card=899 := by
  decide +kernel

private theorem s2Step254Add1_borrowed : s2Step254Add1Arena.checkBorrow (hmrHybridCount s2Step254Add1Arena s2Step254Add1B.length) s2Step254Add1Work=some s2Step254Add1During := by
  have len : s2Step254Add1Work.length=hmrHybridCount s2Step254Add1Arena s2Step254Add1B.length := by
    rw [hmrHybridCount,s2Step254Add1_card]
    decide +kernel
  have nd : s2Step254Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step254Add1Arena s2Step254Add1During s2Step254Add1Work.toFinset s2Step254Add1_bounded s2Step254Add1_apart rfl

private theorem s2Step254Add1_distinct : (885::830::891::(s2Step254Add1A++s2Step254Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step254Add1_owned : (885::830::891::(s2Step254Add1A++s2Step254Add1B)).toFinset⊆s2Step254Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step254Add1Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step254Add1_checked : compileHmrHybridCinLog s2Step254Add1Arena 830 885 891 s2Step254Add1A s2Step254Add1B s2Step254Add1Work=some s2Step254Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step254Add1Arena s2Step254Add1During 830 885 891 s2Step254Add1A s2Step254Add1B s2Step254Add1Work
    (by decide +kernel) (by decide +kernel) s2Step254Add1_distinct
    (fun q hq => s2Step254Add1_owned (List.mem_toFinset.mpr hq)) s2Step254Add1_borrowed

private theorem s2Step254F4_apart : Disjoint (s2Step254Add0A++s2Step254Add0B).toFinset (s2Step254Add1A++s2Step254Add1B).toFinset := by
  have nd : ((s2Step254Add0A++s2Step254Add0B)++(s2Step254Add1A++s2Step254Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step254F4_carry : s2Step254F4FlagArena.checkBorrow 1 [891]=some s2Step254Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step254F4FlagArena,s2Step254HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step254F4FlagArena,s2Step254HeadFvAfter,s2Step254Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step254F4_distinct : (827::830::885::891::((s2Step254Add0A++s2Step254Add1A)++(s2Step254Add0B++s2Step254Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step254F4_flag : s2Step254HeadFvAfter.checkBorrow 1 [885]=some s2Step254F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step254HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step254F4_owned : (827::830::((s2Step254Add0A++s2Step254Add1A)++(s2Step254Add0B++s2Step254Add1B))).toFinset⊆s2Step254HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step254HeadFvAfter (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step254F4_checked : compileHmrHybridF4Log s2Step254HeadFvAfter 827 830 s2Step254Add0A s2Step254Add0B s2Step254Add1A s2Step254Add1B [885] [891] s2Step254Add0Work s2Step254Add1Work=some s2Step254F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step254HeadFvAfter s2Step254F4FlagArena s2Step254Add0Arena s2Step254Add0During s2Step254Add1During 827 830
    s2Step254Add0A s2Step254Add0B s2Step254Add1A s2Step254Add1B [885] [891] s2Step254Add0Work s2Step254Add1Work
    (fun q hq => s2Step254F4_owned (List.mem_toFinset.mpr hq)) s2Step254F4_flag s2Step254F4_carry
    s2Step254F4_distinct s2Step254F4_apart s2Step254Add0_checked s2Step254Add1_checked

private theorem s2Step254Front_branch : s2Step254FrontSigmaArena.checkBorrow 1 [830]=some s2Step254HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step254FrontSigmaArena,s2Step254EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step254FrontSigmaArena,s2Step254EntryGvAfter,s2Step254HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step254Front_entry : HmrFrontEntryValid s2Step254EntryFBefore s2Step254FrontBank 144 143 ⟨144,143,144,142⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step254FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step254EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step254EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step254FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step254Front_sigma : s2Step254EntryGvAfter.checkBorrow 1 [827]=some s2Step254FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step254EntryGvAfter,arenaWires]
  · rfl

private def s2Step254HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step254HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step254HeadFBefore : Arena := s2Step254HeadGAfter

private def s2Step254HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655],768⟩

private def s2Step254HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842],770⟩

private def s2Step254HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 800],769⟩

private def s2Step254HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 784],771⟩

private theorem s2Step254HeadBank_incomingDistinct : ([s2Step254HeadGRow,s2Step254HeadFRow,s2Step254HeadGvRow,s2Step254HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step254HeadF_Incoming : rowsOwned s2Step254HeadFBefore [s2Step254HeadFRow,s2Step254HeadGvRow,s2Step254HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step254HeadGRow,s2Step254HeadFRow,s2Step254HeadGvRow,s2Step254HeadFvRow] 1 s2Step254HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step254HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step254HeadBank_outgoingOwned : rowsOwned s2Step254HeadFvAfter [s2Step254HeadGOut,s2Step254HeadFOut,s2Step254HeadGvOut,s2Step254HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step254HeadFvAfter (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step254HeadF_Outgoing : rowsOwned s2Step254HeadFvAfter [s2Step254HeadFOut,s2Step254HeadGvOut,s2Step254HeadFvOut] :=
  hmrRows_owned_drop s2Step254HeadFvAfter [s2Step254HeadGOut,s2Step254HeadFOut,s2Step254HeadGvOut,s2Step254HeadFvOut] 1 s2Step254HeadBank_outgoingOwned

private theorem s2Step254HeadF_distinct : (s2Step254HeadFRow.sign::s2Step254HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step254HeadF_owned : (s2Step254HeadFRow.sign::s2Step254HeadFRow.payload).toFinset⊆s2Step254HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step254HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step254HeadF_reserved : s2Step254HeadFBefore.reserve s2Step254HeadFFresh.toFinset=some s2Step254HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step254HeadFFresh,arenaWires]
  · norm_num [s2Step254HeadFBefore,s2Step254HeadGAfter,s2Step254HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step254HeadFAfter,s2Step254HeadFBefore,s2Step254HeadGAfter,s2Step254HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step254HeadF_checked : planRowResizeLog s2Step254HeadFBefore s2Step254HeadFRow 145 s2Step254HeadFFresh=
    some (s2Step254HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 782],768⟩,growRow 768 s2Step254HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step254HeadFBefore s2Step254HeadFAfter s2Step254HeadFRow 145 s2Step254HeadFFresh
    s2Step254HeadF_distinct s2Step254HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step254HeadF_reserved
  have rowEq : WindowRow.mk (s2Step254HeadFRow.payload++s2Step254HeadFFresh) s2Step254HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 782],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step254HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step254HeadFvBefore : Arena := s2Step254HeadGvAfter

private theorem s2Step254HeadFv_Incoming : rowsOwned s2Step254HeadFvBefore [s2Step254HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step254HeadGRow,s2Step254HeadFRow,s2Step254HeadGvRow,s2Step254HeadFvRow] 3 s2Step254HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step254HeadFvBefore (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step254HeadFv_Outgoing : rowsOwned s2Step254HeadFvAfter [s2Step254HeadFvOut] :=
  hmrRows_owned_drop s2Step254HeadFvAfter [s2Step254HeadGOut,s2Step254HeadFOut,s2Step254HeadGvOut,s2Step254HeadFvOut] 3 s2Step254HeadBank_outgoingOwned

private theorem s2Step254HeadFv_distinct : (s2Step254HeadFvRow.sign::s2Step254HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step254HeadFv_owned : (s2Step254HeadFvRow.sign::s2Step254HeadFvRow.payload).toFinset⊆s2Step254HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step254HeadFvBefore (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step254HeadFv_reserved : s2Step254HeadFvBefore.reserve s2Step254HeadFvFresh.toFinset=some s2Step254HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step254HeadFvFresh,arenaWires]
  · norm_num [s2Step254HeadFvBefore,s2Step254HeadGvAfter,s2Step254HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step254HeadFvAfter,s2Step254HeadFvBefore,s2Step254HeadGvAfter,s2Step254HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step254HeadFv_checked : planRowResizeLog s2Step254HeadFvBefore s2Step254HeadFvRow 144 s2Step254HeadFvFresh=
    some (s2Step254HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809],770⟩,growRow 770 s2Step254HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step254HeadFvBefore s2Step254HeadFvAfter s2Step254HeadFvRow 144 s2Step254HeadFvFresh
    s2Step254HeadFv_distinct s2Step254HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step254HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step254HeadFvRow.payload++s2Step254HeadFvFresh) s2Step254HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step254HeadG_Incoming : rowsOwned s2Step254HeadGBefore [s2Step254HeadGRow,s2Step254HeadFRow,s2Step254HeadGvRow,s2Step254HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step254HeadGRow,s2Step254HeadFRow,s2Step254HeadGvRow,s2Step254HeadFvRow] 0 s2Step254HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step254HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step254HeadG_Outgoing : rowsOwned s2Step254HeadFvAfter [s2Step254HeadGOut,s2Step254HeadFOut,s2Step254HeadGvOut,s2Step254HeadFvOut] :=
  hmrRows_owned_drop s2Step254HeadFvAfter [s2Step254HeadGOut,s2Step254HeadFOut,s2Step254HeadGvOut,s2Step254HeadFvOut] 0 s2Step254HeadBank_outgoingOwned

private theorem s2Step254HeadG_distinct : (s2Step254HeadGRow.sign::s2Step254HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step254HeadG_owned : (s2Step254HeadGRow.sign::s2Step254HeadGRow.payload).toFinset⊆s2Step254HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step254HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step254HeadG_reserved : s2Step254HeadGBefore.reserve s2Step254HeadGFresh.toFinset=some s2Step254HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step254HeadGFresh,arenaWires]
  · norm_num [s2Step254HeadGBefore,s2Step254HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step254HeadGAfter,s2Step254HeadGBefore,s2Step254HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step254HeadG_checked : planRowResizeLog s2Step254HeadGBefore s2Step254HeadGRow 145 s2Step254HeadGFresh=
    some (s2Step254HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 800, 792],769⟩,growRow 769 s2Step254HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step254HeadGBefore s2Step254HeadGAfter s2Step254HeadGRow 145 s2Step254HeadGFresh
    s2Step254HeadG_distinct s2Step254HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step254HeadG_reserved
  have rowEq : WindowRow.mk (s2Step254HeadGRow.payload++s2Step254HeadGFresh) s2Step254HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 800, 792],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step254HeadGvBefore : Arena := s2Step254HeadFAfter

private theorem s2Step254HeadGv_Incoming : rowsOwned s2Step254HeadGvBefore [s2Step254HeadGvRow,s2Step254HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step254HeadGRow,s2Step254HeadFRow,s2Step254HeadGvRow,s2Step254HeadFvRow] 2 s2Step254HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step254HeadGvBefore (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step254HeadGv_Outgoing : rowsOwned s2Step254HeadFvAfter [s2Step254HeadGvOut,s2Step254HeadFvOut] :=
  hmrRows_owned_drop s2Step254HeadFvAfter [s2Step254HeadGOut,s2Step254HeadFOut,s2Step254HeadGvOut,s2Step254HeadFvOut] 2 s2Step254HeadBank_outgoingOwned

private theorem s2Step254HeadGv_distinct : (s2Step254HeadGvRow.sign::s2Step254HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step254HeadGv_owned : (s2Step254HeadGvRow.sign::s2Step254HeadGvRow.payload).toFinset⊆s2Step254HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step254HeadGvBefore (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step254HeadGv_reserved : s2Step254HeadGvBefore.reserve s2Step254HeadGvFresh.toFinset=some s2Step254HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step254HeadGvFresh,arenaWires]
  · norm_num [s2Step254HeadGvBefore,s2Step254HeadFAfter,s2Step254HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step254HeadGvAfter,s2Step254HeadGvBefore,s2Step254HeadFAfter,s2Step254HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step254HeadGv_checked : planRowResizeLog s2Step254HeadGvBefore s2Step254HeadGvRow 144 s2Step254HeadGvFresh=
    some (s2Step254HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 784, 814],771⟩,growRow 771 s2Step254HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step254HeadGvBefore s2Step254HeadGvAfter s2Step254HeadGvRow 144 s2Step254HeadGvFresh
    s2Step254HeadGv_distinct s2Step254HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step254HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step254HeadGvRow.payload++s2Step254HeadGvFresh) s2Step254HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 784, 814],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step254HeadBank_rows : planWindowRowsLog s2Step254HeadGBefore [(s2Step254HeadGRow,145),(s2Step254HeadFRow,145),(s2Step254HeadGvRow,144),(s2Step254HeadFvRow,144)] [s2Step254HeadGFresh,s2Step254HeadFFresh,s2Step254HeadGvFresh,s2Step254HeadFvFresh]=
    some (s2Step254HeadFvAfter,[s2Step254HeadGOut,s2Step254HeadFOut,s2Step254HeadGvOut,s2Step254HeadFvOut],(growRow 769 s2Step254HeadGFresh ++ (growRow 768 s2Step254HeadFFresh ++ (growRow 771 s2Step254HeadGvFresh ++ (growRow 770 s2Step254HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step254HeadFvAfter [] []=some (s2Step254HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step254HeadFvBefore s2Step254HeadFvAfter s2Step254HeadFvAfter
    s2Step254HeadFvRow s2Step254HeadFvOut 144 s2Step254HeadFvFresh [] [] []
    (growRow 770 s2Step254HeadFvFresh) ([]) s2Step254HeadFv_Incoming s2Step254HeadFv_checked h4 s2Step254HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step254HeadGvBefore s2Step254HeadGvAfter s2Step254HeadFvAfter
    s2Step254HeadGvRow s2Step254HeadGvOut 144 s2Step254HeadGvFresh [(s2Step254HeadFvRow,144)] [s2Step254HeadFvFresh] [s2Step254HeadFvOut]
    (growRow 771 s2Step254HeadGvFresh) ((growRow 770 s2Step254HeadFvFresh ++ [])) s2Step254HeadGv_Incoming s2Step254HeadGv_checked h3 s2Step254HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step254HeadFBefore s2Step254HeadFAfter s2Step254HeadFvAfter
    s2Step254HeadFRow s2Step254HeadFOut 145 s2Step254HeadFFresh [(s2Step254HeadGvRow,144),(s2Step254HeadFvRow,144)] [s2Step254HeadGvFresh,s2Step254HeadFvFresh] [s2Step254HeadGvOut,s2Step254HeadFvOut]
    (growRow 768 s2Step254HeadFFresh) ((growRow 771 s2Step254HeadGvFresh ++ (growRow 770 s2Step254HeadFvFresh ++ []))) s2Step254HeadF_Incoming s2Step254HeadF_checked h2 s2Step254HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step254HeadGBefore s2Step254HeadGAfter s2Step254HeadFvAfter
    s2Step254HeadGRow s2Step254HeadGOut 145 s2Step254HeadGFresh [(s2Step254HeadFRow,145),(s2Step254HeadGvRow,144),(s2Step254HeadFvRow,144)] [s2Step254HeadFFresh,s2Step254HeadGvFresh,s2Step254HeadFvFresh] [s2Step254HeadFOut,s2Step254HeadGvOut,s2Step254HeadFvOut]
    (growRow 769 s2Step254HeadGFresh) ((growRow 768 s2Step254HeadFFresh ++ (growRow 771 s2Step254HeadGvFresh ++ (growRow 770 s2Step254HeadFvFresh ++ [])))) s2Step254HeadG_Incoming s2Step254HeadG_checked h1 s2Step254HeadG_Outgoing
  exact h0

private theorem s2Step254HeadBank_checked : compileHmrBankResizeLog .headroom s2Step254HeadGBefore ⟨s2Step254HeadFRow,s2Step254HeadGRow,s2Step254HeadFvRow,s2Step254HeadGvRow⟩ ⟨145,145,144,144⟩ [s2Step254HeadGFresh,s2Step254HeadFFresh,s2Step254HeadGvFresh,s2Step254HeadFvFresh]=
    some (s2Step254HeadFvAfter,⟨s2Step254HeadFOut,s2Step254HeadGOut,s2Step254HeadFvOut,s2Step254HeadGvOut⟩,(growRow 769 s2Step254HeadGFresh ++ (growRow 768 s2Step254HeadFFresh ++ (growRow 771 s2Step254HeadGvFresh ++ (growRow 770 s2Step254HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step254HeadBank_rows]
  rfl

private theorem s2Step254Front_checked : compileHmrSourceFrontLog s2Step254EntryFBefore s2Step254FrontBank 144 143 ⟨144,143,144,142⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step254FrontLog=some s2Step254FrontPlan := by
  have pairEq : s2Step254FrontPair=⟨s2Step254HeadFRow,s2Step254HeadGRow,s2Step254HeadFvRow,s2Step254HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step254FrontHead=⟨s2Step254ExitFRow,s2Step254ExitGRow,s2Step254ExitFvRow,s2Step254ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step254Add0A=s2Step254FrontHead.f.wires := by decide +kernel
  have gEq : s2Step254Add0B=s2Step254FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step254Add1A=s2Step254FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step254Add1B=s2Step254FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step254EntryFBefore s2Step254FrontBank 144 143 ⟨144,143,144,142⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step254FrontLog s2Step254FrontPlan
  · exact s2Step254Front_entry
  · exact s2Step254EntryBank_checked
  · exact s2Step254Front_sigma
  · rfl
  · exact s2Step254Front_branch
  · rfl
  · simpa only [s2Step254FrontPlan,pairEq] using s2Step254HeadBank_checked
  · simpa only [s2Step254FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step254F4_checked
  · exact s2Step254Counter_checked
  · rfl
  · simpa only [s2Step254FrontPlan,headEq] using s2Step254ExitBank_checked

private theorem s2Step254Complete_explicit_checked : compileHmrEarlyStepLog s2Step254EntryFBefore s2Step254FrontBank 144 143 ⟨144,143,144,142⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 51 s2Step254CompleteLog=some s2Step254CompletePlan := by
  let Q := s2Step254EarlyControlPlan
  have hq := s2Step254EarlyControl_plan_checked
  have fv1 : s2Step254CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step254CompleteOut.fv.payload[2]?.getD s2Step254CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step254CompleteOut.fv.payload[3]?.getD s2Step254CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step254CompleteOut.fv.payload[4]?.getD s2Step254CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step254EntryFBefore s2Step254EarlyControlArena s2Step254FrontBank 144 143 ⟨144,143,144,142⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 51 s2Step254CompleteLog s2Step254FrontPlan Q
    s2Step254Front_checked s2Step254Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step254Complete_owned s2Step254Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step254EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 777 827 s2Step254CompleteOut.fv.second (s2Step254CompleteOut.fv.payload[2]?.getD s2Step254CompleteOut.fv.sign) (s2Step254CompleteOut.fv.payload[3]?.getD s2Step254CompleteOut.fv.sign) (s2Step254CompleteOut.fv.payload[4]?.getD s2Step254CompleteOut.fv.sign) 830 51 s2Step254EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep254Arena : Arena := s2Step254EntryFBefore
def s2PrivateStep254Bank : WindowBank := s2Step254FrontBank
def s2PrivateStep254Spec : HmrSourceWalkStepLog := ⟨144,143,⟨144,143,144,142⟩,51,.early s2Step254CompleteLog⟩
def s2PrivateStep254Plan : HmrSourceStepPlan := .early s2Step254CompletePlan
theorem s2PrivateStep254_source : s2PrivateStep254Spec=s2ObservedLogs240[14] := rfl
theorem s2PrivateStep254_checked : compileHmrSourceStepLog s2PrivateStep254Arena s2PrivateStep254Bank
    s2PrivateStep254Spec.fgWidth s2PrivateStep254Spec.vWidth s2PrivateStep254Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900]
    6 498 254 s2PrivateStep254Spec.need none s2PrivateStep254Spec.log=some s2PrivateStep254Plan := by
  change compileHmrSourceStepLog s2Step254EntryFBefore s2Step254FrontBank 144 143 ⟨144,143,144,142⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 6 498 254 51 none (.early s2Step254CompleteLog)=some (.early s2Step254CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 254<498)]
  rw [s2Step254Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
