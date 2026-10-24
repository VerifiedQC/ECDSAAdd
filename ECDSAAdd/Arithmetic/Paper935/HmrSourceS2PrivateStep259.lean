import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep257
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

private def s2Step259CompleteMoves : List (Wire × Wire) := [(788,140)]

private def s2Step259EarlyControlLog : HmrEarlyControlLog := ⟨[788, 885, 792, 891, 794],[782],[817],[830, 800, 894, 896, 901, 902],[]⟩

private def s2Step259FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [840]],[[794], [891], [885], [792]],[[], [], [], []]⟩,[814],[829],[782],[817],[830, 800, 894, 896, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[830, 800, 894, 896, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[782, 817, 830, 800]⟩

private def s2Step259CompleteLog : HmrEarlyStepLog := ⟨s2Step259FrontLog,s2Step259CompleteMoves,s2Step259EarlyControlLog⟩

private def s2Step259ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652],768⟩

private def s2Step259ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807],770⟩

private def s2Step259ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139],769⟩

private def s2Step259ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840],771⟩

private def s2Step259FrontOut : WindowBank := ⟨s2Step259ExitFOut,s2Step259ExitGOut,s2Step259ExitFvOut,s2Step259ExitGvOut⟩

private def s2Step259CompleteOut : WindowBank := s2Step259FrontOut.repacked s2Step259CompleteMoves

private def s2Step259EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step259EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step259EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step259EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step259EarlyControlPositiveArena,[782],s2Step259EarlyControlEqualityArena,[817],⟨⟨814,false⟩,[⟨⟨782,false⟩,817⟩]⟩⟩

private def s2Step259EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step259EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step259EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step259EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step259EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step259EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step259EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,788⟩,⟨⟨774,false⟩,885⟩,⟨⟨775,false⟩,792⟩,⟨⟨776,false⟩,891⟩,⟨⟨777,false⟩,794⟩]⟩

private def s2Step259EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step259EarlyControlZeroArena,s2Step259EarlyControlZeroPlan,s2Step259EarlyControlClassPlan,s2Step259EarlyControlFlagArena,s2Step259EarlyControlFittedArena,s2Step259EarlyControlHistoryArena,s2Step259EarlyControlSigmaArena,s2Step259EarlyControlOutputArena,s2Step259EarlyControlLog⟩

private def s2Step259CounterWork : List Wire := [782, 817, 830, 800]

private theorem s2Step259Counter_bounded : s2Step259CounterWork.toFinset⊆arenaWires := by norm_num [s2Step259CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step259HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step259CounterDuring : Arena := ⟨s2Step259HeadFvAfter.live∪s2Step259CounterWork.toFinset,Finset.union_subset s2Step259HeadFvAfter.bounded s2Step259Counter_bounded⟩

private def s2Step259EntryFFresh : List Wire := []

private def s2Step259EntryFvFresh : List Wire := []

private def s2Step259EntryGFresh : List Wire := []

private def s2Step259EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step259EntryGvFresh : List Wire := [840]

private def s2Step259ExitFExtra : List Wire := [891]

private def s2Step259ExitFvExtra : List Wire := [792]

private def s2Step259ExitGExtra : List Wire := [140, 794]

private def s2Step259ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<140) ∨ (141≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step259ExitGvExtra : List Wire := [885]

private def s2Step259Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step259Add0Work : List Wire := [830, 800, 894, 896, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step259Add0_bounded : s2Step259Add0Work.toFinset⊆arenaWires := by
  have h : s2Step259Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step259Add0During : Arena := ⟨s2Step259Add0Arena.live∪s2Step259Add0Work.toFinset,Finset.union_subset s2Step259Add0Arena.bounded s2Step259Add0_bounded⟩

private def s2Step259Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step259Add1Work : List Wire := [830, 800, 894, 896, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step259Add1_bounded : s2Step259Add1Work.toFinset⊆arenaWires := by
  have h : s2Step259Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step259Add1During : Arena := ⟨s2Step259Add1Arena.live∪s2Step259Add1Work.toFinset,Finset.union_subset s2Step259Add1Arena.bounded s2Step259Add1_bounded⟩

private def s2Step259F4FlagArena : Arena := ⟨s2Step259HeadFvAfter.live∪{782},Finset.union_subset s2Step259HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step259F4Plan : HmrHybridF4Plan := ⟨s2Step259F4FlagArena,[782],s2Step259Add0Arena,[817],s2Step259Add0During,s2Step259Add0Work,s2Step259Add1During,s2Step259Add1Work⟩

private def s2Step259HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 891],768⟩

private def s2Step259HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792],770⟩

private def s2Step259HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 794],769⟩

private def s2Step259HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 885],771⟩

private def s2Step259FrontHead : WindowBank := ⟨s2Step259HeadFOut,s2Step259HeadGOut,s2Step259HeadFvOut,s2Step259HeadGvOut⟩

private def s2Step259EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652],768⟩

private def s2Step259EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807],770⟩

private def s2Step259EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140],769⟩

private def s2Step259EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840],771⟩

private def s2Step259FrontPair : WindowBank := ⟨s2Step259EntryFOut,s2Step259EntryGOut,s2Step259EntryFvOut,s2Step259EntryGvOut⟩

private def s2Step259FrontSigmaArena : Arena := ⟨s2Step259EntryGvAfter.live∪{814},Finset.union_subset s2Step259EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step259HeadFFresh : List Wire := [891]

private def s2Step259HeadFvFresh : List Wire := [792]

private def s2Step259HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step259HeadGFresh : List Wire := [794]

private def s2Step259HeadGvFresh : List Wire := [885]

private def s2Step259FrontPlan : HmrSourceFront := ⟨s2Step259EntryGvAfter,s2Step259FrontPair,(growRow 768 s2Step259EntryFFresh ++ (growRow 769 s2Step259EntryGFresh ++ (growRow 770 s2Step259EntryFvFresh ++ (growRow 771 s2Step259EntryGvFresh ++ [])))),s2Step259FrontSigmaArena,[814],s2Step259HeadGBefore,[829],
  s2Step259HeadFvAfter,s2Step259FrontHead,(growRow 769 s2Step259HeadGFresh ++ (growRow 768 s2Step259HeadFFresh ++ (growRow 771 s2Step259HeadGvFresh ++ (growRow 770 s2Step259HeadFvFresh ++ [])))),s2Step259F4Plan,s2Step259CounterDuring,s2Step259CounterWork,s2Step259ExitGvAfter,s2Step259FrontOut,(shrinkRow 769 s2Step259ExitGExtra ++ (shrinkRow 768 s2Step259ExitFExtra ++ (shrinkRow 770 s2Step259ExitFvExtra ++ (shrinkRow 771 s2Step259ExitGvExtra ++ []))))⟩

private def s2Step259CompletePlan : HmrEarlyStepPlan := ⟨s2Step259FrontPlan,s2Step259EarlyControlArena,s2Step259EarlyControlPlan,s2Step259CompleteMoves⟩

private theorem s2Step259Complete_apart : List.Disjoint (s2Step259CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [814, 829, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] := by
  have nd : ((s2Step259CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[814, 829, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step259Complete_owned : (s2Step259CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step259EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step259EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private def s2Step259CompleteMoveArena : Arena := ⟨s2Step259ExitGvAfter.live∪{140},Finset.union_subset s2Step259ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step259Complete_repack : s2Step259ExitGvAfter.checkRepack s2Step259CompleteMoves=some s2Step259EarlyControlArena := by
  have owned : 788∈s2Step259ExitGvAfter.live := by norm_num [s2Step259ExitGvAfter,arenaWires]
  have reserve : s2Step259ExitGvAfter.reserve {140}=some s2Step259CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step259ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step259CompleteMoveArena.retireSet {788}=s2Step259EarlyControlArena := by
    unfold Arena.retireSet s2Step259EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step259CompleteMoveArena,s2Step259ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step259CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step259CompleteMoveArena.retireSet {788}).checkRepack []=some s2Step259EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step259EarlyControl_branchOwned : ([829] : List Wire).toFinset⊆s2Step259EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step259EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step259EarlyControl_branch : compileHmrBranchRetirement s2Step259EarlyControlSigmaArena 829=some s2Step259EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step259EarlyControl_branchOwned
  · ext q
    simp [s2Step259EarlyControlOutputArena,s2Step259EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step259EarlyControl_classEqualityBorrow : s2Step259EarlyControlPositiveArena.checkBorrow (([814, 782] : List Wire).length-1) s2Step259EarlyControlLog.classWork=some s2Step259EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step259EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step259EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step259EarlyControlEqualityArena,s2Step259EarlyControlPositiveArena,s2Step259EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step259EarlyControl_classEqualityOwned : ([814, 782] : List Wire).toFinset⊆s2Step259EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step259EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step259EarlyControl_classEquality : compileHmrEqualityLog s2Step259EarlyControlPositiveArena [814, 782] 0 s2Step259EarlyControlLog.classWork=some (s2Step259EarlyControlEqualityArena,s2Step259EarlyControlLog.classWork,s2Step259EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step259EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step259EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step259EarlyControl_classOwned : ([777, 794, 814] : List Wire).toFinset⊆s2Step259EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step259EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step259EarlyControl_positiveBorrow : s2Step259EarlyControlZeroArena.checkBorrow (1) s2Step259EarlyControlLog.positiveWork=some s2Step259EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step259EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step259EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step259EarlyControlPositiveArena,s2Step259EarlyControlZeroArena,s2Step259EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step259EarlyControl_class : compileHmrSourceClassLog s2Step259EarlyControlZeroArena false 777 s2Step259EarlyControlZeroPlan.top 0 814 s2Step259EarlyControlLog.positiveWork s2Step259EarlyControlLog.classWork=some s2Step259EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step259EarlyControlClassPlan s2Step259EarlyControlZeroArena false 777 s2Step259EarlyControlZeroPlan.top 0 814
  constructor
  · decide +kernel
  · exact s2Step259EarlyControl_classOwned
  · exact s2Step259EarlyControl_positiveBorrow
  · exact s2Step259EarlyControl_classEquality

private theorem s2Step259EarlyControl_entryRecordOwned : ([829, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).toFinset⊆s2Step259EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step259EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step259EarlyControl_entrySigmaOwned : ([814, 254] : List Wire).toFinset⊆s2Step259EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step259EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step259EarlyControl_fitBorrow : s2Step259EarlyControlFlagArena.checkBorrow ((51-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).length)) s2Step259EarlyControlLog.recordFresh=some s2Step259EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step259EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step259EarlyControlFlagArena (fun q => (0≤q ∧ q<903)) rfl
      decide +kernel
    · ext q
      simp [s2Step259EarlyControlFittedArena,s2Step259EarlyControlFlagArena,s2Step259EarlyControlLog,arenaWires]

private theorem s2Step259EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).toFinset⊆s2Step259EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step259EarlyControlFlagArena (fun q => (0≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step259EarlyControl_fit : compileHmrRecordGrowLog s2Step259EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 51 s2Step259EarlyControlLog.recordFresh=some s2Step259EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step259EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step259EarlyControl_fitBorrow

private theorem s2Step259EarlyControl_flagsBorrow : s2Step259EarlyControlEqualityArena.checkBorrow (6) s2Step259EarlyControlLog.flagWork=some s2Step259EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step259EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step259EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step259EarlyControlFlagArena,s2Step259EarlyControlEqualityArena,s2Step259EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step259EarlyControl_flagsOwned : ([817, 253, 252, 251] : List Wire).toFinset⊆s2Step259EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step259EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step259EarlyControl_flags : compileHmrFlagsLog s2Step259EarlyControlClassPlan.equalityArena s2Step259EarlyControlClassPlan.equality.top 253 252 251 s2Step259EarlyControlLog.flagWork=some s2Step259EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step259EarlyControl_flagsOwned⟩
  · exact s2Step259EarlyControl_flagsBorrow

private theorem s2Step259EarlyControl_historyBorrow : s2Step259EarlyControlArena.checkBorrow ((51-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).length)) s2Step259EarlyControlLog.recordFresh=some s2Step259EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step259EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step259EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step259EarlyControlHistoryArena,s2Step259EarlyControlArena,s2Step259EarlyControlLog,arenaWires]

private theorem s2Step259EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).toFinset⊆s2Step259EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step259EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step259EarlyControl_history : compileHmrRecordGrowLog s2Step259EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 51 s2Step259EarlyControlLog.recordFresh=some s2Step259EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step259EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step259EarlyControl_historyBorrow

private theorem s2Step259EarlyControl_sigmaOwned : ([254, 814] : List Wire).toFinset⊆s2Step259EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step259EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step259EarlyControl_sigmaReleaseOwned : ([814] : List Wire).toFinset⊆s2Step259EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step259EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step259EarlyControl_sigmaRelease : s2Step259EarlyControlHistoryArena.release {814} (fun _ => false)=some s2Step259EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step259EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step259EarlyControlSigmaArena,s2Step259EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step259EarlyControl_sigma : compileHmrSigmaDropLog s2Step259EarlyControlHistoryArena false 0 0 254 814 []=some s2Step259EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step259EarlyControl_sigmaOwned⟩
  · exact s2Step259EarlyControl_sigmaRelease

private theorem s2Step259EarlyControl_zeroBorrow : s2Step259EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step259EarlyControlLog.zeroWork=some s2Step259EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step259EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step259EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step259EarlyControlZeroArena,s2Step259EarlyControlArena,s2Step259EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step259EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step259EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step259EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step259EarlyControl_zero : compileHmrEqualityLog s2Step259EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step259EarlyControlLog.zeroWork=some (s2Step259EarlyControlZeroArena,s2Step259EarlyControlLog.zeroWork,s2Step259EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step259EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step259EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step259EarlyControl_logged : s2Step259EarlyControlPlan.Logged s2Step259EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 777 814 254 253 252 251 829 51 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step259EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step259EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step259EarlyControl_zero
  · exact s2Step259EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step259EarlyControl_flags
  · exact s2Step259EarlyControl_fit
  · exact s2Step259EarlyControl_history
  · exact s2Step259EarlyControl_sigma
  · exact s2Step259EarlyControl_branch

private theorem s2Step259EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step259EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 777 814 254 253 252 251 829 51 s2Step259EarlyControlLog=some s2Step259EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step259EarlyControlPlan s2Step259EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 777 814 254 253 252 251 829 51 s2Step259EarlyControl_logged

private def s2Step259EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<840) ∨ (841≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step259EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652],768⟩

private def s2Step259EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807],770⟩

private def s2Step259EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140],769⟩

private def s2Step259EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784],771⟩

private def s2Step259FrontBank : WindowBank := ⟨s2Step259EntryFRow,s2Step259EntryGRow,s2Step259EntryFvRow,s2Step259EntryGvRow⟩

private def s2Step259Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 891, 768]

private def s2Step259Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 794, 769]

private def s2Step259Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 770]

private def s2Step259Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 885, 771]

private theorem s2Step259Counter_apart : Disjoint s2Step259HeadFvAfter.live s2Step259CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step259HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step259Counter_borrowed : s2Step259HeadFvAfter.checkBorrow 4 s2Step259CounterWork=some s2Step259CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step259HeadFvAfter s2Step259CounterDuring s2Step259CounterWork.toFinset s2Step259Counter_bounded s2Step259Counter_apart rfl

private theorem s2Step259Counter_owned : (814::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step259HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step259HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step259Counter_checked : compileHmrCounterStepLog s2Step259HeadFvAfter true 814 [772, 773, 774, 775, 776, 777] s2Step259CounterWork=some s2Step259CounterDuring := by
  have owned : ∀q∈814::[772, 773, 774, 775, 776, 777],q∈s2Step259HeadFvAfter.live := fun q hq => s2Step259Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step259Counter_borrowed

private def s2Step259EntryFAfter : Arena := s2Step259EntryFBefore

private theorem s2Step259EntryBank_incomingDistinct : ([s2Step259EntryFRow,s2Step259EntryGRow,s2Step259EntryFvRow,s2Step259EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step259EntryF_Incoming : rowsOwned s2Step259EntryFBefore [s2Step259EntryFRow,s2Step259EntryGRow,s2Step259EntryFvRow,s2Step259EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step259EntryFRow,s2Step259EntryGRow,s2Step259EntryFvRow,s2Step259EntryGvRow] 0 s2Step259EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step259EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<840) ∨ (841≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step259EntryBank_outgoingOwned : rowsOwned s2Step259EntryGvAfter [s2Step259EntryFOut,s2Step259EntryGOut,s2Step259EntryFvOut,s2Step259EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step259EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step259EntryF_Outgoing : rowsOwned s2Step259EntryGvAfter [s2Step259EntryFOut,s2Step259EntryGOut,s2Step259EntryFvOut,s2Step259EntryGvOut] :=
  hmrRows_owned_drop s2Step259EntryGvAfter [s2Step259EntryFOut,s2Step259EntryGOut,s2Step259EntryFvOut,s2Step259EntryGvOut] 0 s2Step259EntryBank_outgoingOwned

private theorem s2Step259EntryF_distinct : (s2Step259EntryFRow.sign::s2Step259EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step259EntryF_owned : (s2Step259EntryFRow.sign::s2Step259EntryFRow.payload).toFinset⊆s2Step259EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step259EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<840) ∨ (841≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step259EntryF_reserved : s2Step259EntryFBefore.reserve s2Step259EntryFFresh.toFinset=some s2Step259EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step259EntryFFresh,arenaWires]
  · norm_num [s2Step259EntryFBefore,s2Step259EntryFFresh,arenaWires]
  · simp only [s2Step259EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step259EntryF_checked : planRowResizeLog s2Step259EntryFBefore s2Step259EntryFRow 141 s2Step259EntryFFresh=
    some (s2Step259EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652],768⟩,growRow 768 s2Step259EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step259EntryFBefore s2Step259EntryFAfter s2Step259EntryFRow 141 s2Step259EntryFFresh
    s2Step259EntryF_distinct s2Step259EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step259EntryF_reserved
  have rowEq : WindowRow.mk (s2Step259EntryFRow.payload++s2Step259EntryFFresh) s2Step259EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step259EntryFvAfter : Arena := s2Step259EntryFBefore

private def s2Step259EntryFvBefore : Arena := s2Step259EntryFBefore

private theorem s2Step259EntryFv_Incoming : rowsOwned s2Step259EntryFvBefore [s2Step259EntryFvRow,s2Step259EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step259EntryFRow,s2Step259EntryGRow,s2Step259EntryFvRow,s2Step259EntryGvRow] 2 s2Step259EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step259EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<840) ∨ (841≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step259EntryFv_Outgoing : rowsOwned s2Step259EntryGvAfter [s2Step259EntryFvOut,s2Step259EntryGvOut] :=
  hmrRows_owned_drop s2Step259EntryGvAfter [s2Step259EntryFOut,s2Step259EntryGOut,s2Step259EntryFvOut,s2Step259EntryGvOut] 2 s2Step259EntryBank_outgoingOwned

private theorem s2Step259EntryFv_distinct : (s2Step259EntryFvRow.sign::s2Step259EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step259EntryFv_owned : (s2Step259EntryFvRow.sign::s2Step259EntryFvRow.payload).toFinset⊆s2Step259EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step259EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<840) ∨ (841≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step259EntryFv_reserved : s2Step259EntryFvBefore.reserve s2Step259EntryFvFresh.toFinset=some s2Step259EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step259EntryFvFresh,arenaWires]
  · norm_num [s2Step259EntryFvBefore,s2Step259EntryFBefore,s2Step259EntryFvFresh,arenaWires]
  · simp only [s2Step259EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step259EntryFv_checked : planRowResizeLog s2Step259EntryFvBefore s2Step259EntryFvRow 145 s2Step259EntryFvFresh=
    some (s2Step259EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807],770⟩,growRow 770 s2Step259EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step259EntryFvBefore s2Step259EntryFvAfter s2Step259EntryFvRow 145 s2Step259EntryFvFresh
    s2Step259EntryFv_distinct s2Step259EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step259EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step259EntryFvRow.payload++s2Step259EntryFvFresh) s2Step259EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step259EntryGAfter : Arena := s2Step259EntryFBefore

private def s2Step259EntryGBefore : Arena := s2Step259EntryFBefore

private theorem s2Step259EntryG_Incoming : rowsOwned s2Step259EntryGBefore [s2Step259EntryGRow,s2Step259EntryFvRow,s2Step259EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step259EntryFRow,s2Step259EntryGRow,s2Step259EntryFvRow,s2Step259EntryGvRow] 1 s2Step259EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step259EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<840) ∨ (841≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step259EntryG_Outgoing : rowsOwned s2Step259EntryGvAfter [s2Step259EntryGOut,s2Step259EntryFvOut,s2Step259EntryGvOut] :=
  hmrRows_owned_drop s2Step259EntryGvAfter [s2Step259EntryFOut,s2Step259EntryGOut,s2Step259EntryFvOut,s2Step259EntryGvOut] 1 s2Step259EntryBank_outgoingOwned

private theorem s2Step259EntryG_distinct : (s2Step259EntryGRow.sign::s2Step259EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step259EntryG_owned : (s2Step259EntryGRow.sign::s2Step259EntryGRow.payload).toFinset⊆s2Step259EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step259EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<840) ∨ (841≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step259EntryG_reserved : s2Step259EntryGBefore.reserve s2Step259EntryGFresh.toFinset=some s2Step259EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step259EntryGFresh,arenaWires]
  · norm_num [s2Step259EntryGBefore,s2Step259EntryFBefore,s2Step259EntryGFresh,arenaWires]
  · simp only [s2Step259EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step259EntryG_checked : planRowResizeLog s2Step259EntryGBefore s2Step259EntryGRow 141 s2Step259EntryGFresh=
    some (s2Step259EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140],769⟩,growRow 769 s2Step259EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step259EntryGBefore s2Step259EntryGAfter s2Step259EntryGRow 141 s2Step259EntryGFresh
    s2Step259EntryG_distinct s2Step259EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step259EntryG_reserved
  have rowEq : WindowRow.mk (s2Step259EntryGRow.payload++s2Step259EntryGFresh) s2Step259EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step259EntryGvBefore : Arena := s2Step259EntryFBefore

private theorem s2Step259EntryGv_Incoming : rowsOwned s2Step259EntryGvBefore [s2Step259EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step259EntryFRow,s2Step259EntryGRow,s2Step259EntryFvRow,s2Step259EntryGvRow] 3 s2Step259EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step259EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<840) ∨ (841≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step259EntryGv_Outgoing : rowsOwned s2Step259EntryGvAfter [s2Step259EntryGvOut] :=
  hmrRows_owned_drop s2Step259EntryGvAfter [s2Step259EntryFOut,s2Step259EntryGOut,s2Step259EntryFvOut,s2Step259EntryGvOut] 3 s2Step259EntryBank_outgoingOwned

private theorem s2Step259EntryGv_distinct : (s2Step259EntryGvRow.sign::s2Step259EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step259EntryGv_owned : (s2Step259EntryGvRow.sign::s2Step259EntryGvRow.payload).toFinset⊆s2Step259EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step259EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<840) ∨ (841≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step259EntryGv_reserved : s2Step259EntryGvBefore.reserve s2Step259EntryGvFresh.toFinset=some s2Step259EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step259EntryGvFresh,arenaWires]
  · norm_num [s2Step259EntryGvBefore,s2Step259EntryFBefore,s2Step259EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step259EntryGvAfter,s2Step259EntryGvBefore,s2Step259EntryFBefore,s2Step259EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step259EntryGv_checked : planRowResizeLog s2Step259EntryGvBefore s2Step259EntryGvRow 145 s2Step259EntryGvFresh=
    some (s2Step259EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840],771⟩,growRow 771 s2Step259EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step259EntryGvBefore s2Step259EntryGvAfter s2Step259EntryGvRow 145 s2Step259EntryGvFresh
    s2Step259EntryGv_distinct s2Step259EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step259EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step259EntryGvRow.payload++s2Step259EntryGvFresh) s2Step259EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step259EntryBank_rows : planWindowRowsLog s2Step259EntryFBefore [(s2Step259EntryFRow,141),(s2Step259EntryGRow,141),(s2Step259EntryFvRow,145),(s2Step259EntryGvRow,145)] [s2Step259EntryFFresh,s2Step259EntryGFresh,s2Step259EntryFvFresh,s2Step259EntryGvFresh]=
    some (s2Step259EntryGvAfter,[s2Step259EntryFOut,s2Step259EntryGOut,s2Step259EntryFvOut,s2Step259EntryGvOut],(growRow 768 s2Step259EntryFFresh ++ (growRow 769 s2Step259EntryGFresh ++ (growRow 770 s2Step259EntryFvFresh ++ (growRow 771 s2Step259EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step259EntryGvAfter [] []=some (s2Step259EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step259EntryGvBefore s2Step259EntryGvAfter s2Step259EntryGvAfter
    s2Step259EntryGvRow s2Step259EntryGvOut 145 s2Step259EntryGvFresh [] [] []
    (growRow 771 s2Step259EntryGvFresh) ([]) s2Step259EntryGv_Incoming s2Step259EntryGv_checked h4 s2Step259EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step259EntryFvBefore s2Step259EntryFvAfter s2Step259EntryGvAfter
    s2Step259EntryFvRow s2Step259EntryFvOut 145 s2Step259EntryFvFresh [(s2Step259EntryGvRow,145)] [s2Step259EntryGvFresh] [s2Step259EntryGvOut]
    (growRow 770 s2Step259EntryFvFresh) ((growRow 771 s2Step259EntryGvFresh ++ [])) s2Step259EntryFv_Incoming s2Step259EntryFv_checked h3 s2Step259EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step259EntryGBefore s2Step259EntryGAfter s2Step259EntryGvAfter
    s2Step259EntryGRow s2Step259EntryGOut 141 s2Step259EntryGFresh [(s2Step259EntryFvRow,145),(s2Step259EntryGvRow,145)] [s2Step259EntryFvFresh,s2Step259EntryGvFresh] [s2Step259EntryFvOut,s2Step259EntryGvOut]
    (growRow 769 s2Step259EntryGFresh) ((growRow 770 s2Step259EntryFvFresh ++ (growRow 771 s2Step259EntryGvFresh ++ []))) s2Step259EntryG_Incoming s2Step259EntryG_checked h2 s2Step259EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step259EntryFBefore s2Step259EntryFAfter s2Step259EntryGvAfter
    s2Step259EntryFRow s2Step259EntryFOut 141 s2Step259EntryFFresh [(s2Step259EntryGRow,141),(s2Step259EntryFvRow,145),(s2Step259EntryGvRow,145)] [s2Step259EntryGFresh,s2Step259EntryFvFresh,s2Step259EntryGvFresh] [s2Step259EntryGOut,s2Step259EntryFvOut,s2Step259EntryGvOut]
    (growRow 768 s2Step259EntryFFresh) ((growRow 769 s2Step259EntryGFresh ++ (growRow 770 s2Step259EntryFvFresh ++ (growRow 771 s2Step259EntryGvFresh ++ [])))) s2Step259EntryF_Incoming s2Step259EntryF_checked h1 s2Step259EntryF_Outgoing
  exact h0

private theorem s2Step259EntryBank_checked : compileHmrBankResizeLog .entry s2Step259EntryFBefore ⟨s2Step259EntryFRow,s2Step259EntryGRow,s2Step259EntryFvRow,s2Step259EntryGvRow⟩ ⟨141,141,145,145⟩ [s2Step259EntryFFresh,s2Step259EntryGFresh,s2Step259EntryFvFresh,s2Step259EntryGvFresh]=
    some (s2Step259EntryGvAfter,⟨s2Step259EntryFOut,s2Step259EntryGOut,s2Step259EntryFvOut,s2Step259EntryGvOut⟩,(growRow 768 s2Step259EntryFFresh ++ (growRow 769 s2Step259EntryGFresh ++ (growRow 770 s2Step259EntryFvFresh ++ (growRow 771 s2Step259EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step259EntryBank_rows]
  rfl

private def s2Step259ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<140) ∨ (141≤q ∧ q<782) ∨ (783≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step259ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<140) ∨ (141≤q ∧ q<782) ∨ (783≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step259ExitFBefore : Arena := s2Step259ExitGAfter

private def s2Step259ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 891],768⟩

private def s2Step259ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792],770⟩

private def s2Step259ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 794],769⟩

private def s2Step259ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 885],771⟩

private theorem s2Step259ExitBank_incomingDistinct : ([s2Step259ExitGRow,s2Step259ExitFRow,s2Step259ExitFvRow,s2Step259ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step259ExitF_Incoming : rowsOwned s2Step259ExitFBefore [s2Step259ExitFRow,s2Step259ExitFvRow,s2Step259ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step259ExitGRow,s2Step259ExitFRow,s2Step259ExitFvRow,s2Step259ExitGvRow] 1 s2Step259ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step259ExitFBefore (fun q => (0≤q ∧ q<140) ∨ (141≤q ∧ q<782) ∨ (783≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step259ExitBank_outgoingOwned : rowsOwned s2Step259ExitGvAfter [s2Step259ExitGOut,s2Step259ExitFOut,s2Step259ExitFvOut,s2Step259ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step259ExitGvAfter (fun q => (0≤q ∧ q<140) ∨ (141≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step259ExitF_Outgoing : rowsOwned s2Step259ExitGvAfter [s2Step259ExitFOut,s2Step259ExitFvOut,s2Step259ExitGvOut] :=
  hmrRows_owned_drop s2Step259ExitGvAfter [s2Step259ExitGOut,s2Step259ExitFOut,s2Step259ExitFvOut,s2Step259ExitGvOut] 1 s2Step259ExitBank_outgoingOwned

private theorem s2Step259ExitF_distinct : (s2Step259ExitFRow.sign::s2Step259ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step259ExitF_owned : (s2Step259ExitFRow.sign::s2Step259ExitFRow.payload).toFinset⊆s2Step259ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step259ExitFBefore (fun q => (0≤q ∧ q<140) ∨ (141≤q ∧ q<782) ∨ (783≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step259ExitF_retired : s2Step259ExitFBefore.retireSet s2Step259ExitFExtra.toFinset=s2Step259ExitFAfter := by
  unfold Arena.retireSet s2Step259ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step259ExitFBefore,s2Step259ExitGAfter,s2Step259ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step259ExitF_checked : planRowResizeLog s2Step259ExitFBefore s2Step259ExitFRow 141 []=
    some (s2Step259ExitFAfter,s2Step259ExitFOut,shrinkRow 768 s2Step259ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step259ExitFBefore s2Step259ExitFRow 141 s2Step259ExitF_distinct s2Step259ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step259ExitFRow.payload.take 141) s2Step259ExitFRow.sign=s2Step259ExitFOut := by decide +kernel
  have hi : s2Step259ExitFRow.payload.drop 141=s2Step259ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step259ExitF_retired] at result
  exact result

private def s2Step259ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<140) ∨ (141≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step259ExitFvBefore : Arena := s2Step259ExitFAfter

private theorem s2Step259ExitFv_Incoming : rowsOwned s2Step259ExitFvBefore [s2Step259ExitFvRow,s2Step259ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step259ExitGRow,s2Step259ExitFRow,s2Step259ExitFvRow,s2Step259ExitGvRow] 2 s2Step259ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step259ExitFvBefore (fun q => (0≤q ∧ q<140) ∨ (141≤q ∧ q<782) ∨ (783≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step259ExitFv_Outgoing : rowsOwned s2Step259ExitGvAfter [s2Step259ExitFvOut,s2Step259ExitGvOut] :=
  hmrRows_owned_drop s2Step259ExitGvAfter [s2Step259ExitGOut,s2Step259ExitFOut,s2Step259ExitFvOut,s2Step259ExitGvOut] 2 s2Step259ExitBank_outgoingOwned

private theorem s2Step259ExitFv_distinct : (s2Step259ExitFvRow.sign::s2Step259ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step259ExitFv_owned : (s2Step259ExitFvRow.sign::s2Step259ExitFvRow.payload).toFinset⊆s2Step259ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step259ExitFvBefore (fun q => (0≤q ∧ q<140) ∨ (141≤q ∧ q<782) ∨ (783≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step259ExitFv_retired : s2Step259ExitFvBefore.retireSet s2Step259ExitFvExtra.toFinset=s2Step259ExitFvAfter := by
  unfold Arena.retireSet s2Step259ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step259ExitFvBefore,s2Step259ExitFAfter,s2Step259ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step259ExitFv_checked : planRowResizeLog s2Step259ExitFvBefore s2Step259ExitFvRow 145 []=
    some (s2Step259ExitFvAfter,s2Step259ExitFvOut,shrinkRow 770 s2Step259ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step259ExitFvBefore s2Step259ExitFvRow 145 s2Step259ExitFv_distinct s2Step259ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step259ExitFvRow.payload.take 145) s2Step259ExitFvRow.sign=s2Step259ExitFvOut := by decide +kernel
  have hi : s2Step259ExitFvRow.payload.drop 145=s2Step259ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step259ExitFv_retired] at result
  exact result

private def s2Step259ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private theorem s2Step259ExitG_Incoming : rowsOwned s2Step259ExitGBefore [s2Step259ExitGRow,s2Step259ExitFRow,s2Step259ExitFvRow,s2Step259ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step259ExitGRow,s2Step259ExitFRow,s2Step259ExitFvRow,s2Step259ExitGvRow] 0 s2Step259ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step259ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step259ExitG_Outgoing : rowsOwned s2Step259ExitGvAfter [s2Step259ExitGOut,s2Step259ExitFOut,s2Step259ExitFvOut,s2Step259ExitGvOut] :=
  hmrRows_owned_drop s2Step259ExitGvAfter [s2Step259ExitGOut,s2Step259ExitFOut,s2Step259ExitFvOut,s2Step259ExitGvOut] 0 s2Step259ExitBank_outgoingOwned

private theorem s2Step259ExitG_distinct : (s2Step259ExitGRow.sign::s2Step259ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step259ExitG_owned : (s2Step259ExitGRow.sign::s2Step259ExitGRow.payload).toFinset⊆s2Step259ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step259ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step259ExitG_retired : s2Step259ExitGBefore.retireSet s2Step259ExitGExtra.toFinset=s2Step259ExitGAfter := by
  unfold Arena.retireSet s2Step259ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step259ExitGBefore,s2Step259ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step259ExitG_checked : planRowResizeLog s2Step259ExitGBefore s2Step259ExitGRow 140 []=
    some (s2Step259ExitGAfter,s2Step259ExitGOut,shrinkRow 769 s2Step259ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step259ExitGBefore s2Step259ExitGRow 140 s2Step259ExitG_distinct s2Step259ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step259ExitGRow.payload.take 140) s2Step259ExitGRow.sign=s2Step259ExitGOut := by decide +kernel
  have hi : s2Step259ExitGRow.payload.drop 140=s2Step259ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step259ExitG_retired] at result
  exact result

private def s2Step259ExitGvBefore : Arena := s2Step259ExitFvAfter

private theorem s2Step259ExitGv_Incoming : rowsOwned s2Step259ExitGvBefore [s2Step259ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step259ExitGRow,s2Step259ExitFRow,s2Step259ExitFvRow,s2Step259ExitGvRow] 3 s2Step259ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step259ExitGvBefore (fun q => (0≤q ∧ q<140) ∨ (141≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step259ExitGv_Outgoing : rowsOwned s2Step259ExitGvAfter [s2Step259ExitGvOut] :=
  hmrRows_owned_drop s2Step259ExitGvAfter [s2Step259ExitGOut,s2Step259ExitFOut,s2Step259ExitFvOut,s2Step259ExitGvOut] 3 s2Step259ExitBank_outgoingOwned

private theorem s2Step259ExitGv_distinct : (s2Step259ExitGvRow.sign::s2Step259ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step259ExitGv_owned : (s2Step259ExitGvRow.sign::s2Step259ExitGvRow.payload).toFinset⊆s2Step259ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step259ExitGvBefore (fun q => (0≤q ∧ q<140) ∨ (141≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step259ExitGv_retired : s2Step259ExitGvBefore.retireSet s2Step259ExitGvExtra.toFinset=s2Step259ExitGvAfter := by
  unfold Arena.retireSet s2Step259ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step259ExitGvBefore,s2Step259ExitFvAfter,s2Step259ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step259ExitGv_checked : planRowResizeLog s2Step259ExitGvBefore s2Step259ExitGvRow 145 []=
    some (s2Step259ExitGvAfter,s2Step259ExitGvOut,shrinkRow 771 s2Step259ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step259ExitGvBefore s2Step259ExitGvRow 145 s2Step259ExitGv_distinct s2Step259ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step259ExitGvRow.payload.take 145) s2Step259ExitGvRow.sign=s2Step259ExitGvOut := by decide +kernel
  have hi : s2Step259ExitGvRow.payload.drop 145=s2Step259ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step259ExitGv_retired] at result
  exact result

private theorem s2Step259ExitBank_rows : planWindowRowsLog s2Step259ExitGBefore [(s2Step259ExitGRow,140),(s2Step259ExitFRow,141),(s2Step259ExitFvRow,145),(s2Step259ExitGvRow,145)] [[],[],[],[]]=
    some (s2Step259ExitGvAfter,[s2Step259ExitGOut,s2Step259ExitFOut,s2Step259ExitFvOut,s2Step259ExitGvOut],(shrinkRow 769 s2Step259ExitGExtra ++ (shrinkRow 768 s2Step259ExitFExtra ++ (shrinkRow 770 s2Step259ExitFvExtra ++ (shrinkRow 771 s2Step259ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step259ExitGvAfter [] []=some (s2Step259ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step259ExitGvBefore s2Step259ExitGvAfter s2Step259ExitGvAfter
    s2Step259ExitGvRow s2Step259ExitGvOut 145 [] [] [] []
    (shrinkRow 771 s2Step259ExitGvExtra) ([]) s2Step259ExitGv_Incoming s2Step259ExitGv_checked h4 s2Step259ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step259ExitFvBefore s2Step259ExitFvAfter s2Step259ExitGvAfter
    s2Step259ExitFvRow s2Step259ExitFvOut 145 [] [(s2Step259ExitGvRow,145)] [[]] [s2Step259ExitGvOut]
    (shrinkRow 770 s2Step259ExitFvExtra) ((shrinkRow 771 s2Step259ExitGvExtra ++ [])) s2Step259ExitFv_Incoming s2Step259ExitFv_checked h3 s2Step259ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step259ExitFBefore s2Step259ExitFAfter s2Step259ExitGvAfter
    s2Step259ExitFRow s2Step259ExitFOut 141 [] [(s2Step259ExitFvRow,145),(s2Step259ExitGvRow,145)] [[],[]] [s2Step259ExitFvOut,s2Step259ExitGvOut]
    (shrinkRow 768 s2Step259ExitFExtra) ((shrinkRow 770 s2Step259ExitFvExtra ++ (shrinkRow 771 s2Step259ExitGvExtra ++ []))) s2Step259ExitF_Incoming s2Step259ExitF_checked h2 s2Step259ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step259ExitGBefore s2Step259ExitGAfter s2Step259ExitGvAfter
    s2Step259ExitGRow s2Step259ExitGOut 140 [] [(s2Step259ExitFRow,141),(s2Step259ExitFvRow,145),(s2Step259ExitGvRow,145)] [[],[],[]] [s2Step259ExitFOut,s2Step259ExitFvOut,s2Step259ExitGvOut]
    (shrinkRow 769 s2Step259ExitGExtra) ((shrinkRow 768 s2Step259ExitFExtra ++ (shrinkRow 770 s2Step259ExitFvExtra ++ (shrinkRow 771 s2Step259ExitGvExtra ++ [])))) s2Step259ExitG_Incoming s2Step259ExitG_checked h1 s2Step259ExitG_Outgoing
  exact h0

private theorem s2Step259ExitBank_checked : compileHmrBankResizeLog .exit s2Step259ExitGBefore ⟨s2Step259ExitFRow,s2Step259ExitGRow,s2Step259ExitFvRow,s2Step259ExitGvRow⟩ ⟨141,140,145,145⟩ [[],[],[],[]]=
    some (s2Step259ExitGvAfter,⟨s2Step259ExitFOut,s2Step259ExitGOut,s2Step259ExitFvOut,s2Step259ExitGvOut⟩,(shrinkRow 769 s2Step259ExitGExtra ++ (shrinkRow 768 s2Step259ExitFExtra ++ (shrinkRow 770 s2Step259ExitFvExtra ++ (shrinkRow 771 s2Step259ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step259ExitBank_rows]
  rfl

private theorem s2Step259Add0_apart : Disjoint s2Step259Add0Arena.live s2Step259Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step259Add0Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step259Add0_card : s2Step259Add0Arena.live.card=897 := by
  decide +kernel

private theorem s2Step259Add0_borrowed : s2Step259Add0Arena.checkBorrow (hmrHybridCount s2Step259Add0Arena s2Step259Add0B.length) s2Step259Add0Work=some s2Step259Add0During := by
  have len : s2Step259Add0Work.length=hmrHybridCount s2Step259Add0Arena s2Step259Add0B.length := by
    rw [hmrHybridCount,s2Step259Add0_card]
    decide +kernel
  have nd : s2Step259Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step259Add0Arena s2Step259Add0During s2Step259Add0Work.toFinset s2Step259Add0_bounded s2Step259Add0_apart rfl

private theorem s2Step259Add0_distinct : (782::829::817::(s2Step259Add0A++s2Step259Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step259Add0_owned : (782::829::817::(s2Step259Add0A++s2Step259Add0B)).toFinset⊆s2Step259Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step259Add0Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step259Add0_checked : compileHmrHybridCinLog s2Step259Add0Arena 829 782 817 s2Step259Add0A s2Step259Add0B s2Step259Add0Work=some s2Step259Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step259Add0Arena s2Step259Add0During 829 782 817 s2Step259Add0A s2Step259Add0B s2Step259Add0Work
    (by decide +kernel) (by decide +kernel) s2Step259Add0_distinct
    (fun q hq => s2Step259Add0_owned (List.mem_toFinset.mpr hq)) s2Step259Add0_borrowed

private theorem s2Step259Add1_apart : Disjoint s2Step259Add1Arena.live s2Step259Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step259Add1Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step259Add1_card : s2Step259Add1Arena.live.card=897 := by
  decide +kernel

private theorem s2Step259Add1_borrowed : s2Step259Add1Arena.checkBorrow (hmrHybridCount s2Step259Add1Arena s2Step259Add1B.length) s2Step259Add1Work=some s2Step259Add1During := by
  have len : s2Step259Add1Work.length=hmrHybridCount s2Step259Add1Arena s2Step259Add1B.length := by
    rw [hmrHybridCount,s2Step259Add1_card]
    decide +kernel
  have nd : s2Step259Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step259Add1Arena s2Step259Add1During s2Step259Add1Work.toFinset s2Step259Add1_bounded s2Step259Add1_apart rfl

private theorem s2Step259Add1_distinct : (782::829::817::(s2Step259Add1A++s2Step259Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step259Add1_owned : (782::829::817::(s2Step259Add1A++s2Step259Add1B)).toFinset⊆s2Step259Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step259Add1Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step259Add1_checked : compileHmrHybridCinLog s2Step259Add1Arena 829 782 817 s2Step259Add1A s2Step259Add1B s2Step259Add1Work=some s2Step259Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step259Add1Arena s2Step259Add1During 829 782 817 s2Step259Add1A s2Step259Add1B s2Step259Add1Work
    (by decide +kernel) (by decide +kernel) s2Step259Add1_distinct
    (fun q hq => s2Step259Add1_owned (List.mem_toFinset.mpr hq)) s2Step259Add1_borrowed

private theorem s2Step259F4_apart : Disjoint (s2Step259Add0A++s2Step259Add0B).toFinset (s2Step259Add1A++s2Step259Add1B).toFinset := by
  have nd : ((s2Step259Add0A++s2Step259Add0B)++(s2Step259Add1A++s2Step259Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step259F4_carry : s2Step259F4FlagArena.checkBorrow 1 [817]=some s2Step259Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step259F4FlagArena,s2Step259HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step259F4FlagArena,s2Step259HeadFvAfter,s2Step259Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step259F4_distinct : (814::829::782::817::((s2Step259Add0A++s2Step259Add1A)++(s2Step259Add0B++s2Step259Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step259F4_flag : s2Step259HeadFvAfter.checkBorrow 1 [782]=some s2Step259F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step259HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step259F4_owned : (814::829::((s2Step259Add0A++s2Step259Add1A)++(s2Step259Add0B++s2Step259Add1B))).toFinset⊆s2Step259HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step259HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step259F4_checked : compileHmrHybridF4Log s2Step259HeadFvAfter 814 829 s2Step259Add0A s2Step259Add0B s2Step259Add1A s2Step259Add1B [782] [817] s2Step259Add0Work s2Step259Add1Work=some s2Step259F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step259HeadFvAfter s2Step259F4FlagArena s2Step259Add0Arena s2Step259Add0During s2Step259Add1During 814 829
    s2Step259Add0A s2Step259Add0B s2Step259Add1A s2Step259Add1B [782] [817] s2Step259Add0Work s2Step259Add1Work
    (fun q hq => s2Step259F4_owned (List.mem_toFinset.mpr hq)) s2Step259F4_flag s2Step259F4_carry
    s2Step259F4_distinct s2Step259F4_apart s2Step259Add0_checked s2Step259Add1_checked

private theorem s2Step259Front_branch : s2Step259FrontSigmaArena.checkBorrow 1 [829]=some s2Step259HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step259FrontSigmaArena,s2Step259EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step259FrontSigmaArena,s2Step259EntryGvAfter,s2Step259HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step259Front_entry : HmrFrontEntryValid s2Step259EntryFBefore s2Step259FrontBank 141 145 ⟨141,140,145,145⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step259FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step259EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step259EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<840) ∨ (841≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step259FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step259Front_sigma : s2Step259EntryGvAfter.checkBorrow 1 [814]=some s2Step259FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step259EntryGvAfter,arenaWires]
  · rfl

private def s2Step259HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step259HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step259HeadFBefore : Arena := s2Step259HeadGAfter

private def s2Step259HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652],768⟩

private def s2Step259HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807],770⟩

private def s2Step259HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140],769⟩

private def s2Step259HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840],771⟩

private theorem s2Step259HeadBank_incomingDistinct : ([s2Step259HeadGRow,s2Step259HeadFRow,s2Step259HeadGvRow,s2Step259HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step259HeadF_Incoming : rowsOwned s2Step259HeadFBefore [s2Step259HeadFRow,s2Step259HeadGvRow,s2Step259HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step259HeadGRow,s2Step259HeadFRow,s2Step259HeadGvRow,s2Step259HeadFvRow] 1 s2Step259HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step259HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step259HeadBank_outgoingOwned : rowsOwned s2Step259HeadFvAfter [s2Step259HeadGOut,s2Step259HeadFOut,s2Step259HeadGvOut,s2Step259HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step259HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step259HeadF_Outgoing : rowsOwned s2Step259HeadFvAfter [s2Step259HeadFOut,s2Step259HeadGvOut,s2Step259HeadFvOut] :=
  hmrRows_owned_drop s2Step259HeadFvAfter [s2Step259HeadGOut,s2Step259HeadFOut,s2Step259HeadGvOut,s2Step259HeadFvOut] 1 s2Step259HeadBank_outgoingOwned

private theorem s2Step259HeadF_distinct : (s2Step259HeadFRow.sign::s2Step259HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step259HeadF_owned : (s2Step259HeadFRow.sign::s2Step259HeadFRow.payload).toFinset⊆s2Step259HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step259HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step259HeadF_reserved : s2Step259HeadFBefore.reserve s2Step259HeadFFresh.toFinset=some s2Step259HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step259HeadFFresh,arenaWires]
  · norm_num [s2Step259HeadFBefore,s2Step259HeadGAfter,s2Step259HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step259HeadFAfter,s2Step259HeadFBefore,s2Step259HeadGAfter,s2Step259HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step259HeadF_checked : planRowResizeLog s2Step259HeadFBefore s2Step259HeadFRow 142 s2Step259HeadFFresh=
    some (s2Step259HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 891],768⟩,growRow 768 s2Step259HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step259HeadFBefore s2Step259HeadFAfter s2Step259HeadFRow 142 s2Step259HeadFFresh
    s2Step259HeadF_distinct s2Step259HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step259HeadF_reserved
  have rowEq : WindowRow.mk (s2Step259HeadFRow.payload++s2Step259HeadFFresh) s2Step259HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 891],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step259HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step259HeadFvBefore : Arena := s2Step259HeadGvAfter

private theorem s2Step259HeadFv_Incoming : rowsOwned s2Step259HeadFvBefore [s2Step259HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step259HeadGRow,s2Step259HeadFRow,s2Step259HeadGvRow,s2Step259HeadFvRow] 3 s2Step259HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step259HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step259HeadFv_Outgoing : rowsOwned s2Step259HeadFvAfter [s2Step259HeadFvOut] :=
  hmrRows_owned_drop s2Step259HeadFvAfter [s2Step259HeadGOut,s2Step259HeadFOut,s2Step259HeadGvOut,s2Step259HeadFvOut] 3 s2Step259HeadBank_outgoingOwned

private theorem s2Step259HeadFv_distinct : (s2Step259HeadFvRow.sign::s2Step259HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step259HeadFv_owned : (s2Step259HeadFvRow.sign::s2Step259HeadFvRow.payload).toFinset⊆s2Step259HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step259HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step259HeadFv_reserved : s2Step259HeadFvBefore.reserve s2Step259HeadFvFresh.toFinset=some s2Step259HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step259HeadFvFresh,arenaWires]
  · norm_num [s2Step259HeadFvBefore,s2Step259HeadGvAfter,s2Step259HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step259HeadFvAfter,s2Step259HeadFvBefore,s2Step259HeadGvAfter,s2Step259HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step259HeadFv_checked : planRowResizeLog s2Step259HeadFvBefore s2Step259HeadFvRow 146 s2Step259HeadFvFresh=
    some (s2Step259HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792],770⟩,growRow 770 s2Step259HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step259HeadFvBefore s2Step259HeadFvAfter s2Step259HeadFvRow 146 s2Step259HeadFvFresh
    s2Step259HeadFv_distinct s2Step259HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step259HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step259HeadFvRow.payload++s2Step259HeadFvFresh) s2Step259HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step259HeadG_Incoming : rowsOwned s2Step259HeadGBefore [s2Step259HeadGRow,s2Step259HeadFRow,s2Step259HeadGvRow,s2Step259HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step259HeadGRow,s2Step259HeadFRow,s2Step259HeadGvRow,s2Step259HeadFvRow] 0 s2Step259HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step259HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step259HeadG_Outgoing : rowsOwned s2Step259HeadFvAfter [s2Step259HeadGOut,s2Step259HeadFOut,s2Step259HeadGvOut,s2Step259HeadFvOut] :=
  hmrRows_owned_drop s2Step259HeadFvAfter [s2Step259HeadGOut,s2Step259HeadFOut,s2Step259HeadGvOut,s2Step259HeadFvOut] 0 s2Step259HeadBank_outgoingOwned

private theorem s2Step259HeadG_distinct : (s2Step259HeadGRow.sign::s2Step259HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step259HeadG_owned : (s2Step259HeadGRow.sign::s2Step259HeadGRow.payload).toFinset⊆s2Step259HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step259HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step259HeadG_reserved : s2Step259HeadGBefore.reserve s2Step259HeadGFresh.toFinset=some s2Step259HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step259HeadGFresh,arenaWires]
  · norm_num [s2Step259HeadGBefore,s2Step259HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step259HeadGAfter,s2Step259HeadGBefore,s2Step259HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step259HeadG_checked : planRowResizeLog s2Step259HeadGBefore s2Step259HeadGRow 142 s2Step259HeadGFresh=
    some (s2Step259HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 794],769⟩,growRow 769 s2Step259HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step259HeadGBefore s2Step259HeadGAfter s2Step259HeadGRow 142 s2Step259HeadGFresh
    s2Step259HeadG_distinct s2Step259HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step259HeadG_reserved
  have rowEq : WindowRow.mk (s2Step259HeadGRow.payload++s2Step259HeadGFresh) s2Step259HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 794],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step259HeadGvBefore : Arena := s2Step259HeadFAfter

private theorem s2Step259HeadGv_Incoming : rowsOwned s2Step259HeadGvBefore [s2Step259HeadGvRow,s2Step259HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step259HeadGRow,s2Step259HeadFRow,s2Step259HeadGvRow,s2Step259HeadFvRow] 2 s2Step259HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step259HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step259HeadGv_Outgoing : rowsOwned s2Step259HeadFvAfter [s2Step259HeadGvOut,s2Step259HeadFvOut] :=
  hmrRows_owned_drop s2Step259HeadFvAfter [s2Step259HeadGOut,s2Step259HeadFOut,s2Step259HeadGvOut,s2Step259HeadFvOut] 2 s2Step259HeadBank_outgoingOwned

private theorem s2Step259HeadGv_distinct : (s2Step259HeadGvRow.sign::s2Step259HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step259HeadGv_owned : (s2Step259HeadGvRow.sign::s2Step259HeadGvRow.payload).toFinset⊆s2Step259HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step259HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step259HeadGv_reserved : s2Step259HeadGvBefore.reserve s2Step259HeadGvFresh.toFinset=some s2Step259HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step259HeadGvFresh,arenaWires]
  · norm_num [s2Step259HeadGvBefore,s2Step259HeadFAfter,s2Step259HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step259HeadGvAfter,s2Step259HeadGvBefore,s2Step259HeadFAfter,s2Step259HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step259HeadGv_checked : planRowResizeLog s2Step259HeadGvBefore s2Step259HeadGvRow 146 s2Step259HeadGvFresh=
    some (s2Step259HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 885],771⟩,growRow 771 s2Step259HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step259HeadGvBefore s2Step259HeadGvAfter s2Step259HeadGvRow 146 s2Step259HeadGvFresh
    s2Step259HeadGv_distinct s2Step259HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step259HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step259HeadGvRow.payload++s2Step259HeadGvFresh) s2Step259HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 885],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step259HeadBank_rows : planWindowRowsLog s2Step259HeadGBefore [(s2Step259HeadGRow,142),(s2Step259HeadFRow,142),(s2Step259HeadGvRow,146),(s2Step259HeadFvRow,146)] [s2Step259HeadGFresh,s2Step259HeadFFresh,s2Step259HeadGvFresh,s2Step259HeadFvFresh]=
    some (s2Step259HeadFvAfter,[s2Step259HeadGOut,s2Step259HeadFOut,s2Step259HeadGvOut,s2Step259HeadFvOut],(growRow 769 s2Step259HeadGFresh ++ (growRow 768 s2Step259HeadFFresh ++ (growRow 771 s2Step259HeadGvFresh ++ (growRow 770 s2Step259HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step259HeadFvAfter [] []=some (s2Step259HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step259HeadFvBefore s2Step259HeadFvAfter s2Step259HeadFvAfter
    s2Step259HeadFvRow s2Step259HeadFvOut 146 s2Step259HeadFvFresh [] [] []
    (growRow 770 s2Step259HeadFvFresh) ([]) s2Step259HeadFv_Incoming s2Step259HeadFv_checked h4 s2Step259HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step259HeadGvBefore s2Step259HeadGvAfter s2Step259HeadFvAfter
    s2Step259HeadGvRow s2Step259HeadGvOut 146 s2Step259HeadGvFresh [(s2Step259HeadFvRow,146)] [s2Step259HeadFvFresh] [s2Step259HeadFvOut]
    (growRow 771 s2Step259HeadGvFresh) ((growRow 770 s2Step259HeadFvFresh ++ [])) s2Step259HeadGv_Incoming s2Step259HeadGv_checked h3 s2Step259HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step259HeadFBefore s2Step259HeadFAfter s2Step259HeadFvAfter
    s2Step259HeadFRow s2Step259HeadFOut 142 s2Step259HeadFFresh [(s2Step259HeadGvRow,146),(s2Step259HeadFvRow,146)] [s2Step259HeadGvFresh,s2Step259HeadFvFresh] [s2Step259HeadGvOut,s2Step259HeadFvOut]
    (growRow 768 s2Step259HeadFFresh) ((growRow 771 s2Step259HeadGvFresh ++ (growRow 770 s2Step259HeadFvFresh ++ []))) s2Step259HeadF_Incoming s2Step259HeadF_checked h2 s2Step259HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step259HeadGBefore s2Step259HeadGAfter s2Step259HeadFvAfter
    s2Step259HeadGRow s2Step259HeadGOut 142 s2Step259HeadGFresh [(s2Step259HeadFRow,142),(s2Step259HeadGvRow,146),(s2Step259HeadFvRow,146)] [s2Step259HeadFFresh,s2Step259HeadGvFresh,s2Step259HeadFvFresh] [s2Step259HeadFOut,s2Step259HeadGvOut,s2Step259HeadFvOut]
    (growRow 769 s2Step259HeadGFresh) ((growRow 768 s2Step259HeadFFresh ++ (growRow 771 s2Step259HeadGvFresh ++ (growRow 770 s2Step259HeadFvFresh ++ [])))) s2Step259HeadG_Incoming s2Step259HeadG_checked h1 s2Step259HeadG_Outgoing
  exact h0

private theorem s2Step259HeadBank_checked : compileHmrBankResizeLog .headroom s2Step259HeadGBefore ⟨s2Step259HeadFRow,s2Step259HeadGRow,s2Step259HeadFvRow,s2Step259HeadGvRow⟩ ⟨142,142,146,146⟩ [s2Step259HeadGFresh,s2Step259HeadFFresh,s2Step259HeadGvFresh,s2Step259HeadFvFresh]=
    some (s2Step259HeadFvAfter,⟨s2Step259HeadFOut,s2Step259HeadGOut,s2Step259HeadFvOut,s2Step259HeadGvOut⟩,(growRow 769 s2Step259HeadGFresh ++ (growRow 768 s2Step259HeadFFresh ++ (growRow 771 s2Step259HeadGvFresh ++ (growRow 770 s2Step259HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step259HeadBank_rows]
  rfl

private theorem s2Step259Front_checked : compileHmrSourceFrontLog s2Step259EntryFBefore s2Step259FrontBank 141 145 ⟨141,140,145,145⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step259FrontLog=some s2Step259FrontPlan := by
  have pairEq : s2Step259FrontPair=⟨s2Step259HeadFRow,s2Step259HeadGRow,s2Step259HeadFvRow,s2Step259HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step259FrontHead=⟨s2Step259ExitFRow,s2Step259ExitGRow,s2Step259ExitFvRow,s2Step259ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step259Add0A=s2Step259FrontHead.f.wires := by decide +kernel
  have gEq : s2Step259Add0B=s2Step259FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step259Add1A=s2Step259FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step259Add1B=s2Step259FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step259EntryFBefore s2Step259FrontBank 141 145 ⟨141,140,145,145⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step259FrontLog s2Step259FrontPlan
  · exact s2Step259Front_entry
  · exact s2Step259EntryBank_checked
  · exact s2Step259Front_sigma
  · rfl
  · exact s2Step259Front_branch
  · rfl
  · simpa only [s2Step259FrontPlan,pairEq] using s2Step259HeadBank_checked
  · simpa only [s2Step259FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step259F4_checked
  · exact s2Step259Counter_checked
  · rfl
  · simpa only [s2Step259FrontPlan,headEq] using s2Step259ExitBank_checked

private theorem s2Step259Complete_explicit_checked : compileHmrEarlyStepLog s2Step259EntryFBefore s2Step259FrontBank 141 145 ⟨141,140,145,145⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 51 s2Step259CompleteLog=some s2Step259CompletePlan := by
  let Q := s2Step259EarlyControlPlan
  have hq := s2Step259EarlyControl_plan_checked
  have fv1 : s2Step259CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step259CompleteOut.fv.payload[2]?.getD s2Step259CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step259CompleteOut.fv.payload[3]?.getD s2Step259CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step259CompleteOut.fv.payload[4]?.getD s2Step259CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step259EntryFBefore s2Step259EarlyControlArena s2Step259FrontBank 141 145 ⟨141,140,145,145⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 51 s2Step259CompleteLog s2Step259FrontPlan Q
    s2Step259Front_checked s2Step259Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step259Complete_owned s2Step259Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step259EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 777 814 s2Step259CompleteOut.fv.second (s2Step259CompleteOut.fv.payload[2]?.getD s2Step259CompleteOut.fv.sign) (s2Step259CompleteOut.fv.payload[3]?.getD s2Step259CompleteOut.fv.sign) (s2Step259CompleteOut.fv.payload[4]?.getD s2Step259CompleteOut.fv.sign) 829 51 s2Step259EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep259Arena : Arena := s2Step259EntryFBefore
def s2PrivateStep259Bank : WindowBank := s2Step259FrontBank
def s2PrivateStep259Spec : HmrSourceWalkStepLog := ⟨141,145,⟨141,140,145,145⟩,51,.early s2Step259CompleteLog⟩
def s2PrivateStep259Plan : HmrSourceStepPlan := .early s2Step259CompletePlan
theorem s2PrivateStep259_source : s2PrivateStep259Spec=s2ObservedLogs256[3] := rfl
theorem s2PrivateStep259_checked : compileHmrSourceStepLog s2PrivateStep259Arena s2PrivateStep259Bank
    s2PrivateStep259Spec.fgWidth s2PrivateStep259Spec.vWidth s2PrivateStep259Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900]
    6 498 259 s2PrivateStep259Spec.need none s2PrivateStep259Spec.log=some s2PrivateStep259Plan := by
  change compileHmrSourceStepLog s2Step259EntryFBefore s2Step259FrontBank 141 145 ⟨141,140,145,145⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 6 498 259 51 none (.early s2Step259CompleteLog)=some (.early s2Step259CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 259<498)]
  rw [s2Step259Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
