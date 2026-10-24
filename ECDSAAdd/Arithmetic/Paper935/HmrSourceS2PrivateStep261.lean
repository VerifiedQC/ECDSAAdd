import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep259
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

private def s2Step261CompleteMoves : List (Wire × Wire) := [(877,139),(836,651)]

private def s2Step261EarlyControlLog : HmrEarlyControlLog := ⟨[836, 877, 794, 792, 891],[867],[829],[885, 782, 817, 830, 800, 894],[]⟩

private def s2Step261FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[867], [891], [794], [792]],[[], [], [], []]⟩,[788],[814],[829],[885],[782, 817, 830, 800, 894, 896, 901, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[782, 817, 830, 800, 894, 896, 901, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[829, 885, 782, 817]⟩

private def s2Step261CompleteLog : HmrEarlyStepLog := ⟨s2Step261FrontLog,s2Step261CompleteMoves,s2Step261EarlyControlLog⟩

private def s2Step261ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650],768⟩

private def s2Step261ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807],770⟩

private def s2Step261ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138],769⟩

private def s2Step261ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840],771⟩

private def s2Step261FrontOut : WindowBank := ⟨s2Step261ExitFOut,s2Step261ExitGOut,s2Step261ExitFvOut,s2Step261ExitGvOut⟩

private def s2Step261CompleteOut : WindowBank := s2Step261FrontOut.repacked s2Step261CompleteMoves

private def s2Step261EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step261EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step261EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step261EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step261EarlyControlPositiveArena,[867],s2Step261EarlyControlEqualityArena,[829],⟨⟨788,false⟩,[⟨⟨867,false⟩,829⟩]⟩⟩

private def s2Step261EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step261EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step261EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step261EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step261EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step261EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step261EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,836⟩,⟨⟨774,false⟩,877⟩,⟨⟨775,false⟩,794⟩,⟨⟨776,false⟩,792⟩,⟨⟨777,false⟩,891⟩]⟩

private def s2Step261EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step261EarlyControlZeroArena,s2Step261EarlyControlZeroPlan,s2Step261EarlyControlClassPlan,s2Step261EarlyControlFlagArena,s2Step261EarlyControlFittedArena,s2Step261EarlyControlHistoryArena,s2Step261EarlyControlSigmaArena,s2Step261EarlyControlOutputArena,s2Step261EarlyControlLog⟩

private def s2Step261CounterWork : List Wire := [829, 885, 782, 817]

private theorem s2Step261Counter_bounded : s2Step261CounterWork.toFinset⊆arenaWires := by norm_num [s2Step261CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step261HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step261CounterDuring : Arena := ⟨s2Step261HeadFvAfter.live∪s2Step261CounterWork.toFinset,Finset.union_subset s2Step261HeadFvAfter.bounded s2Step261Counter_bounded⟩

private def s2Step261EntryFFresh : List Wire := []

private def s2Step261EntryFvFresh : List Wire := []

private def s2Step261EntryGFresh : List Wire := []

private def s2Step261EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step261EntryGvAfter : Arena := s2Step261EntryFBefore

private def s2Step261EntryGvFresh : List Wire := []

private def s2Step261ExitFExtra : List Wire := [651, 891]

private def s2Step261ExitFvExtra : List Wire := [792]

private def s2Step261ExitGExtra : List Wire := [139, 867]

private def s2Step261ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<139) ∨ (140≤q ∧ q<651) ∨ (652≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step261ExitGvExtra : List Wire := [794]

private def s2Step261Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step261Add0Work : List Wire := [782, 817, 830, 800, 894, 896, 901, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step261Add0_bounded : s2Step261Add0Work.toFinset⊆arenaWires := by
  have h : s2Step261Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step261Add0During : Arena := ⟨s2Step261Add0Arena.live∪s2Step261Add0Work.toFinset,Finset.union_subset s2Step261Add0Arena.bounded s2Step261Add0_bounded⟩

private def s2Step261Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step261Add1Work : List Wire := [782, 817, 830, 800, 894, 896, 901, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step261Add1_bounded : s2Step261Add1Work.toFinset⊆arenaWires := by
  have h : s2Step261Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step261Add1During : Arena := ⟨s2Step261Add1Arena.live∪s2Step261Add1Work.toFinset,Finset.union_subset s2Step261Add1Arena.bounded s2Step261Add1_bounded⟩

private def s2Step261F4FlagArena : Arena := ⟨s2Step261HeadFvAfter.live∪{829},Finset.union_subset s2Step261HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step261F4Plan : HmrHybridF4Plan := ⟨s2Step261F4FlagArena,[829],s2Step261Add0Arena,[885],s2Step261Add0During,s2Step261Add0Work,s2Step261Add1During,s2Step261Add1Work⟩

private def s2Step261HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 891],768⟩

private def s2Step261HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792],770⟩

private def s2Step261HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 867],769⟩

private def s2Step261HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 794],771⟩

private def s2Step261FrontHead : WindowBank := ⟨s2Step261HeadFOut,s2Step261HeadGOut,s2Step261HeadFvOut,s2Step261HeadGvOut⟩

private def s2Step261EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651],768⟩

private def s2Step261EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807],770⟩

private def s2Step261EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139],769⟩

private def s2Step261EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840],771⟩

private def s2Step261FrontPair : WindowBank := ⟨s2Step261EntryFOut,s2Step261EntryGOut,s2Step261EntryFvOut,s2Step261EntryGvOut⟩

private def s2Step261FrontSigmaArena : Arena := ⟨s2Step261EntryGvAfter.live∪{788},Finset.union_subset s2Step261EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step261HeadFFresh : List Wire := [891]

private def s2Step261HeadFvFresh : List Wire := [792]

private def s2Step261HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step261HeadGFresh : List Wire := [867]

private def s2Step261HeadGvFresh : List Wire := [794]

private def s2Step261FrontPlan : HmrSourceFront := ⟨s2Step261EntryGvAfter,s2Step261FrontPair,(growRow 768 s2Step261EntryFFresh ++ (growRow 769 s2Step261EntryGFresh ++ (growRow 770 s2Step261EntryFvFresh ++ (growRow 771 s2Step261EntryGvFresh ++ [])))),s2Step261FrontSigmaArena,[788],s2Step261HeadGBefore,[814],
  s2Step261HeadFvAfter,s2Step261FrontHead,(growRow 769 s2Step261HeadGFresh ++ (growRow 768 s2Step261HeadFFresh ++ (growRow 771 s2Step261HeadGvFresh ++ (growRow 770 s2Step261HeadFvFresh ++ [])))),s2Step261F4Plan,s2Step261CounterDuring,s2Step261CounterWork,s2Step261ExitGvAfter,s2Step261FrontOut,(shrinkRow 769 s2Step261ExitGExtra ++ (shrinkRow 768 s2Step261ExitFExtra ++ (shrinkRow 770 s2Step261ExitFvExtra ++ (shrinkRow 771 s2Step261ExitGvExtra ++ []))))⟩

private def s2Step261CompletePlan : HmrEarlyStepPlan := ⟨s2Step261FrontPlan,s2Step261EarlyControlArena,s2Step261EarlyControlPlan,s2Step261CompleteMoves⟩

private theorem s2Step261Complete_apart : List.Disjoint (s2Step261CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [788, 814, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] := by
  have nd : ((s2Step261CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[788, 814, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step261Complete_owned : (s2Step261CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step261EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step261EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private def s2Step261CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,651),(652,782),(783,792),(793,794),(795,800),(801,817),(818,829),(831,867),(868,877),(878,885),(886,891),(892,894),(895,896),(897,901),(902,903)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s2Step261CompleteRelocationMove0Borrowed : Arena := ⟨s2Step261ExitGvAfter.live∪{139},Finset.union_subset s2Step261ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step261CompleteRelocationMove1Borrowed : Arena := ⟨s2Step261CompleteRelocationMove0After.live∪{651},Finset.union_subset s2Step261CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s2Step261CompleteRelocation_move0_owned : 877∈s2Step261ExitGvAfter.live := by norm_num [s2Step261ExitGvAfter,arenaWires]

private theorem s2Step261CompleteRelocation_move0_reserve : s2Step261ExitGvAfter.reserve {139}=some s2Step261CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step261ExitGvAfter,arenaWires]
  · rfl

private theorem s2Step261CompleteRelocation_move0_retire : s2Step261CompleteRelocationMove0Borrowed.retireSet {877}=s2Step261CompleteRelocationMove0After := by
  unfold Arena.retireSet s2Step261CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step261CompleteRelocationMove0Borrowed,s2Step261ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step261CompleteRelocation_move1_owned : 836∈s2Step261CompleteRelocationMove0After.live := by norm_num [s2Step261CompleteRelocationMove0After,arenaWires]

private theorem s2Step261CompleteRelocation_move1_reserve : s2Step261CompleteRelocationMove0After.reserve {651}=some s2Step261CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step261CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s2Step261CompleteRelocation_move1_retire : s2Step261CompleteRelocationMove1Borrowed.retireSet {836}=s2Step261EarlyControlArena := by
  unfold Arena.retireSet s2Step261EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step261CompleteRelocationMove1Borrowed,s2Step261CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step261CompleteRelocation_checked : s2Step261ExitGvAfter.checkRepack [(877,139),(836,651)]=some s2Step261EarlyControlArena := by
  have tail2 : s2Step261EarlyControlArena.checkRepack []=some s2Step261EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s2Step261CompleteRelocationMove0After s2Step261CompleteRelocationMove1Borrowed s2Step261EarlyControlArena s2Step261EarlyControlArena 836 651 []
    s2Step261CompleteRelocation_move1_owned s2Step261CompleteRelocation_move1_reserve s2Step261CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s2Step261ExitGvAfter s2Step261CompleteRelocationMove0Borrowed s2Step261CompleteRelocationMove0After s2Step261EarlyControlArena 877 139 [(836,651)]
    s2Step261CompleteRelocation_move0_owned s2Step261CompleteRelocation_move0_reserve s2Step261CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s2Step261Complete_repack : s2Step261ExitGvAfter.checkRepack s2Step261CompleteMoves=some s2Step261EarlyControlArena := by
  simpa only [s2Step261CompleteMoves] using s2Step261CompleteRelocation_checked

private theorem s2Step261EarlyControl_branchOwned : ([814] : List Wire).toFinset⊆s2Step261EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step261EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step261EarlyControl_branch : compileHmrBranchRetirement s2Step261EarlyControlSigmaArena 814=some s2Step261EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step261EarlyControl_branchOwned
  · ext q
    simp [s2Step261EarlyControlOutputArena,s2Step261EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step261EarlyControl_classEqualityBorrow : s2Step261EarlyControlPositiveArena.checkBorrow (([788, 867] : List Wire).length-1) s2Step261EarlyControlLog.classWork=some s2Step261EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step261EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step261EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
      decide +kernel
    · ext q
      simp [s2Step261EarlyControlEqualityArena,s2Step261EarlyControlPositiveArena,s2Step261EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step261EarlyControl_classEqualityOwned : ([788, 867] : List Wire).toFinset⊆s2Step261EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step261EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step261EarlyControl_classEquality : compileHmrEqualityLog s2Step261EarlyControlPositiveArena [788, 867] 0 s2Step261EarlyControlLog.classWork=some (s2Step261EarlyControlEqualityArena,s2Step261EarlyControlLog.classWork,s2Step261EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step261EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step261EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step261EarlyControl_classOwned : ([777, 891, 788] : List Wire).toFinset⊆s2Step261EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step261EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step261EarlyControl_positiveBorrow : s2Step261EarlyControlZeroArena.checkBorrow (1) s2Step261EarlyControlLog.positiveWork=some s2Step261EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step261EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step261EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
      decide +kernel
    · ext q
      simp [s2Step261EarlyControlPositiveArena,s2Step261EarlyControlZeroArena,s2Step261EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step261EarlyControl_class : compileHmrSourceClassLog s2Step261EarlyControlZeroArena false 777 s2Step261EarlyControlZeroPlan.top 0 788 s2Step261EarlyControlLog.positiveWork s2Step261EarlyControlLog.classWork=some s2Step261EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step261EarlyControlClassPlan s2Step261EarlyControlZeroArena false 777 s2Step261EarlyControlZeroPlan.top 0 788
  constructor
  · decide +kernel
  · exact s2Step261EarlyControl_classOwned
  · exact s2Step261EarlyControl_positiveBorrow
  · exact s2Step261EarlyControl_classEquality

private theorem s2Step261EarlyControl_entryRecordOwned : ([814, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] : List Wire).toFinset⊆s2Step261EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step261EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step261EarlyControl_entrySigmaOwned : ([788, 254] : List Wire).toFinset⊆s2Step261EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step261EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step261EarlyControl_fitBorrow : s2Step261EarlyControlFlagArena.checkBorrow ((52-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] : List Wire).length)) s2Step261EarlyControlLog.recordFresh=some s2Step261EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step261EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step261EarlyControlFlagArena (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
      decide +kernel
    · ext q
      simp [s2Step261EarlyControlFittedArena,s2Step261EarlyControlFlagArena,s2Step261EarlyControlLog,arenaWires]

private theorem s2Step261EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] : List Wire).toFinset⊆s2Step261EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step261EarlyControlFlagArena (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step261EarlyControl_fit : compileHmrRecordGrowLog s2Step261EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 52 s2Step261EarlyControlLog.recordFresh=some s2Step261EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step261EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step261EarlyControl_fitBorrow

private theorem s2Step261EarlyControl_flagsBorrow : s2Step261EarlyControlEqualityArena.checkBorrow (6) s2Step261EarlyControlLog.flagWork=some s2Step261EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step261EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step261EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
      decide +kernel
    · ext q
      simp [s2Step261EarlyControlFlagArena,s2Step261EarlyControlEqualityArena,s2Step261EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step261EarlyControl_flagsOwned : ([829, 253, 252, 251] : List Wire).toFinset⊆s2Step261EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step261EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step261EarlyControl_flags : compileHmrFlagsLog s2Step261EarlyControlClassPlan.equalityArena s2Step261EarlyControlClassPlan.equality.top 253 252 251 s2Step261EarlyControlLog.flagWork=some s2Step261EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step261EarlyControl_flagsOwned⟩
  · exact s2Step261EarlyControl_flagsBorrow

private theorem s2Step261EarlyControl_historyBorrow : s2Step261EarlyControlArena.checkBorrow ((52-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] : List Wire).length)) s2Step261EarlyControlLog.recordFresh=some s2Step261EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step261EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step261EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
      decide +kernel
    · ext q
      simp [s2Step261EarlyControlHistoryArena,s2Step261EarlyControlArena,s2Step261EarlyControlLog,arenaWires]

private theorem s2Step261EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] : List Wire).toFinset⊆s2Step261EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step261EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step261EarlyControl_history : compileHmrRecordGrowLog s2Step261EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 52 s2Step261EarlyControlLog.recordFresh=some s2Step261EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step261EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step261EarlyControl_historyBorrow

private theorem s2Step261EarlyControl_sigmaOwned : ([254, 788] : List Wire).toFinset⊆s2Step261EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step261EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step261EarlyControl_sigmaReleaseOwned : ([788] : List Wire).toFinset⊆s2Step261EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step261EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step261EarlyControl_sigmaRelease : s2Step261EarlyControlHistoryArena.release {788} (fun _ => false)=some s2Step261EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step261EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step261EarlyControlSigmaArena,s2Step261EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step261EarlyControl_sigma : compileHmrSigmaDropLog s2Step261EarlyControlHistoryArena false 0 0 254 788 []=some s2Step261EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step261EarlyControl_sigmaOwned⟩
  · exact s2Step261EarlyControl_sigmaRelease

private theorem s2Step261EarlyControl_zeroBorrow : s2Step261EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step261EarlyControlLog.zeroWork=some s2Step261EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step261EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step261EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
      decide +kernel
    · ext q
      simp [s2Step261EarlyControlZeroArena,s2Step261EarlyControlArena,s2Step261EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step261EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step261EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step261EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step261EarlyControl_zero : compileHmrEqualityLog s2Step261EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step261EarlyControlLog.zeroWork=some (s2Step261EarlyControlZeroArena,s2Step261EarlyControlLog.zeroWork,s2Step261EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step261EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step261EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step261EarlyControl_logged : s2Step261EarlyControlPlan.Logged s2Step261EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 777 788 254 253 252 251 814 52 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step261EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step261EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step261EarlyControl_zero
  · exact s2Step261EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step261EarlyControl_flags
  · exact s2Step261EarlyControl_fit
  · exact s2Step261EarlyControl_history
  · exact s2Step261EarlyControl_sigma
  · exact s2Step261EarlyControl_branch

private theorem s2Step261EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step261EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 777 788 254 253 252 251 814 52 s2Step261EarlyControlLog=some s2Step261EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step261EarlyControlPlan s2Step261EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 777 788 254 253 252 251 814 52 s2Step261EarlyControl_logged

private def s2Step261EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651],768⟩

private def s2Step261EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807],770⟩

private def s2Step261EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139],769⟩

private def s2Step261EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840],771⟩

private def s2Step261FrontBank : WindowBank := ⟨s2Step261EntryFRow,s2Step261EntryGRow,s2Step261EntryFvRow,s2Step261EntryGvRow⟩

private def s2Step261Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 891, 768]

private def s2Step261Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 867, 769]

private def s2Step261Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 770]

private def s2Step261Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 794, 771]

private theorem s2Step261Counter_apart : Disjoint s2Step261HeadFvAfter.live s2Step261CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step261HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step261Counter_borrowed : s2Step261HeadFvAfter.checkBorrow 4 s2Step261CounterWork=some s2Step261CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step261HeadFvAfter s2Step261CounterDuring s2Step261CounterWork.toFinset s2Step261Counter_bounded s2Step261Counter_apart rfl

private theorem s2Step261Counter_owned : (788::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step261HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step261HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step261Counter_checked : compileHmrCounterStepLog s2Step261HeadFvAfter true 788 [772, 773, 774, 775, 776, 777] s2Step261CounterWork=some s2Step261CounterDuring := by
  have owned : ∀q∈788::[772, 773, 774, 775, 776, 777],q∈s2Step261HeadFvAfter.live := fun q hq => s2Step261Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step261Counter_borrowed

private def s2Step261EntryFAfter : Arena := s2Step261EntryFBefore

private theorem s2Step261EntryBank_incomingDistinct : ([s2Step261EntryFRow,s2Step261EntryGRow,s2Step261EntryFvRow,s2Step261EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step261EntryF_Incoming : rowsOwned s2Step261EntryFBefore [s2Step261EntryFRow,s2Step261EntryGRow,s2Step261EntryFvRow,s2Step261EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step261EntryFRow,s2Step261EntryGRow,s2Step261EntryFvRow,s2Step261EntryGvRow] 0 s2Step261EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step261EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step261EntryBank_outgoingOwned : rowsOwned s2Step261EntryGvAfter [s2Step261EntryFOut,s2Step261EntryGOut,s2Step261EntryFvOut,s2Step261EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step261EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step261EntryF_Outgoing : rowsOwned s2Step261EntryGvAfter [s2Step261EntryFOut,s2Step261EntryGOut,s2Step261EntryFvOut,s2Step261EntryGvOut] :=
  hmrRows_owned_drop s2Step261EntryGvAfter [s2Step261EntryFOut,s2Step261EntryGOut,s2Step261EntryFvOut,s2Step261EntryGvOut] 0 s2Step261EntryBank_outgoingOwned

private theorem s2Step261EntryF_distinct : (s2Step261EntryFRow.sign::s2Step261EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step261EntryF_owned : (s2Step261EntryFRow.sign::s2Step261EntryFRow.payload).toFinset⊆s2Step261EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step261EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step261EntryF_reserved : s2Step261EntryFBefore.reserve s2Step261EntryFFresh.toFinset=some s2Step261EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step261EntryFFresh,arenaWires]
  · norm_num [s2Step261EntryFBefore,s2Step261EntryFFresh,arenaWires]
  · simp only [s2Step261EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step261EntryF_checked : planRowResizeLog s2Step261EntryFBefore s2Step261EntryFRow 140 s2Step261EntryFFresh=
    some (s2Step261EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651],768⟩,growRow 768 s2Step261EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step261EntryFBefore s2Step261EntryFAfter s2Step261EntryFRow 140 s2Step261EntryFFresh
    s2Step261EntryF_distinct s2Step261EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step261EntryF_reserved
  have rowEq : WindowRow.mk (s2Step261EntryFRow.payload++s2Step261EntryFFresh) s2Step261EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step261EntryFvAfter : Arena := s2Step261EntryFBefore

private def s2Step261EntryFvBefore : Arena := s2Step261EntryFBefore

private theorem s2Step261EntryFv_Incoming : rowsOwned s2Step261EntryFvBefore [s2Step261EntryFvRow,s2Step261EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step261EntryFRow,s2Step261EntryGRow,s2Step261EntryFvRow,s2Step261EntryGvRow] 2 s2Step261EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step261EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step261EntryFv_Outgoing : rowsOwned s2Step261EntryGvAfter [s2Step261EntryFvOut,s2Step261EntryGvOut] :=
  hmrRows_owned_drop s2Step261EntryGvAfter [s2Step261EntryFOut,s2Step261EntryGOut,s2Step261EntryFvOut,s2Step261EntryGvOut] 2 s2Step261EntryBank_outgoingOwned

private theorem s2Step261EntryFv_distinct : (s2Step261EntryFvRow.sign::s2Step261EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step261EntryFv_owned : (s2Step261EntryFvRow.sign::s2Step261EntryFvRow.payload).toFinset⊆s2Step261EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step261EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step261EntryFv_reserved : s2Step261EntryFvBefore.reserve s2Step261EntryFvFresh.toFinset=some s2Step261EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step261EntryFvFresh,arenaWires]
  · norm_num [s2Step261EntryFvBefore,s2Step261EntryFBefore,s2Step261EntryFvFresh,arenaWires]
  · simp only [s2Step261EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step261EntryFv_checked : planRowResizeLog s2Step261EntryFvBefore s2Step261EntryFvRow 145 s2Step261EntryFvFresh=
    some (s2Step261EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807],770⟩,growRow 770 s2Step261EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step261EntryFvBefore s2Step261EntryFvAfter s2Step261EntryFvRow 145 s2Step261EntryFvFresh
    s2Step261EntryFv_distinct s2Step261EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step261EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step261EntryFvRow.payload++s2Step261EntryFvFresh) s2Step261EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step261EntryGAfter : Arena := s2Step261EntryFBefore

private def s2Step261EntryGBefore : Arena := s2Step261EntryFBefore

private theorem s2Step261EntryG_Incoming : rowsOwned s2Step261EntryGBefore [s2Step261EntryGRow,s2Step261EntryFvRow,s2Step261EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step261EntryFRow,s2Step261EntryGRow,s2Step261EntryFvRow,s2Step261EntryGvRow] 1 s2Step261EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step261EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step261EntryG_Outgoing : rowsOwned s2Step261EntryGvAfter [s2Step261EntryGOut,s2Step261EntryFvOut,s2Step261EntryGvOut] :=
  hmrRows_owned_drop s2Step261EntryGvAfter [s2Step261EntryFOut,s2Step261EntryGOut,s2Step261EntryFvOut,s2Step261EntryGvOut] 1 s2Step261EntryBank_outgoingOwned

private theorem s2Step261EntryG_distinct : (s2Step261EntryGRow.sign::s2Step261EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step261EntryG_owned : (s2Step261EntryGRow.sign::s2Step261EntryGRow.payload).toFinset⊆s2Step261EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step261EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step261EntryG_reserved : s2Step261EntryGBefore.reserve s2Step261EntryGFresh.toFinset=some s2Step261EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step261EntryGFresh,arenaWires]
  · norm_num [s2Step261EntryGBefore,s2Step261EntryFBefore,s2Step261EntryGFresh,arenaWires]
  · simp only [s2Step261EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step261EntryG_checked : planRowResizeLog s2Step261EntryGBefore s2Step261EntryGRow 140 s2Step261EntryGFresh=
    some (s2Step261EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139],769⟩,growRow 769 s2Step261EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step261EntryGBefore s2Step261EntryGAfter s2Step261EntryGRow 140 s2Step261EntryGFresh
    s2Step261EntryG_distinct s2Step261EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step261EntryG_reserved
  have rowEq : WindowRow.mk (s2Step261EntryGRow.payload++s2Step261EntryGFresh) s2Step261EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step261EntryGvBefore : Arena := s2Step261EntryFBefore

private theorem s2Step261EntryGv_Incoming : rowsOwned s2Step261EntryGvBefore [s2Step261EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step261EntryFRow,s2Step261EntryGRow,s2Step261EntryFvRow,s2Step261EntryGvRow] 3 s2Step261EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step261EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step261EntryGv_Outgoing : rowsOwned s2Step261EntryGvAfter [s2Step261EntryGvOut] :=
  hmrRows_owned_drop s2Step261EntryGvAfter [s2Step261EntryFOut,s2Step261EntryGOut,s2Step261EntryFvOut,s2Step261EntryGvOut] 3 s2Step261EntryBank_outgoingOwned

private theorem s2Step261EntryGv_distinct : (s2Step261EntryGvRow.sign::s2Step261EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step261EntryGv_owned : (s2Step261EntryGvRow.sign::s2Step261EntryGvRow.payload).toFinset⊆s2Step261EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step261EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step261EntryGv_reserved : s2Step261EntryGvBefore.reserve s2Step261EntryGvFresh.toFinset=some s2Step261EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step261EntryGvFresh,arenaWires]
  · norm_num [s2Step261EntryGvBefore,s2Step261EntryFBefore,s2Step261EntryGvFresh,arenaWires]
  · simp only [s2Step261EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step261EntryGv_checked : planRowResizeLog s2Step261EntryGvBefore s2Step261EntryGvRow 145 s2Step261EntryGvFresh=
    some (s2Step261EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840],771⟩,growRow 771 s2Step261EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step261EntryGvBefore s2Step261EntryGvAfter s2Step261EntryGvRow 145 s2Step261EntryGvFresh
    s2Step261EntryGv_distinct s2Step261EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step261EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step261EntryGvRow.payload++s2Step261EntryGvFresh) s2Step261EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step261EntryBank_rows : planWindowRowsLog s2Step261EntryFBefore [(s2Step261EntryFRow,140),(s2Step261EntryGRow,140),(s2Step261EntryFvRow,145),(s2Step261EntryGvRow,145)] [s2Step261EntryFFresh,s2Step261EntryGFresh,s2Step261EntryFvFresh,s2Step261EntryGvFresh]=
    some (s2Step261EntryGvAfter,[s2Step261EntryFOut,s2Step261EntryGOut,s2Step261EntryFvOut,s2Step261EntryGvOut],(growRow 768 s2Step261EntryFFresh ++ (growRow 769 s2Step261EntryGFresh ++ (growRow 770 s2Step261EntryFvFresh ++ (growRow 771 s2Step261EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step261EntryGvAfter [] []=some (s2Step261EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step261EntryGvBefore s2Step261EntryGvAfter s2Step261EntryGvAfter
    s2Step261EntryGvRow s2Step261EntryGvOut 145 s2Step261EntryGvFresh [] [] []
    (growRow 771 s2Step261EntryGvFresh) ([]) s2Step261EntryGv_Incoming s2Step261EntryGv_checked h4 s2Step261EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step261EntryFvBefore s2Step261EntryFvAfter s2Step261EntryGvAfter
    s2Step261EntryFvRow s2Step261EntryFvOut 145 s2Step261EntryFvFresh [(s2Step261EntryGvRow,145)] [s2Step261EntryGvFresh] [s2Step261EntryGvOut]
    (growRow 770 s2Step261EntryFvFresh) ((growRow 771 s2Step261EntryGvFresh ++ [])) s2Step261EntryFv_Incoming s2Step261EntryFv_checked h3 s2Step261EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step261EntryGBefore s2Step261EntryGAfter s2Step261EntryGvAfter
    s2Step261EntryGRow s2Step261EntryGOut 140 s2Step261EntryGFresh [(s2Step261EntryFvRow,145),(s2Step261EntryGvRow,145)] [s2Step261EntryFvFresh,s2Step261EntryGvFresh] [s2Step261EntryFvOut,s2Step261EntryGvOut]
    (growRow 769 s2Step261EntryGFresh) ((growRow 770 s2Step261EntryFvFresh ++ (growRow 771 s2Step261EntryGvFresh ++ []))) s2Step261EntryG_Incoming s2Step261EntryG_checked h2 s2Step261EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step261EntryFBefore s2Step261EntryFAfter s2Step261EntryGvAfter
    s2Step261EntryFRow s2Step261EntryFOut 140 s2Step261EntryFFresh [(s2Step261EntryGRow,140),(s2Step261EntryFvRow,145),(s2Step261EntryGvRow,145)] [s2Step261EntryGFresh,s2Step261EntryFvFresh,s2Step261EntryGvFresh] [s2Step261EntryGOut,s2Step261EntryFvOut,s2Step261EntryGvOut]
    (growRow 768 s2Step261EntryFFresh) ((growRow 769 s2Step261EntryGFresh ++ (growRow 770 s2Step261EntryFvFresh ++ (growRow 771 s2Step261EntryGvFresh ++ [])))) s2Step261EntryF_Incoming s2Step261EntryF_checked h1 s2Step261EntryF_Outgoing
  exact h0

private theorem s2Step261EntryBank_checked : compileHmrBankResizeLog .entry s2Step261EntryFBefore ⟨s2Step261EntryFRow,s2Step261EntryGRow,s2Step261EntryFvRow,s2Step261EntryGvRow⟩ ⟨140,140,145,145⟩ [s2Step261EntryFFresh,s2Step261EntryGFresh,s2Step261EntryFvFresh,s2Step261EntryGvFresh]=
    some (s2Step261EntryGvAfter,⟨s2Step261EntryFOut,s2Step261EntryGOut,s2Step261EntryFvOut,s2Step261EntryGvOut⟩,(growRow 768 s2Step261EntryFFresh ++ (growRow 769 s2Step261EntryGFresh ++ (growRow 770 s2Step261EntryFvFresh ++ (growRow 771 s2Step261EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step261EntryBank_rows]
  rfl

private def s2Step261ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<139) ∨ (140≤q ∧ q<651) ∨ (652≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step261ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<139) ∨ (140≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step261ExitFBefore : Arena := s2Step261ExitGAfter

private def s2Step261ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 891],768⟩

private def s2Step261ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792],770⟩

private def s2Step261ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 867],769⟩

private def s2Step261ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 794],771⟩

private theorem s2Step261ExitBank_incomingDistinct : ([s2Step261ExitGRow,s2Step261ExitFRow,s2Step261ExitFvRow,s2Step261ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step261ExitF_Incoming : rowsOwned s2Step261ExitFBefore [s2Step261ExitFRow,s2Step261ExitFvRow,s2Step261ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step261ExitGRow,s2Step261ExitFRow,s2Step261ExitFvRow,s2Step261ExitGvRow] 1 s2Step261ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step261ExitFBefore (fun q => (0≤q ∧ q<139) ∨ (140≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step261ExitBank_outgoingOwned : rowsOwned s2Step261ExitGvAfter [s2Step261ExitGOut,s2Step261ExitFOut,s2Step261ExitFvOut,s2Step261ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step261ExitGvAfter (fun q => (0≤q ∧ q<139) ∨ (140≤q ∧ q<651) ∨ (652≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step261ExitF_Outgoing : rowsOwned s2Step261ExitGvAfter [s2Step261ExitFOut,s2Step261ExitFvOut,s2Step261ExitGvOut] :=
  hmrRows_owned_drop s2Step261ExitGvAfter [s2Step261ExitGOut,s2Step261ExitFOut,s2Step261ExitFvOut,s2Step261ExitGvOut] 1 s2Step261ExitBank_outgoingOwned

private theorem s2Step261ExitF_distinct : (s2Step261ExitFRow.sign::s2Step261ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step261ExitF_owned : (s2Step261ExitFRow.sign::s2Step261ExitFRow.payload).toFinset⊆s2Step261ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step261ExitFBefore (fun q => (0≤q ∧ q<139) ∨ (140≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step261ExitF_retired : s2Step261ExitFBefore.retireSet s2Step261ExitFExtra.toFinset=s2Step261ExitFAfter := by
  unfold Arena.retireSet s2Step261ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step261ExitFBefore,s2Step261ExitGAfter,s2Step261ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step261ExitF_checked : planRowResizeLog s2Step261ExitFBefore s2Step261ExitFRow 139 []=
    some (s2Step261ExitFAfter,s2Step261ExitFOut,shrinkRow 768 s2Step261ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step261ExitFBefore s2Step261ExitFRow 139 s2Step261ExitF_distinct s2Step261ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step261ExitFRow.payload.take 139) s2Step261ExitFRow.sign=s2Step261ExitFOut := by decide +kernel
  have hi : s2Step261ExitFRow.payload.drop 139=s2Step261ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step261ExitF_retired] at result
  exact result

private def s2Step261ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<139) ∨ (140≤q ∧ q<651) ∨ (652≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step261ExitFvBefore : Arena := s2Step261ExitFAfter

private theorem s2Step261ExitFv_Incoming : rowsOwned s2Step261ExitFvBefore [s2Step261ExitFvRow,s2Step261ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step261ExitGRow,s2Step261ExitFRow,s2Step261ExitFvRow,s2Step261ExitGvRow] 2 s2Step261ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step261ExitFvBefore (fun q => (0≤q ∧ q<139) ∨ (140≤q ∧ q<651) ∨ (652≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step261ExitFv_Outgoing : rowsOwned s2Step261ExitGvAfter [s2Step261ExitFvOut,s2Step261ExitGvOut] :=
  hmrRows_owned_drop s2Step261ExitGvAfter [s2Step261ExitGOut,s2Step261ExitFOut,s2Step261ExitFvOut,s2Step261ExitGvOut] 2 s2Step261ExitBank_outgoingOwned

private theorem s2Step261ExitFv_distinct : (s2Step261ExitFvRow.sign::s2Step261ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step261ExitFv_owned : (s2Step261ExitFvRow.sign::s2Step261ExitFvRow.payload).toFinset⊆s2Step261ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step261ExitFvBefore (fun q => (0≤q ∧ q<139) ∨ (140≤q ∧ q<651) ∨ (652≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step261ExitFv_retired : s2Step261ExitFvBefore.retireSet s2Step261ExitFvExtra.toFinset=s2Step261ExitFvAfter := by
  unfold Arena.retireSet s2Step261ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step261ExitFvBefore,s2Step261ExitFAfter,s2Step261ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step261ExitFv_checked : planRowResizeLog s2Step261ExitFvBefore s2Step261ExitFvRow 145 []=
    some (s2Step261ExitFvAfter,s2Step261ExitFvOut,shrinkRow 770 s2Step261ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step261ExitFvBefore s2Step261ExitFvRow 145 s2Step261ExitFv_distinct s2Step261ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step261ExitFvRow.payload.take 145) s2Step261ExitFvRow.sign=s2Step261ExitFvOut := by decide +kernel
  have hi : s2Step261ExitFvRow.payload.drop 145=s2Step261ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step261ExitFv_retired] at result
  exact result

private def s2Step261ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private theorem s2Step261ExitG_Incoming : rowsOwned s2Step261ExitGBefore [s2Step261ExitGRow,s2Step261ExitFRow,s2Step261ExitFvRow,s2Step261ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step261ExitGRow,s2Step261ExitFRow,s2Step261ExitFvRow,s2Step261ExitGvRow] 0 s2Step261ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step261ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step261ExitG_Outgoing : rowsOwned s2Step261ExitGvAfter [s2Step261ExitGOut,s2Step261ExitFOut,s2Step261ExitFvOut,s2Step261ExitGvOut] :=
  hmrRows_owned_drop s2Step261ExitGvAfter [s2Step261ExitGOut,s2Step261ExitFOut,s2Step261ExitFvOut,s2Step261ExitGvOut] 0 s2Step261ExitBank_outgoingOwned

private theorem s2Step261ExitG_distinct : (s2Step261ExitGRow.sign::s2Step261ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step261ExitG_owned : (s2Step261ExitGRow.sign::s2Step261ExitGRow.payload).toFinset⊆s2Step261ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step261ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step261ExitG_retired : s2Step261ExitGBefore.retireSet s2Step261ExitGExtra.toFinset=s2Step261ExitGAfter := by
  unfold Arena.retireSet s2Step261ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step261ExitGBefore,s2Step261ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step261ExitG_checked : planRowResizeLog s2Step261ExitGBefore s2Step261ExitGRow 139 []=
    some (s2Step261ExitGAfter,s2Step261ExitGOut,shrinkRow 769 s2Step261ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step261ExitGBefore s2Step261ExitGRow 139 s2Step261ExitG_distinct s2Step261ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step261ExitGRow.payload.take 139) s2Step261ExitGRow.sign=s2Step261ExitGOut := by decide +kernel
  have hi : s2Step261ExitGRow.payload.drop 139=s2Step261ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step261ExitG_retired] at result
  exact result

private def s2Step261ExitGvBefore : Arena := s2Step261ExitFvAfter

private theorem s2Step261ExitGv_Incoming : rowsOwned s2Step261ExitGvBefore [s2Step261ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step261ExitGRow,s2Step261ExitFRow,s2Step261ExitFvRow,s2Step261ExitGvRow] 3 s2Step261ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step261ExitGvBefore (fun q => (0≤q ∧ q<139) ∨ (140≤q ∧ q<651) ∨ (652≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step261ExitGv_Outgoing : rowsOwned s2Step261ExitGvAfter [s2Step261ExitGvOut] :=
  hmrRows_owned_drop s2Step261ExitGvAfter [s2Step261ExitGOut,s2Step261ExitFOut,s2Step261ExitFvOut,s2Step261ExitGvOut] 3 s2Step261ExitBank_outgoingOwned

private theorem s2Step261ExitGv_distinct : (s2Step261ExitGvRow.sign::s2Step261ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step261ExitGv_owned : (s2Step261ExitGvRow.sign::s2Step261ExitGvRow.payload).toFinset⊆s2Step261ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step261ExitGvBefore (fun q => (0≤q ∧ q<139) ∨ (140≤q ∧ q<651) ∨ (652≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step261ExitGv_retired : s2Step261ExitGvBefore.retireSet s2Step261ExitGvExtra.toFinset=s2Step261ExitGvAfter := by
  unfold Arena.retireSet s2Step261ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step261ExitGvBefore,s2Step261ExitFvAfter,s2Step261ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step261ExitGv_checked : planRowResizeLog s2Step261ExitGvBefore s2Step261ExitGvRow 145 []=
    some (s2Step261ExitGvAfter,s2Step261ExitGvOut,shrinkRow 771 s2Step261ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step261ExitGvBefore s2Step261ExitGvRow 145 s2Step261ExitGv_distinct s2Step261ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step261ExitGvRow.payload.take 145) s2Step261ExitGvRow.sign=s2Step261ExitGvOut := by decide +kernel
  have hi : s2Step261ExitGvRow.payload.drop 145=s2Step261ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step261ExitGv_retired] at result
  exact result

private theorem s2Step261ExitBank_rows : planWindowRowsLog s2Step261ExitGBefore [(s2Step261ExitGRow,139),(s2Step261ExitFRow,139),(s2Step261ExitFvRow,145),(s2Step261ExitGvRow,145)] [[],[],[],[]]=
    some (s2Step261ExitGvAfter,[s2Step261ExitGOut,s2Step261ExitFOut,s2Step261ExitFvOut,s2Step261ExitGvOut],(shrinkRow 769 s2Step261ExitGExtra ++ (shrinkRow 768 s2Step261ExitFExtra ++ (shrinkRow 770 s2Step261ExitFvExtra ++ (shrinkRow 771 s2Step261ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step261ExitGvAfter [] []=some (s2Step261ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step261ExitGvBefore s2Step261ExitGvAfter s2Step261ExitGvAfter
    s2Step261ExitGvRow s2Step261ExitGvOut 145 [] [] [] []
    (shrinkRow 771 s2Step261ExitGvExtra) ([]) s2Step261ExitGv_Incoming s2Step261ExitGv_checked h4 s2Step261ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step261ExitFvBefore s2Step261ExitFvAfter s2Step261ExitGvAfter
    s2Step261ExitFvRow s2Step261ExitFvOut 145 [] [(s2Step261ExitGvRow,145)] [[]] [s2Step261ExitGvOut]
    (shrinkRow 770 s2Step261ExitFvExtra) ((shrinkRow 771 s2Step261ExitGvExtra ++ [])) s2Step261ExitFv_Incoming s2Step261ExitFv_checked h3 s2Step261ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step261ExitFBefore s2Step261ExitFAfter s2Step261ExitGvAfter
    s2Step261ExitFRow s2Step261ExitFOut 139 [] [(s2Step261ExitFvRow,145),(s2Step261ExitGvRow,145)] [[],[]] [s2Step261ExitFvOut,s2Step261ExitGvOut]
    (shrinkRow 768 s2Step261ExitFExtra) ((shrinkRow 770 s2Step261ExitFvExtra ++ (shrinkRow 771 s2Step261ExitGvExtra ++ []))) s2Step261ExitF_Incoming s2Step261ExitF_checked h2 s2Step261ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step261ExitGBefore s2Step261ExitGAfter s2Step261ExitGvAfter
    s2Step261ExitGRow s2Step261ExitGOut 139 [] [(s2Step261ExitFRow,139),(s2Step261ExitFvRow,145),(s2Step261ExitGvRow,145)] [[],[],[]] [s2Step261ExitFOut,s2Step261ExitFvOut,s2Step261ExitGvOut]
    (shrinkRow 769 s2Step261ExitGExtra) ((shrinkRow 768 s2Step261ExitFExtra ++ (shrinkRow 770 s2Step261ExitFvExtra ++ (shrinkRow 771 s2Step261ExitGvExtra ++ [])))) s2Step261ExitG_Incoming s2Step261ExitG_checked h1 s2Step261ExitG_Outgoing
  exact h0

private theorem s2Step261ExitBank_checked : compileHmrBankResizeLog .exit s2Step261ExitGBefore ⟨s2Step261ExitFRow,s2Step261ExitGRow,s2Step261ExitFvRow,s2Step261ExitGvRow⟩ ⟨139,139,145,145⟩ [[],[],[],[]]=
    some (s2Step261ExitGvAfter,⟨s2Step261ExitFOut,s2Step261ExitGOut,s2Step261ExitFvOut,s2Step261ExitGvOut⟩,(shrinkRow 769 s2Step261ExitGExtra ++ (shrinkRow 768 s2Step261ExitFExtra ++ (shrinkRow 770 s2Step261ExitFvExtra ++ (shrinkRow 771 s2Step261ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step261ExitBank_rows]
  rfl

private theorem s2Step261Add0_apart : Disjoint s2Step261Add0Arena.live s2Step261Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step261Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step261Add0_card : s2Step261Add0Arena.live.card=896 := by
  decide +kernel

private theorem s2Step261Add0_borrowed : s2Step261Add0Arena.checkBorrow (hmrHybridCount s2Step261Add0Arena s2Step261Add0B.length) s2Step261Add0Work=some s2Step261Add0During := by
  have len : s2Step261Add0Work.length=hmrHybridCount s2Step261Add0Arena s2Step261Add0B.length := by
    rw [hmrHybridCount,s2Step261Add0_card]
    decide +kernel
  have nd : s2Step261Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step261Add0Arena s2Step261Add0During s2Step261Add0Work.toFinset s2Step261Add0_bounded s2Step261Add0_apart rfl

private theorem s2Step261Add0_distinct : (829::814::885::(s2Step261Add0A++s2Step261Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step261Add0_owned : (829::814::885::(s2Step261Add0A++s2Step261Add0B)).toFinset⊆s2Step261Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step261Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step261Add0_checked : compileHmrHybridCinLog s2Step261Add0Arena 814 829 885 s2Step261Add0A s2Step261Add0B s2Step261Add0Work=some s2Step261Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step261Add0Arena s2Step261Add0During 814 829 885 s2Step261Add0A s2Step261Add0B s2Step261Add0Work
    (by decide +kernel) (by decide +kernel) s2Step261Add0_distinct
    (fun q hq => s2Step261Add0_owned (List.mem_toFinset.mpr hq)) s2Step261Add0_borrowed

private theorem s2Step261Add1_apart : Disjoint s2Step261Add1Arena.live s2Step261Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step261Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step261Add1_card : s2Step261Add1Arena.live.card=896 := by
  decide +kernel

private theorem s2Step261Add1_borrowed : s2Step261Add1Arena.checkBorrow (hmrHybridCount s2Step261Add1Arena s2Step261Add1B.length) s2Step261Add1Work=some s2Step261Add1During := by
  have len : s2Step261Add1Work.length=hmrHybridCount s2Step261Add1Arena s2Step261Add1B.length := by
    rw [hmrHybridCount,s2Step261Add1_card]
    decide +kernel
  have nd : s2Step261Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step261Add1Arena s2Step261Add1During s2Step261Add1Work.toFinset s2Step261Add1_bounded s2Step261Add1_apart rfl

private theorem s2Step261Add1_distinct : (829::814::885::(s2Step261Add1A++s2Step261Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step261Add1_owned : (829::814::885::(s2Step261Add1A++s2Step261Add1B)).toFinset⊆s2Step261Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step261Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step261Add1_checked : compileHmrHybridCinLog s2Step261Add1Arena 814 829 885 s2Step261Add1A s2Step261Add1B s2Step261Add1Work=some s2Step261Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step261Add1Arena s2Step261Add1During 814 829 885 s2Step261Add1A s2Step261Add1B s2Step261Add1Work
    (by decide +kernel) (by decide +kernel) s2Step261Add1_distinct
    (fun q hq => s2Step261Add1_owned (List.mem_toFinset.mpr hq)) s2Step261Add1_borrowed

private theorem s2Step261F4_apart : Disjoint (s2Step261Add0A++s2Step261Add0B).toFinset (s2Step261Add1A++s2Step261Add1B).toFinset := by
  have nd : ((s2Step261Add0A++s2Step261Add0B)++(s2Step261Add1A++s2Step261Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step261F4_carry : s2Step261F4FlagArena.checkBorrow 1 [885]=some s2Step261Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step261F4FlagArena,s2Step261HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step261F4FlagArena,s2Step261HeadFvAfter,s2Step261Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step261F4_distinct : (788::814::829::885::((s2Step261Add0A++s2Step261Add1A)++(s2Step261Add0B++s2Step261Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step261F4_flag : s2Step261HeadFvAfter.checkBorrow 1 [829]=some s2Step261F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step261HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step261F4_owned : (788::814::((s2Step261Add0A++s2Step261Add1A)++(s2Step261Add0B++s2Step261Add1B))).toFinset⊆s2Step261HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step261HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step261F4_checked : compileHmrHybridF4Log s2Step261HeadFvAfter 788 814 s2Step261Add0A s2Step261Add0B s2Step261Add1A s2Step261Add1B [829] [885] s2Step261Add0Work s2Step261Add1Work=some s2Step261F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step261HeadFvAfter s2Step261F4FlagArena s2Step261Add0Arena s2Step261Add0During s2Step261Add1During 788 814
    s2Step261Add0A s2Step261Add0B s2Step261Add1A s2Step261Add1B [829] [885] s2Step261Add0Work s2Step261Add1Work
    (fun q hq => s2Step261F4_owned (List.mem_toFinset.mpr hq)) s2Step261F4_flag s2Step261F4_carry
    s2Step261F4_distinct s2Step261F4_apart s2Step261Add0_checked s2Step261Add1_checked

private theorem s2Step261Front_branch : s2Step261FrontSigmaArena.checkBorrow 1 [814]=some s2Step261HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step261FrontSigmaArena,s2Step261EntryGvAfter,s2Step261EntryFBefore,arenaWires]
  · ext q
    simp only [s2Step261FrontSigmaArena,s2Step261EntryGvAfter,s2Step261EntryFBefore,s2Step261HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step261Front_entry : HmrFrontEntryValid s2Step261EntryFBefore s2Step261FrontBank 140 145 ⟨139,139,145,145⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step261FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step261EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step261EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step261FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step261Front_sigma : s2Step261EntryGvAfter.checkBorrow 1 [788]=some s2Step261FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step261EntryGvAfter,s2Step261EntryFBefore,arenaWires]
  · rfl

private def s2Step261HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step261HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step261HeadFBefore : Arena := s2Step261HeadGAfter

private def s2Step261HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651],768⟩

private def s2Step261HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807],770⟩

private def s2Step261HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139],769⟩

private def s2Step261HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840],771⟩

private theorem s2Step261HeadBank_incomingDistinct : ([s2Step261HeadGRow,s2Step261HeadFRow,s2Step261HeadGvRow,s2Step261HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step261HeadF_Incoming : rowsOwned s2Step261HeadFBefore [s2Step261HeadFRow,s2Step261HeadGvRow,s2Step261HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step261HeadGRow,s2Step261HeadFRow,s2Step261HeadGvRow,s2Step261HeadFvRow] 1 s2Step261HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step261HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step261HeadBank_outgoingOwned : rowsOwned s2Step261HeadFvAfter [s2Step261HeadGOut,s2Step261HeadFOut,s2Step261HeadGvOut,s2Step261HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step261HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step261HeadF_Outgoing : rowsOwned s2Step261HeadFvAfter [s2Step261HeadFOut,s2Step261HeadGvOut,s2Step261HeadFvOut] :=
  hmrRows_owned_drop s2Step261HeadFvAfter [s2Step261HeadGOut,s2Step261HeadFOut,s2Step261HeadGvOut,s2Step261HeadFvOut] 1 s2Step261HeadBank_outgoingOwned

private theorem s2Step261HeadF_distinct : (s2Step261HeadFRow.sign::s2Step261HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step261HeadF_owned : (s2Step261HeadFRow.sign::s2Step261HeadFRow.payload).toFinset⊆s2Step261HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step261HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step261HeadF_reserved : s2Step261HeadFBefore.reserve s2Step261HeadFFresh.toFinset=some s2Step261HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step261HeadFFresh,arenaWires]
  · norm_num [s2Step261HeadFBefore,s2Step261HeadGAfter,s2Step261HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step261HeadFAfter,s2Step261HeadFBefore,s2Step261HeadGAfter,s2Step261HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step261HeadF_checked : planRowResizeLog s2Step261HeadFBefore s2Step261HeadFRow 141 s2Step261HeadFFresh=
    some (s2Step261HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 891],768⟩,growRow 768 s2Step261HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step261HeadFBefore s2Step261HeadFAfter s2Step261HeadFRow 141 s2Step261HeadFFresh
    s2Step261HeadF_distinct s2Step261HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step261HeadF_reserved
  have rowEq : WindowRow.mk (s2Step261HeadFRow.payload++s2Step261HeadFFresh) s2Step261HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 891],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step261HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step261HeadFvBefore : Arena := s2Step261HeadGvAfter

private theorem s2Step261HeadFv_Incoming : rowsOwned s2Step261HeadFvBefore [s2Step261HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step261HeadGRow,s2Step261HeadFRow,s2Step261HeadGvRow,s2Step261HeadFvRow] 3 s2Step261HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step261HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step261HeadFv_Outgoing : rowsOwned s2Step261HeadFvAfter [s2Step261HeadFvOut] :=
  hmrRows_owned_drop s2Step261HeadFvAfter [s2Step261HeadGOut,s2Step261HeadFOut,s2Step261HeadGvOut,s2Step261HeadFvOut] 3 s2Step261HeadBank_outgoingOwned

private theorem s2Step261HeadFv_distinct : (s2Step261HeadFvRow.sign::s2Step261HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step261HeadFv_owned : (s2Step261HeadFvRow.sign::s2Step261HeadFvRow.payload).toFinset⊆s2Step261HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step261HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step261HeadFv_reserved : s2Step261HeadFvBefore.reserve s2Step261HeadFvFresh.toFinset=some s2Step261HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step261HeadFvFresh,arenaWires]
  · norm_num [s2Step261HeadFvBefore,s2Step261HeadGvAfter,s2Step261HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step261HeadFvAfter,s2Step261HeadFvBefore,s2Step261HeadGvAfter,s2Step261HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step261HeadFv_checked : planRowResizeLog s2Step261HeadFvBefore s2Step261HeadFvRow 146 s2Step261HeadFvFresh=
    some (s2Step261HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792],770⟩,growRow 770 s2Step261HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step261HeadFvBefore s2Step261HeadFvAfter s2Step261HeadFvRow 146 s2Step261HeadFvFresh
    s2Step261HeadFv_distinct s2Step261HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step261HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step261HeadFvRow.payload++s2Step261HeadFvFresh) s2Step261HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step261HeadG_Incoming : rowsOwned s2Step261HeadGBefore [s2Step261HeadGRow,s2Step261HeadFRow,s2Step261HeadGvRow,s2Step261HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step261HeadGRow,s2Step261HeadFRow,s2Step261HeadGvRow,s2Step261HeadFvRow] 0 s2Step261HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step261HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step261HeadG_Outgoing : rowsOwned s2Step261HeadFvAfter [s2Step261HeadGOut,s2Step261HeadFOut,s2Step261HeadGvOut,s2Step261HeadFvOut] :=
  hmrRows_owned_drop s2Step261HeadFvAfter [s2Step261HeadGOut,s2Step261HeadFOut,s2Step261HeadGvOut,s2Step261HeadFvOut] 0 s2Step261HeadBank_outgoingOwned

private theorem s2Step261HeadG_distinct : (s2Step261HeadGRow.sign::s2Step261HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step261HeadG_owned : (s2Step261HeadGRow.sign::s2Step261HeadGRow.payload).toFinset⊆s2Step261HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step261HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step261HeadG_reserved : s2Step261HeadGBefore.reserve s2Step261HeadGFresh.toFinset=some s2Step261HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step261HeadGFresh,arenaWires]
  · norm_num [s2Step261HeadGBefore,s2Step261HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step261HeadGAfter,s2Step261HeadGBefore,s2Step261HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step261HeadG_checked : planRowResizeLog s2Step261HeadGBefore s2Step261HeadGRow 141 s2Step261HeadGFresh=
    some (s2Step261HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 867],769⟩,growRow 769 s2Step261HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step261HeadGBefore s2Step261HeadGAfter s2Step261HeadGRow 141 s2Step261HeadGFresh
    s2Step261HeadG_distinct s2Step261HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step261HeadG_reserved
  have rowEq : WindowRow.mk (s2Step261HeadGRow.payload++s2Step261HeadGFresh) s2Step261HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 867],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step261HeadGvBefore : Arena := s2Step261HeadFAfter

private theorem s2Step261HeadGv_Incoming : rowsOwned s2Step261HeadGvBefore [s2Step261HeadGvRow,s2Step261HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step261HeadGRow,s2Step261HeadFRow,s2Step261HeadGvRow,s2Step261HeadFvRow] 2 s2Step261HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step261HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step261HeadGv_Outgoing : rowsOwned s2Step261HeadFvAfter [s2Step261HeadGvOut,s2Step261HeadFvOut] :=
  hmrRows_owned_drop s2Step261HeadFvAfter [s2Step261HeadGOut,s2Step261HeadFOut,s2Step261HeadGvOut,s2Step261HeadFvOut] 2 s2Step261HeadBank_outgoingOwned

private theorem s2Step261HeadGv_distinct : (s2Step261HeadGvRow.sign::s2Step261HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step261HeadGv_owned : (s2Step261HeadGvRow.sign::s2Step261HeadGvRow.payload).toFinset⊆s2Step261HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step261HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step261HeadGv_reserved : s2Step261HeadGvBefore.reserve s2Step261HeadGvFresh.toFinset=some s2Step261HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step261HeadGvFresh,arenaWires]
  · norm_num [s2Step261HeadGvBefore,s2Step261HeadFAfter,s2Step261HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step261HeadGvAfter,s2Step261HeadGvBefore,s2Step261HeadFAfter,s2Step261HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step261HeadGv_checked : planRowResizeLog s2Step261HeadGvBefore s2Step261HeadGvRow 146 s2Step261HeadGvFresh=
    some (s2Step261HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 794],771⟩,growRow 771 s2Step261HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step261HeadGvBefore s2Step261HeadGvAfter s2Step261HeadGvRow 146 s2Step261HeadGvFresh
    s2Step261HeadGv_distinct s2Step261HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step261HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step261HeadGvRow.payload++s2Step261HeadGvFresh) s2Step261HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 794],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step261HeadBank_rows : planWindowRowsLog s2Step261HeadGBefore [(s2Step261HeadGRow,141),(s2Step261HeadFRow,141),(s2Step261HeadGvRow,146),(s2Step261HeadFvRow,146)] [s2Step261HeadGFresh,s2Step261HeadFFresh,s2Step261HeadGvFresh,s2Step261HeadFvFresh]=
    some (s2Step261HeadFvAfter,[s2Step261HeadGOut,s2Step261HeadFOut,s2Step261HeadGvOut,s2Step261HeadFvOut],(growRow 769 s2Step261HeadGFresh ++ (growRow 768 s2Step261HeadFFresh ++ (growRow 771 s2Step261HeadGvFresh ++ (growRow 770 s2Step261HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step261HeadFvAfter [] []=some (s2Step261HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step261HeadFvBefore s2Step261HeadFvAfter s2Step261HeadFvAfter
    s2Step261HeadFvRow s2Step261HeadFvOut 146 s2Step261HeadFvFresh [] [] []
    (growRow 770 s2Step261HeadFvFresh) ([]) s2Step261HeadFv_Incoming s2Step261HeadFv_checked h4 s2Step261HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step261HeadGvBefore s2Step261HeadGvAfter s2Step261HeadFvAfter
    s2Step261HeadGvRow s2Step261HeadGvOut 146 s2Step261HeadGvFresh [(s2Step261HeadFvRow,146)] [s2Step261HeadFvFresh] [s2Step261HeadFvOut]
    (growRow 771 s2Step261HeadGvFresh) ((growRow 770 s2Step261HeadFvFresh ++ [])) s2Step261HeadGv_Incoming s2Step261HeadGv_checked h3 s2Step261HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step261HeadFBefore s2Step261HeadFAfter s2Step261HeadFvAfter
    s2Step261HeadFRow s2Step261HeadFOut 141 s2Step261HeadFFresh [(s2Step261HeadGvRow,146),(s2Step261HeadFvRow,146)] [s2Step261HeadGvFresh,s2Step261HeadFvFresh] [s2Step261HeadGvOut,s2Step261HeadFvOut]
    (growRow 768 s2Step261HeadFFresh) ((growRow 771 s2Step261HeadGvFresh ++ (growRow 770 s2Step261HeadFvFresh ++ []))) s2Step261HeadF_Incoming s2Step261HeadF_checked h2 s2Step261HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step261HeadGBefore s2Step261HeadGAfter s2Step261HeadFvAfter
    s2Step261HeadGRow s2Step261HeadGOut 141 s2Step261HeadGFresh [(s2Step261HeadFRow,141),(s2Step261HeadGvRow,146),(s2Step261HeadFvRow,146)] [s2Step261HeadFFresh,s2Step261HeadGvFresh,s2Step261HeadFvFresh] [s2Step261HeadFOut,s2Step261HeadGvOut,s2Step261HeadFvOut]
    (growRow 769 s2Step261HeadGFresh) ((growRow 768 s2Step261HeadFFresh ++ (growRow 771 s2Step261HeadGvFresh ++ (growRow 770 s2Step261HeadFvFresh ++ [])))) s2Step261HeadG_Incoming s2Step261HeadG_checked h1 s2Step261HeadG_Outgoing
  exact h0

private theorem s2Step261HeadBank_checked : compileHmrBankResizeLog .headroom s2Step261HeadGBefore ⟨s2Step261HeadFRow,s2Step261HeadGRow,s2Step261HeadFvRow,s2Step261HeadGvRow⟩ ⟨141,141,146,146⟩ [s2Step261HeadGFresh,s2Step261HeadFFresh,s2Step261HeadGvFresh,s2Step261HeadFvFresh]=
    some (s2Step261HeadFvAfter,⟨s2Step261HeadFOut,s2Step261HeadGOut,s2Step261HeadFvOut,s2Step261HeadGvOut⟩,(growRow 769 s2Step261HeadGFresh ++ (growRow 768 s2Step261HeadFFresh ++ (growRow 771 s2Step261HeadGvFresh ++ (growRow 770 s2Step261HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step261HeadBank_rows]
  rfl

private theorem s2Step261Front_checked : compileHmrSourceFrontLog s2Step261EntryFBefore s2Step261FrontBank 140 145 ⟨139,139,145,145⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step261FrontLog=some s2Step261FrontPlan := by
  have pairEq : s2Step261FrontPair=⟨s2Step261HeadFRow,s2Step261HeadGRow,s2Step261HeadFvRow,s2Step261HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step261FrontHead=⟨s2Step261ExitFRow,s2Step261ExitGRow,s2Step261ExitFvRow,s2Step261ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step261Add0A=s2Step261FrontHead.f.wires := by decide +kernel
  have gEq : s2Step261Add0B=s2Step261FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step261Add1A=s2Step261FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step261Add1B=s2Step261FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step261EntryFBefore s2Step261FrontBank 140 145 ⟨139,139,145,145⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step261FrontLog s2Step261FrontPlan
  · exact s2Step261Front_entry
  · exact s2Step261EntryBank_checked
  · exact s2Step261Front_sigma
  · rfl
  · exact s2Step261Front_branch
  · rfl
  · simpa only [s2Step261FrontPlan,pairEq] using s2Step261HeadBank_checked
  · simpa only [s2Step261FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step261F4_checked
  · exact s2Step261Counter_checked
  · rfl
  · simpa only [s2Step261FrontPlan,headEq] using s2Step261ExitBank_checked

private theorem s2Step261Complete_explicit_checked : compileHmrEarlyStepLog s2Step261EntryFBefore s2Step261FrontBank 140 145 ⟨139,139,145,145⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 52 s2Step261CompleteLog=some s2Step261CompletePlan := by
  let Q := s2Step261EarlyControlPlan
  have hq := s2Step261EarlyControl_plan_checked
  have fv1 : s2Step261CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step261CompleteOut.fv.payload[2]?.getD s2Step261CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step261CompleteOut.fv.payload[3]?.getD s2Step261CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step261CompleteOut.fv.payload[4]?.getD s2Step261CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step261EntryFBefore s2Step261EarlyControlArena s2Step261FrontBank 140 145 ⟨139,139,145,145⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 52 s2Step261CompleteLog s2Step261FrontPlan Q
    s2Step261Front_checked s2Step261Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step261Complete_owned s2Step261Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step261EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 777 788 s2Step261CompleteOut.fv.second (s2Step261CompleteOut.fv.payload[2]?.getD s2Step261CompleteOut.fv.sign) (s2Step261CompleteOut.fv.payload[3]?.getD s2Step261CompleteOut.fv.sign) (s2Step261CompleteOut.fv.payload[4]?.getD s2Step261CompleteOut.fv.sign) 814 52 s2Step261EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep261Arena : Arena := s2Step261EntryFBefore
def s2PrivateStep261Bank : WindowBank := s2Step261FrontBank
def s2PrivateStep261Spec : HmrSourceWalkStepLog := ⟨140,145,⟨139,139,145,145⟩,52,.early s2Step261CompleteLog⟩
def s2PrivateStep261Plan : HmrSourceStepPlan := .early s2Step261CompletePlan
theorem s2PrivateStep261_source : s2PrivateStep261Spec=s2ObservedLogs256[5] := rfl
theorem s2PrivateStep261_checked : compileHmrSourceStepLog s2PrivateStep261Arena s2PrivateStep261Bank
    s2PrivateStep261Spec.fgWidth s2PrivateStep261Spec.vWidth s2PrivateStep261Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902]
    6 498 261 s2PrivateStep261Spec.need none s2PrivateStep261Spec.log=some s2PrivateStep261Plan := by
  change compileHmrSourceStepLog s2Step261EntryFBefore s2Step261FrontBank 140 145 ⟨139,139,145,145⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 6 498 261 52 none (.early s2Step261CompleteLog)=some (.early s2Step261CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 261<498)]
  rw [s2Step261Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
