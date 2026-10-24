import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep260
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

private def s2Step262CompleteMoves : List (Wire × Wire) := [(879,138)]

private def s2Step262EarlyControlLog : HmrEarlyControlLog := ⟨[879, 794, 877, 836, 891],[867],[829],[885, 782, 817, 830, 800, 894],[]⟩

private def s2Step262FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[836], [877], [794], [792]],[[], [], [], []]⟩,[814],[788],[891],[867],[829, 885, 782, 817, 830, 800, 894, 896, 901, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[829, 885, 782, 817, 830, 800, 894, 896, 901, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[891, 867, 829, 885]⟩

private def s2Step262CompleteLog : HmrEarlyStepLog := ⟨s2Step262FrontLog,s2Step262CompleteMoves,s2Step262EarlyControlLog⟩

private def s2Step262ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650],768⟩

private def s2Step262ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792],770⟩

private def s2Step262ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137],769⟩

private def s2Step262ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840],771⟩

private def s2Step262FrontOut : WindowBank := ⟨s2Step262ExitFOut,s2Step262ExitGOut,s2Step262ExitFvOut,s2Step262ExitGvOut⟩

private def s2Step262CompleteOut : WindowBank := s2Step262FrontOut.repacked s2Step262CompleteMoves

private def s2Step262EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step262EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step262EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step262EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step262EarlyControlPositiveArena,[867],s2Step262EarlyControlEqualityArena,[829],⟨⟨814,false⟩,[⟨⟨867,false⟩,829⟩]⟩⟩

private def s2Step262EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step262EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step262EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step262EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step262EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step262EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step262EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,879⟩,⟨⟨774,false⟩,794⟩,⟨⟨775,false⟩,877⟩,⟨⟨776,false⟩,836⟩,⟨⟨777,false⟩,891⟩]⟩

private def s2Step262EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step262EarlyControlZeroArena,s2Step262EarlyControlZeroPlan,s2Step262EarlyControlClassPlan,s2Step262EarlyControlFlagArena,s2Step262EarlyControlFittedArena,s2Step262EarlyControlHistoryArena,s2Step262EarlyControlSigmaArena,s2Step262EarlyControlOutputArena,s2Step262EarlyControlLog⟩

private def s2Step262CounterWork : List Wire := [891, 867, 829, 885]

private theorem s2Step262Counter_bounded : s2Step262CounterWork.toFinset⊆arenaWires := by norm_num [s2Step262CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step262HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step262CounterDuring : Arena := ⟨s2Step262HeadFvAfter.live∪s2Step262CounterWork.toFinset,Finset.union_subset s2Step262HeadFvAfter.bounded s2Step262Counter_bounded⟩

private def s2Step262EntryFFresh : List Wire := []

private def s2Step262EntryFvFresh : List Wire := []

private def s2Step262EntryGFresh : List Wire := []

private def s2Step262EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step262EntryGvAfter : Arena := s2Step262EntryFBefore

private def s2Step262EntryGvFresh : List Wire := []

private def s2Step262ExitFExtra : List Wire := [877]

private def s2Step262ExitGExtra : List Wire := [138, 836]

private def s2Step262ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<138) ∨ (139≤q ∧ q<782) ∨ (783≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step262ExitGvExtra : List Wire := [794]

private def s2Step262Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step262Add0Work : List Wire := [829, 885, 782, 817, 830, 800, 894, 896, 901, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step262Add0_bounded : s2Step262Add0Work.toFinset⊆arenaWires := by
  have h : s2Step262Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step262Add0During : Arena := ⟨s2Step262Add0Arena.live∪s2Step262Add0Work.toFinset,Finset.union_subset s2Step262Add0Arena.bounded s2Step262Add0_bounded⟩

private def s2Step262Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step262Add1Work : List Wire := [829, 885, 782, 817, 830, 800, 894, 896, 901, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step262Add1_bounded : s2Step262Add1Work.toFinset⊆arenaWires := by
  have h : s2Step262Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step262Add1During : Arena := ⟨s2Step262Add1Arena.live∪s2Step262Add1Work.toFinset,Finset.union_subset s2Step262Add1Arena.bounded s2Step262Add1_bounded⟩

private def s2Step262F4FlagArena : Arena := ⟨s2Step262HeadFvAfter.live∪{891},Finset.union_subset s2Step262HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step262F4Plan : HmrHybridF4Plan := ⟨s2Step262F4FlagArena,[891],s2Step262Add0Arena,[867],s2Step262Add0During,s2Step262Add0Work,s2Step262Add1During,s2Step262Add1Work⟩

private def s2Step262HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 877],768⟩

private def s2Step262HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792],770⟩

private def s2Step262HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 836],769⟩

private def s2Step262HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 794],771⟩

private def s2Step262FrontHead : WindowBank := ⟨s2Step262HeadFOut,s2Step262HeadGOut,s2Step262HeadFvOut,s2Step262HeadGvOut⟩

private def s2Step262EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650],768⟩

private def s2Step262EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807],770⟩

private def s2Step262EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138],769⟩

private def s2Step262EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840],771⟩

private def s2Step262FrontPair : WindowBank := ⟨s2Step262EntryFOut,s2Step262EntryGOut,s2Step262EntryFvOut,s2Step262EntryGvOut⟩

private def s2Step262FrontSigmaArena : Arena := ⟨s2Step262EntryGvAfter.live∪{814},Finset.union_subset s2Step262EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step262HeadFFresh : List Wire := [877]

private def s2Step262HeadFvFresh : List Wire := [792]

private def s2Step262HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step262HeadGFresh : List Wire := [836]

private def s2Step262HeadGvFresh : List Wire := [794]

private def s2Step262FrontPlan : HmrSourceFront := ⟨s2Step262EntryGvAfter,s2Step262FrontPair,(growRow 768 s2Step262EntryFFresh ++ (growRow 769 s2Step262EntryGFresh ++ (growRow 770 s2Step262EntryFvFresh ++ (growRow 771 s2Step262EntryGvFresh ++ [])))),s2Step262FrontSigmaArena,[814],s2Step262HeadGBefore,[788],
  s2Step262HeadFvAfter,s2Step262FrontHead,(growRow 769 s2Step262HeadGFresh ++ (growRow 768 s2Step262HeadFFresh ++ (growRow 771 s2Step262HeadGvFresh ++ (growRow 770 s2Step262HeadFvFresh ++ [])))),s2Step262F4Plan,s2Step262CounterDuring,s2Step262CounterWork,s2Step262ExitGvAfter,s2Step262FrontOut,(shrinkRow 769 s2Step262ExitGExtra ++ (shrinkRow 768 s2Step262ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step262ExitGvExtra ++ []))))⟩

private def s2Step262CompletePlan : HmrEarlyStepPlan := ⟨s2Step262FrontPlan,s2Step262EarlyControlArena,s2Step262EarlyControlPlan,s2Step262CompleteMoves⟩

private theorem s2Step262Complete_apart : List.Disjoint (s2Step262CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [814, 788, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] := by
  have nd : ((s2Step262CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[814, 788, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step262Complete_owned : (s2Step262CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step262EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step262EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private def s2Step262CompleteMoveArena : Arena := ⟨s2Step262ExitGvAfter.live∪{138},Finset.union_subset s2Step262ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step262Complete_repack : s2Step262ExitGvAfter.checkRepack s2Step262CompleteMoves=some s2Step262EarlyControlArena := by
  have owned : 879∈s2Step262ExitGvAfter.live := by norm_num [s2Step262ExitGvAfter,arenaWires]
  have reserve : s2Step262ExitGvAfter.reserve {138}=some s2Step262CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step262ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step262CompleteMoveArena.retireSet {879}=s2Step262EarlyControlArena := by
    unfold Arena.retireSet s2Step262EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step262CompleteMoveArena,s2Step262ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step262CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step262CompleteMoveArena.retireSet {879}).checkRepack []=some s2Step262EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step262EarlyControl_branchOwned : ([788] : List Wire).toFinset⊆s2Step262EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step262EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step262EarlyControl_branch : compileHmrBranchRetirement s2Step262EarlyControlSigmaArena 788=some s2Step262EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step262EarlyControl_branchOwned
  · ext q
    simp [s2Step262EarlyControlOutputArena,s2Step262EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step262EarlyControl_classEqualityBorrow : s2Step262EarlyControlPositiveArena.checkBorrow (([814, 867] : List Wire).length-1) s2Step262EarlyControlLog.classWork=some s2Step262EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step262EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step262EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
      decide +kernel
    · ext q
      simp [s2Step262EarlyControlEqualityArena,s2Step262EarlyControlPositiveArena,s2Step262EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step262EarlyControl_classEqualityOwned : ([814, 867] : List Wire).toFinset⊆s2Step262EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step262EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step262EarlyControl_classEquality : compileHmrEqualityLog s2Step262EarlyControlPositiveArena [814, 867] 0 s2Step262EarlyControlLog.classWork=some (s2Step262EarlyControlEqualityArena,s2Step262EarlyControlLog.classWork,s2Step262EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step262EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step262EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step262EarlyControl_classOwned : ([777, 891, 814] : List Wire).toFinset⊆s2Step262EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step262EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step262EarlyControl_positiveBorrow : s2Step262EarlyControlZeroArena.checkBorrow (1) s2Step262EarlyControlLog.positiveWork=some s2Step262EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step262EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step262EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
      decide +kernel
    · ext q
      simp [s2Step262EarlyControlPositiveArena,s2Step262EarlyControlZeroArena,s2Step262EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step262EarlyControl_class : compileHmrSourceClassLog s2Step262EarlyControlZeroArena false 777 s2Step262EarlyControlZeroPlan.top 0 814 s2Step262EarlyControlLog.positiveWork s2Step262EarlyControlLog.classWork=some s2Step262EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step262EarlyControlClassPlan s2Step262EarlyControlZeroArena false 777 s2Step262EarlyControlZeroPlan.top 0 814
  constructor
  · decide +kernel
  · exact s2Step262EarlyControl_classOwned
  · exact s2Step262EarlyControl_positiveBorrow
  · exact s2Step262EarlyControl_classEquality

private theorem s2Step262EarlyControl_entryRecordOwned : ([788, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] : List Wire).toFinset⊆s2Step262EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step262EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step262EarlyControl_entrySigmaOwned : ([814, 254] : List Wire).toFinset⊆s2Step262EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step262EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step262EarlyControl_fitBorrow : s2Step262EarlyControlFlagArena.checkBorrow ((52-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] : List Wire).length)) s2Step262EarlyControlLog.recordFresh=some s2Step262EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step262EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step262EarlyControlFlagArena (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
      decide +kernel
    · ext q
      simp [s2Step262EarlyControlFittedArena,s2Step262EarlyControlFlagArena,s2Step262EarlyControlLog,arenaWires]

private theorem s2Step262EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] : List Wire).toFinset⊆s2Step262EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step262EarlyControlFlagArena (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step262EarlyControl_fit : compileHmrRecordGrowLog s2Step262EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 52 s2Step262EarlyControlLog.recordFresh=some s2Step262EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step262EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step262EarlyControl_fitBorrow

private theorem s2Step262EarlyControl_flagsBorrow : s2Step262EarlyControlEqualityArena.checkBorrow (6) s2Step262EarlyControlLog.flagWork=some s2Step262EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step262EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step262EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
      decide +kernel
    · ext q
      simp [s2Step262EarlyControlFlagArena,s2Step262EarlyControlEqualityArena,s2Step262EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step262EarlyControl_flagsOwned : ([829, 253, 252, 251] : List Wire).toFinset⊆s2Step262EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step262EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step262EarlyControl_flags : compileHmrFlagsLog s2Step262EarlyControlClassPlan.equalityArena s2Step262EarlyControlClassPlan.equality.top 253 252 251 s2Step262EarlyControlLog.flagWork=some s2Step262EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step262EarlyControl_flagsOwned⟩
  · exact s2Step262EarlyControl_flagsBorrow

private theorem s2Step262EarlyControl_historyBorrow : s2Step262EarlyControlArena.checkBorrow ((52-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] : List Wire).length)) s2Step262EarlyControlLog.recordFresh=some s2Step262EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step262EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step262EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
      decide +kernel
    · ext q
      simp [s2Step262EarlyControlHistoryArena,s2Step262EarlyControlArena,s2Step262EarlyControlLog,arenaWires]

private theorem s2Step262EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] : List Wire).toFinset⊆s2Step262EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step262EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step262EarlyControl_history : compileHmrRecordGrowLog s2Step262EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 52 s2Step262EarlyControlLog.recordFresh=some s2Step262EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step262EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step262EarlyControl_historyBorrow

private theorem s2Step262EarlyControl_sigmaOwned : ([254, 814] : List Wire).toFinset⊆s2Step262EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step262EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step262EarlyControl_sigmaReleaseOwned : ([814] : List Wire).toFinset⊆s2Step262EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step262EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step262EarlyControl_sigmaRelease : s2Step262EarlyControlHistoryArena.release {814} (fun _ => false)=some s2Step262EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step262EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step262EarlyControlSigmaArena,s2Step262EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step262EarlyControl_sigma : compileHmrSigmaDropLog s2Step262EarlyControlHistoryArena false 0 0 254 814 []=some s2Step262EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step262EarlyControl_sigmaOwned⟩
  · exact s2Step262EarlyControl_sigmaRelease

private theorem s2Step262EarlyControl_zeroBorrow : s2Step262EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step262EarlyControlLog.zeroWork=some s2Step262EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step262EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step262EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
      decide +kernel
    · ext q
      simp [s2Step262EarlyControlZeroArena,s2Step262EarlyControlArena,s2Step262EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step262EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step262EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step262EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step262EarlyControl_zero : compileHmrEqualityLog s2Step262EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step262EarlyControlLog.zeroWork=some (s2Step262EarlyControlZeroArena,s2Step262EarlyControlLog.zeroWork,s2Step262EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step262EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step262EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step262EarlyControl_logged : s2Step262EarlyControlPlan.Logged s2Step262EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 777 814 254 253 252 251 788 52 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step262EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step262EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step262EarlyControl_zero
  · exact s2Step262EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step262EarlyControl_flags
  · exact s2Step262EarlyControl_fit
  · exact s2Step262EarlyControl_history
  · exact s2Step262EarlyControl_sigma
  · exact s2Step262EarlyControl_branch

private theorem s2Step262EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step262EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 777 814 254 253 252 251 788 52 s2Step262EarlyControlLog=some s2Step262EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step262EarlyControlPlan s2Step262EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 777 814 254 253 252 251 788 52 s2Step262EarlyControl_logged

private def s2Step262EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650],768⟩

private def s2Step262EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807],770⟩

private def s2Step262EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138],769⟩

private def s2Step262EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840],771⟩

private def s2Step262FrontBank : WindowBank := ⟨s2Step262EntryFRow,s2Step262EntryGRow,s2Step262EntryFvRow,s2Step262EntryGvRow⟩

private def s2Step262Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 877, 768]

private def s2Step262Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 836, 769]

private def s2Step262Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 770]

private def s2Step262Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 794, 771]

private theorem s2Step262Counter_apart : Disjoint s2Step262HeadFvAfter.live s2Step262CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step262HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step262Counter_borrowed : s2Step262HeadFvAfter.checkBorrow 4 s2Step262CounterWork=some s2Step262CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step262HeadFvAfter s2Step262CounterDuring s2Step262CounterWork.toFinset s2Step262Counter_bounded s2Step262Counter_apart rfl

private theorem s2Step262Counter_owned : (814::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step262HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step262HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step262Counter_checked : compileHmrCounterStepLog s2Step262HeadFvAfter true 814 [772, 773, 774, 775, 776, 777] s2Step262CounterWork=some s2Step262CounterDuring := by
  have owned : ∀q∈814::[772, 773, 774, 775, 776, 777],q∈s2Step262HeadFvAfter.live := fun q hq => s2Step262Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step262Counter_borrowed

private def s2Step262EntryFAfter : Arena := s2Step262EntryFBefore

private theorem s2Step262EntryBank_incomingDistinct : ([s2Step262EntryFRow,s2Step262EntryGRow,s2Step262EntryFvRow,s2Step262EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step262EntryF_Incoming : rowsOwned s2Step262EntryFBefore [s2Step262EntryFRow,s2Step262EntryGRow,s2Step262EntryFvRow,s2Step262EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step262EntryFRow,s2Step262EntryGRow,s2Step262EntryFvRow,s2Step262EntryGvRow] 0 s2Step262EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step262EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step262EntryBank_outgoingOwned : rowsOwned s2Step262EntryGvAfter [s2Step262EntryFOut,s2Step262EntryGOut,s2Step262EntryFvOut,s2Step262EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step262EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step262EntryF_Outgoing : rowsOwned s2Step262EntryGvAfter [s2Step262EntryFOut,s2Step262EntryGOut,s2Step262EntryFvOut,s2Step262EntryGvOut] :=
  hmrRows_owned_drop s2Step262EntryGvAfter [s2Step262EntryFOut,s2Step262EntryGOut,s2Step262EntryFvOut,s2Step262EntryGvOut] 0 s2Step262EntryBank_outgoingOwned

private theorem s2Step262EntryF_distinct : (s2Step262EntryFRow.sign::s2Step262EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step262EntryF_owned : (s2Step262EntryFRow.sign::s2Step262EntryFRow.payload).toFinset⊆s2Step262EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step262EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step262EntryF_reserved : s2Step262EntryFBefore.reserve s2Step262EntryFFresh.toFinset=some s2Step262EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step262EntryFFresh,arenaWires]
  · norm_num [s2Step262EntryFBefore,s2Step262EntryFFresh,arenaWires]
  · simp only [s2Step262EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step262EntryF_checked : planRowResizeLog s2Step262EntryFBefore s2Step262EntryFRow 139 s2Step262EntryFFresh=
    some (s2Step262EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650],768⟩,growRow 768 s2Step262EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step262EntryFBefore s2Step262EntryFAfter s2Step262EntryFRow 139 s2Step262EntryFFresh
    s2Step262EntryF_distinct s2Step262EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step262EntryF_reserved
  have rowEq : WindowRow.mk (s2Step262EntryFRow.payload++s2Step262EntryFFresh) s2Step262EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step262EntryFvAfter : Arena := s2Step262EntryFBefore

private def s2Step262EntryFvBefore : Arena := s2Step262EntryFBefore

private theorem s2Step262EntryFv_Incoming : rowsOwned s2Step262EntryFvBefore [s2Step262EntryFvRow,s2Step262EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step262EntryFRow,s2Step262EntryGRow,s2Step262EntryFvRow,s2Step262EntryGvRow] 2 s2Step262EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step262EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step262EntryFv_Outgoing : rowsOwned s2Step262EntryGvAfter [s2Step262EntryFvOut,s2Step262EntryGvOut] :=
  hmrRows_owned_drop s2Step262EntryGvAfter [s2Step262EntryFOut,s2Step262EntryGOut,s2Step262EntryFvOut,s2Step262EntryGvOut] 2 s2Step262EntryBank_outgoingOwned

private theorem s2Step262EntryFv_distinct : (s2Step262EntryFvRow.sign::s2Step262EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step262EntryFv_owned : (s2Step262EntryFvRow.sign::s2Step262EntryFvRow.payload).toFinset⊆s2Step262EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step262EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step262EntryFv_reserved : s2Step262EntryFvBefore.reserve s2Step262EntryFvFresh.toFinset=some s2Step262EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step262EntryFvFresh,arenaWires]
  · norm_num [s2Step262EntryFvBefore,s2Step262EntryFBefore,s2Step262EntryFvFresh,arenaWires]
  · simp only [s2Step262EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step262EntryFv_checked : planRowResizeLog s2Step262EntryFvBefore s2Step262EntryFvRow 145 s2Step262EntryFvFresh=
    some (s2Step262EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807],770⟩,growRow 770 s2Step262EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step262EntryFvBefore s2Step262EntryFvAfter s2Step262EntryFvRow 145 s2Step262EntryFvFresh
    s2Step262EntryFv_distinct s2Step262EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step262EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step262EntryFvRow.payload++s2Step262EntryFvFresh) s2Step262EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step262EntryGAfter : Arena := s2Step262EntryFBefore

private def s2Step262EntryGBefore : Arena := s2Step262EntryFBefore

private theorem s2Step262EntryG_Incoming : rowsOwned s2Step262EntryGBefore [s2Step262EntryGRow,s2Step262EntryFvRow,s2Step262EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step262EntryFRow,s2Step262EntryGRow,s2Step262EntryFvRow,s2Step262EntryGvRow] 1 s2Step262EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step262EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step262EntryG_Outgoing : rowsOwned s2Step262EntryGvAfter [s2Step262EntryGOut,s2Step262EntryFvOut,s2Step262EntryGvOut] :=
  hmrRows_owned_drop s2Step262EntryGvAfter [s2Step262EntryFOut,s2Step262EntryGOut,s2Step262EntryFvOut,s2Step262EntryGvOut] 1 s2Step262EntryBank_outgoingOwned

private theorem s2Step262EntryG_distinct : (s2Step262EntryGRow.sign::s2Step262EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step262EntryG_owned : (s2Step262EntryGRow.sign::s2Step262EntryGRow.payload).toFinset⊆s2Step262EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step262EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step262EntryG_reserved : s2Step262EntryGBefore.reserve s2Step262EntryGFresh.toFinset=some s2Step262EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step262EntryGFresh,arenaWires]
  · norm_num [s2Step262EntryGBefore,s2Step262EntryFBefore,s2Step262EntryGFresh,arenaWires]
  · simp only [s2Step262EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step262EntryG_checked : planRowResizeLog s2Step262EntryGBefore s2Step262EntryGRow 139 s2Step262EntryGFresh=
    some (s2Step262EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138],769⟩,growRow 769 s2Step262EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step262EntryGBefore s2Step262EntryGAfter s2Step262EntryGRow 139 s2Step262EntryGFresh
    s2Step262EntryG_distinct s2Step262EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step262EntryG_reserved
  have rowEq : WindowRow.mk (s2Step262EntryGRow.payload++s2Step262EntryGFresh) s2Step262EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step262EntryGvBefore : Arena := s2Step262EntryFBefore

private theorem s2Step262EntryGv_Incoming : rowsOwned s2Step262EntryGvBefore [s2Step262EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step262EntryFRow,s2Step262EntryGRow,s2Step262EntryFvRow,s2Step262EntryGvRow] 3 s2Step262EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step262EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step262EntryGv_Outgoing : rowsOwned s2Step262EntryGvAfter [s2Step262EntryGvOut] :=
  hmrRows_owned_drop s2Step262EntryGvAfter [s2Step262EntryFOut,s2Step262EntryGOut,s2Step262EntryFvOut,s2Step262EntryGvOut] 3 s2Step262EntryBank_outgoingOwned

private theorem s2Step262EntryGv_distinct : (s2Step262EntryGvRow.sign::s2Step262EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step262EntryGv_owned : (s2Step262EntryGvRow.sign::s2Step262EntryGvRow.payload).toFinset⊆s2Step262EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step262EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step262EntryGv_reserved : s2Step262EntryGvBefore.reserve s2Step262EntryGvFresh.toFinset=some s2Step262EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step262EntryGvFresh,arenaWires]
  · norm_num [s2Step262EntryGvBefore,s2Step262EntryFBefore,s2Step262EntryGvFresh,arenaWires]
  · simp only [s2Step262EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step262EntryGv_checked : planRowResizeLog s2Step262EntryGvBefore s2Step262EntryGvRow 145 s2Step262EntryGvFresh=
    some (s2Step262EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840],771⟩,growRow 771 s2Step262EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step262EntryGvBefore s2Step262EntryGvAfter s2Step262EntryGvRow 145 s2Step262EntryGvFresh
    s2Step262EntryGv_distinct s2Step262EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step262EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step262EntryGvRow.payload++s2Step262EntryGvFresh) s2Step262EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step262EntryBank_rows : planWindowRowsLog s2Step262EntryFBefore [(s2Step262EntryFRow,139),(s2Step262EntryGRow,139),(s2Step262EntryFvRow,145),(s2Step262EntryGvRow,145)] [s2Step262EntryFFresh,s2Step262EntryGFresh,s2Step262EntryFvFresh,s2Step262EntryGvFresh]=
    some (s2Step262EntryGvAfter,[s2Step262EntryFOut,s2Step262EntryGOut,s2Step262EntryFvOut,s2Step262EntryGvOut],(growRow 768 s2Step262EntryFFresh ++ (growRow 769 s2Step262EntryGFresh ++ (growRow 770 s2Step262EntryFvFresh ++ (growRow 771 s2Step262EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step262EntryGvAfter [] []=some (s2Step262EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step262EntryGvBefore s2Step262EntryGvAfter s2Step262EntryGvAfter
    s2Step262EntryGvRow s2Step262EntryGvOut 145 s2Step262EntryGvFresh [] [] []
    (growRow 771 s2Step262EntryGvFresh) ([]) s2Step262EntryGv_Incoming s2Step262EntryGv_checked h4 s2Step262EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step262EntryFvBefore s2Step262EntryFvAfter s2Step262EntryGvAfter
    s2Step262EntryFvRow s2Step262EntryFvOut 145 s2Step262EntryFvFresh [(s2Step262EntryGvRow,145)] [s2Step262EntryGvFresh] [s2Step262EntryGvOut]
    (growRow 770 s2Step262EntryFvFresh) ((growRow 771 s2Step262EntryGvFresh ++ [])) s2Step262EntryFv_Incoming s2Step262EntryFv_checked h3 s2Step262EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step262EntryGBefore s2Step262EntryGAfter s2Step262EntryGvAfter
    s2Step262EntryGRow s2Step262EntryGOut 139 s2Step262EntryGFresh [(s2Step262EntryFvRow,145),(s2Step262EntryGvRow,145)] [s2Step262EntryFvFresh,s2Step262EntryGvFresh] [s2Step262EntryFvOut,s2Step262EntryGvOut]
    (growRow 769 s2Step262EntryGFresh) ((growRow 770 s2Step262EntryFvFresh ++ (growRow 771 s2Step262EntryGvFresh ++ []))) s2Step262EntryG_Incoming s2Step262EntryG_checked h2 s2Step262EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step262EntryFBefore s2Step262EntryFAfter s2Step262EntryGvAfter
    s2Step262EntryFRow s2Step262EntryFOut 139 s2Step262EntryFFresh [(s2Step262EntryGRow,139),(s2Step262EntryFvRow,145),(s2Step262EntryGvRow,145)] [s2Step262EntryGFresh,s2Step262EntryFvFresh,s2Step262EntryGvFresh] [s2Step262EntryGOut,s2Step262EntryFvOut,s2Step262EntryGvOut]
    (growRow 768 s2Step262EntryFFresh) ((growRow 769 s2Step262EntryGFresh ++ (growRow 770 s2Step262EntryFvFresh ++ (growRow 771 s2Step262EntryGvFresh ++ [])))) s2Step262EntryF_Incoming s2Step262EntryF_checked h1 s2Step262EntryF_Outgoing
  exact h0

private theorem s2Step262EntryBank_checked : compileHmrBankResizeLog .entry s2Step262EntryFBefore ⟨s2Step262EntryFRow,s2Step262EntryGRow,s2Step262EntryFvRow,s2Step262EntryGvRow⟩ ⟨139,139,145,145⟩ [s2Step262EntryFFresh,s2Step262EntryGFresh,s2Step262EntryFvFresh,s2Step262EntryGvFresh]=
    some (s2Step262EntryGvAfter,⟨s2Step262EntryFOut,s2Step262EntryGOut,s2Step262EntryFvOut,s2Step262EntryGvOut⟩,(growRow 768 s2Step262EntryFFresh ++ (growRow 769 s2Step262EntryGFresh ++ (growRow 770 s2Step262EntryFvFresh ++ (growRow 771 s2Step262EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step262EntryBank_rows]
  rfl

private def s2Step262ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<138) ∨ (139≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step262ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<138) ∨ (139≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step262ExitFBefore : Arena := s2Step262ExitGAfter

private def s2Step262ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 877],768⟩

private def s2Step262ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792],770⟩

private def s2Step262ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 836],769⟩

private def s2Step262ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 794],771⟩

private theorem s2Step262ExitBank_incomingDistinct : ([s2Step262ExitGRow,s2Step262ExitFRow,s2Step262ExitFvRow,s2Step262ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step262ExitF_Incoming : rowsOwned s2Step262ExitFBefore [s2Step262ExitFRow,s2Step262ExitFvRow,s2Step262ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step262ExitGRow,s2Step262ExitFRow,s2Step262ExitFvRow,s2Step262ExitGvRow] 1 s2Step262ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step262ExitFBefore (fun q => (0≤q ∧ q<138) ∨ (139≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step262ExitBank_outgoingOwned : rowsOwned s2Step262ExitGvAfter [s2Step262ExitGOut,s2Step262ExitFOut,s2Step262ExitFvOut,s2Step262ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step262ExitGvAfter (fun q => (0≤q ∧ q<138) ∨ (139≤q ∧ q<782) ∨ (783≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step262ExitF_Outgoing : rowsOwned s2Step262ExitGvAfter [s2Step262ExitFOut,s2Step262ExitFvOut,s2Step262ExitGvOut] :=
  hmrRows_owned_drop s2Step262ExitGvAfter [s2Step262ExitGOut,s2Step262ExitFOut,s2Step262ExitFvOut,s2Step262ExitGvOut] 1 s2Step262ExitBank_outgoingOwned

private theorem s2Step262ExitF_distinct : (s2Step262ExitFRow.sign::s2Step262ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step262ExitF_owned : (s2Step262ExitFRow.sign::s2Step262ExitFRow.payload).toFinset⊆s2Step262ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step262ExitFBefore (fun q => (0≤q ∧ q<138) ∨ (139≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step262ExitF_retired : s2Step262ExitFBefore.retireSet s2Step262ExitFExtra.toFinset=s2Step262ExitFAfter := by
  unfold Arena.retireSet s2Step262ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step262ExitFBefore,s2Step262ExitGAfter,s2Step262ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step262ExitF_checked : planRowResizeLog s2Step262ExitFBefore s2Step262ExitFRow 139 []=
    some (s2Step262ExitFAfter,s2Step262ExitFOut,shrinkRow 768 s2Step262ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step262ExitFBefore s2Step262ExitFRow 139 s2Step262ExitF_distinct s2Step262ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step262ExitFRow.payload.take 139) s2Step262ExitFRow.sign=s2Step262ExitFOut := by decide +kernel
  have hi : s2Step262ExitFRow.payload.drop 139=s2Step262ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step262ExitF_retired] at result
  exact result

private def s2Step262ExitFvAfter : Arena := s2Step262ExitFAfter

private def s2Step262ExitFvBefore : Arena := s2Step262ExitFAfter

private theorem s2Step262ExitFv_Incoming : rowsOwned s2Step262ExitFvBefore [s2Step262ExitFvRow,s2Step262ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step262ExitGRow,s2Step262ExitFRow,s2Step262ExitFvRow,s2Step262ExitGvRow] 2 s2Step262ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step262ExitFvBefore (fun q => (0≤q ∧ q<138) ∨ (139≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step262ExitFv_Outgoing : rowsOwned s2Step262ExitGvAfter [s2Step262ExitFvOut,s2Step262ExitGvOut] :=
  hmrRows_owned_drop s2Step262ExitGvAfter [s2Step262ExitGOut,s2Step262ExitFOut,s2Step262ExitFvOut,s2Step262ExitGvOut] 2 s2Step262ExitBank_outgoingOwned

private theorem s2Step262ExitFv_distinct : (s2Step262ExitFvRow.sign::s2Step262ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step262ExitFv_owned : (s2Step262ExitFvRow.sign::s2Step262ExitFvRow.payload).toFinset⊆s2Step262ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step262ExitFvBefore (fun q => (0≤q ∧ q<138) ∨ (139≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step262ExitFv_reserved : s2Step262ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step262ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step262ExitFv_checked : planRowResizeLog s2Step262ExitFvBefore s2Step262ExitFvRow 146 []=
    some (s2Step262ExitFvAfter,s2Step262ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step262ExitFvBefore s2Step262ExitFvAfter s2Step262ExitFvRow 146 []
    s2Step262ExitFv_distinct s2Step262ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step262ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step262ExitFvRow.payload++[]) s2Step262ExitFvRow.sign=s2Step262ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step262ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private theorem s2Step262ExitG_Incoming : rowsOwned s2Step262ExitGBefore [s2Step262ExitGRow,s2Step262ExitFRow,s2Step262ExitFvRow,s2Step262ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step262ExitGRow,s2Step262ExitFRow,s2Step262ExitFvRow,s2Step262ExitGvRow] 0 s2Step262ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step262ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step262ExitG_Outgoing : rowsOwned s2Step262ExitGvAfter [s2Step262ExitGOut,s2Step262ExitFOut,s2Step262ExitFvOut,s2Step262ExitGvOut] :=
  hmrRows_owned_drop s2Step262ExitGvAfter [s2Step262ExitGOut,s2Step262ExitFOut,s2Step262ExitFvOut,s2Step262ExitGvOut] 0 s2Step262ExitBank_outgoingOwned

private theorem s2Step262ExitG_distinct : (s2Step262ExitGRow.sign::s2Step262ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step262ExitG_owned : (s2Step262ExitGRow.sign::s2Step262ExitGRow.payload).toFinset⊆s2Step262ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step262ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step262ExitG_retired : s2Step262ExitGBefore.retireSet s2Step262ExitGExtra.toFinset=s2Step262ExitGAfter := by
  unfold Arena.retireSet s2Step262ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step262ExitGBefore,s2Step262ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step262ExitG_checked : planRowResizeLog s2Step262ExitGBefore s2Step262ExitGRow 138 []=
    some (s2Step262ExitGAfter,s2Step262ExitGOut,shrinkRow 769 s2Step262ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step262ExitGBefore s2Step262ExitGRow 138 s2Step262ExitG_distinct s2Step262ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step262ExitGRow.payload.take 138) s2Step262ExitGRow.sign=s2Step262ExitGOut := by decide +kernel
  have hi : s2Step262ExitGRow.payload.drop 138=s2Step262ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step262ExitG_retired] at result
  exact result

private def s2Step262ExitGvBefore : Arena := s2Step262ExitFAfter

private theorem s2Step262ExitGv_Incoming : rowsOwned s2Step262ExitGvBefore [s2Step262ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step262ExitGRow,s2Step262ExitFRow,s2Step262ExitFvRow,s2Step262ExitGvRow] 3 s2Step262ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step262ExitGvBefore (fun q => (0≤q ∧ q<138) ∨ (139≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step262ExitGv_Outgoing : rowsOwned s2Step262ExitGvAfter [s2Step262ExitGvOut] :=
  hmrRows_owned_drop s2Step262ExitGvAfter [s2Step262ExitGOut,s2Step262ExitFOut,s2Step262ExitFvOut,s2Step262ExitGvOut] 3 s2Step262ExitBank_outgoingOwned

private theorem s2Step262ExitGv_distinct : (s2Step262ExitGvRow.sign::s2Step262ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step262ExitGv_owned : (s2Step262ExitGvRow.sign::s2Step262ExitGvRow.payload).toFinset⊆s2Step262ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step262ExitGvBefore (fun q => (0≤q ∧ q<138) ∨ (139≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step262ExitGv_retired : s2Step262ExitGvBefore.retireSet s2Step262ExitGvExtra.toFinset=s2Step262ExitGvAfter := by
  unfold Arena.retireSet s2Step262ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step262ExitGvBefore,s2Step262ExitFAfter,s2Step262ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step262ExitGv_checked : planRowResizeLog s2Step262ExitGvBefore s2Step262ExitGvRow 145 []=
    some (s2Step262ExitGvAfter,s2Step262ExitGvOut,shrinkRow 771 s2Step262ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step262ExitGvBefore s2Step262ExitGvRow 145 s2Step262ExitGv_distinct s2Step262ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step262ExitGvRow.payload.take 145) s2Step262ExitGvRow.sign=s2Step262ExitGvOut := by decide +kernel
  have hi : s2Step262ExitGvRow.payload.drop 145=s2Step262ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step262ExitGv_retired] at result
  exact result

private theorem s2Step262ExitBank_rows : planWindowRowsLog s2Step262ExitGBefore [(s2Step262ExitGRow,138),(s2Step262ExitFRow,139),(s2Step262ExitFvRow,146),(s2Step262ExitGvRow,145)] [[],[],[],[]]=
    some (s2Step262ExitGvAfter,[s2Step262ExitGOut,s2Step262ExitFOut,s2Step262ExitFvOut,s2Step262ExitGvOut],(shrinkRow 769 s2Step262ExitGExtra ++ (shrinkRow 768 s2Step262ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step262ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step262ExitGvAfter [] []=some (s2Step262ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step262ExitGvBefore s2Step262ExitGvAfter s2Step262ExitGvAfter
    s2Step262ExitGvRow s2Step262ExitGvOut 145 [] [] [] []
    (shrinkRow 771 s2Step262ExitGvExtra) ([]) s2Step262ExitGv_Incoming s2Step262ExitGv_checked h4 s2Step262ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step262ExitFvBefore s2Step262ExitFvAfter s2Step262ExitGvAfter
    s2Step262ExitFvRow s2Step262ExitFvOut 146 [] [(s2Step262ExitGvRow,145)] [[]] [s2Step262ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step262ExitGvExtra ++ [])) s2Step262ExitFv_Incoming s2Step262ExitFv_checked h3 s2Step262ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step262ExitFBefore s2Step262ExitFAfter s2Step262ExitGvAfter
    s2Step262ExitFRow s2Step262ExitFOut 139 [] [(s2Step262ExitFvRow,146),(s2Step262ExitGvRow,145)] [[],[]] [s2Step262ExitFvOut,s2Step262ExitGvOut]
    (shrinkRow 768 s2Step262ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step262ExitGvExtra ++ []))) s2Step262ExitF_Incoming s2Step262ExitF_checked h2 s2Step262ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step262ExitGBefore s2Step262ExitGAfter s2Step262ExitGvAfter
    s2Step262ExitGRow s2Step262ExitGOut 138 [] [(s2Step262ExitFRow,139),(s2Step262ExitFvRow,146),(s2Step262ExitGvRow,145)] [[],[],[]] [s2Step262ExitFOut,s2Step262ExitFvOut,s2Step262ExitGvOut]
    (shrinkRow 769 s2Step262ExitGExtra) ((shrinkRow 768 s2Step262ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step262ExitGvExtra ++ [])))) s2Step262ExitG_Incoming s2Step262ExitG_checked h1 s2Step262ExitG_Outgoing
  exact h0

private theorem s2Step262ExitBank_checked : compileHmrBankResizeLog .exit s2Step262ExitGBefore ⟨s2Step262ExitFRow,s2Step262ExitGRow,s2Step262ExitFvRow,s2Step262ExitGvRow⟩ ⟨139,138,146,145⟩ [[],[],[],[]]=
    some (s2Step262ExitGvAfter,⟨s2Step262ExitFOut,s2Step262ExitGOut,s2Step262ExitFvOut,s2Step262ExitGvOut⟩,(shrinkRow 769 s2Step262ExitGExtra ++ (shrinkRow 768 s2Step262ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step262ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step262ExitBank_rows]
  rfl

private theorem s2Step262Add0_apart : Disjoint s2Step262Add0Arena.live s2Step262Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step262Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step262Add0_card : s2Step262Add0Arena.live.card=894 := by
  decide +kernel

private theorem s2Step262Add0_borrowed : s2Step262Add0Arena.checkBorrow (hmrHybridCount s2Step262Add0Arena s2Step262Add0B.length) s2Step262Add0Work=some s2Step262Add0During := by
  have len : s2Step262Add0Work.length=hmrHybridCount s2Step262Add0Arena s2Step262Add0B.length := by
    rw [hmrHybridCount,s2Step262Add0_card]
    decide +kernel
  have nd : s2Step262Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step262Add0Arena s2Step262Add0During s2Step262Add0Work.toFinset s2Step262Add0_bounded s2Step262Add0_apart rfl

private theorem s2Step262Add0_distinct : (891::788::867::(s2Step262Add0A++s2Step262Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step262Add0_owned : (891::788::867::(s2Step262Add0A++s2Step262Add0B)).toFinset⊆s2Step262Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step262Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step262Add0_checked : compileHmrHybridCinLog s2Step262Add0Arena 788 891 867 s2Step262Add0A s2Step262Add0B s2Step262Add0Work=some s2Step262Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step262Add0Arena s2Step262Add0During 788 891 867 s2Step262Add0A s2Step262Add0B s2Step262Add0Work
    (by decide +kernel) (by decide +kernel) s2Step262Add0_distinct
    (fun q hq => s2Step262Add0_owned (List.mem_toFinset.mpr hq)) s2Step262Add0_borrowed

private theorem s2Step262Add1_apart : Disjoint s2Step262Add1Arena.live s2Step262Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step262Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step262Add1_card : s2Step262Add1Arena.live.card=894 := by
  decide +kernel

private theorem s2Step262Add1_borrowed : s2Step262Add1Arena.checkBorrow (hmrHybridCount s2Step262Add1Arena s2Step262Add1B.length) s2Step262Add1Work=some s2Step262Add1During := by
  have len : s2Step262Add1Work.length=hmrHybridCount s2Step262Add1Arena s2Step262Add1B.length := by
    rw [hmrHybridCount,s2Step262Add1_card]
    decide +kernel
  have nd : s2Step262Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step262Add1Arena s2Step262Add1During s2Step262Add1Work.toFinset s2Step262Add1_bounded s2Step262Add1_apart rfl

private theorem s2Step262Add1_distinct : (891::788::867::(s2Step262Add1A++s2Step262Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step262Add1_owned : (891::788::867::(s2Step262Add1A++s2Step262Add1B)).toFinset⊆s2Step262Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step262Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step262Add1_checked : compileHmrHybridCinLog s2Step262Add1Arena 788 891 867 s2Step262Add1A s2Step262Add1B s2Step262Add1Work=some s2Step262Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step262Add1Arena s2Step262Add1During 788 891 867 s2Step262Add1A s2Step262Add1B s2Step262Add1Work
    (by decide +kernel) (by decide +kernel) s2Step262Add1_distinct
    (fun q hq => s2Step262Add1_owned (List.mem_toFinset.mpr hq)) s2Step262Add1_borrowed

private theorem s2Step262F4_apart : Disjoint (s2Step262Add0A++s2Step262Add0B).toFinset (s2Step262Add1A++s2Step262Add1B).toFinset := by
  have nd : ((s2Step262Add0A++s2Step262Add0B)++(s2Step262Add1A++s2Step262Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step262F4_carry : s2Step262F4FlagArena.checkBorrow 1 [867]=some s2Step262Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step262F4FlagArena,s2Step262HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step262F4FlagArena,s2Step262HeadFvAfter,s2Step262Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step262F4_distinct : (814::788::891::867::((s2Step262Add0A++s2Step262Add1A)++(s2Step262Add0B++s2Step262Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step262F4_flag : s2Step262HeadFvAfter.checkBorrow 1 [891]=some s2Step262F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step262HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step262F4_owned : (814::788::((s2Step262Add0A++s2Step262Add1A)++(s2Step262Add0B++s2Step262Add1B))).toFinset⊆s2Step262HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step262HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step262F4_checked : compileHmrHybridF4Log s2Step262HeadFvAfter 814 788 s2Step262Add0A s2Step262Add0B s2Step262Add1A s2Step262Add1B [891] [867] s2Step262Add0Work s2Step262Add1Work=some s2Step262F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step262HeadFvAfter s2Step262F4FlagArena s2Step262Add0Arena s2Step262Add0During s2Step262Add1During 814 788
    s2Step262Add0A s2Step262Add0B s2Step262Add1A s2Step262Add1B [891] [867] s2Step262Add0Work s2Step262Add1Work
    (fun q hq => s2Step262F4_owned (List.mem_toFinset.mpr hq)) s2Step262F4_flag s2Step262F4_carry
    s2Step262F4_distinct s2Step262F4_apart s2Step262Add0_checked s2Step262Add1_checked

private theorem s2Step262Front_branch : s2Step262FrontSigmaArena.checkBorrow 1 [788]=some s2Step262HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step262FrontSigmaArena,s2Step262EntryGvAfter,s2Step262EntryFBefore,arenaWires]
  · ext q
    simp only [s2Step262FrontSigmaArena,s2Step262EntryGvAfter,s2Step262EntryFBefore,s2Step262HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step262Front_entry : HmrFrontEntryValid s2Step262EntryFBefore s2Step262FrontBank 139 145 ⟨139,138,146,145⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step262FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step262EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step262EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step262FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step262Front_sigma : s2Step262EntryGvAfter.checkBorrow 1 [814]=some s2Step262FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step262EntryGvAfter,s2Step262EntryFBefore,arenaWires]
  · rfl

private def s2Step262HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step262HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step262HeadFBefore : Arena := s2Step262HeadGAfter

private def s2Step262HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650],768⟩

private def s2Step262HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807],770⟩

private def s2Step262HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138],769⟩

private def s2Step262HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840],771⟩

private theorem s2Step262HeadBank_incomingDistinct : ([s2Step262HeadGRow,s2Step262HeadFRow,s2Step262HeadGvRow,s2Step262HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step262HeadF_Incoming : rowsOwned s2Step262HeadFBefore [s2Step262HeadFRow,s2Step262HeadGvRow,s2Step262HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step262HeadGRow,s2Step262HeadFRow,s2Step262HeadGvRow,s2Step262HeadFvRow] 1 s2Step262HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step262HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step262HeadBank_outgoingOwned : rowsOwned s2Step262HeadFvAfter [s2Step262HeadGOut,s2Step262HeadFOut,s2Step262HeadGvOut,s2Step262HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step262HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step262HeadF_Outgoing : rowsOwned s2Step262HeadFvAfter [s2Step262HeadFOut,s2Step262HeadGvOut,s2Step262HeadFvOut] :=
  hmrRows_owned_drop s2Step262HeadFvAfter [s2Step262HeadGOut,s2Step262HeadFOut,s2Step262HeadGvOut,s2Step262HeadFvOut] 1 s2Step262HeadBank_outgoingOwned

private theorem s2Step262HeadF_distinct : (s2Step262HeadFRow.sign::s2Step262HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step262HeadF_owned : (s2Step262HeadFRow.sign::s2Step262HeadFRow.payload).toFinset⊆s2Step262HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step262HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step262HeadF_reserved : s2Step262HeadFBefore.reserve s2Step262HeadFFresh.toFinset=some s2Step262HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step262HeadFFresh,arenaWires]
  · norm_num [s2Step262HeadFBefore,s2Step262HeadGAfter,s2Step262HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step262HeadFAfter,s2Step262HeadFBefore,s2Step262HeadGAfter,s2Step262HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step262HeadF_checked : planRowResizeLog s2Step262HeadFBefore s2Step262HeadFRow 140 s2Step262HeadFFresh=
    some (s2Step262HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 877],768⟩,growRow 768 s2Step262HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step262HeadFBefore s2Step262HeadFAfter s2Step262HeadFRow 140 s2Step262HeadFFresh
    s2Step262HeadF_distinct s2Step262HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step262HeadF_reserved
  have rowEq : WindowRow.mk (s2Step262HeadFRow.payload++s2Step262HeadFFresh) s2Step262HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 877],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step262HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step262HeadFvBefore : Arena := s2Step262HeadGvAfter

private theorem s2Step262HeadFv_Incoming : rowsOwned s2Step262HeadFvBefore [s2Step262HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step262HeadGRow,s2Step262HeadFRow,s2Step262HeadGvRow,s2Step262HeadFvRow] 3 s2Step262HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step262HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step262HeadFv_Outgoing : rowsOwned s2Step262HeadFvAfter [s2Step262HeadFvOut] :=
  hmrRows_owned_drop s2Step262HeadFvAfter [s2Step262HeadGOut,s2Step262HeadFOut,s2Step262HeadGvOut,s2Step262HeadFvOut] 3 s2Step262HeadBank_outgoingOwned

private theorem s2Step262HeadFv_distinct : (s2Step262HeadFvRow.sign::s2Step262HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step262HeadFv_owned : (s2Step262HeadFvRow.sign::s2Step262HeadFvRow.payload).toFinset⊆s2Step262HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step262HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step262HeadFv_reserved : s2Step262HeadFvBefore.reserve s2Step262HeadFvFresh.toFinset=some s2Step262HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step262HeadFvFresh,arenaWires]
  · norm_num [s2Step262HeadFvBefore,s2Step262HeadGvAfter,s2Step262HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step262HeadFvAfter,s2Step262HeadFvBefore,s2Step262HeadGvAfter,s2Step262HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step262HeadFv_checked : planRowResizeLog s2Step262HeadFvBefore s2Step262HeadFvRow 146 s2Step262HeadFvFresh=
    some (s2Step262HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792],770⟩,growRow 770 s2Step262HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step262HeadFvBefore s2Step262HeadFvAfter s2Step262HeadFvRow 146 s2Step262HeadFvFresh
    s2Step262HeadFv_distinct s2Step262HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step262HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step262HeadFvRow.payload++s2Step262HeadFvFresh) s2Step262HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step262HeadG_Incoming : rowsOwned s2Step262HeadGBefore [s2Step262HeadGRow,s2Step262HeadFRow,s2Step262HeadGvRow,s2Step262HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step262HeadGRow,s2Step262HeadFRow,s2Step262HeadGvRow,s2Step262HeadFvRow] 0 s2Step262HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step262HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step262HeadG_Outgoing : rowsOwned s2Step262HeadFvAfter [s2Step262HeadGOut,s2Step262HeadFOut,s2Step262HeadGvOut,s2Step262HeadFvOut] :=
  hmrRows_owned_drop s2Step262HeadFvAfter [s2Step262HeadGOut,s2Step262HeadFOut,s2Step262HeadGvOut,s2Step262HeadFvOut] 0 s2Step262HeadBank_outgoingOwned

private theorem s2Step262HeadG_distinct : (s2Step262HeadGRow.sign::s2Step262HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step262HeadG_owned : (s2Step262HeadGRow.sign::s2Step262HeadGRow.payload).toFinset⊆s2Step262HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step262HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step262HeadG_reserved : s2Step262HeadGBefore.reserve s2Step262HeadGFresh.toFinset=some s2Step262HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step262HeadGFresh,arenaWires]
  · norm_num [s2Step262HeadGBefore,s2Step262HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step262HeadGAfter,s2Step262HeadGBefore,s2Step262HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step262HeadG_checked : planRowResizeLog s2Step262HeadGBefore s2Step262HeadGRow 140 s2Step262HeadGFresh=
    some (s2Step262HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 836],769⟩,growRow 769 s2Step262HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step262HeadGBefore s2Step262HeadGAfter s2Step262HeadGRow 140 s2Step262HeadGFresh
    s2Step262HeadG_distinct s2Step262HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step262HeadG_reserved
  have rowEq : WindowRow.mk (s2Step262HeadGRow.payload++s2Step262HeadGFresh) s2Step262HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 836],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step262HeadGvBefore : Arena := s2Step262HeadFAfter

private theorem s2Step262HeadGv_Incoming : rowsOwned s2Step262HeadGvBefore [s2Step262HeadGvRow,s2Step262HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step262HeadGRow,s2Step262HeadFRow,s2Step262HeadGvRow,s2Step262HeadFvRow] 2 s2Step262HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step262HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step262HeadGv_Outgoing : rowsOwned s2Step262HeadFvAfter [s2Step262HeadGvOut,s2Step262HeadFvOut] :=
  hmrRows_owned_drop s2Step262HeadFvAfter [s2Step262HeadGOut,s2Step262HeadFOut,s2Step262HeadGvOut,s2Step262HeadFvOut] 2 s2Step262HeadBank_outgoingOwned

private theorem s2Step262HeadGv_distinct : (s2Step262HeadGvRow.sign::s2Step262HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step262HeadGv_owned : (s2Step262HeadGvRow.sign::s2Step262HeadGvRow.payload).toFinset⊆s2Step262HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step262HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step262HeadGv_reserved : s2Step262HeadGvBefore.reserve s2Step262HeadGvFresh.toFinset=some s2Step262HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step262HeadGvFresh,arenaWires]
  · norm_num [s2Step262HeadGvBefore,s2Step262HeadFAfter,s2Step262HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step262HeadGvAfter,s2Step262HeadGvBefore,s2Step262HeadFAfter,s2Step262HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step262HeadGv_checked : planRowResizeLog s2Step262HeadGvBefore s2Step262HeadGvRow 146 s2Step262HeadGvFresh=
    some (s2Step262HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 794],771⟩,growRow 771 s2Step262HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step262HeadGvBefore s2Step262HeadGvAfter s2Step262HeadGvRow 146 s2Step262HeadGvFresh
    s2Step262HeadGv_distinct s2Step262HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step262HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step262HeadGvRow.payload++s2Step262HeadGvFresh) s2Step262HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 794],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step262HeadBank_rows : planWindowRowsLog s2Step262HeadGBefore [(s2Step262HeadGRow,140),(s2Step262HeadFRow,140),(s2Step262HeadGvRow,146),(s2Step262HeadFvRow,146)] [s2Step262HeadGFresh,s2Step262HeadFFresh,s2Step262HeadGvFresh,s2Step262HeadFvFresh]=
    some (s2Step262HeadFvAfter,[s2Step262HeadGOut,s2Step262HeadFOut,s2Step262HeadGvOut,s2Step262HeadFvOut],(growRow 769 s2Step262HeadGFresh ++ (growRow 768 s2Step262HeadFFresh ++ (growRow 771 s2Step262HeadGvFresh ++ (growRow 770 s2Step262HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step262HeadFvAfter [] []=some (s2Step262HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step262HeadFvBefore s2Step262HeadFvAfter s2Step262HeadFvAfter
    s2Step262HeadFvRow s2Step262HeadFvOut 146 s2Step262HeadFvFresh [] [] []
    (growRow 770 s2Step262HeadFvFresh) ([]) s2Step262HeadFv_Incoming s2Step262HeadFv_checked h4 s2Step262HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step262HeadGvBefore s2Step262HeadGvAfter s2Step262HeadFvAfter
    s2Step262HeadGvRow s2Step262HeadGvOut 146 s2Step262HeadGvFresh [(s2Step262HeadFvRow,146)] [s2Step262HeadFvFresh] [s2Step262HeadFvOut]
    (growRow 771 s2Step262HeadGvFresh) ((growRow 770 s2Step262HeadFvFresh ++ [])) s2Step262HeadGv_Incoming s2Step262HeadGv_checked h3 s2Step262HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step262HeadFBefore s2Step262HeadFAfter s2Step262HeadFvAfter
    s2Step262HeadFRow s2Step262HeadFOut 140 s2Step262HeadFFresh [(s2Step262HeadGvRow,146),(s2Step262HeadFvRow,146)] [s2Step262HeadGvFresh,s2Step262HeadFvFresh] [s2Step262HeadGvOut,s2Step262HeadFvOut]
    (growRow 768 s2Step262HeadFFresh) ((growRow 771 s2Step262HeadGvFresh ++ (growRow 770 s2Step262HeadFvFresh ++ []))) s2Step262HeadF_Incoming s2Step262HeadF_checked h2 s2Step262HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step262HeadGBefore s2Step262HeadGAfter s2Step262HeadFvAfter
    s2Step262HeadGRow s2Step262HeadGOut 140 s2Step262HeadGFresh [(s2Step262HeadFRow,140),(s2Step262HeadGvRow,146),(s2Step262HeadFvRow,146)] [s2Step262HeadFFresh,s2Step262HeadGvFresh,s2Step262HeadFvFresh] [s2Step262HeadFOut,s2Step262HeadGvOut,s2Step262HeadFvOut]
    (growRow 769 s2Step262HeadGFresh) ((growRow 768 s2Step262HeadFFresh ++ (growRow 771 s2Step262HeadGvFresh ++ (growRow 770 s2Step262HeadFvFresh ++ [])))) s2Step262HeadG_Incoming s2Step262HeadG_checked h1 s2Step262HeadG_Outgoing
  exact h0

private theorem s2Step262HeadBank_checked : compileHmrBankResizeLog .headroom s2Step262HeadGBefore ⟨s2Step262HeadFRow,s2Step262HeadGRow,s2Step262HeadFvRow,s2Step262HeadGvRow⟩ ⟨140,140,146,146⟩ [s2Step262HeadGFresh,s2Step262HeadFFresh,s2Step262HeadGvFresh,s2Step262HeadFvFresh]=
    some (s2Step262HeadFvAfter,⟨s2Step262HeadFOut,s2Step262HeadGOut,s2Step262HeadFvOut,s2Step262HeadGvOut⟩,(growRow 769 s2Step262HeadGFresh ++ (growRow 768 s2Step262HeadFFresh ++ (growRow 771 s2Step262HeadGvFresh ++ (growRow 770 s2Step262HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step262HeadBank_rows]
  rfl

private theorem s2Step262Front_checked : compileHmrSourceFrontLog s2Step262EntryFBefore s2Step262FrontBank 139 145 ⟨139,138,146,145⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step262FrontLog=some s2Step262FrontPlan := by
  have pairEq : s2Step262FrontPair=⟨s2Step262HeadFRow,s2Step262HeadGRow,s2Step262HeadFvRow,s2Step262HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step262FrontHead=⟨s2Step262ExitFRow,s2Step262ExitGRow,s2Step262ExitFvRow,s2Step262ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step262Add0A=s2Step262FrontHead.f.wires := by decide +kernel
  have gEq : s2Step262Add0B=s2Step262FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step262Add1A=s2Step262FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step262Add1B=s2Step262FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step262EntryFBefore s2Step262FrontBank 139 145 ⟨139,138,146,145⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step262FrontLog s2Step262FrontPlan
  · exact s2Step262Front_entry
  · exact s2Step262EntryBank_checked
  · exact s2Step262Front_sigma
  · rfl
  · exact s2Step262Front_branch
  · rfl
  · simpa only [s2Step262FrontPlan,pairEq] using s2Step262HeadBank_checked
  · simpa only [s2Step262FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step262F4_checked
  · exact s2Step262Counter_checked
  · rfl
  · simpa only [s2Step262FrontPlan,headEq] using s2Step262ExitBank_checked

private theorem s2Step262Complete_explicit_checked : compileHmrEarlyStepLog s2Step262EntryFBefore s2Step262FrontBank 139 145 ⟨139,138,146,145⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 52 s2Step262CompleteLog=some s2Step262CompletePlan := by
  let Q := s2Step262EarlyControlPlan
  have hq := s2Step262EarlyControl_plan_checked
  have fv1 : s2Step262CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step262CompleteOut.fv.payload[2]?.getD s2Step262CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step262CompleteOut.fv.payload[3]?.getD s2Step262CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step262CompleteOut.fv.payload[4]?.getD s2Step262CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step262EntryFBefore s2Step262EarlyControlArena s2Step262FrontBank 139 145 ⟨139,138,146,145⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 52 s2Step262CompleteLog s2Step262FrontPlan Q
    s2Step262Front_checked s2Step262Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step262Complete_owned s2Step262Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step262EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 777 814 s2Step262CompleteOut.fv.second (s2Step262CompleteOut.fv.payload[2]?.getD s2Step262CompleteOut.fv.sign) (s2Step262CompleteOut.fv.payload[3]?.getD s2Step262CompleteOut.fv.sign) (s2Step262CompleteOut.fv.payload[4]?.getD s2Step262CompleteOut.fv.sign) 788 52 s2Step262EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep262Arena : Arena := s2Step262EntryFBefore
def s2PrivateStep262Bank : WindowBank := s2Step262FrontBank
def s2PrivateStep262Spec : HmrSourceWalkStepLog := ⟨139,145,⟨139,138,146,145⟩,52,.early s2Step262CompleteLog⟩
def s2PrivateStep262Plan : HmrSourceStepPlan := .early s2Step262CompletePlan
theorem s2PrivateStep262_source : s2PrivateStep262Spec=s2ObservedLogs256[6] := rfl
theorem s2PrivateStep262_checked : compileHmrSourceStepLog s2PrivateStep262Arena s2PrivateStep262Bank
    s2PrivateStep262Spec.fgWidth s2PrivateStep262Spec.vWidth s2PrivateStep262Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902]
    6 498 262 s2PrivateStep262Spec.need none s2PrivateStep262Spec.log=some s2PrivateStep262Plan := by
  change compileHmrSourceStepLog s2Step262EntryFBefore s2Step262FrontBank 139 145 ⟨139,138,146,145⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 6 498 262 52 none (.early s2Step262CompleteLog)=some (.early s2Step262CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 262<498)]
  rw [s2Step262Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
