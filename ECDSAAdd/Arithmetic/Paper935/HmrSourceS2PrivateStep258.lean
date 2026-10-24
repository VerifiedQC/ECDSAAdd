import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep256
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

private def s2Step258CompleteMoves : List (Wire × Wire) := [(794,141),(829,653)]

private def s2Step258EarlyControlLog : HmrEarlyControlLog := ⟨[829, 794, 891, 885, 792],[782],[817],[830, 800, 894, 896, 901, 902],[]⟩

private def s2Step258FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[792], [885], [891], [807]],[[], [], [], []]⟩,[814],[840],[782],[817],[830, 800, 894, 896, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[830, 800, 894, 896, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[782, 817, 830, 800]⟩

private def s2Step258CompleteLog : HmrEarlyStepLog := ⟨s2Step258FrontLog,s2Step258CompleteMoves,s2Step258EarlyControlLog⟩

private def s2Step258ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652],768⟩

private def s2Step258ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807],770⟩

private def s2Step258ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140],769⟩

private def s2Step258ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784],771⟩

private def s2Step258FrontOut : WindowBank := ⟨s2Step258ExitFOut,s2Step258ExitGOut,s2Step258ExitFvOut,s2Step258ExitGvOut⟩

private def s2Step258CompleteOut : WindowBank := s2Step258FrontOut.repacked s2Step258CompleteMoves

private def s2Step258EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step258EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step258EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step258EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step258EarlyControlPositiveArena,[782],s2Step258EarlyControlEqualityArena,[817],⟨⟨814,false⟩,[⟨⟨782,false⟩,817⟩]⟩⟩

private def s2Step258EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step258EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step258EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step258EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<840) ∨ (841≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step258EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step258EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step258EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,829⟩,⟨⟨774,false⟩,794⟩,⟨⟨775,false⟩,891⟩,⟨⟨776,false⟩,885⟩,⟨⟨777,false⟩,792⟩]⟩

private def s2Step258EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step258EarlyControlZeroArena,s2Step258EarlyControlZeroPlan,s2Step258EarlyControlClassPlan,s2Step258EarlyControlFlagArena,s2Step258EarlyControlFittedArena,s2Step258EarlyControlHistoryArena,s2Step258EarlyControlSigmaArena,s2Step258EarlyControlOutputArena,s2Step258EarlyControlLog⟩

private def s2Step258CounterWork : List Wire := [782, 817, 830, 800]

private theorem s2Step258Counter_bounded : s2Step258CounterWork.toFinset⊆arenaWires := by norm_num [s2Step258CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step258HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step258CounterDuring : Arena := ⟨s2Step258HeadFvAfter.live∪s2Step258CounterWork.toFinset,Finset.union_subset s2Step258HeadFvAfter.bounded s2Step258Counter_bounded⟩

private def s2Step258EntryFFresh : List Wire := []

private def s2Step258EntryFvFresh : List Wire := []

private def s2Step258EntryGFresh : List Wire := []

private def s2Step258EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<840) ∨ (841≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step258EntryGvAfter : Arena := s2Step258EntryFBefore

private def s2Step258EntryGvFresh : List Wire := []

private def s2Step258ExitFExtra : List Wire := [653, 885]

private def s2Step258ExitGExtra : List Wire := [141, 792]

private def s2Step258ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<141) ∨ (142≤q ∧ q<653) ∨ (654≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step258ExitGvExtra : List Wire := [891]

private def s2Step258Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step258Add0Work : List Wire := [830, 800, 894, 896, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step258Add0_bounded : s2Step258Add0Work.toFinset⊆arenaWires := by
  have h : s2Step258Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step258Add0During : Arena := ⟨s2Step258Add0Arena.live∪s2Step258Add0Work.toFinset,Finset.union_subset s2Step258Add0Arena.bounded s2Step258Add0_bounded⟩

private def s2Step258Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step258Add1Work : List Wire := [830, 800, 894, 896, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step258Add1_bounded : s2Step258Add1Work.toFinset⊆arenaWires := by
  have h : s2Step258Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step258Add1During : Arena := ⟨s2Step258Add1Arena.live∪s2Step258Add1Work.toFinset,Finset.union_subset s2Step258Add1Arena.bounded s2Step258Add1_bounded⟩

private def s2Step258F4FlagArena : Arena := ⟨s2Step258HeadFvAfter.live∪{782},Finset.union_subset s2Step258HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step258F4Plan : HmrHybridF4Plan := ⟨s2Step258F4FlagArena,[782],s2Step258Add0Arena,[817],s2Step258Add0During,s2Step258Add0Work,s2Step258Add1During,s2Step258Add1Work⟩

private def s2Step258HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 885],768⟩

private def s2Step258HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807],770⟩

private def s2Step258HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 792],769⟩

private def s2Step258HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 891],771⟩

private def s2Step258FrontHead : WindowBank := ⟨s2Step258HeadFOut,s2Step258HeadGOut,s2Step258HeadFvOut,s2Step258HeadGvOut⟩

private def s2Step258EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653],768⟩

private def s2Step258EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809],770⟩

private def s2Step258EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141],769⟩

private def s2Step258EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784],771⟩

private def s2Step258FrontPair : WindowBank := ⟨s2Step258EntryFOut,s2Step258EntryGOut,s2Step258EntryFvOut,s2Step258EntryGvOut⟩

private def s2Step258FrontSigmaArena : Arena := ⟨s2Step258EntryGvAfter.live∪{814},Finset.union_subset s2Step258EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step258HeadFFresh : List Wire := [885]

private def s2Step258HeadFvFresh : List Wire := [807]

private def s2Step258HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step258HeadGFresh : List Wire := [792]

private def s2Step258HeadGvFresh : List Wire := [891]

private def s2Step258FrontPlan : HmrSourceFront := ⟨s2Step258EntryGvAfter,s2Step258FrontPair,(growRow 768 s2Step258EntryFFresh ++ (growRow 769 s2Step258EntryGFresh ++ (growRow 770 s2Step258EntryFvFresh ++ (growRow 771 s2Step258EntryGvFresh ++ [])))),s2Step258FrontSigmaArena,[814],s2Step258HeadGBefore,[840],
  s2Step258HeadFvAfter,s2Step258FrontHead,(growRow 769 s2Step258HeadGFresh ++ (growRow 768 s2Step258HeadFFresh ++ (growRow 771 s2Step258HeadGvFresh ++ (growRow 770 s2Step258HeadFvFresh ++ [])))),s2Step258F4Plan,s2Step258CounterDuring,s2Step258CounterWork,s2Step258ExitGvAfter,s2Step258FrontOut,(shrinkRow 769 s2Step258ExitGExtra ++ (shrinkRow 768 s2Step258ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step258ExitGvExtra ++ []))))⟩

private def s2Step258CompletePlan : HmrEarlyStepPlan := ⟨s2Step258FrontPlan,s2Step258EarlyControlArena,s2Step258EarlyControlPlan,s2Step258CompleteMoves⟩

private theorem s2Step258Complete_apart : List.Disjoint (s2Step258CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [814, 840, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] := by
  have nd : ((s2Step258CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[814, 840, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step258Complete_owned : (s2Step258CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step258EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step258EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private def s2Step258CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,653),(654,782),(783,792),(793,794),(795,800),(801,817),(818,830),(831,885),(886,891),(892,894),(895,896),(897,901)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s2Step258CompleteRelocationMove0Borrowed : Arena := ⟨s2Step258ExitGvAfter.live∪{141},Finset.union_subset s2Step258ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step258CompleteRelocationMove1Borrowed : Arena := ⟨s2Step258CompleteRelocationMove0After.live∪{653},Finset.union_subset s2Step258CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s2Step258CompleteRelocation_move0_owned : 794∈s2Step258ExitGvAfter.live := by norm_num [s2Step258ExitGvAfter,arenaWires]

private theorem s2Step258CompleteRelocation_move0_reserve : s2Step258ExitGvAfter.reserve {141}=some s2Step258CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step258ExitGvAfter,arenaWires]
  · rfl

private theorem s2Step258CompleteRelocation_move0_retire : s2Step258CompleteRelocationMove0Borrowed.retireSet {794}=s2Step258CompleteRelocationMove0After := by
  unfold Arena.retireSet s2Step258CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step258CompleteRelocationMove0Borrowed,s2Step258ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step258CompleteRelocation_move1_owned : 829∈s2Step258CompleteRelocationMove0After.live := by norm_num [s2Step258CompleteRelocationMove0After,arenaWires]

private theorem s2Step258CompleteRelocation_move1_reserve : s2Step258CompleteRelocationMove0After.reserve {653}=some s2Step258CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step258CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s2Step258CompleteRelocation_move1_retire : s2Step258CompleteRelocationMove1Borrowed.retireSet {829}=s2Step258EarlyControlArena := by
  unfold Arena.retireSet s2Step258EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step258CompleteRelocationMove1Borrowed,s2Step258CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step258CompleteRelocation_checked : s2Step258ExitGvAfter.checkRepack [(794,141),(829,653)]=some s2Step258EarlyControlArena := by
  have tail2 : s2Step258EarlyControlArena.checkRepack []=some s2Step258EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s2Step258CompleteRelocationMove0After s2Step258CompleteRelocationMove1Borrowed s2Step258EarlyControlArena s2Step258EarlyControlArena 829 653 []
    s2Step258CompleteRelocation_move1_owned s2Step258CompleteRelocation_move1_reserve s2Step258CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s2Step258ExitGvAfter s2Step258CompleteRelocationMove0Borrowed s2Step258CompleteRelocationMove0After s2Step258EarlyControlArena 794 141 [(829,653)]
    s2Step258CompleteRelocation_move0_owned s2Step258CompleteRelocation_move0_reserve s2Step258CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s2Step258Complete_repack : s2Step258ExitGvAfter.checkRepack s2Step258CompleteMoves=some s2Step258EarlyControlArena := by
  simpa only [s2Step258CompleteMoves] using s2Step258CompleteRelocation_checked

private theorem s2Step258EarlyControl_branchOwned : ([840] : List Wire).toFinset⊆s2Step258EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step258EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step258EarlyControl_branch : compileHmrBranchRetirement s2Step258EarlyControlSigmaArena 840=some s2Step258EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step258EarlyControl_branchOwned
  · ext q
    simp [s2Step258EarlyControlOutputArena,s2Step258EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step258EarlyControl_classEqualityBorrow : s2Step258EarlyControlPositiveArena.checkBorrow (([814, 782] : List Wire).length-1) s2Step258EarlyControlLog.classWork=some s2Step258EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step258EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step258EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step258EarlyControlEqualityArena,s2Step258EarlyControlPositiveArena,s2Step258EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step258EarlyControl_classEqualityOwned : ([814, 782] : List Wire).toFinset⊆s2Step258EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step258EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step258EarlyControl_classEquality : compileHmrEqualityLog s2Step258EarlyControlPositiveArena [814, 782] 0 s2Step258EarlyControlLog.classWork=some (s2Step258EarlyControlEqualityArena,s2Step258EarlyControlLog.classWork,s2Step258EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step258EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step258EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step258EarlyControl_classOwned : ([777, 792, 814] : List Wire).toFinset⊆s2Step258EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step258EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step258EarlyControl_positiveBorrow : s2Step258EarlyControlZeroArena.checkBorrow (1) s2Step258EarlyControlLog.positiveWork=some s2Step258EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step258EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step258EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step258EarlyControlPositiveArena,s2Step258EarlyControlZeroArena,s2Step258EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step258EarlyControl_class : compileHmrSourceClassLog s2Step258EarlyControlZeroArena false 777 s2Step258EarlyControlZeroPlan.top 0 814 s2Step258EarlyControlLog.positiveWork s2Step258EarlyControlLog.classWork=some s2Step258EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step258EarlyControlClassPlan s2Step258EarlyControlZeroArena false 777 s2Step258EarlyControlZeroPlan.top 0 814
  constructor
  · decide +kernel
  · exact s2Step258EarlyControl_classOwned
  · exact s2Step258EarlyControl_positiveBorrow
  · exact s2Step258EarlyControl_classEquality

private theorem s2Step258EarlyControl_entryRecordOwned : ([840, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).toFinset⊆s2Step258EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step258EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step258EarlyControl_entrySigmaOwned : ([814, 254] : List Wire).toFinset⊆s2Step258EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step258EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step258EarlyControl_fitBorrow : s2Step258EarlyControlFlagArena.checkBorrow ((51-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).length)) s2Step258EarlyControlLog.recordFresh=some s2Step258EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step258EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step258EarlyControlFlagArena (fun q => (0≤q ∧ q<903)) rfl
      decide +kernel
    · ext q
      simp [s2Step258EarlyControlFittedArena,s2Step258EarlyControlFlagArena,s2Step258EarlyControlLog,arenaWires]

private theorem s2Step258EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).toFinset⊆s2Step258EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step258EarlyControlFlagArena (fun q => (0≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step258EarlyControl_fit : compileHmrRecordGrowLog s2Step258EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 51 s2Step258EarlyControlLog.recordFresh=some s2Step258EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step258EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step258EarlyControl_fitBorrow

private theorem s2Step258EarlyControl_flagsBorrow : s2Step258EarlyControlEqualityArena.checkBorrow (6) s2Step258EarlyControlLog.flagWork=some s2Step258EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step258EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step258EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step258EarlyControlFlagArena,s2Step258EarlyControlEqualityArena,s2Step258EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step258EarlyControl_flagsOwned : ([817, 253, 252, 251] : List Wire).toFinset⊆s2Step258EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step258EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step258EarlyControl_flags : compileHmrFlagsLog s2Step258EarlyControlClassPlan.equalityArena s2Step258EarlyControlClassPlan.equality.top 253 252 251 s2Step258EarlyControlLog.flagWork=some s2Step258EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step258EarlyControl_flagsOwned⟩
  · exact s2Step258EarlyControl_flagsBorrow

private theorem s2Step258EarlyControl_historyBorrow : s2Step258EarlyControlArena.checkBorrow ((51-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).length)) s2Step258EarlyControlLog.recordFresh=some s2Step258EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step258EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step258EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step258EarlyControlHistoryArena,s2Step258EarlyControlArena,s2Step258EarlyControlLog,arenaWires]

private theorem s2Step258EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).toFinset⊆s2Step258EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step258EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step258EarlyControl_history : compileHmrRecordGrowLog s2Step258EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 51 s2Step258EarlyControlLog.recordFresh=some s2Step258EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step258EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step258EarlyControl_historyBorrow

private theorem s2Step258EarlyControl_sigmaOwned : ([254, 814] : List Wire).toFinset⊆s2Step258EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step258EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step258EarlyControl_sigmaReleaseOwned : ([814] : List Wire).toFinset⊆s2Step258EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step258EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step258EarlyControl_sigmaRelease : s2Step258EarlyControlHistoryArena.release {814} (fun _ => false)=some s2Step258EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step258EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step258EarlyControlSigmaArena,s2Step258EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step258EarlyControl_sigma : compileHmrSigmaDropLog s2Step258EarlyControlHistoryArena false 0 0 254 814 []=some s2Step258EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step258EarlyControl_sigmaOwned⟩
  · exact s2Step258EarlyControl_sigmaRelease

private theorem s2Step258EarlyControl_zeroBorrow : s2Step258EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step258EarlyControlLog.zeroWork=some s2Step258EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step258EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step258EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step258EarlyControlZeroArena,s2Step258EarlyControlArena,s2Step258EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step258EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step258EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step258EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step258EarlyControl_zero : compileHmrEqualityLog s2Step258EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step258EarlyControlLog.zeroWork=some (s2Step258EarlyControlZeroArena,s2Step258EarlyControlLog.zeroWork,s2Step258EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step258EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step258EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step258EarlyControl_logged : s2Step258EarlyControlPlan.Logged s2Step258EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 777 814 254 253 252 251 840 51 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step258EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step258EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step258EarlyControl_zero
  · exact s2Step258EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step258EarlyControl_flags
  · exact s2Step258EarlyControl_fit
  · exact s2Step258EarlyControl_history
  · exact s2Step258EarlyControl_sigma
  · exact s2Step258EarlyControl_branch

private theorem s2Step258EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step258EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 777 814 254 253 252 251 840 51 s2Step258EarlyControlLog=some s2Step258EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step258EarlyControlPlan s2Step258EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 777 814 254 253 252 251 840 51 s2Step258EarlyControl_logged

private def s2Step258EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653],768⟩

private def s2Step258EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809],770⟩

private def s2Step258EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141],769⟩

private def s2Step258EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784],771⟩

private def s2Step258FrontBank : WindowBank := ⟨s2Step258EntryFRow,s2Step258EntryGRow,s2Step258EntryFvRow,s2Step258EntryGvRow⟩

private def s2Step258Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 885, 768]

private def s2Step258Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 792, 769]

private def s2Step258Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 770]

private def s2Step258Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 891, 771]

private theorem s2Step258Counter_apart : Disjoint s2Step258HeadFvAfter.live s2Step258CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step258HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step258Counter_borrowed : s2Step258HeadFvAfter.checkBorrow 4 s2Step258CounterWork=some s2Step258CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step258HeadFvAfter s2Step258CounterDuring s2Step258CounterWork.toFinset s2Step258Counter_bounded s2Step258Counter_apart rfl

private theorem s2Step258Counter_owned : (814::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step258HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step258HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step258Counter_checked : compileHmrCounterStepLog s2Step258HeadFvAfter true 814 [772, 773, 774, 775, 776, 777] s2Step258CounterWork=some s2Step258CounterDuring := by
  have owned : ∀q∈814::[772, 773, 774, 775, 776, 777],q∈s2Step258HeadFvAfter.live := fun q hq => s2Step258Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step258Counter_borrowed

private def s2Step258EntryFAfter : Arena := s2Step258EntryFBefore

private theorem s2Step258EntryBank_incomingDistinct : ([s2Step258EntryFRow,s2Step258EntryGRow,s2Step258EntryFvRow,s2Step258EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step258EntryF_Incoming : rowsOwned s2Step258EntryFBefore [s2Step258EntryFRow,s2Step258EntryGRow,s2Step258EntryFvRow,s2Step258EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step258EntryFRow,s2Step258EntryGRow,s2Step258EntryFvRow,s2Step258EntryGvRow] 0 s2Step258EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step258EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<840) ∨ (841≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step258EntryBank_outgoingOwned : rowsOwned s2Step258EntryGvAfter [s2Step258EntryFOut,s2Step258EntryGOut,s2Step258EntryFvOut,s2Step258EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step258EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<840) ∨ (841≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step258EntryF_Outgoing : rowsOwned s2Step258EntryGvAfter [s2Step258EntryFOut,s2Step258EntryGOut,s2Step258EntryFvOut,s2Step258EntryGvOut] :=
  hmrRows_owned_drop s2Step258EntryGvAfter [s2Step258EntryFOut,s2Step258EntryGOut,s2Step258EntryFvOut,s2Step258EntryGvOut] 0 s2Step258EntryBank_outgoingOwned

private theorem s2Step258EntryF_distinct : (s2Step258EntryFRow.sign::s2Step258EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step258EntryF_owned : (s2Step258EntryFRow.sign::s2Step258EntryFRow.payload).toFinset⊆s2Step258EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step258EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<840) ∨ (841≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step258EntryF_reserved : s2Step258EntryFBefore.reserve s2Step258EntryFFresh.toFinset=some s2Step258EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step258EntryFFresh,arenaWires]
  · norm_num [s2Step258EntryFBefore,s2Step258EntryFFresh,arenaWires]
  · simp only [s2Step258EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step258EntryF_checked : planRowResizeLog s2Step258EntryFBefore s2Step258EntryFRow 142 s2Step258EntryFFresh=
    some (s2Step258EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653],768⟩,growRow 768 s2Step258EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step258EntryFBefore s2Step258EntryFAfter s2Step258EntryFRow 142 s2Step258EntryFFresh
    s2Step258EntryF_distinct s2Step258EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step258EntryF_reserved
  have rowEq : WindowRow.mk (s2Step258EntryFRow.payload++s2Step258EntryFFresh) s2Step258EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step258EntryFvAfter : Arena := s2Step258EntryFBefore

private def s2Step258EntryFvBefore : Arena := s2Step258EntryFBefore

private theorem s2Step258EntryFv_Incoming : rowsOwned s2Step258EntryFvBefore [s2Step258EntryFvRow,s2Step258EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step258EntryFRow,s2Step258EntryGRow,s2Step258EntryFvRow,s2Step258EntryGvRow] 2 s2Step258EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step258EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<840) ∨ (841≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step258EntryFv_Outgoing : rowsOwned s2Step258EntryGvAfter [s2Step258EntryFvOut,s2Step258EntryGvOut] :=
  hmrRows_owned_drop s2Step258EntryGvAfter [s2Step258EntryFOut,s2Step258EntryGOut,s2Step258EntryFvOut,s2Step258EntryGvOut] 2 s2Step258EntryBank_outgoingOwned

private theorem s2Step258EntryFv_distinct : (s2Step258EntryFvRow.sign::s2Step258EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step258EntryFv_owned : (s2Step258EntryFvRow.sign::s2Step258EntryFvRow.payload).toFinset⊆s2Step258EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step258EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<840) ∨ (841≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step258EntryFv_reserved : s2Step258EntryFvBefore.reserve s2Step258EntryFvFresh.toFinset=some s2Step258EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step258EntryFvFresh,arenaWires]
  · norm_num [s2Step258EntryFvBefore,s2Step258EntryFBefore,s2Step258EntryFvFresh,arenaWires]
  · simp only [s2Step258EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step258EntryFv_checked : planRowResizeLog s2Step258EntryFvBefore s2Step258EntryFvRow 144 s2Step258EntryFvFresh=
    some (s2Step258EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809],770⟩,growRow 770 s2Step258EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step258EntryFvBefore s2Step258EntryFvAfter s2Step258EntryFvRow 144 s2Step258EntryFvFresh
    s2Step258EntryFv_distinct s2Step258EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step258EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step258EntryFvRow.payload++s2Step258EntryFvFresh) s2Step258EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step258EntryGAfter : Arena := s2Step258EntryFBefore

private def s2Step258EntryGBefore : Arena := s2Step258EntryFBefore

private theorem s2Step258EntryG_Incoming : rowsOwned s2Step258EntryGBefore [s2Step258EntryGRow,s2Step258EntryFvRow,s2Step258EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step258EntryFRow,s2Step258EntryGRow,s2Step258EntryFvRow,s2Step258EntryGvRow] 1 s2Step258EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step258EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<840) ∨ (841≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step258EntryG_Outgoing : rowsOwned s2Step258EntryGvAfter [s2Step258EntryGOut,s2Step258EntryFvOut,s2Step258EntryGvOut] :=
  hmrRows_owned_drop s2Step258EntryGvAfter [s2Step258EntryFOut,s2Step258EntryGOut,s2Step258EntryFvOut,s2Step258EntryGvOut] 1 s2Step258EntryBank_outgoingOwned

private theorem s2Step258EntryG_distinct : (s2Step258EntryGRow.sign::s2Step258EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step258EntryG_owned : (s2Step258EntryGRow.sign::s2Step258EntryGRow.payload).toFinset⊆s2Step258EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step258EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<840) ∨ (841≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step258EntryG_reserved : s2Step258EntryGBefore.reserve s2Step258EntryGFresh.toFinset=some s2Step258EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step258EntryGFresh,arenaWires]
  · norm_num [s2Step258EntryGBefore,s2Step258EntryFBefore,s2Step258EntryGFresh,arenaWires]
  · simp only [s2Step258EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step258EntryG_checked : planRowResizeLog s2Step258EntryGBefore s2Step258EntryGRow 142 s2Step258EntryGFresh=
    some (s2Step258EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141],769⟩,growRow 769 s2Step258EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step258EntryGBefore s2Step258EntryGAfter s2Step258EntryGRow 142 s2Step258EntryGFresh
    s2Step258EntryG_distinct s2Step258EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step258EntryG_reserved
  have rowEq : WindowRow.mk (s2Step258EntryGRow.payload++s2Step258EntryGFresh) s2Step258EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step258EntryGvBefore : Arena := s2Step258EntryFBefore

private theorem s2Step258EntryGv_Incoming : rowsOwned s2Step258EntryGvBefore [s2Step258EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step258EntryFRow,s2Step258EntryGRow,s2Step258EntryFvRow,s2Step258EntryGvRow] 3 s2Step258EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step258EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<840) ∨ (841≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step258EntryGv_Outgoing : rowsOwned s2Step258EntryGvAfter [s2Step258EntryGvOut] :=
  hmrRows_owned_drop s2Step258EntryGvAfter [s2Step258EntryFOut,s2Step258EntryGOut,s2Step258EntryFvOut,s2Step258EntryGvOut] 3 s2Step258EntryBank_outgoingOwned

private theorem s2Step258EntryGv_distinct : (s2Step258EntryGvRow.sign::s2Step258EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step258EntryGv_owned : (s2Step258EntryGvRow.sign::s2Step258EntryGvRow.payload).toFinset⊆s2Step258EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step258EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<840) ∨ (841≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step258EntryGv_reserved : s2Step258EntryGvBefore.reserve s2Step258EntryGvFresh.toFinset=some s2Step258EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step258EntryGvFresh,arenaWires]
  · norm_num [s2Step258EntryGvBefore,s2Step258EntryFBefore,s2Step258EntryGvFresh,arenaWires]
  · simp only [s2Step258EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step258EntryGv_checked : planRowResizeLog s2Step258EntryGvBefore s2Step258EntryGvRow 144 s2Step258EntryGvFresh=
    some (s2Step258EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784],771⟩,growRow 771 s2Step258EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step258EntryGvBefore s2Step258EntryGvAfter s2Step258EntryGvRow 144 s2Step258EntryGvFresh
    s2Step258EntryGv_distinct s2Step258EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step258EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step258EntryGvRow.payload++s2Step258EntryGvFresh) s2Step258EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step258EntryBank_rows : planWindowRowsLog s2Step258EntryFBefore [(s2Step258EntryFRow,142),(s2Step258EntryGRow,142),(s2Step258EntryFvRow,144),(s2Step258EntryGvRow,144)] [s2Step258EntryFFresh,s2Step258EntryGFresh,s2Step258EntryFvFresh,s2Step258EntryGvFresh]=
    some (s2Step258EntryGvAfter,[s2Step258EntryFOut,s2Step258EntryGOut,s2Step258EntryFvOut,s2Step258EntryGvOut],(growRow 768 s2Step258EntryFFresh ++ (growRow 769 s2Step258EntryGFresh ++ (growRow 770 s2Step258EntryFvFresh ++ (growRow 771 s2Step258EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step258EntryGvAfter [] []=some (s2Step258EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step258EntryGvBefore s2Step258EntryGvAfter s2Step258EntryGvAfter
    s2Step258EntryGvRow s2Step258EntryGvOut 144 s2Step258EntryGvFresh [] [] []
    (growRow 771 s2Step258EntryGvFresh) ([]) s2Step258EntryGv_Incoming s2Step258EntryGv_checked h4 s2Step258EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step258EntryFvBefore s2Step258EntryFvAfter s2Step258EntryGvAfter
    s2Step258EntryFvRow s2Step258EntryFvOut 144 s2Step258EntryFvFresh [(s2Step258EntryGvRow,144)] [s2Step258EntryGvFresh] [s2Step258EntryGvOut]
    (growRow 770 s2Step258EntryFvFresh) ((growRow 771 s2Step258EntryGvFresh ++ [])) s2Step258EntryFv_Incoming s2Step258EntryFv_checked h3 s2Step258EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step258EntryGBefore s2Step258EntryGAfter s2Step258EntryGvAfter
    s2Step258EntryGRow s2Step258EntryGOut 142 s2Step258EntryGFresh [(s2Step258EntryFvRow,144),(s2Step258EntryGvRow,144)] [s2Step258EntryFvFresh,s2Step258EntryGvFresh] [s2Step258EntryFvOut,s2Step258EntryGvOut]
    (growRow 769 s2Step258EntryGFresh) ((growRow 770 s2Step258EntryFvFresh ++ (growRow 771 s2Step258EntryGvFresh ++ []))) s2Step258EntryG_Incoming s2Step258EntryG_checked h2 s2Step258EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step258EntryFBefore s2Step258EntryFAfter s2Step258EntryGvAfter
    s2Step258EntryFRow s2Step258EntryFOut 142 s2Step258EntryFFresh [(s2Step258EntryGRow,142),(s2Step258EntryFvRow,144),(s2Step258EntryGvRow,144)] [s2Step258EntryGFresh,s2Step258EntryFvFresh,s2Step258EntryGvFresh] [s2Step258EntryGOut,s2Step258EntryFvOut,s2Step258EntryGvOut]
    (growRow 768 s2Step258EntryFFresh) ((growRow 769 s2Step258EntryGFresh ++ (growRow 770 s2Step258EntryFvFresh ++ (growRow 771 s2Step258EntryGvFresh ++ [])))) s2Step258EntryF_Incoming s2Step258EntryF_checked h1 s2Step258EntryF_Outgoing
  exact h0

private theorem s2Step258EntryBank_checked : compileHmrBankResizeLog .entry s2Step258EntryFBefore ⟨s2Step258EntryFRow,s2Step258EntryGRow,s2Step258EntryFvRow,s2Step258EntryGvRow⟩ ⟨142,142,144,144⟩ [s2Step258EntryFFresh,s2Step258EntryGFresh,s2Step258EntryFvFresh,s2Step258EntryGvFresh]=
    some (s2Step258EntryGvAfter,⟨s2Step258EntryFOut,s2Step258EntryGOut,s2Step258EntryFvOut,s2Step258EntryGvOut⟩,(growRow 768 s2Step258EntryFFresh ++ (growRow 769 s2Step258EntryGFresh ++ (growRow 770 s2Step258EntryFvFresh ++ (growRow 771 s2Step258EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step258EntryBank_rows]
  rfl

private def s2Step258ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<141) ∨ (142≤q ∧ q<653) ∨ (654≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step258ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<141) ∨ (142≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step258ExitFBefore : Arena := s2Step258ExitGAfter

private def s2Step258ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 885],768⟩

private def s2Step258ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807],770⟩

private def s2Step258ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 792],769⟩

private def s2Step258ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 891],771⟩

private theorem s2Step258ExitBank_incomingDistinct : ([s2Step258ExitGRow,s2Step258ExitFRow,s2Step258ExitFvRow,s2Step258ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step258ExitF_Incoming : rowsOwned s2Step258ExitFBefore [s2Step258ExitFRow,s2Step258ExitFvRow,s2Step258ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step258ExitGRow,s2Step258ExitFRow,s2Step258ExitFvRow,s2Step258ExitGvRow] 1 s2Step258ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step258ExitFBefore (fun q => (0≤q ∧ q<141) ∨ (142≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step258ExitBank_outgoingOwned : rowsOwned s2Step258ExitGvAfter [s2Step258ExitGOut,s2Step258ExitFOut,s2Step258ExitFvOut,s2Step258ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step258ExitGvAfter (fun q => (0≤q ∧ q<141) ∨ (142≤q ∧ q<653) ∨ (654≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step258ExitF_Outgoing : rowsOwned s2Step258ExitGvAfter [s2Step258ExitFOut,s2Step258ExitFvOut,s2Step258ExitGvOut] :=
  hmrRows_owned_drop s2Step258ExitGvAfter [s2Step258ExitGOut,s2Step258ExitFOut,s2Step258ExitFvOut,s2Step258ExitGvOut] 1 s2Step258ExitBank_outgoingOwned

private theorem s2Step258ExitF_distinct : (s2Step258ExitFRow.sign::s2Step258ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step258ExitF_owned : (s2Step258ExitFRow.sign::s2Step258ExitFRow.payload).toFinset⊆s2Step258ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step258ExitFBefore (fun q => (0≤q ∧ q<141) ∨ (142≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step258ExitF_retired : s2Step258ExitFBefore.retireSet s2Step258ExitFExtra.toFinset=s2Step258ExitFAfter := by
  unfold Arena.retireSet s2Step258ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step258ExitFBefore,s2Step258ExitGAfter,s2Step258ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step258ExitF_checked : planRowResizeLog s2Step258ExitFBefore s2Step258ExitFRow 141 []=
    some (s2Step258ExitFAfter,s2Step258ExitFOut,shrinkRow 768 s2Step258ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step258ExitFBefore s2Step258ExitFRow 141 s2Step258ExitF_distinct s2Step258ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step258ExitFRow.payload.take 141) s2Step258ExitFRow.sign=s2Step258ExitFOut := by decide +kernel
  have hi : s2Step258ExitFRow.payload.drop 141=s2Step258ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step258ExitF_retired] at result
  exact result

private def s2Step258ExitFvAfter : Arena := s2Step258ExitFAfter

private def s2Step258ExitFvBefore : Arena := s2Step258ExitFAfter

private theorem s2Step258ExitFv_Incoming : rowsOwned s2Step258ExitFvBefore [s2Step258ExitFvRow,s2Step258ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step258ExitGRow,s2Step258ExitFRow,s2Step258ExitFvRow,s2Step258ExitGvRow] 2 s2Step258ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step258ExitFvBefore (fun q => (0≤q ∧ q<141) ∨ (142≤q ∧ q<653) ∨ (654≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step258ExitFv_Outgoing : rowsOwned s2Step258ExitGvAfter [s2Step258ExitFvOut,s2Step258ExitGvOut] :=
  hmrRows_owned_drop s2Step258ExitGvAfter [s2Step258ExitGOut,s2Step258ExitFOut,s2Step258ExitFvOut,s2Step258ExitGvOut] 2 s2Step258ExitBank_outgoingOwned

private theorem s2Step258ExitFv_distinct : (s2Step258ExitFvRow.sign::s2Step258ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step258ExitFv_owned : (s2Step258ExitFvRow.sign::s2Step258ExitFvRow.payload).toFinset⊆s2Step258ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step258ExitFvBefore (fun q => (0≤q ∧ q<141) ∨ (142≤q ∧ q<653) ∨ (654≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step258ExitFv_reserved : s2Step258ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step258ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step258ExitFv_checked : planRowResizeLog s2Step258ExitFvBefore s2Step258ExitFvRow 145 []=
    some (s2Step258ExitFvAfter,s2Step258ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step258ExitFvBefore s2Step258ExitFvAfter s2Step258ExitFvRow 145 []
    s2Step258ExitFv_distinct s2Step258ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step258ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step258ExitFvRow.payload++[]) s2Step258ExitFvRow.sign=s2Step258ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step258ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private theorem s2Step258ExitG_Incoming : rowsOwned s2Step258ExitGBefore [s2Step258ExitGRow,s2Step258ExitFRow,s2Step258ExitFvRow,s2Step258ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step258ExitGRow,s2Step258ExitFRow,s2Step258ExitFvRow,s2Step258ExitGvRow] 0 s2Step258ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step258ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step258ExitG_Outgoing : rowsOwned s2Step258ExitGvAfter [s2Step258ExitGOut,s2Step258ExitFOut,s2Step258ExitFvOut,s2Step258ExitGvOut] :=
  hmrRows_owned_drop s2Step258ExitGvAfter [s2Step258ExitGOut,s2Step258ExitFOut,s2Step258ExitFvOut,s2Step258ExitGvOut] 0 s2Step258ExitBank_outgoingOwned

private theorem s2Step258ExitG_distinct : (s2Step258ExitGRow.sign::s2Step258ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step258ExitG_owned : (s2Step258ExitGRow.sign::s2Step258ExitGRow.payload).toFinset⊆s2Step258ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step258ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step258ExitG_retired : s2Step258ExitGBefore.retireSet s2Step258ExitGExtra.toFinset=s2Step258ExitGAfter := by
  unfold Arena.retireSet s2Step258ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step258ExitGBefore,s2Step258ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step258ExitG_checked : planRowResizeLog s2Step258ExitGBefore s2Step258ExitGRow 141 []=
    some (s2Step258ExitGAfter,s2Step258ExitGOut,shrinkRow 769 s2Step258ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step258ExitGBefore s2Step258ExitGRow 141 s2Step258ExitG_distinct s2Step258ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step258ExitGRow.payload.take 141) s2Step258ExitGRow.sign=s2Step258ExitGOut := by decide +kernel
  have hi : s2Step258ExitGRow.payload.drop 141=s2Step258ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step258ExitG_retired] at result
  exact result

private def s2Step258ExitGvBefore : Arena := s2Step258ExitFAfter

private theorem s2Step258ExitGv_Incoming : rowsOwned s2Step258ExitGvBefore [s2Step258ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step258ExitGRow,s2Step258ExitFRow,s2Step258ExitFvRow,s2Step258ExitGvRow] 3 s2Step258ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step258ExitGvBefore (fun q => (0≤q ∧ q<141) ∨ (142≤q ∧ q<653) ∨ (654≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step258ExitGv_Outgoing : rowsOwned s2Step258ExitGvAfter [s2Step258ExitGvOut] :=
  hmrRows_owned_drop s2Step258ExitGvAfter [s2Step258ExitGOut,s2Step258ExitFOut,s2Step258ExitFvOut,s2Step258ExitGvOut] 3 s2Step258ExitBank_outgoingOwned

private theorem s2Step258ExitGv_distinct : (s2Step258ExitGvRow.sign::s2Step258ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step258ExitGv_owned : (s2Step258ExitGvRow.sign::s2Step258ExitGvRow.payload).toFinset⊆s2Step258ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step258ExitGvBefore (fun q => (0≤q ∧ q<141) ∨ (142≤q ∧ q<653) ∨ (654≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step258ExitGv_retired : s2Step258ExitGvBefore.retireSet s2Step258ExitGvExtra.toFinset=s2Step258ExitGvAfter := by
  unfold Arena.retireSet s2Step258ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step258ExitGvBefore,s2Step258ExitFAfter,s2Step258ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step258ExitGv_checked : planRowResizeLog s2Step258ExitGvBefore s2Step258ExitGvRow 144 []=
    some (s2Step258ExitGvAfter,s2Step258ExitGvOut,shrinkRow 771 s2Step258ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step258ExitGvBefore s2Step258ExitGvRow 144 s2Step258ExitGv_distinct s2Step258ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step258ExitGvRow.payload.take 144) s2Step258ExitGvRow.sign=s2Step258ExitGvOut := by decide +kernel
  have hi : s2Step258ExitGvRow.payload.drop 144=s2Step258ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step258ExitGv_retired] at result
  exact result

private theorem s2Step258ExitBank_rows : planWindowRowsLog s2Step258ExitGBefore [(s2Step258ExitGRow,141),(s2Step258ExitFRow,141),(s2Step258ExitFvRow,145),(s2Step258ExitGvRow,144)] [[],[],[],[]]=
    some (s2Step258ExitGvAfter,[s2Step258ExitGOut,s2Step258ExitFOut,s2Step258ExitFvOut,s2Step258ExitGvOut],(shrinkRow 769 s2Step258ExitGExtra ++ (shrinkRow 768 s2Step258ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step258ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step258ExitGvAfter [] []=some (s2Step258ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step258ExitGvBefore s2Step258ExitGvAfter s2Step258ExitGvAfter
    s2Step258ExitGvRow s2Step258ExitGvOut 144 [] [] [] []
    (shrinkRow 771 s2Step258ExitGvExtra) ([]) s2Step258ExitGv_Incoming s2Step258ExitGv_checked h4 s2Step258ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step258ExitFvBefore s2Step258ExitFvAfter s2Step258ExitGvAfter
    s2Step258ExitFvRow s2Step258ExitFvOut 145 [] [(s2Step258ExitGvRow,144)] [[]] [s2Step258ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step258ExitGvExtra ++ [])) s2Step258ExitFv_Incoming s2Step258ExitFv_checked h3 s2Step258ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step258ExitFBefore s2Step258ExitFAfter s2Step258ExitGvAfter
    s2Step258ExitFRow s2Step258ExitFOut 141 [] [(s2Step258ExitFvRow,145),(s2Step258ExitGvRow,144)] [[],[]] [s2Step258ExitFvOut,s2Step258ExitGvOut]
    (shrinkRow 768 s2Step258ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step258ExitGvExtra ++ []))) s2Step258ExitF_Incoming s2Step258ExitF_checked h2 s2Step258ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step258ExitGBefore s2Step258ExitGAfter s2Step258ExitGvAfter
    s2Step258ExitGRow s2Step258ExitGOut 141 [] [(s2Step258ExitFRow,141),(s2Step258ExitFvRow,145),(s2Step258ExitGvRow,144)] [[],[],[]] [s2Step258ExitFOut,s2Step258ExitFvOut,s2Step258ExitGvOut]
    (shrinkRow 769 s2Step258ExitGExtra) ((shrinkRow 768 s2Step258ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step258ExitGvExtra ++ [])))) s2Step258ExitG_Incoming s2Step258ExitG_checked h1 s2Step258ExitG_Outgoing
  exact h0

private theorem s2Step258ExitBank_checked : compileHmrBankResizeLog .exit s2Step258ExitGBefore ⟨s2Step258ExitFRow,s2Step258ExitGRow,s2Step258ExitFvRow,s2Step258ExitGvRow⟩ ⟨141,141,145,144⟩ [[],[],[],[]]=
    some (s2Step258ExitGvAfter,⟨s2Step258ExitFOut,s2Step258ExitGOut,s2Step258ExitFvOut,s2Step258ExitGvOut⟩,(shrinkRow 769 s2Step258ExitGExtra ++ (shrinkRow 768 s2Step258ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step258ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step258ExitBank_rows]
  rfl

private theorem s2Step258Add0_apart : Disjoint s2Step258Add0Arena.live s2Step258Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step258Add0Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step258Add0_card : s2Step258Add0Arena.live.card=897 := by
  decide +kernel

private theorem s2Step258Add0_borrowed : s2Step258Add0Arena.checkBorrow (hmrHybridCount s2Step258Add0Arena s2Step258Add0B.length) s2Step258Add0Work=some s2Step258Add0During := by
  have len : s2Step258Add0Work.length=hmrHybridCount s2Step258Add0Arena s2Step258Add0B.length := by
    rw [hmrHybridCount,s2Step258Add0_card]
    decide +kernel
  have nd : s2Step258Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step258Add0Arena s2Step258Add0During s2Step258Add0Work.toFinset s2Step258Add0_bounded s2Step258Add0_apart rfl

private theorem s2Step258Add0_distinct : (782::840::817::(s2Step258Add0A++s2Step258Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step258Add0_owned : (782::840::817::(s2Step258Add0A++s2Step258Add0B)).toFinset⊆s2Step258Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step258Add0Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step258Add0_checked : compileHmrHybridCinLog s2Step258Add0Arena 840 782 817 s2Step258Add0A s2Step258Add0B s2Step258Add0Work=some s2Step258Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step258Add0Arena s2Step258Add0During 840 782 817 s2Step258Add0A s2Step258Add0B s2Step258Add0Work
    (by decide +kernel) (by decide +kernel) s2Step258Add0_distinct
    (fun q hq => s2Step258Add0_owned (List.mem_toFinset.mpr hq)) s2Step258Add0_borrowed

private theorem s2Step258Add1_apart : Disjoint s2Step258Add1Arena.live s2Step258Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step258Add1Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step258Add1_card : s2Step258Add1Arena.live.card=897 := by
  decide +kernel

private theorem s2Step258Add1_borrowed : s2Step258Add1Arena.checkBorrow (hmrHybridCount s2Step258Add1Arena s2Step258Add1B.length) s2Step258Add1Work=some s2Step258Add1During := by
  have len : s2Step258Add1Work.length=hmrHybridCount s2Step258Add1Arena s2Step258Add1B.length := by
    rw [hmrHybridCount,s2Step258Add1_card]
    decide +kernel
  have nd : s2Step258Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step258Add1Arena s2Step258Add1During s2Step258Add1Work.toFinset s2Step258Add1_bounded s2Step258Add1_apart rfl

private theorem s2Step258Add1_distinct : (782::840::817::(s2Step258Add1A++s2Step258Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step258Add1_owned : (782::840::817::(s2Step258Add1A++s2Step258Add1B)).toFinset⊆s2Step258Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step258Add1Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step258Add1_checked : compileHmrHybridCinLog s2Step258Add1Arena 840 782 817 s2Step258Add1A s2Step258Add1B s2Step258Add1Work=some s2Step258Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step258Add1Arena s2Step258Add1During 840 782 817 s2Step258Add1A s2Step258Add1B s2Step258Add1Work
    (by decide +kernel) (by decide +kernel) s2Step258Add1_distinct
    (fun q hq => s2Step258Add1_owned (List.mem_toFinset.mpr hq)) s2Step258Add1_borrowed

private theorem s2Step258F4_apart : Disjoint (s2Step258Add0A++s2Step258Add0B).toFinset (s2Step258Add1A++s2Step258Add1B).toFinset := by
  have nd : ((s2Step258Add0A++s2Step258Add0B)++(s2Step258Add1A++s2Step258Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step258F4_carry : s2Step258F4FlagArena.checkBorrow 1 [817]=some s2Step258Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step258F4FlagArena,s2Step258HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step258F4FlagArena,s2Step258HeadFvAfter,s2Step258Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step258F4_distinct : (814::840::782::817::((s2Step258Add0A++s2Step258Add1A)++(s2Step258Add0B++s2Step258Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step258F4_flag : s2Step258HeadFvAfter.checkBorrow 1 [782]=some s2Step258F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step258HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step258F4_owned : (814::840::((s2Step258Add0A++s2Step258Add1A)++(s2Step258Add0B++s2Step258Add1B))).toFinset⊆s2Step258HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step258HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step258F4_checked : compileHmrHybridF4Log s2Step258HeadFvAfter 814 840 s2Step258Add0A s2Step258Add0B s2Step258Add1A s2Step258Add1B [782] [817] s2Step258Add0Work s2Step258Add1Work=some s2Step258F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step258HeadFvAfter s2Step258F4FlagArena s2Step258Add0Arena s2Step258Add0During s2Step258Add1During 814 840
    s2Step258Add0A s2Step258Add0B s2Step258Add1A s2Step258Add1B [782] [817] s2Step258Add0Work s2Step258Add1Work
    (fun q hq => s2Step258F4_owned (List.mem_toFinset.mpr hq)) s2Step258F4_flag s2Step258F4_carry
    s2Step258F4_distinct s2Step258F4_apart s2Step258Add0_checked s2Step258Add1_checked

private theorem s2Step258Front_branch : s2Step258FrontSigmaArena.checkBorrow 1 [840]=some s2Step258HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step258FrontSigmaArena,s2Step258EntryGvAfter,s2Step258EntryFBefore,arenaWires]
  · ext q
    simp only [s2Step258FrontSigmaArena,s2Step258EntryGvAfter,s2Step258EntryFBefore,s2Step258HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step258Front_entry : HmrFrontEntryValid s2Step258EntryFBefore s2Step258FrontBank 142 144 ⟨141,141,145,144⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step258FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step258EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step258EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<840) ∨ (841≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step258FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step258Front_sigma : s2Step258EntryGvAfter.checkBorrow 1 [814]=some s2Step258FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step258EntryGvAfter,s2Step258EntryFBefore,arenaWires]
  · rfl

private def s2Step258HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step258HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step258HeadFBefore : Arena := s2Step258HeadGAfter

private def s2Step258HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653],768⟩

private def s2Step258HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809],770⟩

private def s2Step258HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141],769⟩

private def s2Step258HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784],771⟩

private theorem s2Step258HeadBank_incomingDistinct : ([s2Step258HeadGRow,s2Step258HeadFRow,s2Step258HeadGvRow,s2Step258HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step258HeadF_Incoming : rowsOwned s2Step258HeadFBefore [s2Step258HeadFRow,s2Step258HeadGvRow,s2Step258HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step258HeadGRow,s2Step258HeadFRow,s2Step258HeadGvRow,s2Step258HeadFvRow] 1 s2Step258HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step258HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step258HeadBank_outgoingOwned : rowsOwned s2Step258HeadFvAfter [s2Step258HeadGOut,s2Step258HeadFOut,s2Step258HeadGvOut,s2Step258HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step258HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step258HeadF_Outgoing : rowsOwned s2Step258HeadFvAfter [s2Step258HeadFOut,s2Step258HeadGvOut,s2Step258HeadFvOut] :=
  hmrRows_owned_drop s2Step258HeadFvAfter [s2Step258HeadGOut,s2Step258HeadFOut,s2Step258HeadGvOut,s2Step258HeadFvOut] 1 s2Step258HeadBank_outgoingOwned

private theorem s2Step258HeadF_distinct : (s2Step258HeadFRow.sign::s2Step258HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step258HeadF_owned : (s2Step258HeadFRow.sign::s2Step258HeadFRow.payload).toFinset⊆s2Step258HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step258HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step258HeadF_reserved : s2Step258HeadFBefore.reserve s2Step258HeadFFresh.toFinset=some s2Step258HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step258HeadFFresh,arenaWires]
  · norm_num [s2Step258HeadFBefore,s2Step258HeadGAfter,s2Step258HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step258HeadFAfter,s2Step258HeadFBefore,s2Step258HeadGAfter,s2Step258HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step258HeadF_checked : planRowResizeLog s2Step258HeadFBefore s2Step258HeadFRow 143 s2Step258HeadFFresh=
    some (s2Step258HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 885],768⟩,growRow 768 s2Step258HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step258HeadFBefore s2Step258HeadFAfter s2Step258HeadFRow 143 s2Step258HeadFFresh
    s2Step258HeadF_distinct s2Step258HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step258HeadF_reserved
  have rowEq : WindowRow.mk (s2Step258HeadFRow.payload++s2Step258HeadFFresh) s2Step258HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 885],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step258HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step258HeadFvBefore : Arena := s2Step258HeadGvAfter

private theorem s2Step258HeadFv_Incoming : rowsOwned s2Step258HeadFvBefore [s2Step258HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step258HeadGRow,s2Step258HeadFRow,s2Step258HeadGvRow,s2Step258HeadFvRow] 3 s2Step258HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step258HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step258HeadFv_Outgoing : rowsOwned s2Step258HeadFvAfter [s2Step258HeadFvOut] :=
  hmrRows_owned_drop s2Step258HeadFvAfter [s2Step258HeadGOut,s2Step258HeadFOut,s2Step258HeadGvOut,s2Step258HeadFvOut] 3 s2Step258HeadBank_outgoingOwned

private theorem s2Step258HeadFv_distinct : (s2Step258HeadFvRow.sign::s2Step258HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step258HeadFv_owned : (s2Step258HeadFvRow.sign::s2Step258HeadFvRow.payload).toFinset⊆s2Step258HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step258HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step258HeadFv_reserved : s2Step258HeadFvBefore.reserve s2Step258HeadFvFresh.toFinset=some s2Step258HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step258HeadFvFresh,arenaWires]
  · norm_num [s2Step258HeadFvBefore,s2Step258HeadGvAfter,s2Step258HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step258HeadFvAfter,s2Step258HeadFvBefore,s2Step258HeadGvAfter,s2Step258HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step258HeadFv_checked : planRowResizeLog s2Step258HeadFvBefore s2Step258HeadFvRow 145 s2Step258HeadFvFresh=
    some (s2Step258HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807],770⟩,growRow 770 s2Step258HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step258HeadFvBefore s2Step258HeadFvAfter s2Step258HeadFvRow 145 s2Step258HeadFvFresh
    s2Step258HeadFv_distinct s2Step258HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step258HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step258HeadFvRow.payload++s2Step258HeadFvFresh) s2Step258HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step258HeadG_Incoming : rowsOwned s2Step258HeadGBefore [s2Step258HeadGRow,s2Step258HeadFRow,s2Step258HeadGvRow,s2Step258HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step258HeadGRow,s2Step258HeadFRow,s2Step258HeadGvRow,s2Step258HeadFvRow] 0 s2Step258HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step258HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step258HeadG_Outgoing : rowsOwned s2Step258HeadFvAfter [s2Step258HeadGOut,s2Step258HeadFOut,s2Step258HeadGvOut,s2Step258HeadFvOut] :=
  hmrRows_owned_drop s2Step258HeadFvAfter [s2Step258HeadGOut,s2Step258HeadFOut,s2Step258HeadGvOut,s2Step258HeadFvOut] 0 s2Step258HeadBank_outgoingOwned

private theorem s2Step258HeadG_distinct : (s2Step258HeadGRow.sign::s2Step258HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step258HeadG_owned : (s2Step258HeadGRow.sign::s2Step258HeadGRow.payload).toFinset⊆s2Step258HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step258HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step258HeadG_reserved : s2Step258HeadGBefore.reserve s2Step258HeadGFresh.toFinset=some s2Step258HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step258HeadGFresh,arenaWires]
  · norm_num [s2Step258HeadGBefore,s2Step258HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step258HeadGAfter,s2Step258HeadGBefore,s2Step258HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step258HeadG_checked : planRowResizeLog s2Step258HeadGBefore s2Step258HeadGRow 143 s2Step258HeadGFresh=
    some (s2Step258HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 792],769⟩,growRow 769 s2Step258HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step258HeadGBefore s2Step258HeadGAfter s2Step258HeadGRow 143 s2Step258HeadGFresh
    s2Step258HeadG_distinct s2Step258HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step258HeadG_reserved
  have rowEq : WindowRow.mk (s2Step258HeadGRow.payload++s2Step258HeadGFresh) s2Step258HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 792],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step258HeadGvBefore : Arena := s2Step258HeadFAfter

private theorem s2Step258HeadGv_Incoming : rowsOwned s2Step258HeadGvBefore [s2Step258HeadGvRow,s2Step258HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step258HeadGRow,s2Step258HeadFRow,s2Step258HeadGvRow,s2Step258HeadFvRow] 2 s2Step258HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step258HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step258HeadGv_Outgoing : rowsOwned s2Step258HeadFvAfter [s2Step258HeadGvOut,s2Step258HeadFvOut] :=
  hmrRows_owned_drop s2Step258HeadFvAfter [s2Step258HeadGOut,s2Step258HeadFOut,s2Step258HeadGvOut,s2Step258HeadFvOut] 2 s2Step258HeadBank_outgoingOwned

private theorem s2Step258HeadGv_distinct : (s2Step258HeadGvRow.sign::s2Step258HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step258HeadGv_owned : (s2Step258HeadGvRow.sign::s2Step258HeadGvRow.payload).toFinset⊆s2Step258HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step258HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step258HeadGv_reserved : s2Step258HeadGvBefore.reserve s2Step258HeadGvFresh.toFinset=some s2Step258HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step258HeadGvFresh,arenaWires]
  · norm_num [s2Step258HeadGvBefore,s2Step258HeadFAfter,s2Step258HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step258HeadGvAfter,s2Step258HeadGvBefore,s2Step258HeadFAfter,s2Step258HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step258HeadGv_checked : planRowResizeLog s2Step258HeadGvBefore s2Step258HeadGvRow 145 s2Step258HeadGvFresh=
    some (s2Step258HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 891],771⟩,growRow 771 s2Step258HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step258HeadGvBefore s2Step258HeadGvAfter s2Step258HeadGvRow 145 s2Step258HeadGvFresh
    s2Step258HeadGv_distinct s2Step258HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step258HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step258HeadGvRow.payload++s2Step258HeadGvFresh) s2Step258HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 891],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step258HeadBank_rows : planWindowRowsLog s2Step258HeadGBefore [(s2Step258HeadGRow,143),(s2Step258HeadFRow,143),(s2Step258HeadGvRow,145),(s2Step258HeadFvRow,145)] [s2Step258HeadGFresh,s2Step258HeadFFresh,s2Step258HeadGvFresh,s2Step258HeadFvFresh]=
    some (s2Step258HeadFvAfter,[s2Step258HeadGOut,s2Step258HeadFOut,s2Step258HeadGvOut,s2Step258HeadFvOut],(growRow 769 s2Step258HeadGFresh ++ (growRow 768 s2Step258HeadFFresh ++ (growRow 771 s2Step258HeadGvFresh ++ (growRow 770 s2Step258HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step258HeadFvAfter [] []=some (s2Step258HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step258HeadFvBefore s2Step258HeadFvAfter s2Step258HeadFvAfter
    s2Step258HeadFvRow s2Step258HeadFvOut 145 s2Step258HeadFvFresh [] [] []
    (growRow 770 s2Step258HeadFvFresh) ([]) s2Step258HeadFv_Incoming s2Step258HeadFv_checked h4 s2Step258HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step258HeadGvBefore s2Step258HeadGvAfter s2Step258HeadFvAfter
    s2Step258HeadGvRow s2Step258HeadGvOut 145 s2Step258HeadGvFresh [(s2Step258HeadFvRow,145)] [s2Step258HeadFvFresh] [s2Step258HeadFvOut]
    (growRow 771 s2Step258HeadGvFresh) ((growRow 770 s2Step258HeadFvFresh ++ [])) s2Step258HeadGv_Incoming s2Step258HeadGv_checked h3 s2Step258HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step258HeadFBefore s2Step258HeadFAfter s2Step258HeadFvAfter
    s2Step258HeadFRow s2Step258HeadFOut 143 s2Step258HeadFFresh [(s2Step258HeadGvRow,145),(s2Step258HeadFvRow,145)] [s2Step258HeadGvFresh,s2Step258HeadFvFresh] [s2Step258HeadGvOut,s2Step258HeadFvOut]
    (growRow 768 s2Step258HeadFFresh) ((growRow 771 s2Step258HeadGvFresh ++ (growRow 770 s2Step258HeadFvFresh ++ []))) s2Step258HeadF_Incoming s2Step258HeadF_checked h2 s2Step258HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step258HeadGBefore s2Step258HeadGAfter s2Step258HeadFvAfter
    s2Step258HeadGRow s2Step258HeadGOut 143 s2Step258HeadGFresh [(s2Step258HeadFRow,143),(s2Step258HeadGvRow,145),(s2Step258HeadFvRow,145)] [s2Step258HeadFFresh,s2Step258HeadGvFresh,s2Step258HeadFvFresh] [s2Step258HeadFOut,s2Step258HeadGvOut,s2Step258HeadFvOut]
    (growRow 769 s2Step258HeadGFresh) ((growRow 768 s2Step258HeadFFresh ++ (growRow 771 s2Step258HeadGvFresh ++ (growRow 770 s2Step258HeadFvFresh ++ [])))) s2Step258HeadG_Incoming s2Step258HeadG_checked h1 s2Step258HeadG_Outgoing
  exact h0

private theorem s2Step258HeadBank_checked : compileHmrBankResizeLog .headroom s2Step258HeadGBefore ⟨s2Step258HeadFRow,s2Step258HeadGRow,s2Step258HeadFvRow,s2Step258HeadGvRow⟩ ⟨143,143,145,145⟩ [s2Step258HeadGFresh,s2Step258HeadFFresh,s2Step258HeadGvFresh,s2Step258HeadFvFresh]=
    some (s2Step258HeadFvAfter,⟨s2Step258HeadFOut,s2Step258HeadGOut,s2Step258HeadFvOut,s2Step258HeadGvOut⟩,(growRow 769 s2Step258HeadGFresh ++ (growRow 768 s2Step258HeadFFresh ++ (growRow 771 s2Step258HeadGvFresh ++ (growRow 770 s2Step258HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step258HeadBank_rows]
  rfl

private theorem s2Step258Front_checked : compileHmrSourceFrontLog s2Step258EntryFBefore s2Step258FrontBank 142 144 ⟨141,141,145,144⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step258FrontLog=some s2Step258FrontPlan := by
  have pairEq : s2Step258FrontPair=⟨s2Step258HeadFRow,s2Step258HeadGRow,s2Step258HeadFvRow,s2Step258HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step258FrontHead=⟨s2Step258ExitFRow,s2Step258ExitGRow,s2Step258ExitFvRow,s2Step258ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step258Add0A=s2Step258FrontHead.f.wires := by decide +kernel
  have gEq : s2Step258Add0B=s2Step258FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step258Add1A=s2Step258FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step258Add1B=s2Step258FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step258EntryFBefore s2Step258FrontBank 142 144 ⟨141,141,145,144⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step258FrontLog s2Step258FrontPlan
  · exact s2Step258Front_entry
  · exact s2Step258EntryBank_checked
  · exact s2Step258Front_sigma
  · rfl
  · exact s2Step258Front_branch
  · rfl
  · simpa only [s2Step258FrontPlan,pairEq] using s2Step258HeadBank_checked
  · simpa only [s2Step258FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step258F4_checked
  · exact s2Step258Counter_checked
  · rfl
  · simpa only [s2Step258FrontPlan,headEq] using s2Step258ExitBank_checked

private theorem s2Step258Complete_explicit_checked : compileHmrEarlyStepLog s2Step258EntryFBefore s2Step258FrontBank 142 144 ⟨141,141,145,144⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 51 s2Step258CompleteLog=some s2Step258CompletePlan := by
  let Q := s2Step258EarlyControlPlan
  have hq := s2Step258EarlyControl_plan_checked
  have fv1 : s2Step258CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step258CompleteOut.fv.payload[2]?.getD s2Step258CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step258CompleteOut.fv.payload[3]?.getD s2Step258CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step258CompleteOut.fv.payload[4]?.getD s2Step258CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step258EntryFBefore s2Step258EarlyControlArena s2Step258FrontBank 142 144 ⟨141,141,145,144⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 51 s2Step258CompleteLog s2Step258FrontPlan Q
    s2Step258Front_checked s2Step258Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step258Complete_owned s2Step258Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step258EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 777 814 s2Step258CompleteOut.fv.second (s2Step258CompleteOut.fv.payload[2]?.getD s2Step258CompleteOut.fv.sign) (s2Step258CompleteOut.fv.payload[3]?.getD s2Step258CompleteOut.fv.sign) (s2Step258CompleteOut.fv.payload[4]?.getD s2Step258CompleteOut.fv.sign) 840 51 s2Step258EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep258Arena : Arena := s2Step258EntryFBefore
def s2PrivateStep258Bank : WindowBank := s2Step258FrontBank
def s2PrivateStep258Spec : HmrSourceWalkStepLog := ⟨142,144,⟨141,141,145,144⟩,51,.early s2Step258CompleteLog⟩
def s2PrivateStep258Plan : HmrSourceStepPlan := .early s2Step258CompletePlan
theorem s2PrivateStep258_source : s2PrivateStep258Spec=s2ObservedLogs256[2] := rfl
theorem s2PrivateStep258_checked : compileHmrSourceStepLog s2PrivateStep258Arena s2PrivateStep258Bank
    s2PrivateStep258Spec.fgWidth s2PrivateStep258Spec.vWidth s2PrivateStep258Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900]
    6 498 258 s2PrivateStep258Spec.need none s2PrivateStep258Spec.log=some s2PrivateStep258Plan := by
  change compileHmrSourceStepLog s2Step258EntryFBefore s2Step258FrontBank 142 144 ⟨141,141,145,144⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 6 498 258 51 none (.early s2Step258CompleteLog)=some (.early s2Step258CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 258<498)]
  rw [s2Step258Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
