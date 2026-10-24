import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep255
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

private def s2Step257CompleteMoves : List (Wire × Wire) := []

private def s2Step257EarlyControlLog : HmrEarlyControlLog := ⟨[792, 885, 891, 807, 782],[817],[830],[800, 894, 896, 901, 902, 903],[]⟩

private def s2Step257FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[807], [891], [792], [885]],[[], [], [], []]⟩,[840],[814],[782],[817],[830, 800, 894, 896, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[830, 800, 894, 896, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[782, 817, 830, 800]⟩

private def s2Step257CompleteLog : HmrEarlyStepLog := ⟨s2Step257FrontLog,s2Step257CompleteMoves,s2Step257EarlyControlLog⟩

private def s2Step257ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653],768⟩

private def s2Step257ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809],770⟩

private def s2Step257ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141],769⟩

private def s2Step257ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784],771⟩

private def s2Step257FrontOut : WindowBank := ⟨s2Step257ExitFOut,s2Step257ExitGOut,s2Step257ExitFvOut,s2Step257ExitGvOut⟩

private def s2Step257CompleteOut : WindowBank := s2Step257FrontOut.repacked s2Step257CompleteMoves

private def s2Step257EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step257EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step257EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step257EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step257EarlyControlPositiveArena,[817],s2Step257EarlyControlEqualityArena,[830],⟨⟨840,false⟩,[⟨⟨817,false⟩,830⟩]⟩⟩

private def s2Step257EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<904)),Finset.filter_subset _ _⟩

private def s2Step257EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<904)),Finset.filter_subset _ _⟩

private def s2Step257EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step257EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<840) ∨ (841≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step257EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<840) ∨ (841≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step257EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step257EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,792⟩,⟨⟨774,false⟩,885⟩,⟨⟨775,false⟩,891⟩,⟨⟨776,false⟩,807⟩,⟨⟨777,false⟩,782⟩]⟩

private def s2Step257EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step257EarlyControlZeroArena,s2Step257EarlyControlZeroPlan,s2Step257EarlyControlClassPlan,s2Step257EarlyControlFlagArena,s2Step257EarlyControlFittedArena,s2Step257EarlyControlHistoryArena,s2Step257EarlyControlSigmaArena,s2Step257EarlyControlOutputArena,s2Step257EarlyControlLog⟩

private def s2Step257CounterWork : List Wire := [782, 817, 830, 800]

private theorem s2Step257Counter_bounded : s2Step257CounterWork.toFinset⊆arenaWires := by norm_num [s2Step257CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step257HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step257CounterDuring : Arena := ⟨s2Step257HeadFvAfter.live∪s2Step257CounterWork.toFinset,Finset.union_subset s2Step257HeadFvAfter.bounded s2Step257Counter_bounded⟩

private def s2Step257EntryFFresh : List Wire := []

private def s2Step257EntryFvFresh : List Wire := []

private def s2Step257EntryGFresh : List Wire := []

private def s2Step257EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<840) ∨ (841≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step257EntryGvAfter : Arena := s2Step257EntryFBefore

private def s2Step257EntryGvFresh : List Wire := []

private def s2Step257ExitFExtra : List Wire := [891]

private def s2Step257ExitFvExtra : List Wire := [885]

private def s2Step257ExitGExtra : List Wire := [807]

private def s2Step257ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step257ExitGvExtra : List Wire := [792]

private def s2Step257Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step257Add0Work : List Wire := [830, 800, 894, 896, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step257Add0_bounded : s2Step257Add0Work.toFinset⊆arenaWires := by
  have h : s2Step257Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step257Add0During : Arena := ⟨s2Step257Add0Arena.live∪s2Step257Add0Work.toFinset,Finset.union_subset s2Step257Add0Arena.bounded s2Step257Add0_bounded⟩

private def s2Step257Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step257Add1Work : List Wire := [830, 800, 894, 896, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step257Add1_bounded : s2Step257Add1Work.toFinset⊆arenaWires := by
  have h : s2Step257Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step257Add1During : Arena := ⟨s2Step257Add1Arena.live∪s2Step257Add1Work.toFinset,Finset.union_subset s2Step257Add1Arena.bounded s2Step257Add1_bounded⟩

private def s2Step257F4FlagArena : Arena := ⟨s2Step257HeadFvAfter.live∪{782},Finset.union_subset s2Step257HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step257F4Plan : HmrHybridF4Plan := ⟨s2Step257F4FlagArena,[782],s2Step257Add0Arena,[817],s2Step257Add0During,s2Step257Add0Work,s2Step257Add1During,s2Step257Add1Work⟩

private def s2Step257HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 891],768⟩

private def s2Step257HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 885],770⟩

private def s2Step257HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 807],769⟩

private def s2Step257HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 792],771⟩

private def s2Step257FrontHead : WindowBank := ⟨s2Step257HeadFOut,s2Step257HeadGOut,s2Step257HeadFvOut,s2Step257HeadGvOut⟩

private def s2Step257EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653],768⟩

private def s2Step257EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809],770⟩

private def s2Step257EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141],769⟩

private def s2Step257EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784],771⟩

private def s2Step257FrontPair : WindowBank := ⟨s2Step257EntryFOut,s2Step257EntryGOut,s2Step257EntryFvOut,s2Step257EntryGvOut⟩

private def s2Step257FrontSigmaArena : Arena := ⟨s2Step257EntryGvAfter.live∪{840},Finset.union_subset s2Step257EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step257HeadFFresh : List Wire := [891]

private def s2Step257HeadFvFresh : List Wire := [885]

private def s2Step257HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step257HeadGFresh : List Wire := [807]

private def s2Step257HeadGvFresh : List Wire := [792]

private def s2Step257FrontPlan : HmrSourceFront := ⟨s2Step257EntryGvAfter,s2Step257FrontPair,(growRow 768 s2Step257EntryFFresh ++ (growRow 769 s2Step257EntryGFresh ++ (growRow 770 s2Step257EntryFvFresh ++ (growRow 771 s2Step257EntryGvFresh ++ [])))),s2Step257FrontSigmaArena,[840],s2Step257HeadGBefore,[814],
  s2Step257HeadFvAfter,s2Step257FrontHead,(growRow 769 s2Step257HeadGFresh ++ (growRow 768 s2Step257HeadFFresh ++ (growRow 771 s2Step257HeadGvFresh ++ (growRow 770 s2Step257HeadFvFresh ++ [])))),s2Step257F4Plan,s2Step257CounterDuring,s2Step257CounterWork,s2Step257ExitGvAfter,s2Step257FrontOut,(shrinkRow 769 s2Step257ExitGExtra ++ (shrinkRow 768 s2Step257ExitFExtra ++ (shrinkRow 770 s2Step257ExitFvExtra ++ (shrinkRow 771 s2Step257ExitGvExtra ++ []))))⟩

private def s2Step257CompletePlan : HmrEarlyStepPlan := ⟨s2Step257FrontPlan,s2Step257EarlyControlArena,s2Step257EarlyControlPlan,s2Step257CompleteMoves⟩

private theorem s2Step257Complete_apart : List.Disjoint (s2Step257CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [840, 814, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] := by
  have nd : ((s2Step257CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[840, 814, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step257Complete_owned : (s2Step257CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step257EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step257EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step257Complete_repack : s2Step257ExitGvAfter.checkRepack s2Step257CompleteMoves=some s2Step257EarlyControlArena := by rfl

private theorem s2Step257EarlyControl_branchOwned : ([814] : List Wire).toFinset⊆s2Step257EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step257EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<840) ∨ (841≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step257EarlyControl_branch : compileHmrBranchRetirement s2Step257EarlyControlSigmaArena 814=some s2Step257EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step257EarlyControl_branchOwned
  · ext q
    simp [s2Step257EarlyControlOutputArena,s2Step257EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step257EarlyControl_classEqualityBorrow : s2Step257EarlyControlPositiveArena.checkBorrow (([840, 817] : List Wire).length-1) s2Step257EarlyControlLog.classWork=some s2Step257EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step257EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step257EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step257EarlyControlEqualityArena,s2Step257EarlyControlPositiveArena,s2Step257EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step257EarlyControl_classEqualityOwned : ([840, 817] : List Wire).toFinset⊆s2Step257EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step257EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step257EarlyControl_classEquality : compileHmrEqualityLog s2Step257EarlyControlPositiveArena [840, 817] 0 s2Step257EarlyControlLog.classWork=some (s2Step257EarlyControlEqualityArena,s2Step257EarlyControlLog.classWork,s2Step257EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step257EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step257EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step257EarlyControl_classOwned : ([777, 782, 840] : List Wire).toFinset⊆s2Step257EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step257EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step257EarlyControl_positiveBorrow : s2Step257EarlyControlZeroArena.checkBorrow (1) s2Step257EarlyControlLog.positiveWork=some s2Step257EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step257EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step257EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step257EarlyControlPositiveArena,s2Step257EarlyControlZeroArena,s2Step257EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step257EarlyControl_class : compileHmrSourceClassLog s2Step257EarlyControlZeroArena false 777 s2Step257EarlyControlZeroPlan.top 0 840 s2Step257EarlyControlLog.positiveWork s2Step257EarlyControlLog.classWork=some s2Step257EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step257EarlyControlClassPlan s2Step257EarlyControlZeroArena false 777 s2Step257EarlyControlZeroPlan.top 0 840
  constructor
  · decide +kernel
  · exact s2Step257EarlyControl_classOwned
  · exact s2Step257EarlyControl_positiveBorrow
  · exact s2Step257EarlyControl_classEquality

private theorem s2Step257EarlyControl_entryRecordOwned : ([814, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).toFinset⊆s2Step257EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step257EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step257EarlyControl_entrySigmaOwned : ([840, 254] : List Wire).toFinset⊆s2Step257EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step257EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step257EarlyControl_fitBorrow : s2Step257EarlyControlFlagArena.checkBorrow ((51-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).length)) s2Step257EarlyControlLog.recordFresh=some s2Step257EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step257EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step257EarlyControlFlagArena (fun q => (0≤q ∧ q<904)) rfl
      decide +kernel
    · ext q
      simp [s2Step257EarlyControlFittedArena,s2Step257EarlyControlFlagArena,s2Step257EarlyControlLog,arenaWires]

private theorem s2Step257EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).toFinset⊆s2Step257EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step257EarlyControlFlagArena (fun q => (0≤q ∧ q<904)) rfl
  decide +kernel

private theorem s2Step257EarlyControl_fit : compileHmrRecordGrowLog s2Step257EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 51 s2Step257EarlyControlLog.recordFresh=some s2Step257EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step257EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step257EarlyControl_fitBorrow

private theorem s2Step257EarlyControl_flagsBorrow : s2Step257EarlyControlEqualityArena.checkBorrow (6) s2Step257EarlyControlLog.flagWork=some s2Step257EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step257EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step257EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step257EarlyControlFlagArena,s2Step257EarlyControlEqualityArena,s2Step257EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step257EarlyControl_flagsOwned : ([830, 253, 252, 251] : List Wire).toFinset⊆s2Step257EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step257EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step257EarlyControl_flags : compileHmrFlagsLog s2Step257EarlyControlClassPlan.equalityArena s2Step257EarlyControlClassPlan.equality.top 253 252 251 s2Step257EarlyControlLog.flagWork=some s2Step257EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step257EarlyControl_flagsOwned⟩
  · exact s2Step257EarlyControl_flagsBorrow

private theorem s2Step257EarlyControl_historyBorrow : s2Step257EarlyControlArena.checkBorrow ((51-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).length)) s2Step257EarlyControlLog.recordFresh=some s2Step257EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step257EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step257EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step257EarlyControlHistoryArena,s2Step257EarlyControlArena,s2Step257EarlyControlLog,arenaWires]

private theorem s2Step257EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).toFinset⊆s2Step257EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step257EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step257EarlyControl_history : compileHmrRecordGrowLog s2Step257EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 51 s2Step257EarlyControlLog.recordFresh=some s2Step257EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step257EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step257EarlyControl_historyBorrow

private theorem s2Step257EarlyControl_sigmaOwned : ([254, 840] : List Wire).toFinset⊆s2Step257EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step257EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step257EarlyControl_sigmaReleaseOwned : ([840] : List Wire).toFinset⊆s2Step257EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step257EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step257EarlyControl_sigmaRelease : s2Step257EarlyControlHistoryArena.release {840} (fun _ => false)=some s2Step257EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step257EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step257EarlyControlSigmaArena,s2Step257EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step257EarlyControl_sigma : compileHmrSigmaDropLog s2Step257EarlyControlHistoryArena false 0 0 254 840 []=some s2Step257EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step257EarlyControl_sigmaOwned⟩
  · exact s2Step257EarlyControl_sigmaRelease

private theorem s2Step257EarlyControl_zeroBorrow : s2Step257EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step257EarlyControlLog.zeroWork=some s2Step257EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step257EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step257EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step257EarlyControlZeroArena,s2Step257EarlyControlArena,s2Step257EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step257EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step257EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step257EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step257EarlyControl_zero : compileHmrEqualityLog s2Step257EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step257EarlyControlLog.zeroWork=some (s2Step257EarlyControlZeroArena,s2Step257EarlyControlLog.zeroWork,s2Step257EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step257EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step257EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step257EarlyControl_logged : s2Step257EarlyControlPlan.Logged s2Step257EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 777 840 254 253 252 251 814 51 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step257EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step257EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step257EarlyControl_zero
  · exact s2Step257EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step257EarlyControl_flags
  · exact s2Step257EarlyControl_fit
  · exact s2Step257EarlyControl_history
  · exact s2Step257EarlyControl_sigma
  · exact s2Step257EarlyControl_branch

private theorem s2Step257EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step257EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 777 840 254 253 252 251 814 51 s2Step257EarlyControlLog=some s2Step257EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step257EarlyControlPlan s2Step257EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 777 840 254 253 252 251 814 51 s2Step257EarlyControl_logged

private def s2Step257EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653],768⟩

private def s2Step257EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809],770⟩

private def s2Step257EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141],769⟩

private def s2Step257EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784],771⟩

private def s2Step257FrontBank : WindowBank := ⟨s2Step257EntryFRow,s2Step257EntryGRow,s2Step257EntryFvRow,s2Step257EntryGvRow⟩

private def s2Step257Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 891, 768]

private def s2Step257Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 807, 769]

private def s2Step257Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 885, 770]

private def s2Step257Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 792, 771]

private theorem s2Step257Counter_apart : Disjoint s2Step257HeadFvAfter.live s2Step257CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step257HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step257Counter_borrowed : s2Step257HeadFvAfter.checkBorrow 4 s2Step257CounterWork=some s2Step257CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step257HeadFvAfter s2Step257CounterDuring s2Step257CounterWork.toFinset s2Step257Counter_bounded s2Step257Counter_apart rfl

private theorem s2Step257Counter_owned : (840::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step257HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step257HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step257Counter_checked : compileHmrCounterStepLog s2Step257HeadFvAfter true 840 [772, 773, 774, 775, 776, 777] s2Step257CounterWork=some s2Step257CounterDuring := by
  have owned : ∀q∈840::[772, 773, 774, 775, 776, 777],q∈s2Step257HeadFvAfter.live := fun q hq => s2Step257Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step257Counter_borrowed

private def s2Step257EntryFAfter : Arena := s2Step257EntryFBefore

private theorem s2Step257EntryBank_incomingDistinct : ([s2Step257EntryFRow,s2Step257EntryGRow,s2Step257EntryFvRow,s2Step257EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step257EntryF_Incoming : rowsOwned s2Step257EntryFBefore [s2Step257EntryFRow,s2Step257EntryGRow,s2Step257EntryFvRow,s2Step257EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step257EntryFRow,s2Step257EntryGRow,s2Step257EntryFvRow,s2Step257EntryGvRow] 0 s2Step257EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step257EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<840) ∨ (841≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step257EntryBank_outgoingOwned : rowsOwned s2Step257EntryGvAfter [s2Step257EntryFOut,s2Step257EntryGOut,s2Step257EntryFvOut,s2Step257EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step257EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<840) ∨ (841≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step257EntryF_Outgoing : rowsOwned s2Step257EntryGvAfter [s2Step257EntryFOut,s2Step257EntryGOut,s2Step257EntryFvOut,s2Step257EntryGvOut] :=
  hmrRows_owned_drop s2Step257EntryGvAfter [s2Step257EntryFOut,s2Step257EntryGOut,s2Step257EntryFvOut,s2Step257EntryGvOut] 0 s2Step257EntryBank_outgoingOwned

private theorem s2Step257EntryF_distinct : (s2Step257EntryFRow.sign::s2Step257EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step257EntryF_owned : (s2Step257EntryFRow.sign::s2Step257EntryFRow.payload).toFinset⊆s2Step257EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step257EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<840) ∨ (841≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step257EntryF_reserved : s2Step257EntryFBefore.reserve s2Step257EntryFFresh.toFinset=some s2Step257EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step257EntryFFresh,arenaWires]
  · norm_num [s2Step257EntryFBefore,s2Step257EntryFFresh,arenaWires]
  · simp only [s2Step257EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step257EntryF_checked : planRowResizeLog s2Step257EntryFBefore s2Step257EntryFRow 142 s2Step257EntryFFresh=
    some (s2Step257EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653],768⟩,growRow 768 s2Step257EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step257EntryFBefore s2Step257EntryFAfter s2Step257EntryFRow 142 s2Step257EntryFFresh
    s2Step257EntryF_distinct s2Step257EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step257EntryF_reserved
  have rowEq : WindowRow.mk (s2Step257EntryFRow.payload++s2Step257EntryFFresh) s2Step257EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step257EntryFvAfter : Arena := s2Step257EntryFBefore

private def s2Step257EntryFvBefore : Arena := s2Step257EntryFBefore

private theorem s2Step257EntryFv_Incoming : rowsOwned s2Step257EntryFvBefore [s2Step257EntryFvRow,s2Step257EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step257EntryFRow,s2Step257EntryGRow,s2Step257EntryFvRow,s2Step257EntryGvRow] 2 s2Step257EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step257EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<840) ∨ (841≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step257EntryFv_Outgoing : rowsOwned s2Step257EntryGvAfter [s2Step257EntryFvOut,s2Step257EntryGvOut] :=
  hmrRows_owned_drop s2Step257EntryGvAfter [s2Step257EntryFOut,s2Step257EntryGOut,s2Step257EntryFvOut,s2Step257EntryGvOut] 2 s2Step257EntryBank_outgoingOwned

private theorem s2Step257EntryFv_distinct : (s2Step257EntryFvRow.sign::s2Step257EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step257EntryFv_owned : (s2Step257EntryFvRow.sign::s2Step257EntryFvRow.payload).toFinset⊆s2Step257EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step257EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<840) ∨ (841≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step257EntryFv_reserved : s2Step257EntryFvBefore.reserve s2Step257EntryFvFresh.toFinset=some s2Step257EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step257EntryFvFresh,arenaWires]
  · norm_num [s2Step257EntryFvBefore,s2Step257EntryFBefore,s2Step257EntryFvFresh,arenaWires]
  · simp only [s2Step257EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step257EntryFv_checked : planRowResizeLog s2Step257EntryFvBefore s2Step257EntryFvRow 144 s2Step257EntryFvFresh=
    some (s2Step257EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809],770⟩,growRow 770 s2Step257EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step257EntryFvBefore s2Step257EntryFvAfter s2Step257EntryFvRow 144 s2Step257EntryFvFresh
    s2Step257EntryFv_distinct s2Step257EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step257EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step257EntryFvRow.payload++s2Step257EntryFvFresh) s2Step257EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step257EntryGAfter : Arena := s2Step257EntryFBefore

private def s2Step257EntryGBefore : Arena := s2Step257EntryFBefore

private theorem s2Step257EntryG_Incoming : rowsOwned s2Step257EntryGBefore [s2Step257EntryGRow,s2Step257EntryFvRow,s2Step257EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step257EntryFRow,s2Step257EntryGRow,s2Step257EntryFvRow,s2Step257EntryGvRow] 1 s2Step257EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step257EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<840) ∨ (841≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step257EntryG_Outgoing : rowsOwned s2Step257EntryGvAfter [s2Step257EntryGOut,s2Step257EntryFvOut,s2Step257EntryGvOut] :=
  hmrRows_owned_drop s2Step257EntryGvAfter [s2Step257EntryFOut,s2Step257EntryGOut,s2Step257EntryFvOut,s2Step257EntryGvOut] 1 s2Step257EntryBank_outgoingOwned

private theorem s2Step257EntryG_distinct : (s2Step257EntryGRow.sign::s2Step257EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step257EntryG_owned : (s2Step257EntryGRow.sign::s2Step257EntryGRow.payload).toFinset⊆s2Step257EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step257EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<840) ∨ (841≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step257EntryG_reserved : s2Step257EntryGBefore.reserve s2Step257EntryGFresh.toFinset=some s2Step257EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step257EntryGFresh,arenaWires]
  · norm_num [s2Step257EntryGBefore,s2Step257EntryFBefore,s2Step257EntryGFresh,arenaWires]
  · simp only [s2Step257EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step257EntryG_checked : planRowResizeLog s2Step257EntryGBefore s2Step257EntryGRow 142 s2Step257EntryGFresh=
    some (s2Step257EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141],769⟩,growRow 769 s2Step257EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step257EntryGBefore s2Step257EntryGAfter s2Step257EntryGRow 142 s2Step257EntryGFresh
    s2Step257EntryG_distinct s2Step257EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step257EntryG_reserved
  have rowEq : WindowRow.mk (s2Step257EntryGRow.payload++s2Step257EntryGFresh) s2Step257EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step257EntryGvBefore : Arena := s2Step257EntryFBefore

private theorem s2Step257EntryGv_Incoming : rowsOwned s2Step257EntryGvBefore [s2Step257EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step257EntryFRow,s2Step257EntryGRow,s2Step257EntryFvRow,s2Step257EntryGvRow] 3 s2Step257EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step257EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<840) ∨ (841≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step257EntryGv_Outgoing : rowsOwned s2Step257EntryGvAfter [s2Step257EntryGvOut] :=
  hmrRows_owned_drop s2Step257EntryGvAfter [s2Step257EntryFOut,s2Step257EntryGOut,s2Step257EntryFvOut,s2Step257EntryGvOut] 3 s2Step257EntryBank_outgoingOwned

private theorem s2Step257EntryGv_distinct : (s2Step257EntryGvRow.sign::s2Step257EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step257EntryGv_owned : (s2Step257EntryGvRow.sign::s2Step257EntryGvRow.payload).toFinset⊆s2Step257EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step257EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<840) ∨ (841≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step257EntryGv_reserved : s2Step257EntryGvBefore.reserve s2Step257EntryGvFresh.toFinset=some s2Step257EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step257EntryGvFresh,arenaWires]
  · norm_num [s2Step257EntryGvBefore,s2Step257EntryFBefore,s2Step257EntryGvFresh,arenaWires]
  · simp only [s2Step257EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step257EntryGv_checked : planRowResizeLog s2Step257EntryGvBefore s2Step257EntryGvRow 144 s2Step257EntryGvFresh=
    some (s2Step257EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784],771⟩,growRow 771 s2Step257EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step257EntryGvBefore s2Step257EntryGvAfter s2Step257EntryGvRow 144 s2Step257EntryGvFresh
    s2Step257EntryGv_distinct s2Step257EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step257EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step257EntryGvRow.payload++s2Step257EntryGvFresh) s2Step257EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step257EntryBank_rows : planWindowRowsLog s2Step257EntryFBefore [(s2Step257EntryFRow,142),(s2Step257EntryGRow,142),(s2Step257EntryFvRow,144),(s2Step257EntryGvRow,144)] [s2Step257EntryFFresh,s2Step257EntryGFresh,s2Step257EntryFvFresh,s2Step257EntryGvFresh]=
    some (s2Step257EntryGvAfter,[s2Step257EntryFOut,s2Step257EntryGOut,s2Step257EntryFvOut,s2Step257EntryGvOut],(growRow 768 s2Step257EntryFFresh ++ (growRow 769 s2Step257EntryGFresh ++ (growRow 770 s2Step257EntryFvFresh ++ (growRow 771 s2Step257EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step257EntryGvAfter [] []=some (s2Step257EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step257EntryGvBefore s2Step257EntryGvAfter s2Step257EntryGvAfter
    s2Step257EntryGvRow s2Step257EntryGvOut 144 s2Step257EntryGvFresh [] [] []
    (growRow 771 s2Step257EntryGvFresh) ([]) s2Step257EntryGv_Incoming s2Step257EntryGv_checked h4 s2Step257EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step257EntryFvBefore s2Step257EntryFvAfter s2Step257EntryGvAfter
    s2Step257EntryFvRow s2Step257EntryFvOut 144 s2Step257EntryFvFresh [(s2Step257EntryGvRow,144)] [s2Step257EntryGvFresh] [s2Step257EntryGvOut]
    (growRow 770 s2Step257EntryFvFresh) ((growRow 771 s2Step257EntryGvFresh ++ [])) s2Step257EntryFv_Incoming s2Step257EntryFv_checked h3 s2Step257EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step257EntryGBefore s2Step257EntryGAfter s2Step257EntryGvAfter
    s2Step257EntryGRow s2Step257EntryGOut 142 s2Step257EntryGFresh [(s2Step257EntryFvRow,144),(s2Step257EntryGvRow,144)] [s2Step257EntryFvFresh,s2Step257EntryGvFresh] [s2Step257EntryFvOut,s2Step257EntryGvOut]
    (growRow 769 s2Step257EntryGFresh) ((growRow 770 s2Step257EntryFvFresh ++ (growRow 771 s2Step257EntryGvFresh ++ []))) s2Step257EntryG_Incoming s2Step257EntryG_checked h2 s2Step257EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step257EntryFBefore s2Step257EntryFAfter s2Step257EntryGvAfter
    s2Step257EntryFRow s2Step257EntryFOut 142 s2Step257EntryFFresh [(s2Step257EntryGRow,142),(s2Step257EntryFvRow,144),(s2Step257EntryGvRow,144)] [s2Step257EntryGFresh,s2Step257EntryFvFresh,s2Step257EntryGvFresh] [s2Step257EntryGOut,s2Step257EntryFvOut,s2Step257EntryGvOut]
    (growRow 768 s2Step257EntryFFresh) ((growRow 769 s2Step257EntryGFresh ++ (growRow 770 s2Step257EntryFvFresh ++ (growRow 771 s2Step257EntryGvFresh ++ [])))) s2Step257EntryF_Incoming s2Step257EntryF_checked h1 s2Step257EntryF_Outgoing
  exact h0

private theorem s2Step257EntryBank_checked : compileHmrBankResizeLog .entry s2Step257EntryFBefore ⟨s2Step257EntryFRow,s2Step257EntryGRow,s2Step257EntryFvRow,s2Step257EntryGvRow⟩ ⟨142,142,144,144⟩ [s2Step257EntryFFresh,s2Step257EntryGFresh,s2Step257EntryFvFresh,s2Step257EntryGvFresh]=
    some (s2Step257EntryGvAfter,⟨s2Step257EntryFOut,s2Step257EntryGOut,s2Step257EntryFvOut,s2Step257EntryGvOut⟩,(growRow 768 s2Step257EntryFFresh ++ (growRow 769 s2Step257EntryGFresh ++ (growRow 770 s2Step257EntryFvFresh ++ (growRow 771 s2Step257EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step257EntryBank_rows]
  rfl

private def s2Step257ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step257ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step257ExitFBefore : Arena := s2Step257ExitGAfter

private def s2Step257ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 891],768⟩

private def s2Step257ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 885],770⟩

private def s2Step257ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 807],769⟩

private def s2Step257ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 792],771⟩

private theorem s2Step257ExitBank_incomingDistinct : ([s2Step257ExitGRow,s2Step257ExitFRow,s2Step257ExitFvRow,s2Step257ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step257ExitF_Incoming : rowsOwned s2Step257ExitFBefore [s2Step257ExitFRow,s2Step257ExitFvRow,s2Step257ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step257ExitGRow,s2Step257ExitFRow,s2Step257ExitFvRow,s2Step257ExitGvRow] 1 s2Step257ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step257ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step257ExitBank_outgoingOwned : rowsOwned s2Step257ExitGvAfter [s2Step257ExitGOut,s2Step257ExitFOut,s2Step257ExitFvOut,s2Step257ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step257ExitGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step257ExitF_Outgoing : rowsOwned s2Step257ExitGvAfter [s2Step257ExitFOut,s2Step257ExitFvOut,s2Step257ExitGvOut] :=
  hmrRows_owned_drop s2Step257ExitGvAfter [s2Step257ExitGOut,s2Step257ExitFOut,s2Step257ExitFvOut,s2Step257ExitGvOut] 1 s2Step257ExitBank_outgoingOwned

private theorem s2Step257ExitF_distinct : (s2Step257ExitFRow.sign::s2Step257ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step257ExitF_owned : (s2Step257ExitFRow.sign::s2Step257ExitFRow.payload).toFinset⊆s2Step257ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step257ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step257ExitF_retired : s2Step257ExitFBefore.retireSet s2Step257ExitFExtra.toFinset=s2Step257ExitFAfter := by
  unfold Arena.retireSet s2Step257ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step257ExitFBefore,s2Step257ExitGAfter,s2Step257ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step257ExitF_checked : planRowResizeLog s2Step257ExitFBefore s2Step257ExitFRow 142 []=
    some (s2Step257ExitFAfter,s2Step257ExitFOut,shrinkRow 768 s2Step257ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step257ExitFBefore s2Step257ExitFRow 142 s2Step257ExitF_distinct s2Step257ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step257ExitFRow.payload.take 142) s2Step257ExitFRow.sign=s2Step257ExitFOut := by decide +kernel
  have hi : s2Step257ExitFRow.payload.drop 142=s2Step257ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step257ExitF_retired] at result
  exact result

private def s2Step257ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step257ExitFvBefore : Arena := s2Step257ExitFAfter

private theorem s2Step257ExitFv_Incoming : rowsOwned s2Step257ExitFvBefore [s2Step257ExitFvRow,s2Step257ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step257ExitGRow,s2Step257ExitFRow,s2Step257ExitFvRow,s2Step257ExitGvRow] 2 s2Step257ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step257ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step257ExitFv_Outgoing : rowsOwned s2Step257ExitGvAfter [s2Step257ExitFvOut,s2Step257ExitGvOut] :=
  hmrRows_owned_drop s2Step257ExitGvAfter [s2Step257ExitGOut,s2Step257ExitFOut,s2Step257ExitFvOut,s2Step257ExitGvOut] 2 s2Step257ExitBank_outgoingOwned

private theorem s2Step257ExitFv_distinct : (s2Step257ExitFvRow.sign::s2Step257ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step257ExitFv_owned : (s2Step257ExitFvRow.sign::s2Step257ExitFvRow.payload).toFinset⊆s2Step257ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step257ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step257ExitFv_retired : s2Step257ExitFvBefore.retireSet s2Step257ExitFvExtra.toFinset=s2Step257ExitFvAfter := by
  unfold Arena.retireSet s2Step257ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step257ExitFvBefore,s2Step257ExitFAfter,s2Step257ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step257ExitFv_checked : planRowResizeLog s2Step257ExitFvBefore s2Step257ExitFvRow 144 []=
    some (s2Step257ExitFvAfter,s2Step257ExitFvOut,shrinkRow 770 s2Step257ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step257ExitFvBefore s2Step257ExitFvRow 144 s2Step257ExitFv_distinct s2Step257ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step257ExitFvRow.payload.take 144) s2Step257ExitFvRow.sign=s2Step257ExitFvOut := by decide +kernel
  have hi : s2Step257ExitFvRow.payload.drop 144=s2Step257ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step257ExitFv_retired] at result
  exact result

private def s2Step257ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private theorem s2Step257ExitG_Incoming : rowsOwned s2Step257ExitGBefore [s2Step257ExitGRow,s2Step257ExitFRow,s2Step257ExitFvRow,s2Step257ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step257ExitGRow,s2Step257ExitFRow,s2Step257ExitFvRow,s2Step257ExitGvRow] 0 s2Step257ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step257ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step257ExitG_Outgoing : rowsOwned s2Step257ExitGvAfter [s2Step257ExitGOut,s2Step257ExitFOut,s2Step257ExitFvOut,s2Step257ExitGvOut] :=
  hmrRows_owned_drop s2Step257ExitGvAfter [s2Step257ExitGOut,s2Step257ExitFOut,s2Step257ExitFvOut,s2Step257ExitGvOut] 0 s2Step257ExitBank_outgoingOwned

private theorem s2Step257ExitG_distinct : (s2Step257ExitGRow.sign::s2Step257ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step257ExitG_owned : (s2Step257ExitGRow.sign::s2Step257ExitGRow.payload).toFinset⊆s2Step257ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step257ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step257ExitG_retired : s2Step257ExitGBefore.retireSet s2Step257ExitGExtra.toFinset=s2Step257ExitGAfter := by
  unfold Arena.retireSet s2Step257ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step257ExitGBefore,s2Step257ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step257ExitG_checked : planRowResizeLog s2Step257ExitGBefore s2Step257ExitGRow 142 []=
    some (s2Step257ExitGAfter,s2Step257ExitGOut,shrinkRow 769 s2Step257ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step257ExitGBefore s2Step257ExitGRow 142 s2Step257ExitG_distinct s2Step257ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step257ExitGRow.payload.take 142) s2Step257ExitGRow.sign=s2Step257ExitGOut := by decide +kernel
  have hi : s2Step257ExitGRow.payload.drop 142=s2Step257ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step257ExitG_retired] at result
  exact result

private def s2Step257ExitGvBefore : Arena := s2Step257ExitFvAfter

private theorem s2Step257ExitGv_Incoming : rowsOwned s2Step257ExitGvBefore [s2Step257ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step257ExitGRow,s2Step257ExitFRow,s2Step257ExitFvRow,s2Step257ExitGvRow] 3 s2Step257ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step257ExitGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step257ExitGv_Outgoing : rowsOwned s2Step257ExitGvAfter [s2Step257ExitGvOut] :=
  hmrRows_owned_drop s2Step257ExitGvAfter [s2Step257ExitGOut,s2Step257ExitFOut,s2Step257ExitFvOut,s2Step257ExitGvOut] 3 s2Step257ExitBank_outgoingOwned

private theorem s2Step257ExitGv_distinct : (s2Step257ExitGvRow.sign::s2Step257ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step257ExitGv_owned : (s2Step257ExitGvRow.sign::s2Step257ExitGvRow.payload).toFinset⊆s2Step257ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step257ExitGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step257ExitGv_retired : s2Step257ExitGvBefore.retireSet s2Step257ExitGvExtra.toFinset=s2Step257ExitGvAfter := by
  unfold Arena.retireSet s2Step257ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step257ExitGvBefore,s2Step257ExitFvAfter,s2Step257ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step257ExitGv_checked : planRowResizeLog s2Step257ExitGvBefore s2Step257ExitGvRow 144 []=
    some (s2Step257ExitGvAfter,s2Step257ExitGvOut,shrinkRow 771 s2Step257ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step257ExitGvBefore s2Step257ExitGvRow 144 s2Step257ExitGv_distinct s2Step257ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step257ExitGvRow.payload.take 144) s2Step257ExitGvRow.sign=s2Step257ExitGvOut := by decide +kernel
  have hi : s2Step257ExitGvRow.payload.drop 144=s2Step257ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step257ExitGv_retired] at result
  exact result

private theorem s2Step257ExitBank_rows : planWindowRowsLog s2Step257ExitGBefore [(s2Step257ExitGRow,142),(s2Step257ExitFRow,142),(s2Step257ExitFvRow,144),(s2Step257ExitGvRow,144)] [[],[],[],[]]=
    some (s2Step257ExitGvAfter,[s2Step257ExitGOut,s2Step257ExitFOut,s2Step257ExitFvOut,s2Step257ExitGvOut],(shrinkRow 769 s2Step257ExitGExtra ++ (shrinkRow 768 s2Step257ExitFExtra ++ (shrinkRow 770 s2Step257ExitFvExtra ++ (shrinkRow 771 s2Step257ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step257ExitGvAfter [] []=some (s2Step257ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step257ExitGvBefore s2Step257ExitGvAfter s2Step257ExitGvAfter
    s2Step257ExitGvRow s2Step257ExitGvOut 144 [] [] [] []
    (shrinkRow 771 s2Step257ExitGvExtra) ([]) s2Step257ExitGv_Incoming s2Step257ExitGv_checked h4 s2Step257ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step257ExitFvBefore s2Step257ExitFvAfter s2Step257ExitGvAfter
    s2Step257ExitFvRow s2Step257ExitFvOut 144 [] [(s2Step257ExitGvRow,144)] [[]] [s2Step257ExitGvOut]
    (shrinkRow 770 s2Step257ExitFvExtra) ((shrinkRow 771 s2Step257ExitGvExtra ++ [])) s2Step257ExitFv_Incoming s2Step257ExitFv_checked h3 s2Step257ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step257ExitFBefore s2Step257ExitFAfter s2Step257ExitGvAfter
    s2Step257ExitFRow s2Step257ExitFOut 142 [] [(s2Step257ExitFvRow,144),(s2Step257ExitGvRow,144)] [[],[]] [s2Step257ExitFvOut,s2Step257ExitGvOut]
    (shrinkRow 768 s2Step257ExitFExtra) ((shrinkRow 770 s2Step257ExitFvExtra ++ (shrinkRow 771 s2Step257ExitGvExtra ++ []))) s2Step257ExitF_Incoming s2Step257ExitF_checked h2 s2Step257ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step257ExitGBefore s2Step257ExitGAfter s2Step257ExitGvAfter
    s2Step257ExitGRow s2Step257ExitGOut 142 [] [(s2Step257ExitFRow,142),(s2Step257ExitFvRow,144),(s2Step257ExitGvRow,144)] [[],[],[]] [s2Step257ExitFOut,s2Step257ExitFvOut,s2Step257ExitGvOut]
    (shrinkRow 769 s2Step257ExitGExtra) ((shrinkRow 768 s2Step257ExitFExtra ++ (shrinkRow 770 s2Step257ExitFvExtra ++ (shrinkRow 771 s2Step257ExitGvExtra ++ [])))) s2Step257ExitG_Incoming s2Step257ExitG_checked h1 s2Step257ExitG_Outgoing
  exact h0

private theorem s2Step257ExitBank_checked : compileHmrBankResizeLog .exit s2Step257ExitGBefore ⟨s2Step257ExitFRow,s2Step257ExitGRow,s2Step257ExitFvRow,s2Step257ExitGvRow⟩ ⟨142,142,144,144⟩ [[],[],[],[]]=
    some (s2Step257ExitGvAfter,⟨s2Step257ExitFOut,s2Step257ExitGOut,s2Step257ExitFvOut,s2Step257ExitGvOut⟩,(shrinkRow 769 s2Step257ExitGExtra ++ (shrinkRow 768 s2Step257ExitFExtra ++ (shrinkRow 770 s2Step257ExitFvExtra ++ (shrinkRow 771 s2Step257ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step257ExitBank_rows]
  rfl

private theorem s2Step257Add0_apart : Disjoint s2Step257Add0Arena.live s2Step257Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step257Add0Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step257Add0_card : s2Step257Add0Arena.live.card=897 := by
  decide +kernel

private theorem s2Step257Add0_borrowed : s2Step257Add0Arena.checkBorrow (hmrHybridCount s2Step257Add0Arena s2Step257Add0B.length) s2Step257Add0Work=some s2Step257Add0During := by
  have len : s2Step257Add0Work.length=hmrHybridCount s2Step257Add0Arena s2Step257Add0B.length := by
    rw [hmrHybridCount,s2Step257Add0_card]
    decide +kernel
  have nd : s2Step257Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step257Add0Arena s2Step257Add0During s2Step257Add0Work.toFinset s2Step257Add0_bounded s2Step257Add0_apart rfl

private theorem s2Step257Add0_distinct : (782::814::817::(s2Step257Add0A++s2Step257Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step257Add0_owned : (782::814::817::(s2Step257Add0A++s2Step257Add0B)).toFinset⊆s2Step257Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step257Add0Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step257Add0_checked : compileHmrHybridCinLog s2Step257Add0Arena 814 782 817 s2Step257Add0A s2Step257Add0B s2Step257Add0Work=some s2Step257Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step257Add0Arena s2Step257Add0During 814 782 817 s2Step257Add0A s2Step257Add0B s2Step257Add0Work
    (by decide +kernel) (by decide +kernel) s2Step257Add0_distinct
    (fun q hq => s2Step257Add0_owned (List.mem_toFinset.mpr hq)) s2Step257Add0_borrowed

private theorem s2Step257Add1_apart : Disjoint s2Step257Add1Arena.live s2Step257Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step257Add1Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step257Add1_card : s2Step257Add1Arena.live.card=897 := by
  decide +kernel

private theorem s2Step257Add1_borrowed : s2Step257Add1Arena.checkBorrow (hmrHybridCount s2Step257Add1Arena s2Step257Add1B.length) s2Step257Add1Work=some s2Step257Add1During := by
  have len : s2Step257Add1Work.length=hmrHybridCount s2Step257Add1Arena s2Step257Add1B.length := by
    rw [hmrHybridCount,s2Step257Add1_card]
    decide +kernel
  have nd : s2Step257Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step257Add1Arena s2Step257Add1During s2Step257Add1Work.toFinset s2Step257Add1_bounded s2Step257Add1_apart rfl

private theorem s2Step257Add1_distinct : (782::814::817::(s2Step257Add1A++s2Step257Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step257Add1_owned : (782::814::817::(s2Step257Add1A++s2Step257Add1B)).toFinset⊆s2Step257Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step257Add1Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step257Add1_checked : compileHmrHybridCinLog s2Step257Add1Arena 814 782 817 s2Step257Add1A s2Step257Add1B s2Step257Add1Work=some s2Step257Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step257Add1Arena s2Step257Add1During 814 782 817 s2Step257Add1A s2Step257Add1B s2Step257Add1Work
    (by decide +kernel) (by decide +kernel) s2Step257Add1_distinct
    (fun q hq => s2Step257Add1_owned (List.mem_toFinset.mpr hq)) s2Step257Add1_borrowed

private theorem s2Step257F4_apart : Disjoint (s2Step257Add0A++s2Step257Add0B).toFinset (s2Step257Add1A++s2Step257Add1B).toFinset := by
  have nd : ((s2Step257Add0A++s2Step257Add0B)++(s2Step257Add1A++s2Step257Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step257F4_carry : s2Step257F4FlagArena.checkBorrow 1 [817]=some s2Step257Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step257F4FlagArena,s2Step257HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step257F4FlagArena,s2Step257HeadFvAfter,s2Step257Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step257F4_distinct : (840::814::782::817::((s2Step257Add0A++s2Step257Add1A)++(s2Step257Add0B++s2Step257Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step257F4_flag : s2Step257HeadFvAfter.checkBorrow 1 [782]=some s2Step257F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step257HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step257F4_owned : (840::814::((s2Step257Add0A++s2Step257Add1A)++(s2Step257Add0B++s2Step257Add1B))).toFinset⊆s2Step257HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step257HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step257F4_checked : compileHmrHybridF4Log s2Step257HeadFvAfter 840 814 s2Step257Add0A s2Step257Add0B s2Step257Add1A s2Step257Add1B [782] [817] s2Step257Add0Work s2Step257Add1Work=some s2Step257F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step257HeadFvAfter s2Step257F4FlagArena s2Step257Add0Arena s2Step257Add0During s2Step257Add1During 840 814
    s2Step257Add0A s2Step257Add0B s2Step257Add1A s2Step257Add1B [782] [817] s2Step257Add0Work s2Step257Add1Work
    (fun q hq => s2Step257F4_owned (List.mem_toFinset.mpr hq)) s2Step257F4_flag s2Step257F4_carry
    s2Step257F4_distinct s2Step257F4_apart s2Step257Add0_checked s2Step257Add1_checked

private theorem s2Step257Front_branch : s2Step257FrontSigmaArena.checkBorrow 1 [814]=some s2Step257HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step257FrontSigmaArena,s2Step257EntryGvAfter,s2Step257EntryFBefore,arenaWires]
  · ext q
    simp only [s2Step257FrontSigmaArena,s2Step257EntryGvAfter,s2Step257EntryFBefore,s2Step257HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step257Front_entry : HmrFrontEntryValid s2Step257EntryFBefore s2Step257FrontBank 142 144 ⟨142,142,144,144⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step257FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step257EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step257EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<840) ∨ (841≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step257FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step257Front_sigma : s2Step257EntryGvAfter.checkBorrow 1 [840]=some s2Step257FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step257EntryGvAfter,s2Step257EntryFBefore,arenaWires]
  · rfl

private def s2Step257HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step257HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step257HeadFBefore : Arena := s2Step257HeadGAfter

private def s2Step257HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653],768⟩

private def s2Step257HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809],770⟩

private def s2Step257HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141],769⟩

private def s2Step257HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784],771⟩

private theorem s2Step257HeadBank_incomingDistinct : ([s2Step257HeadGRow,s2Step257HeadFRow,s2Step257HeadGvRow,s2Step257HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step257HeadF_Incoming : rowsOwned s2Step257HeadFBefore [s2Step257HeadFRow,s2Step257HeadGvRow,s2Step257HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step257HeadGRow,s2Step257HeadFRow,s2Step257HeadGvRow,s2Step257HeadFvRow] 1 s2Step257HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step257HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step257HeadBank_outgoingOwned : rowsOwned s2Step257HeadFvAfter [s2Step257HeadGOut,s2Step257HeadFOut,s2Step257HeadGvOut,s2Step257HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step257HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step257HeadF_Outgoing : rowsOwned s2Step257HeadFvAfter [s2Step257HeadFOut,s2Step257HeadGvOut,s2Step257HeadFvOut] :=
  hmrRows_owned_drop s2Step257HeadFvAfter [s2Step257HeadGOut,s2Step257HeadFOut,s2Step257HeadGvOut,s2Step257HeadFvOut] 1 s2Step257HeadBank_outgoingOwned

private theorem s2Step257HeadF_distinct : (s2Step257HeadFRow.sign::s2Step257HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step257HeadF_owned : (s2Step257HeadFRow.sign::s2Step257HeadFRow.payload).toFinset⊆s2Step257HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step257HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step257HeadF_reserved : s2Step257HeadFBefore.reserve s2Step257HeadFFresh.toFinset=some s2Step257HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step257HeadFFresh,arenaWires]
  · norm_num [s2Step257HeadFBefore,s2Step257HeadGAfter,s2Step257HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step257HeadFAfter,s2Step257HeadFBefore,s2Step257HeadGAfter,s2Step257HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step257HeadF_checked : planRowResizeLog s2Step257HeadFBefore s2Step257HeadFRow 143 s2Step257HeadFFresh=
    some (s2Step257HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 891],768⟩,growRow 768 s2Step257HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step257HeadFBefore s2Step257HeadFAfter s2Step257HeadFRow 143 s2Step257HeadFFresh
    s2Step257HeadF_distinct s2Step257HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step257HeadF_reserved
  have rowEq : WindowRow.mk (s2Step257HeadFRow.payload++s2Step257HeadFFresh) s2Step257HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 891],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step257HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step257HeadFvBefore : Arena := s2Step257HeadGvAfter

private theorem s2Step257HeadFv_Incoming : rowsOwned s2Step257HeadFvBefore [s2Step257HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step257HeadGRow,s2Step257HeadFRow,s2Step257HeadGvRow,s2Step257HeadFvRow] 3 s2Step257HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step257HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step257HeadFv_Outgoing : rowsOwned s2Step257HeadFvAfter [s2Step257HeadFvOut] :=
  hmrRows_owned_drop s2Step257HeadFvAfter [s2Step257HeadGOut,s2Step257HeadFOut,s2Step257HeadGvOut,s2Step257HeadFvOut] 3 s2Step257HeadBank_outgoingOwned

private theorem s2Step257HeadFv_distinct : (s2Step257HeadFvRow.sign::s2Step257HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step257HeadFv_owned : (s2Step257HeadFvRow.sign::s2Step257HeadFvRow.payload).toFinset⊆s2Step257HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step257HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step257HeadFv_reserved : s2Step257HeadFvBefore.reserve s2Step257HeadFvFresh.toFinset=some s2Step257HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step257HeadFvFresh,arenaWires]
  · norm_num [s2Step257HeadFvBefore,s2Step257HeadGvAfter,s2Step257HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step257HeadFvAfter,s2Step257HeadFvBefore,s2Step257HeadGvAfter,s2Step257HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step257HeadFv_checked : planRowResizeLog s2Step257HeadFvBefore s2Step257HeadFvRow 145 s2Step257HeadFvFresh=
    some (s2Step257HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 885],770⟩,growRow 770 s2Step257HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step257HeadFvBefore s2Step257HeadFvAfter s2Step257HeadFvRow 145 s2Step257HeadFvFresh
    s2Step257HeadFv_distinct s2Step257HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step257HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step257HeadFvRow.payload++s2Step257HeadFvFresh) s2Step257HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 885],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step257HeadG_Incoming : rowsOwned s2Step257HeadGBefore [s2Step257HeadGRow,s2Step257HeadFRow,s2Step257HeadGvRow,s2Step257HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step257HeadGRow,s2Step257HeadFRow,s2Step257HeadGvRow,s2Step257HeadFvRow] 0 s2Step257HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step257HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step257HeadG_Outgoing : rowsOwned s2Step257HeadFvAfter [s2Step257HeadGOut,s2Step257HeadFOut,s2Step257HeadGvOut,s2Step257HeadFvOut] :=
  hmrRows_owned_drop s2Step257HeadFvAfter [s2Step257HeadGOut,s2Step257HeadFOut,s2Step257HeadGvOut,s2Step257HeadFvOut] 0 s2Step257HeadBank_outgoingOwned

private theorem s2Step257HeadG_distinct : (s2Step257HeadGRow.sign::s2Step257HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step257HeadG_owned : (s2Step257HeadGRow.sign::s2Step257HeadGRow.payload).toFinset⊆s2Step257HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step257HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step257HeadG_reserved : s2Step257HeadGBefore.reserve s2Step257HeadGFresh.toFinset=some s2Step257HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step257HeadGFresh,arenaWires]
  · norm_num [s2Step257HeadGBefore,s2Step257HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step257HeadGAfter,s2Step257HeadGBefore,s2Step257HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step257HeadG_checked : planRowResizeLog s2Step257HeadGBefore s2Step257HeadGRow 143 s2Step257HeadGFresh=
    some (s2Step257HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 807],769⟩,growRow 769 s2Step257HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step257HeadGBefore s2Step257HeadGAfter s2Step257HeadGRow 143 s2Step257HeadGFresh
    s2Step257HeadG_distinct s2Step257HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step257HeadG_reserved
  have rowEq : WindowRow.mk (s2Step257HeadGRow.payload++s2Step257HeadGFresh) s2Step257HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 807],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step257HeadGvBefore : Arena := s2Step257HeadFAfter

private theorem s2Step257HeadGv_Incoming : rowsOwned s2Step257HeadGvBefore [s2Step257HeadGvRow,s2Step257HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step257HeadGRow,s2Step257HeadFRow,s2Step257HeadGvRow,s2Step257HeadFvRow] 2 s2Step257HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step257HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step257HeadGv_Outgoing : rowsOwned s2Step257HeadFvAfter [s2Step257HeadGvOut,s2Step257HeadFvOut] :=
  hmrRows_owned_drop s2Step257HeadFvAfter [s2Step257HeadGOut,s2Step257HeadFOut,s2Step257HeadGvOut,s2Step257HeadFvOut] 2 s2Step257HeadBank_outgoingOwned

private theorem s2Step257HeadGv_distinct : (s2Step257HeadGvRow.sign::s2Step257HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step257HeadGv_owned : (s2Step257HeadGvRow.sign::s2Step257HeadGvRow.payload).toFinset⊆s2Step257HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step257HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step257HeadGv_reserved : s2Step257HeadGvBefore.reserve s2Step257HeadGvFresh.toFinset=some s2Step257HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step257HeadGvFresh,arenaWires]
  · norm_num [s2Step257HeadGvBefore,s2Step257HeadFAfter,s2Step257HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step257HeadGvAfter,s2Step257HeadGvBefore,s2Step257HeadFAfter,s2Step257HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step257HeadGv_checked : planRowResizeLog s2Step257HeadGvBefore s2Step257HeadGvRow 145 s2Step257HeadGvFresh=
    some (s2Step257HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 792],771⟩,growRow 771 s2Step257HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step257HeadGvBefore s2Step257HeadGvAfter s2Step257HeadGvRow 145 s2Step257HeadGvFresh
    s2Step257HeadGv_distinct s2Step257HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step257HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step257HeadGvRow.payload++s2Step257HeadGvFresh) s2Step257HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 792],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step257HeadBank_rows : planWindowRowsLog s2Step257HeadGBefore [(s2Step257HeadGRow,143),(s2Step257HeadFRow,143),(s2Step257HeadGvRow,145),(s2Step257HeadFvRow,145)] [s2Step257HeadGFresh,s2Step257HeadFFresh,s2Step257HeadGvFresh,s2Step257HeadFvFresh]=
    some (s2Step257HeadFvAfter,[s2Step257HeadGOut,s2Step257HeadFOut,s2Step257HeadGvOut,s2Step257HeadFvOut],(growRow 769 s2Step257HeadGFresh ++ (growRow 768 s2Step257HeadFFresh ++ (growRow 771 s2Step257HeadGvFresh ++ (growRow 770 s2Step257HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step257HeadFvAfter [] []=some (s2Step257HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step257HeadFvBefore s2Step257HeadFvAfter s2Step257HeadFvAfter
    s2Step257HeadFvRow s2Step257HeadFvOut 145 s2Step257HeadFvFresh [] [] []
    (growRow 770 s2Step257HeadFvFresh) ([]) s2Step257HeadFv_Incoming s2Step257HeadFv_checked h4 s2Step257HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step257HeadGvBefore s2Step257HeadGvAfter s2Step257HeadFvAfter
    s2Step257HeadGvRow s2Step257HeadGvOut 145 s2Step257HeadGvFresh [(s2Step257HeadFvRow,145)] [s2Step257HeadFvFresh] [s2Step257HeadFvOut]
    (growRow 771 s2Step257HeadGvFresh) ((growRow 770 s2Step257HeadFvFresh ++ [])) s2Step257HeadGv_Incoming s2Step257HeadGv_checked h3 s2Step257HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step257HeadFBefore s2Step257HeadFAfter s2Step257HeadFvAfter
    s2Step257HeadFRow s2Step257HeadFOut 143 s2Step257HeadFFresh [(s2Step257HeadGvRow,145),(s2Step257HeadFvRow,145)] [s2Step257HeadGvFresh,s2Step257HeadFvFresh] [s2Step257HeadGvOut,s2Step257HeadFvOut]
    (growRow 768 s2Step257HeadFFresh) ((growRow 771 s2Step257HeadGvFresh ++ (growRow 770 s2Step257HeadFvFresh ++ []))) s2Step257HeadF_Incoming s2Step257HeadF_checked h2 s2Step257HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step257HeadGBefore s2Step257HeadGAfter s2Step257HeadFvAfter
    s2Step257HeadGRow s2Step257HeadGOut 143 s2Step257HeadGFresh [(s2Step257HeadFRow,143),(s2Step257HeadGvRow,145),(s2Step257HeadFvRow,145)] [s2Step257HeadFFresh,s2Step257HeadGvFresh,s2Step257HeadFvFresh] [s2Step257HeadFOut,s2Step257HeadGvOut,s2Step257HeadFvOut]
    (growRow 769 s2Step257HeadGFresh) ((growRow 768 s2Step257HeadFFresh ++ (growRow 771 s2Step257HeadGvFresh ++ (growRow 770 s2Step257HeadFvFresh ++ [])))) s2Step257HeadG_Incoming s2Step257HeadG_checked h1 s2Step257HeadG_Outgoing
  exact h0

private theorem s2Step257HeadBank_checked : compileHmrBankResizeLog .headroom s2Step257HeadGBefore ⟨s2Step257HeadFRow,s2Step257HeadGRow,s2Step257HeadFvRow,s2Step257HeadGvRow⟩ ⟨143,143,145,145⟩ [s2Step257HeadGFresh,s2Step257HeadFFresh,s2Step257HeadGvFresh,s2Step257HeadFvFresh]=
    some (s2Step257HeadFvAfter,⟨s2Step257HeadFOut,s2Step257HeadGOut,s2Step257HeadFvOut,s2Step257HeadGvOut⟩,(growRow 769 s2Step257HeadGFresh ++ (growRow 768 s2Step257HeadFFresh ++ (growRow 771 s2Step257HeadGvFresh ++ (growRow 770 s2Step257HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step257HeadBank_rows]
  rfl

private theorem s2Step257Front_checked : compileHmrSourceFrontLog s2Step257EntryFBefore s2Step257FrontBank 142 144 ⟨142,142,144,144⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step257FrontLog=some s2Step257FrontPlan := by
  have pairEq : s2Step257FrontPair=⟨s2Step257HeadFRow,s2Step257HeadGRow,s2Step257HeadFvRow,s2Step257HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step257FrontHead=⟨s2Step257ExitFRow,s2Step257ExitGRow,s2Step257ExitFvRow,s2Step257ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step257Add0A=s2Step257FrontHead.f.wires := by decide +kernel
  have gEq : s2Step257Add0B=s2Step257FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step257Add1A=s2Step257FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step257Add1B=s2Step257FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step257EntryFBefore s2Step257FrontBank 142 144 ⟨142,142,144,144⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step257FrontLog s2Step257FrontPlan
  · exact s2Step257Front_entry
  · exact s2Step257EntryBank_checked
  · exact s2Step257Front_sigma
  · rfl
  · exact s2Step257Front_branch
  · rfl
  · simpa only [s2Step257FrontPlan,pairEq] using s2Step257HeadBank_checked
  · simpa only [s2Step257FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step257F4_checked
  · exact s2Step257Counter_checked
  · rfl
  · simpa only [s2Step257FrontPlan,headEq] using s2Step257ExitBank_checked

private theorem s2Step257Complete_explicit_checked : compileHmrEarlyStepLog s2Step257EntryFBefore s2Step257FrontBank 142 144 ⟨142,142,144,144⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 51 s2Step257CompleteLog=some s2Step257CompletePlan := by
  let Q := s2Step257EarlyControlPlan
  have hq := s2Step257EarlyControl_plan_checked
  have fv1 : s2Step257CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step257CompleteOut.fv.payload[2]?.getD s2Step257CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step257CompleteOut.fv.payload[3]?.getD s2Step257CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step257CompleteOut.fv.payload[4]?.getD s2Step257CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step257EntryFBefore s2Step257EarlyControlArena s2Step257FrontBank 142 144 ⟨142,142,144,144⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 51 s2Step257CompleteLog s2Step257FrontPlan Q
    s2Step257Front_checked s2Step257Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step257Complete_owned s2Step257Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step257EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 777 840 s2Step257CompleteOut.fv.second (s2Step257CompleteOut.fv.payload[2]?.getD s2Step257CompleteOut.fv.sign) (s2Step257CompleteOut.fv.payload[3]?.getD s2Step257CompleteOut.fv.sign) (s2Step257CompleteOut.fv.payload[4]?.getD s2Step257CompleteOut.fv.sign) 814 51 s2Step257EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep257Arena : Arena := s2Step257EntryFBefore
def s2PrivateStep257Bank : WindowBank := s2Step257FrontBank
def s2PrivateStep257Spec : HmrSourceWalkStepLog := ⟨142,144,⟨142,142,144,144⟩,51,.early s2Step257CompleteLog⟩
def s2PrivateStep257Plan : HmrSourceStepPlan := .early s2Step257CompletePlan
theorem s2PrivateStep257_source : s2PrivateStep257Spec=s2ObservedLogs256[1] := rfl
theorem s2PrivateStep257_checked : compileHmrSourceStepLog s2PrivateStep257Arena s2PrivateStep257Bank
    s2PrivateStep257Spec.fgWidth s2PrivateStep257Spec.vWidth s2PrivateStep257Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900]
    6 498 257 s2PrivateStep257Spec.need none s2PrivateStep257Spec.log=some s2PrivateStep257Plan := by
  change compileHmrSourceStepLog s2Step257EntryFBefore s2Step257FrontBank 142 144 ⟨142,142,144,144⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 6 498 257 51 none (.early s2Step257CompleteLog)=some (.early s2Step257CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 257<498)]
  rw [s2Step257Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
