import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep254
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

private def s2Step256CompleteMoves : List (Wire × Wire) := [(807,654)]

private def s2Step256EarlyControlLog : HmrEarlyControlLog := ⟨[807, 891, 792, 885, 782],[817],[830],[800, 894, 896, 901, 902, 903],[]⟩

private def s2Step256FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [782], [], []],[[817], [885], [891], [792]],[[], [], [], []]⟩,[814],[840],[830],[800],[894, 896, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[894, 896, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[830, 800, 894, 896]⟩

private def s2Step256CompleteLog : HmrEarlyStepLog := ⟨s2Step256FrontLog,s2Step256CompleteMoves,s2Step256EarlyControlLog⟩

private def s2Step256ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653],768⟩

private def s2Step256ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809],770⟩

private def s2Step256ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141],769⟩

private def s2Step256ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784],771⟩

private def s2Step256FrontOut : WindowBank := ⟨s2Step256ExitFOut,s2Step256ExitGOut,s2Step256ExitFvOut,s2Step256ExitGvOut⟩

private def s2Step256CompleteOut : WindowBank := s2Step256FrontOut.repacked s2Step256CompleteMoves

private def s2Step256EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step256EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step256EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step256EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step256EarlyControlPositiveArena,[817],s2Step256EarlyControlEqualityArena,[830],⟨⟨814,false⟩,[⟨⟨817,false⟩,830⟩]⟩⟩

private def s2Step256EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<904)),Finset.filter_subset _ _⟩

private def s2Step256EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<904)),Finset.filter_subset _ _⟩

private def s2Step256EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step256EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<840) ∨ (841≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step256EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step256EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step256EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,807⟩,⟨⟨774,false⟩,891⟩,⟨⟨775,false⟩,792⟩,⟨⟨776,false⟩,885⟩,⟨⟨777,false⟩,782⟩]⟩

private def s2Step256EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step256EarlyControlZeroArena,s2Step256EarlyControlZeroPlan,s2Step256EarlyControlClassPlan,s2Step256EarlyControlFlagArena,s2Step256EarlyControlFittedArena,s2Step256EarlyControlHistoryArena,s2Step256EarlyControlSigmaArena,s2Step256EarlyControlOutputArena,s2Step256EarlyControlLog⟩

private def s2Step256CounterWork : List Wire := [830, 800, 894, 896]

private theorem s2Step256Counter_bounded : s2Step256CounterWork.toFinset⊆arenaWires := by norm_num [s2Step256CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step256HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step256CounterDuring : Arena := ⟨s2Step256HeadFvAfter.live∪s2Step256CounterWork.toFinset,Finset.union_subset s2Step256HeadFvAfter.bounded s2Step256Counter_bounded⟩

private def s2Step256EntryFFresh : List Wire := []

private def s2Step256EntryFvFresh : List Wire := []

private def s2Step256EntryGFresh : List Wire := [782]

private def s2Step256EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<840) ∨ (841≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step256EntryGvAfter : Arena := s2Step256EntryGAfter

private def s2Step256EntryGvFresh : List Wire := []

private def s2Step256ExitFExtra : List Wire := [654, 885]

private def s2Step256ExitFvExtra : List Wire := [792]

private def s2Step256ExitGExtra : List Wire := [782, 817]

private def s2Step256ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<654) ∨ (655≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step256ExitGvExtra : List Wire := [891]

private def s2Step256Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step256Add0Work : List Wire := [894, 896, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step256Add0_bounded : s2Step256Add0Work.toFinset⊆arenaWires := by
  have h : s2Step256Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step256Add0During : Arena := ⟨s2Step256Add0Arena.live∪s2Step256Add0Work.toFinset,Finset.union_subset s2Step256Add0Arena.bounded s2Step256Add0_bounded⟩

private def s2Step256Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step256Add1Work : List Wire := [894, 896, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step256Add1_bounded : s2Step256Add1Work.toFinset⊆arenaWires := by
  have h : s2Step256Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step256Add1During : Arena := ⟨s2Step256Add1Arena.live∪s2Step256Add1Work.toFinset,Finset.union_subset s2Step256Add1Arena.bounded s2Step256Add1_bounded⟩

private def s2Step256F4FlagArena : Arena := ⟨s2Step256HeadFvAfter.live∪{830},Finset.union_subset s2Step256HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step256F4Plan : HmrHybridF4Plan := ⟨s2Step256F4FlagArena,[830],s2Step256Add0Arena,[800],s2Step256Add0During,s2Step256Add0Work,s2Step256Add1During,s2Step256Add1Work⟩

private def s2Step256HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 885],768⟩

private def s2Step256HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 792],770⟩

private def s2Step256HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 782, 817],769⟩

private def s2Step256HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 891],771⟩

private def s2Step256FrontHead : WindowBank := ⟨s2Step256HeadFOut,s2Step256HeadGOut,s2Step256HeadFvOut,s2Step256HeadGvOut⟩

private def s2Step256EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654],768⟩

private def s2Step256EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809],770⟩

private def s2Step256EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 782],769⟩

private def s2Step256EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784],771⟩

private def s2Step256FrontPair : WindowBank := ⟨s2Step256EntryFOut,s2Step256EntryGOut,s2Step256EntryFvOut,s2Step256EntryGvOut⟩

private def s2Step256FrontSigmaArena : Arena := ⟨s2Step256EntryGvAfter.live∪{814},Finset.union_subset s2Step256EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step256HeadFFresh : List Wire := [885]

private def s2Step256HeadFvFresh : List Wire := [792]

private def s2Step256HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step256HeadGFresh : List Wire := [817]

private def s2Step256HeadGvFresh : List Wire := [891]

private def s2Step256FrontPlan : HmrSourceFront := ⟨s2Step256EntryGvAfter,s2Step256FrontPair,(growRow 768 s2Step256EntryFFresh ++ (growRow 769 s2Step256EntryGFresh ++ (growRow 770 s2Step256EntryFvFresh ++ (growRow 771 s2Step256EntryGvFresh ++ [])))),s2Step256FrontSigmaArena,[814],s2Step256HeadGBefore,[840],
  s2Step256HeadFvAfter,s2Step256FrontHead,(growRow 769 s2Step256HeadGFresh ++ (growRow 768 s2Step256HeadFFresh ++ (growRow 771 s2Step256HeadGvFresh ++ (growRow 770 s2Step256HeadFvFresh ++ [])))),s2Step256F4Plan,s2Step256CounterDuring,s2Step256CounterWork,s2Step256ExitGvAfter,s2Step256FrontOut,(shrinkRow 769 s2Step256ExitGExtra ++ (shrinkRow 768 s2Step256ExitFExtra ++ (shrinkRow 770 s2Step256ExitFvExtra ++ (shrinkRow 771 s2Step256ExitGvExtra ++ []))))⟩

private def s2Step256CompletePlan : HmrEarlyStepPlan := ⟨s2Step256FrontPlan,s2Step256EarlyControlArena,s2Step256EarlyControlPlan,s2Step256CompleteMoves⟩

private theorem s2Step256Complete_apart : List.Disjoint (s2Step256CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [814, 840, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] := by
  have nd : ((s2Step256CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[814, 840, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step256Complete_owned : (s2Step256CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step256EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step256EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private def s2Step256CompleteMoveArena : Arena := ⟨s2Step256ExitGvAfter.live∪{654},Finset.union_subset s2Step256ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step256Complete_repack : s2Step256ExitGvAfter.checkRepack s2Step256CompleteMoves=some s2Step256EarlyControlArena := by
  have owned : 807∈s2Step256ExitGvAfter.live := by norm_num [s2Step256ExitGvAfter,arenaWires]
  have reserve : s2Step256ExitGvAfter.reserve {654}=some s2Step256CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step256ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step256CompleteMoveArena.retireSet {807}=s2Step256EarlyControlArena := by
    unfold Arena.retireSet s2Step256EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step256CompleteMoveArena,s2Step256ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step256CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step256CompleteMoveArena.retireSet {807}).checkRepack []=some s2Step256EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step256EarlyControl_branchOwned : ([840] : List Wire).toFinset⊆s2Step256EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step256EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step256EarlyControl_branch : compileHmrBranchRetirement s2Step256EarlyControlSigmaArena 840=some s2Step256EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step256EarlyControl_branchOwned
  · ext q
    simp [s2Step256EarlyControlOutputArena,s2Step256EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step256EarlyControl_classEqualityBorrow : s2Step256EarlyControlPositiveArena.checkBorrow (([814, 817] : List Wire).length-1) s2Step256EarlyControlLog.classWork=some s2Step256EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step256EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step256EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step256EarlyControlEqualityArena,s2Step256EarlyControlPositiveArena,s2Step256EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step256EarlyControl_classEqualityOwned : ([814, 817] : List Wire).toFinset⊆s2Step256EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step256EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step256EarlyControl_classEquality : compileHmrEqualityLog s2Step256EarlyControlPositiveArena [814, 817] 0 s2Step256EarlyControlLog.classWork=some (s2Step256EarlyControlEqualityArena,s2Step256EarlyControlLog.classWork,s2Step256EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step256EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step256EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step256EarlyControl_classOwned : ([777, 782, 814] : List Wire).toFinset⊆s2Step256EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step256EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step256EarlyControl_positiveBorrow : s2Step256EarlyControlZeroArena.checkBorrow (1) s2Step256EarlyControlLog.positiveWork=some s2Step256EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step256EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step256EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step256EarlyControlPositiveArena,s2Step256EarlyControlZeroArena,s2Step256EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step256EarlyControl_class : compileHmrSourceClassLog s2Step256EarlyControlZeroArena false 777 s2Step256EarlyControlZeroPlan.top 0 814 s2Step256EarlyControlLog.positiveWork s2Step256EarlyControlLog.classWork=some s2Step256EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step256EarlyControlClassPlan s2Step256EarlyControlZeroArena false 777 s2Step256EarlyControlZeroPlan.top 0 814
  constructor
  · decide +kernel
  · exact s2Step256EarlyControl_classOwned
  · exact s2Step256EarlyControl_positiveBorrow
  · exact s2Step256EarlyControl_classEquality

private theorem s2Step256EarlyControl_entryRecordOwned : ([840, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).toFinset⊆s2Step256EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step256EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step256EarlyControl_entrySigmaOwned : ([814, 254] : List Wire).toFinset⊆s2Step256EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step256EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step256EarlyControl_fitBorrow : s2Step256EarlyControlFlagArena.checkBorrow ((51-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).length)) s2Step256EarlyControlLog.recordFresh=some s2Step256EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step256EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step256EarlyControlFlagArena (fun q => (0≤q ∧ q<904)) rfl
      decide +kernel
    · ext q
      simp [s2Step256EarlyControlFittedArena,s2Step256EarlyControlFlagArena,s2Step256EarlyControlLog,arenaWires]

private theorem s2Step256EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).toFinset⊆s2Step256EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step256EarlyControlFlagArena (fun q => (0≤q ∧ q<904)) rfl
  decide +kernel

private theorem s2Step256EarlyControl_fit : compileHmrRecordGrowLog s2Step256EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 51 s2Step256EarlyControlLog.recordFresh=some s2Step256EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step256EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step256EarlyControl_fitBorrow

private theorem s2Step256EarlyControl_flagsBorrow : s2Step256EarlyControlEqualityArena.checkBorrow (6) s2Step256EarlyControlLog.flagWork=some s2Step256EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step256EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step256EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step256EarlyControlFlagArena,s2Step256EarlyControlEqualityArena,s2Step256EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step256EarlyControl_flagsOwned : ([830, 253, 252, 251] : List Wire).toFinset⊆s2Step256EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step256EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step256EarlyControl_flags : compileHmrFlagsLog s2Step256EarlyControlClassPlan.equalityArena s2Step256EarlyControlClassPlan.equality.top 253 252 251 s2Step256EarlyControlLog.flagWork=some s2Step256EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step256EarlyControl_flagsOwned⟩
  · exact s2Step256EarlyControl_flagsBorrow

private theorem s2Step256EarlyControl_historyBorrow : s2Step256EarlyControlArena.checkBorrow ((51-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).length)) s2Step256EarlyControlLog.recordFresh=some s2Step256EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step256EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step256EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step256EarlyControlHistoryArena,s2Step256EarlyControlArena,s2Step256EarlyControlLog,arenaWires]

private theorem s2Step256EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).toFinset⊆s2Step256EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step256EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step256EarlyControl_history : compileHmrRecordGrowLog s2Step256EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 51 s2Step256EarlyControlLog.recordFresh=some s2Step256EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step256EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step256EarlyControl_historyBorrow

private theorem s2Step256EarlyControl_sigmaOwned : ([254, 814] : List Wire).toFinset⊆s2Step256EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step256EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step256EarlyControl_sigmaReleaseOwned : ([814] : List Wire).toFinset⊆s2Step256EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step256EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step256EarlyControl_sigmaRelease : s2Step256EarlyControlHistoryArena.release {814} (fun _ => false)=some s2Step256EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step256EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step256EarlyControlSigmaArena,s2Step256EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step256EarlyControl_sigma : compileHmrSigmaDropLog s2Step256EarlyControlHistoryArena false 0 0 254 814 []=some s2Step256EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step256EarlyControl_sigmaOwned⟩
  · exact s2Step256EarlyControl_sigmaRelease

private theorem s2Step256EarlyControl_zeroBorrow : s2Step256EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step256EarlyControlLog.zeroWork=some s2Step256EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step256EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step256EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step256EarlyControlZeroArena,s2Step256EarlyControlArena,s2Step256EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step256EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step256EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step256EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step256EarlyControl_zero : compileHmrEqualityLog s2Step256EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step256EarlyControlLog.zeroWork=some (s2Step256EarlyControlZeroArena,s2Step256EarlyControlLog.zeroWork,s2Step256EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step256EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step256EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step256EarlyControl_logged : s2Step256EarlyControlPlan.Logged s2Step256EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 777 814 254 253 252 251 840 51 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step256EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step256EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step256EarlyControl_zero
  · exact s2Step256EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step256EarlyControl_flags
  · exact s2Step256EarlyControl_fit
  · exact s2Step256EarlyControl_history
  · exact s2Step256EarlyControl_sigma
  · exact s2Step256EarlyControl_branch

private theorem s2Step256EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step256EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 777 814 254 253 252 251 840 51 s2Step256EarlyControlLog=some s2Step256EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step256EarlyControlPlan s2Step256EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 777 814 254 253 252 251 840 51 s2Step256EarlyControl_logged

private def s2Step256EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<840) ∨ (841≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step256EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654],768⟩

private def s2Step256EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809],770⟩

private def s2Step256EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141],769⟩

private def s2Step256EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784],771⟩

private def s2Step256FrontBank : WindowBank := ⟨s2Step256EntryFRow,s2Step256EntryGRow,s2Step256EntryFvRow,s2Step256EntryGvRow⟩

private def s2Step256Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 885, 768]

private def s2Step256Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 782, 817, 769]

private def s2Step256Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 792, 770]

private def s2Step256Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 891, 771]

private theorem s2Step256Counter_apart : Disjoint s2Step256HeadFvAfter.live s2Step256CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step256HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step256Counter_borrowed : s2Step256HeadFvAfter.checkBorrow 4 s2Step256CounterWork=some s2Step256CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step256HeadFvAfter s2Step256CounterDuring s2Step256CounterWork.toFinset s2Step256Counter_bounded s2Step256Counter_apart rfl

private theorem s2Step256Counter_owned : (814::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step256HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step256HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step256Counter_checked : compileHmrCounterStepLog s2Step256HeadFvAfter true 814 [772, 773, 774, 775, 776, 777] s2Step256CounterWork=some s2Step256CounterDuring := by
  have owned : ∀q∈814::[772, 773, 774, 775, 776, 777],q∈s2Step256HeadFvAfter.live := fun q hq => s2Step256Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step256Counter_borrowed

private def s2Step256EntryFAfter : Arena := s2Step256EntryFBefore

private theorem s2Step256EntryBank_incomingDistinct : ([s2Step256EntryFRow,s2Step256EntryGRow,s2Step256EntryFvRow,s2Step256EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step256EntryF_Incoming : rowsOwned s2Step256EntryFBefore [s2Step256EntryFRow,s2Step256EntryGRow,s2Step256EntryFvRow,s2Step256EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step256EntryFRow,s2Step256EntryGRow,s2Step256EntryFvRow,s2Step256EntryGvRow] 0 s2Step256EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step256EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<840) ∨ (841≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step256EntryBank_outgoingOwned : rowsOwned s2Step256EntryGvAfter [s2Step256EntryFOut,s2Step256EntryGOut,s2Step256EntryFvOut,s2Step256EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step256EntryGvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<840) ∨ (841≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step256EntryF_Outgoing : rowsOwned s2Step256EntryGvAfter [s2Step256EntryFOut,s2Step256EntryGOut,s2Step256EntryFvOut,s2Step256EntryGvOut] :=
  hmrRows_owned_drop s2Step256EntryGvAfter [s2Step256EntryFOut,s2Step256EntryGOut,s2Step256EntryFvOut,s2Step256EntryGvOut] 0 s2Step256EntryBank_outgoingOwned

private theorem s2Step256EntryF_distinct : (s2Step256EntryFRow.sign::s2Step256EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step256EntryF_owned : (s2Step256EntryFRow.sign::s2Step256EntryFRow.payload).toFinset⊆s2Step256EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step256EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<840) ∨ (841≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step256EntryF_reserved : s2Step256EntryFBefore.reserve s2Step256EntryFFresh.toFinset=some s2Step256EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step256EntryFFresh,arenaWires]
  · norm_num [s2Step256EntryFBefore,s2Step256EntryFFresh,arenaWires]
  · simp only [s2Step256EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step256EntryF_checked : planRowResizeLog s2Step256EntryFBefore s2Step256EntryFRow 143 s2Step256EntryFFresh=
    some (s2Step256EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654],768⟩,growRow 768 s2Step256EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step256EntryFBefore s2Step256EntryFAfter s2Step256EntryFRow 143 s2Step256EntryFFresh
    s2Step256EntryF_distinct s2Step256EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step256EntryF_reserved
  have rowEq : WindowRow.mk (s2Step256EntryFRow.payload++s2Step256EntryFFresh) s2Step256EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step256EntryFvAfter : Arena := s2Step256EntryGAfter

private def s2Step256EntryFvBefore : Arena := s2Step256EntryGAfter

private theorem s2Step256EntryFv_Incoming : rowsOwned s2Step256EntryFvBefore [s2Step256EntryFvRow,s2Step256EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step256EntryFRow,s2Step256EntryGRow,s2Step256EntryFvRow,s2Step256EntryGvRow] 2 s2Step256EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step256EntryFvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<840) ∨ (841≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step256EntryFv_Outgoing : rowsOwned s2Step256EntryGvAfter [s2Step256EntryFvOut,s2Step256EntryGvOut] :=
  hmrRows_owned_drop s2Step256EntryGvAfter [s2Step256EntryFOut,s2Step256EntryGOut,s2Step256EntryFvOut,s2Step256EntryGvOut] 2 s2Step256EntryBank_outgoingOwned

private theorem s2Step256EntryFv_distinct : (s2Step256EntryFvRow.sign::s2Step256EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step256EntryFv_owned : (s2Step256EntryFvRow.sign::s2Step256EntryFvRow.payload).toFinset⊆s2Step256EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step256EntryFvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<840) ∨ (841≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step256EntryFv_reserved : s2Step256EntryFvBefore.reserve s2Step256EntryFvFresh.toFinset=some s2Step256EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step256EntryFvFresh,arenaWires]
  · norm_num [s2Step256EntryFvBefore,s2Step256EntryGAfter,s2Step256EntryFvFresh,arenaWires]
  · simp only [s2Step256EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step256EntryFv_checked : planRowResizeLog s2Step256EntryFvBefore s2Step256EntryFvRow 144 s2Step256EntryFvFresh=
    some (s2Step256EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809],770⟩,growRow 770 s2Step256EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step256EntryFvBefore s2Step256EntryFvAfter s2Step256EntryFvRow 144 s2Step256EntryFvFresh
    s2Step256EntryFv_distinct s2Step256EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step256EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step256EntryFvRow.payload++s2Step256EntryFvFresh) s2Step256EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step256EntryGBefore : Arena := s2Step256EntryFBefore

private theorem s2Step256EntryG_Incoming : rowsOwned s2Step256EntryGBefore [s2Step256EntryGRow,s2Step256EntryFvRow,s2Step256EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step256EntryFRow,s2Step256EntryGRow,s2Step256EntryFvRow,s2Step256EntryGvRow] 1 s2Step256EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step256EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<840) ∨ (841≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step256EntryG_Outgoing : rowsOwned s2Step256EntryGvAfter [s2Step256EntryGOut,s2Step256EntryFvOut,s2Step256EntryGvOut] :=
  hmrRows_owned_drop s2Step256EntryGvAfter [s2Step256EntryFOut,s2Step256EntryGOut,s2Step256EntryFvOut,s2Step256EntryGvOut] 1 s2Step256EntryBank_outgoingOwned

private theorem s2Step256EntryG_distinct : (s2Step256EntryGRow.sign::s2Step256EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step256EntryG_owned : (s2Step256EntryGRow.sign::s2Step256EntryGRow.payload).toFinset⊆s2Step256EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step256EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<840) ∨ (841≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step256EntryG_reserved : s2Step256EntryGBefore.reserve s2Step256EntryGFresh.toFinset=some s2Step256EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step256EntryGFresh,arenaWires]
  · norm_num [s2Step256EntryGBefore,s2Step256EntryFBefore,s2Step256EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step256EntryGAfter,s2Step256EntryGBefore,s2Step256EntryFBefore,s2Step256EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step256EntryG_checked : planRowResizeLog s2Step256EntryGBefore s2Step256EntryGRow 143 s2Step256EntryGFresh=
    some (s2Step256EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 782],769⟩,growRow 769 s2Step256EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step256EntryGBefore s2Step256EntryGAfter s2Step256EntryGRow 143 s2Step256EntryGFresh
    s2Step256EntryG_distinct s2Step256EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step256EntryG_reserved
  have rowEq : WindowRow.mk (s2Step256EntryGRow.payload++s2Step256EntryGFresh) s2Step256EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 782],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step256EntryGvBefore : Arena := s2Step256EntryGAfter

private theorem s2Step256EntryGv_Incoming : rowsOwned s2Step256EntryGvBefore [s2Step256EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step256EntryFRow,s2Step256EntryGRow,s2Step256EntryFvRow,s2Step256EntryGvRow] 3 s2Step256EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step256EntryGvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<840) ∨ (841≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step256EntryGv_Outgoing : rowsOwned s2Step256EntryGvAfter [s2Step256EntryGvOut] :=
  hmrRows_owned_drop s2Step256EntryGvAfter [s2Step256EntryFOut,s2Step256EntryGOut,s2Step256EntryFvOut,s2Step256EntryGvOut] 3 s2Step256EntryBank_outgoingOwned

private theorem s2Step256EntryGv_distinct : (s2Step256EntryGvRow.sign::s2Step256EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step256EntryGv_owned : (s2Step256EntryGvRow.sign::s2Step256EntryGvRow.payload).toFinset⊆s2Step256EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step256EntryGvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<840) ∨ (841≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step256EntryGv_reserved : s2Step256EntryGvBefore.reserve s2Step256EntryGvFresh.toFinset=some s2Step256EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step256EntryGvFresh,arenaWires]
  · norm_num [s2Step256EntryGvBefore,s2Step256EntryGAfter,s2Step256EntryGvFresh,arenaWires]
  · simp only [s2Step256EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step256EntryGv_checked : planRowResizeLog s2Step256EntryGvBefore s2Step256EntryGvRow 144 s2Step256EntryGvFresh=
    some (s2Step256EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784],771⟩,growRow 771 s2Step256EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step256EntryGvBefore s2Step256EntryGvAfter s2Step256EntryGvRow 144 s2Step256EntryGvFresh
    s2Step256EntryGv_distinct s2Step256EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step256EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step256EntryGvRow.payload++s2Step256EntryGvFresh) s2Step256EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step256EntryBank_rows : planWindowRowsLog s2Step256EntryFBefore [(s2Step256EntryFRow,143),(s2Step256EntryGRow,143),(s2Step256EntryFvRow,144),(s2Step256EntryGvRow,144)] [s2Step256EntryFFresh,s2Step256EntryGFresh,s2Step256EntryFvFresh,s2Step256EntryGvFresh]=
    some (s2Step256EntryGvAfter,[s2Step256EntryFOut,s2Step256EntryGOut,s2Step256EntryFvOut,s2Step256EntryGvOut],(growRow 768 s2Step256EntryFFresh ++ (growRow 769 s2Step256EntryGFresh ++ (growRow 770 s2Step256EntryFvFresh ++ (growRow 771 s2Step256EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step256EntryGvAfter [] []=some (s2Step256EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step256EntryGvBefore s2Step256EntryGvAfter s2Step256EntryGvAfter
    s2Step256EntryGvRow s2Step256EntryGvOut 144 s2Step256EntryGvFresh [] [] []
    (growRow 771 s2Step256EntryGvFresh) ([]) s2Step256EntryGv_Incoming s2Step256EntryGv_checked h4 s2Step256EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step256EntryFvBefore s2Step256EntryFvAfter s2Step256EntryGvAfter
    s2Step256EntryFvRow s2Step256EntryFvOut 144 s2Step256EntryFvFresh [(s2Step256EntryGvRow,144)] [s2Step256EntryGvFresh] [s2Step256EntryGvOut]
    (growRow 770 s2Step256EntryFvFresh) ((growRow 771 s2Step256EntryGvFresh ++ [])) s2Step256EntryFv_Incoming s2Step256EntryFv_checked h3 s2Step256EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step256EntryGBefore s2Step256EntryGAfter s2Step256EntryGvAfter
    s2Step256EntryGRow s2Step256EntryGOut 143 s2Step256EntryGFresh [(s2Step256EntryFvRow,144),(s2Step256EntryGvRow,144)] [s2Step256EntryFvFresh,s2Step256EntryGvFresh] [s2Step256EntryFvOut,s2Step256EntryGvOut]
    (growRow 769 s2Step256EntryGFresh) ((growRow 770 s2Step256EntryFvFresh ++ (growRow 771 s2Step256EntryGvFresh ++ []))) s2Step256EntryG_Incoming s2Step256EntryG_checked h2 s2Step256EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step256EntryFBefore s2Step256EntryFAfter s2Step256EntryGvAfter
    s2Step256EntryFRow s2Step256EntryFOut 143 s2Step256EntryFFresh [(s2Step256EntryGRow,143),(s2Step256EntryFvRow,144),(s2Step256EntryGvRow,144)] [s2Step256EntryGFresh,s2Step256EntryFvFresh,s2Step256EntryGvFresh] [s2Step256EntryGOut,s2Step256EntryFvOut,s2Step256EntryGvOut]
    (growRow 768 s2Step256EntryFFresh) ((growRow 769 s2Step256EntryGFresh ++ (growRow 770 s2Step256EntryFvFresh ++ (growRow 771 s2Step256EntryGvFresh ++ [])))) s2Step256EntryF_Incoming s2Step256EntryF_checked h1 s2Step256EntryF_Outgoing
  exact h0

private theorem s2Step256EntryBank_checked : compileHmrBankResizeLog .entry s2Step256EntryFBefore ⟨s2Step256EntryFRow,s2Step256EntryGRow,s2Step256EntryFvRow,s2Step256EntryGvRow⟩ ⟨143,143,144,144⟩ [s2Step256EntryFFresh,s2Step256EntryGFresh,s2Step256EntryFvFresh,s2Step256EntryGvFresh]=
    some (s2Step256EntryGvAfter,⟨s2Step256EntryFOut,s2Step256EntryGOut,s2Step256EntryFvOut,s2Step256EntryGvOut⟩,(growRow 768 s2Step256EntryFFresh ++ (growRow 769 s2Step256EntryGFresh ++ (growRow 770 s2Step256EntryFvFresh ++ (growRow 771 s2Step256EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step256EntryBank_rows]
  rfl

private def s2Step256ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<654) ∨ (655≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step256ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step256ExitFBefore : Arena := s2Step256ExitGAfter

private def s2Step256ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 885],768⟩

private def s2Step256ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 792],770⟩

private def s2Step256ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 782, 817],769⟩

private def s2Step256ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 891],771⟩

private theorem s2Step256ExitBank_incomingDistinct : ([s2Step256ExitGRow,s2Step256ExitFRow,s2Step256ExitFvRow,s2Step256ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step256ExitF_Incoming : rowsOwned s2Step256ExitFBefore [s2Step256ExitFRow,s2Step256ExitFvRow,s2Step256ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step256ExitGRow,s2Step256ExitFRow,s2Step256ExitFvRow,s2Step256ExitGvRow] 1 s2Step256ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step256ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step256ExitBank_outgoingOwned : rowsOwned s2Step256ExitGvAfter [s2Step256ExitGOut,s2Step256ExitFOut,s2Step256ExitFvOut,s2Step256ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step256ExitGvAfter (fun q => (0≤q ∧ q<654) ∨ (655≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step256ExitF_Outgoing : rowsOwned s2Step256ExitGvAfter [s2Step256ExitFOut,s2Step256ExitFvOut,s2Step256ExitGvOut] :=
  hmrRows_owned_drop s2Step256ExitGvAfter [s2Step256ExitGOut,s2Step256ExitFOut,s2Step256ExitFvOut,s2Step256ExitGvOut] 1 s2Step256ExitBank_outgoingOwned

private theorem s2Step256ExitF_distinct : (s2Step256ExitFRow.sign::s2Step256ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step256ExitF_owned : (s2Step256ExitFRow.sign::s2Step256ExitFRow.payload).toFinset⊆s2Step256ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step256ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step256ExitF_retired : s2Step256ExitFBefore.retireSet s2Step256ExitFExtra.toFinset=s2Step256ExitFAfter := by
  unfold Arena.retireSet s2Step256ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step256ExitFBefore,s2Step256ExitGAfter,s2Step256ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step256ExitF_checked : planRowResizeLog s2Step256ExitFBefore s2Step256ExitFRow 142 []=
    some (s2Step256ExitFAfter,s2Step256ExitFOut,shrinkRow 768 s2Step256ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step256ExitFBefore s2Step256ExitFRow 142 s2Step256ExitF_distinct s2Step256ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step256ExitFRow.payload.take 142) s2Step256ExitFRow.sign=s2Step256ExitFOut := by decide +kernel
  have hi : s2Step256ExitFRow.payload.drop 142=s2Step256ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step256ExitF_retired] at result
  exact result

private def s2Step256ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<654) ∨ (655≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step256ExitFvBefore : Arena := s2Step256ExitFAfter

private theorem s2Step256ExitFv_Incoming : rowsOwned s2Step256ExitFvBefore [s2Step256ExitFvRow,s2Step256ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step256ExitGRow,s2Step256ExitFRow,s2Step256ExitFvRow,s2Step256ExitGvRow] 2 s2Step256ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step256ExitFvBefore (fun q => (0≤q ∧ q<654) ∨ (655≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step256ExitFv_Outgoing : rowsOwned s2Step256ExitGvAfter [s2Step256ExitFvOut,s2Step256ExitGvOut] :=
  hmrRows_owned_drop s2Step256ExitGvAfter [s2Step256ExitGOut,s2Step256ExitFOut,s2Step256ExitFvOut,s2Step256ExitGvOut] 2 s2Step256ExitBank_outgoingOwned

private theorem s2Step256ExitFv_distinct : (s2Step256ExitFvRow.sign::s2Step256ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step256ExitFv_owned : (s2Step256ExitFvRow.sign::s2Step256ExitFvRow.payload).toFinset⊆s2Step256ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step256ExitFvBefore (fun q => (0≤q ∧ q<654) ∨ (655≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step256ExitFv_retired : s2Step256ExitFvBefore.retireSet s2Step256ExitFvExtra.toFinset=s2Step256ExitFvAfter := by
  unfold Arena.retireSet s2Step256ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step256ExitFvBefore,s2Step256ExitFAfter,s2Step256ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step256ExitFv_checked : planRowResizeLog s2Step256ExitFvBefore s2Step256ExitFvRow 144 []=
    some (s2Step256ExitFvAfter,s2Step256ExitFvOut,shrinkRow 770 s2Step256ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step256ExitFvBefore s2Step256ExitFvRow 144 s2Step256ExitFv_distinct s2Step256ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step256ExitFvRow.payload.take 144) s2Step256ExitFvRow.sign=s2Step256ExitFvOut := by decide +kernel
  have hi : s2Step256ExitFvRow.payload.drop 144=s2Step256ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step256ExitFv_retired] at result
  exact result

private def s2Step256ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private theorem s2Step256ExitG_Incoming : rowsOwned s2Step256ExitGBefore [s2Step256ExitGRow,s2Step256ExitFRow,s2Step256ExitFvRow,s2Step256ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step256ExitGRow,s2Step256ExitFRow,s2Step256ExitFvRow,s2Step256ExitGvRow] 0 s2Step256ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step256ExitGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step256ExitG_Outgoing : rowsOwned s2Step256ExitGvAfter [s2Step256ExitGOut,s2Step256ExitFOut,s2Step256ExitFvOut,s2Step256ExitGvOut] :=
  hmrRows_owned_drop s2Step256ExitGvAfter [s2Step256ExitGOut,s2Step256ExitFOut,s2Step256ExitFvOut,s2Step256ExitGvOut] 0 s2Step256ExitBank_outgoingOwned

private theorem s2Step256ExitG_distinct : (s2Step256ExitGRow.sign::s2Step256ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step256ExitG_owned : (s2Step256ExitGRow.sign::s2Step256ExitGRow.payload).toFinset⊆s2Step256ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step256ExitGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step256ExitG_retired : s2Step256ExitGBefore.retireSet s2Step256ExitGExtra.toFinset=s2Step256ExitGAfter := by
  unfold Arena.retireSet s2Step256ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step256ExitGBefore,s2Step256ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step256ExitG_checked : planRowResizeLog s2Step256ExitGBefore s2Step256ExitGRow 142 []=
    some (s2Step256ExitGAfter,s2Step256ExitGOut,shrinkRow 769 s2Step256ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step256ExitGBefore s2Step256ExitGRow 142 s2Step256ExitG_distinct s2Step256ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step256ExitGRow.payload.take 142) s2Step256ExitGRow.sign=s2Step256ExitGOut := by decide +kernel
  have hi : s2Step256ExitGRow.payload.drop 142=s2Step256ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step256ExitG_retired] at result
  exact result

private def s2Step256ExitGvBefore : Arena := s2Step256ExitFvAfter

private theorem s2Step256ExitGv_Incoming : rowsOwned s2Step256ExitGvBefore [s2Step256ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step256ExitGRow,s2Step256ExitFRow,s2Step256ExitFvRow,s2Step256ExitGvRow] 3 s2Step256ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step256ExitGvBefore (fun q => (0≤q ∧ q<654) ∨ (655≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step256ExitGv_Outgoing : rowsOwned s2Step256ExitGvAfter [s2Step256ExitGvOut] :=
  hmrRows_owned_drop s2Step256ExitGvAfter [s2Step256ExitGOut,s2Step256ExitFOut,s2Step256ExitFvOut,s2Step256ExitGvOut] 3 s2Step256ExitBank_outgoingOwned

private theorem s2Step256ExitGv_distinct : (s2Step256ExitGvRow.sign::s2Step256ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step256ExitGv_owned : (s2Step256ExitGvRow.sign::s2Step256ExitGvRow.payload).toFinset⊆s2Step256ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step256ExitGvBefore (fun q => (0≤q ∧ q<654) ∨ (655≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step256ExitGv_retired : s2Step256ExitGvBefore.retireSet s2Step256ExitGvExtra.toFinset=s2Step256ExitGvAfter := by
  unfold Arena.retireSet s2Step256ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step256ExitGvBefore,s2Step256ExitFvAfter,s2Step256ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step256ExitGv_checked : planRowResizeLog s2Step256ExitGvBefore s2Step256ExitGvRow 144 []=
    some (s2Step256ExitGvAfter,s2Step256ExitGvOut,shrinkRow 771 s2Step256ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step256ExitGvBefore s2Step256ExitGvRow 144 s2Step256ExitGv_distinct s2Step256ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step256ExitGvRow.payload.take 144) s2Step256ExitGvRow.sign=s2Step256ExitGvOut := by decide +kernel
  have hi : s2Step256ExitGvRow.payload.drop 144=s2Step256ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step256ExitGv_retired] at result
  exact result

private theorem s2Step256ExitBank_rows : planWindowRowsLog s2Step256ExitGBefore [(s2Step256ExitGRow,142),(s2Step256ExitFRow,142),(s2Step256ExitFvRow,144),(s2Step256ExitGvRow,144)] [[],[],[],[]]=
    some (s2Step256ExitGvAfter,[s2Step256ExitGOut,s2Step256ExitFOut,s2Step256ExitFvOut,s2Step256ExitGvOut],(shrinkRow 769 s2Step256ExitGExtra ++ (shrinkRow 768 s2Step256ExitFExtra ++ (shrinkRow 770 s2Step256ExitFvExtra ++ (shrinkRow 771 s2Step256ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step256ExitGvAfter [] []=some (s2Step256ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step256ExitGvBefore s2Step256ExitGvAfter s2Step256ExitGvAfter
    s2Step256ExitGvRow s2Step256ExitGvOut 144 [] [] [] []
    (shrinkRow 771 s2Step256ExitGvExtra) ([]) s2Step256ExitGv_Incoming s2Step256ExitGv_checked h4 s2Step256ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step256ExitFvBefore s2Step256ExitFvAfter s2Step256ExitGvAfter
    s2Step256ExitFvRow s2Step256ExitFvOut 144 [] [(s2Step256ExitGvRow,144)] [[]] [s2Step256ExitGvOut]
    (shrinkRow 770 s2Step256ExitFvExtra) ((shrinkRow 771 s2Step256ExitGvExtra ++ [])) s2Step256ExitFv_Incoming s2Step256ExitFv_checked h3 s2Step256ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step256ExitFBefore s2Step256ExitFAfter s2Step256ExitGvAfter
    s2Step256ExitFRow s2Step256ExitFOut 142 [] [(s2Step256ExitFvRow,144),(s2Step256ExitGvRow,144)] [[],[]] [s2Step256ExitFvOut,s2Step256ExitGvOut]
    (shrinkRow 768 s2Step256ExitFExtra) ((shrinkRow 770 s2Step256ExitFvExtra ++ (shrinkRow 771 s2Step256ExitGvExtra ++ []))) s2Step256ExitF_Incoming s2Step256ExitF_checked h2 s2Step256ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step256ExitGBefore s2Step256ExitGAfter s2Step256ExitGvAfter
    s2Step256ExitGRow s2Step256ExitGOut 142 [] [(s2Step256ExitFRow,142),(s2Step256ExitFvRow,144),(s2Step256ExitGvRow,144)] [[],[],[]] [s2Step256ExitFOut,s2Step256ExitFvOut,s2Step256ExitGvOut]
    (shrinkRow 769 s2Step256ExitGExtra) ((shrinkRow 768 s2Step256ExitFExtra ++ (shrinkRow 770 s2Step256ExitFvExtra ++ (shrinkRow 771 s2Step256ExitGvExtra ++ [])))) s2Step256ExitG_Incoming s2Step256ExitG_checked h1 s2Step256ExitG_Outgoing
  exact h0

private theorem s2Step256ExitBank_checked : compileHmrBankResizeLog .exit s2Step256ExitGBefore ⟨s2Step256ExitFRow,s2Step256ExitGRow,s2Step256ExitFvRow,s2Step256ExitGvRow⟩ ⟨142,142,144,144⟩ [[],[],[],[]]=
    some (s2Step256ExitGvAfter,⟨s2Step256ExitFOut,s2Step256ExitGOut,s2Step256ExitFvOut,s2Step256ExitGvOut⟩,(shrinkRow 769 s2Step256ExitGExtra ++ (shrinkRow 768 s2Step256ExitFExtra ++ (shrinkRow 770 s2Step256ExitFvExtra ++ (shrinkRow 771 s2Step256ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step256ExitBank_rows]
  rfl

private theorem s2Step256Add0_apart : Disjoint s2Step256Add0Arena.live s2Step256Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step256Add0Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step256Add0_card : s2Step256Add0Arena.live.card=899 := by
  decide +kernel

private theorem s2Step256Add0_borrowed : s2Step256Add0Arena.checkBorrow (hmrHybridCount s2Step256Add0Arena s2Step256Add0B.length) s2Step256Add0Work=some s2Step256Add0During := by
  have len : s2Step256Add0Work.length=hmrHybridCount s2Step256Add0Arena s2Step256Add0B.length := by
    rw [hmrHybridCount,s2Step256Add0_card]
    decide +kernel
  have nd : s2Step256Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step256Add0Arena s2Step256Add0During s2Step256Add0Work.toFinset s2Step256Add0_bounded s2Step256Add0_apart rfl

private theorem s2Step256Add0_distinct : (830::840::800::(s2Step256Add0A++s2Step256Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step256Add0_owned : (830::840::800::(s2Step256Add0A++s2Step256Add0B)).toFinset⊆s2Step256Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step256Add0Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step256Add0_checked : compileHmrHybridCinLog s2Step256Add0Arena 840 830 800 s2Step256Add0A s2Step256Add0B s2Step256Add0Work=some s2Step256Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step256Add0Arena s2Step256Add0During 840 830 800 s2Step256Add0A s2Step256Add0B s2Step256Add0Work
    (by decide +kernel) (by decide +kernel) s2Step256Add0_distinct
    (fun q hq => s2Step256Add0_owned (List.mem_toFinset.mpr hq)) s2Step256Add0_borrowed

private theorem s2Step256Add1_apart : Disjoint s2Step256Add1Arena.live s2Step256Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step256Add1Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step256Add1_card : s2Step256Add1Arena.live.card=899 := by
  decide +kernel

private theorem s2Step256Add1_borrowed : s2Step256Add1Arena.checkBorrow (hmrHybridCount s2Step256Add1Arena s2Step256Add1B.length) s2Step256Add1Work=some s2Step256Add1During := by
  have len : s2Step256Add1Work.length=hmrHybridCount s2Step256Add1Arena s2Step256Add1B.length := by
    rw [hmrHybridCount,s2Step256Add1_card]
    decide +kernel
  have nd : s2Step256Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step256Add1Arena s2Step256Add1During s2Step256Add1Work.toFinset s2Step256Add1_bounded s2Step256Add1_apart rfl

private theorem s2Step256Add1_distinct : (830::840::800::(s2Step256Add1A++s2Step256Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step256Add1_owned : (830::840::800::(s2Step256Add1A++s2Step256Add1B)).toFinset⊆s2Step256Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step256Add1Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step256Add1_checked : compileHmrHybridCinLog s2Step256Add1Arena 840 830 800 s2Step256Add1A s2Step256Add1B s2Step256Add1Work=some s2Step256Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step256Add1Arena s2Step256Add1During 840 830 800 s2Step256Add1A s2Step256Add1B s2Step256Add1Work
    (by decide +kernel) (by decide +kernel) s2Step256Add1_distinct
    (fun q hq => s2Step256Add1_owned (List.mem_toFinset.mpr hq)) s2Step256Add1_borrowed

private theorem s2Step256F4_apart : Disjoint (s2Step256Add0A++s2Step256Add0B).toFinset (s2Step256Add1A++s2Step256Add1B).toFinset := by
  have nd : ((s2Step256Add0A++s2Step256Add0B)++(s2Step256Add1A++s2Step256Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step256F4_carry : s2Step256F4FlagArena.checkBorrow 1 [800]=some s2Step256Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step256F4FlagArena,s2Step256HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step256F4FlagArena,s2Step256HeadFvAfter,s2Step256Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step256F4_distinct : (814::840::830::800::((s2Step256Add0A++s2Step256Add1A)++(s2Step256Add0B++s2Step256Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step256F4_flag : s2Step256HeadFvAfter.checkBorrow 1 [830]=some s2Step256F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step256HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step256F4_owned : (814::840::((s2Step256Add0A++s2Step256Add1A)++(s2Step256Add0B++s2Step256Add1B))).toFinset⊆s2Step256HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step256HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step256F4_checked : compileHmrHybridF4Log s2Step256HeadFvAfter 814 840 s2Step256Add0A s2Step256Add0B s2Step256Add1A s2Step256Add1B [830] [800] s2Step256Add0Work s2Step256Add1Work=some s2Step256F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step256HeadFvAfter s2Step256F4FlagArena s2Step256Add0Arena s2Step256Add0During s2Step256Add1During 814 840
    s2Step256Add0A s2Step256Add0B s2Step256Add1A s2Step256Add1B [830] [800] s2Step256Add0Work s2Step256Add1Work
    (fun q hq => s2Step256F4_owned (List.mem_toFinset.mpr hq)) s2Step256F4_flag s2Step256F4_carry
    s2Step256F4_distinct s2Step256F4_apart s2Step256Add0_checked s2Step256Add1_checked

private theorem s2Step256Front_branch : s2Step256FrontSigmaArena.checkBorrow 1 [840]=some s2Step256HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step256FrontSigmaArena,s2Step256EntryGvAfter,s2Step256EntryGAfter,arenaWires]
  · ext q
    simp only [s2Step256FrontSigmaArena,s2Step256EntryGvAfter,s2Step256EntryGAfter,s2Step256HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step256Front_entry : HmrFrontEntryValid s2Step256EntryFBefore s2Step256FrontBank 143 144 ⟨142,142,144,144⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step256FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step256EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step256EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<840) ∨ (841≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step256FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step256Front_sigma : s2Step256EntryGvAfter.checkBorrow 1 [814]=some s2Step256FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step256EntryGvAfter,s2Step256EntryGAfter,arenaWires]
  · rfl

private def s2Step256HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step256HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step256HeadFBefore : Arena := s2Step256HeadGAfter

private def s2Step256HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654],768⟩

private def s2Step256HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809],770⟩

private def s2Step256HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 782],769⟩

private def s2Step256HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784],771⟩

private theorem s2Step256HeadBank_incomingDistinct : ([s2Step256HeadGRow,s2Step256HeadFRow,s2Step256HeadGvRow,s2Step256HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step256HeadF_Incoming : rowsOwned s2Step256HeadFBefore [s2Step256HeadFRow,s2Step256HeadGvRow,s2Step256HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step256HeadGRow,s2Step256HeadFRow,s2Step256HeadGvRow,s2Step256HeadFvRow] 1 s2Step256HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step256HeadFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step256HeadBank_outgoingOwned : rowsOwned s2Step256HeadFvAfter [s2Step256HeadGOut,s2Step256HeadFOut,s2Step256HeadGvOut,s2Step256HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step256HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step256HeadF_Outgoing : rowsOwned s2Step256HeadFvAfter [s2Step256HeadFOut,s2Step256HeadGvOut,s2Step256HeadFvOut] :=
  hmrRows_owned_drop s2Step256HeadFvAfter [s2Step256HeadGOut,s2Step256HeadFOut,s2Step256HeadGvOut,s2Step256HeadFvOut] 1 s2Step256HeadBank_outgoingOwned

private theorem s2Step256HeadF_distinct : (s2Step256HeadFRow.sign::s2Step256HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step256HeadF_owned : (s2Step256HeadFRow.sign::s2Step256HeadFRow.payload).toFinset⊆s2Step256HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step256HeadFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step256HeadF_reserved : s2Step256HeadFBefore.reserve s2Step256HeadFFresh.toFinset=some s2Step256HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step256HeadFFresh,arenaWires]
  · norm_num [s2Step256HeadFBefore,s2Step256HeadGAfter,s2Step256HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step256HeadFAfter,s2Step256HeadFBefore,s2Step256HeadGAfter,s2Step256HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step256HeadF_checked : planRowResizeLog s2Step256HeadFBefore s2Step256HeadFRow 144 s2Step256HeadFFresh=
    some (s2Step256HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 885],768⟩,growRow 768 s2Step256HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step256HeadFBefore s2Step256HeadFAfter s2Step256HeadFRow 144 s2Step256HeadFFresh
    s2Step256HeadF_distinct s2Step256HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step256HeadF_reserved
  have rowEq : WindowRow.mk (s2Step256HeadFRow.payload++s2Step256HeadFFresh) s2Step256HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 885],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step256HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step256HeadFvBefore : Arena := s2Step256HeadGvAfter

private theorem s2Step256HeadFv_Incoming : rowsOwned s2Step256HeadFvBefore [s2Step256HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step256HeadGRow,s2Step256HeadFRow,s2Step256HeadGvRow,s2Step256HeadFvRow] 3 s2Step256HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step256HeadFvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step256HeadFv_Outgoing : rowsOwned s2Step256HeadFvAfter [s2Step256HeadFvOut] :=
  hmrRows_owned_drop s2Step256HeadFvAfter [s2Step256HeadGOut,s2Step256HeadFOut,s2Step256HeadGvOut,s2Step256HeadFvOut] 3 s2Step256HeadBank_outgoingOwned

private theorem s2Step256HeadFv_distinct : (s2Step256HeadFvRow.sign::s2Step256HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step256HeadFv_owned : (s2Step256HeadFvRow.sign::s2Step256HeadFvRow.payload).toFinset⊆s2Step256HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step256HeadFvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step256HeadFv_reserved : s2Step256HeadFvBefore.reserve s2Step256HeadFvFresh.toFinset=some s2Step256HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step256HeadFvFresh,arenaWires]
  · norm_num [s2Step256HeadFvBefore,s2Step256HeadGvAfter,s2Step256HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step256HeadFvAfter,s2Step256HeadFvBefore,s2Step256HeadGvAfter,s2Step256HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step256HeadFv_checked : planRowResizeLog s2Step256HeadFvBefore s2Step256HeadFvRow 145 s2Step256HeadFvFresh=
    some (s2Step256HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 792],770⟩,growRow 770 s2Step256HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step256HeadFvBefore s2Step256HeadFvAfter s2Step256HeadFvRow 145 s2Step256HeadFvFresh
    s2Step256HeadFv_distinct s2Step256HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step256HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step256HeadFvRow.payload++s2Step256HeadFvFresh) s2Step256HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 792],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step256HeadG_Incoming : rowsOwned s2Step256HeadGBefore [s2Step256HeadGRow,s2Step256HeadFRow,s2Step256HeadGvRow,s2Step256HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step256HeadGRow,s2Step256HeadFRow,s2Step256HeadGvRow,s2Step256HeadFvRow] 0 s2Step256HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step256HeadGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step256HeadG_Outgoing : rowsOwned s2Step256HeadFvAfter [s2Step256HeadGOut,s2Step256HeadFOut,s2Step256HeadGvOut,s2Step256HeadFvOut] :=
  hmrRows_owned_drop s2Step256HeadFvAfter [s2Step256HeadGOut,s2Step256HeadFOut,s2Step256HeadGvOut,s2Step256HeadFvOut] 0 s2Step256HeadBank_outgoingOwned

private theorem s2Step256HeadG_distinct : (s2Step256HeadGRow.sign::s2Step256HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step256HeadG_owned : (s2Step256HeadGRow.sign::s2Step256HeadGRow.payload).toFinset⊆s2Step256HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step256HeadGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step256HeadG_reserved : s2Step256HeadGBefore.reserve s2Step256HeadGFresh.toFinset=some s2Step256HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step256HeadGFresh,arenaWires]
  · norm_num [s2Step256HeadGBefore,s2Step256HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step256HeadGAfter,s2Step256HeadGBefore,s2Step256HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step256HeadG_checked : planRowResizeLog s2Step256HeadGBefore s2Step256HeadGRow 144 s2Step256HeadGFresh=
    some (s2Step256HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 782, 817],769⟩,growRow 769 s2Step256HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step256HeadGBefore s2Step256HeadGAfter s2Step256HeadGRow 144 s2Step256HeadGFresh
    s2Step256HeadG_distinct s2Step256HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step256HeadG_reserved
  have rowEq : WindowRow.mk (s2Step256HeadGRow.payload++s2Step256HeadGFresh) s2Step256HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 782, 817],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step256HeadGvBefore : Arena := s2Step256HeadFAfter

private theorem s2Step256HeadGv_Incoming : rowsOwned s2Step256HeadGvBefore [s2Step256HeadGvRow,s2Step256HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step256HeadGRow,s2Step256HeadFRow,s2Step256HeadGvRow,s2Step256HeadFvRow] 2 s2Step256HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step256HeadGvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step256HeadGv_Outgoing : rowsOwned s2Step256HeadFvAfter [s2Step256HeadGvOut,s2Step256HeadFvOut] :=
  hmrRows_owned_drop s2Step256HeadFvAfter [s2Step256HeadGOut,s2Step256HeadFOut,s2Step256HeadGvOut,s2Step256HeadFvOut] 2 s2Step256HeadBank_outgoingOwned

private theorem s2Step256HeadGv_distinct : (s2Step256HeadGvRow.sign::s2Step256HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step256HeadGv_owned : (s2Step256HeadGvRow.sign::s2Step256HeadGvRow.payload).toFinset⊆s2Step256HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step256HeadGvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step256HeadGv_reserved : s2Step256HeadGvBefore.reserve s2Step256HeadGvFresh.toFinset=some s2Step256HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step256HeadGvFresh,arenaWires]
  · norm_num [s2Step256HeadGvBefore,s2Step256HeadFAfter,s2Step256HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step256HeadGvAfter,s2Step256HeadGvBefore,s2Step256HeadFAfter,s2Step256HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step256HeadGv_checked : planRowResizeLog s2Step256HeadGvBefore s2Step256HeadGvRow 145 s2Step256HeadGvFresh=
    some (s2Step256HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 891],771⟩,growRow 771 s2Step256HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step256HeadGvBefore s2Step256HeadGvAfter s2Step256HeadGvRow 145 s2Step256HeadGvFresh
    s2Step256HeadGv_distinct s2Step256HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step256HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step256HeadGvRow.payload++s2Step256HeadGvFresh) s2Step256HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 891],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step256HeadBank_rows : planWindowRowsLog s2Step256HeadGBefore [(s2Step256HeadGRow,144),(s2Step256HeadFRow,144),(s2Step256HeadGvRow,145),(s2Step256HeadFvRow,145)] [s2Step256HeadGFresh,s2Step256HeadFFresh,s2Step256HeadGvFresh,s2Step256HeadFvFresh]=
    some (s2Step256HeadFvAfter,[s2Step256HeadGOut,s2Step256HeadFOut,s2Step256HeadGvOut,s2Step256HeadFvOut],(growRow 769 s2Step256HeadGFresh ++ (growRow 768 s2Step256HeadFFresh ++ (growRow 771 s2Step256HeadGvFresh ++ (growRow 770 s2Step256HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step256HeadFvAfter [] []=some (s2Step256HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step256HeadFvBefore s2Step256HeadFvAfter s2Step256HeadFvAfter
    s2Step256HeadFvRow s2Step256HeadFvOut 145 s2Step256HeadFvFresh [] [] []
    (growRow 770 s2Step256HeadFvFresh) ([]) s2Step256HeadFv_Incoming s2Step256HeadFv_checked h4 s2Step256HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step256HeadGvBefore s2Step256HeadGvAfter s2Step256HeadFvAfter
    s2Step256HeadGvRow s2Step256HeadGvOut 145 s2Step256HeadGvFresh [(s2Step256HeadFvRow,145)] [s2Step256HeadFvFresh] [s2Step256HeadFvOut]
    (growRow 771 s2Step256HeadGvFresh) ((growRow 770 s2Step256HeadFvFresh ++ [])) s2Step256HeadGv_Incoming s2Step256HeadGv_checked h3 s2Step256HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step256HeadFBefore s2Step256HeadFAfter s2Step256HeadFvAfter
    s2Step256HeadFRow s2Step256HeadFOut 144 s2Step256HeadFFresh [(s2Step256HeadGvRow,145),(s2Step256HeadFvRow,145)] [s2Step256HeadGvFresh,s2Step256HeadFvFresh] [s2Step256HeadGvOut,s2Step256HeadFvOut]
    (growRow 768 s2Step256HeadFFresh) ((growRow 771 s2Step256HeadGvFresh ++ (growRow 770 s2Step256HeadFvFresh ++ []))) s2Step256HeadF_Incoming s2Step256HeadF_checked h2 s2Step256HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step256HeadGBefore s2Step256HeadGAfter s2Step256HeadFvAfter
    s2Step256HeadGRow s2Step256HeadGOut 144 s2Step256HeadGFresh [(s2Step256HeadFRow,144),(s2Step256HeadGvRow,145),(s2Step256HeadFvRow,145)] [s2Step256HeadFFresh,s2Step256HeadGvFresh,s2Step256HeadFvFresh] [s2Step256HeadFOut,s2Step256HeadGvOut,s2Step256HeadFvOut]
    (growRow 769 s2Step256HeadGFresh) ((growRow 768 s2Step256HeadFFresh ++ (growRow 771 s2Step256HeadGvFresh ++ (growRow 770 s2Step256HeadFvFresh ++ [])))) s2Step256HeadG_Incoming s2Step256HeadG_checked h1 s2Step256HeadG_Outgoing
  exact h0

private theorem s2Step256HeadBank_checked : compileHmrBankResizeLog .headroom s2Step256HeadGBefore ⟨s2Step256HeadFRow,s2Step256HeadGRow,s2Step256HeadFvRow,s2Step256HeadGvRow⟩ ⟨144,144,145,145⟩ [s2Step256HeadGFresh,s2Step256HeadFFresh,s2Step256HeadGvFresh,s2Step256HeadFvFresh]=
    some (s2Step256HeadFvAfter,⟨s2Step256HeadFOut,s2Step256HeadGOut,s2Step256HeadFvOut,s2Step256HeadGvOut⟩,(growRow 769 s2Step256HeadGFresh ++ (growRow 768 s2Step256HeadFFresh ++ (growRow 771 s2Step256HeadGvFresh ++ (growRow 770 s2Step256HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step256HeadBank_rows]
  rfl

private theorem s2Step256Front_checked : compileHmrSourceFrontLog s2Step256EntryFBefore s2Step256FrontBank 143 144 ⟨142,142,144,144⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step256FrontLog=some s2Step256FrontPlan := by
  have pairEq : s2Step256FrontPair=⟨s2Step256HeadFRow,s2Step256HeadGRow,s2Step256HeadFvRow,s2Step256HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step256FrontHead=⟨s2Step256ExitFRow,s2Step256ExitGRow,s2Step256ExitFvRow,s2Step256ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step256Add0A=s2Step256FrontHead.f.wires := by decide +kernel
  have gEq : s2Step256Add0B=s2Step256FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step256Add1A=s2Step256FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step256Add1B=s2Step256FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step256EntryFBefore s2Step256FrontBank 143 144 ⟨142,142,144,144⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step256FrontLog s2Step256FrontPlan
  · exact s2Step256Front_entry
  · exact s2Step256EntryBank_checked
  · exact s2Step256Front_sigma
  · rfl
  · exact s2Step256Front_branch
  · rfl
  · simpa only [s2Step256FrontPlan,pairEq] using s2Step256HeadBank_checked
  · simpa only [s2Step256FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step256F4_checked
  · exact s2Step256Counter_checked
  · rfl
  · simpa only [s2Step256FrontPlan,headEq] using s2Step256ExitBank_checked

private theorem s2Step256Complete_explicit_checked : compileHmrEarlyStepLog s2Step256EntryFBefore s2Step256FrontBank 143 144 ⟨142,142,144,144⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 51 s2Step256CompleteLog=some s2Step256CompletePlan := by
  let Q := s2Step256EarlyControlPlan
  have hq := s2Step256EarlyControl_plan_checked
  have fv1 : s2Step256CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step256CompleteOut.fv.payload[2]?.getD s2Step256CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step256CompleteOut.fv.payload[3]?.getD s2Step256CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step256CompleteOut.fv.payload[4]?.getD s2Step256CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step256EntryFBefore s2Step256EarlyControlArena s2Step256FrontBank 143 144 ⟨142,142,144,144⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 51 s2Step256CompleteLog s2Step256FrontPlan Q
    s2Step256Front_checked s2Step256Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step256Complete_owned s2Step256Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step256EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 777 814 s2Step256CompleteOut.fv.second (s2Step256CompleteOut.fv.payload[2]?.getD s2Step256CompleteOut.fv.sign) (s2Step256CompleteOut.fv.payload[3]?.getD s2Step256CompleteOut.fv.sign) (s2Step256CompleteOut.fv.payload[4]?.getD s2Step256CompleteOut.fv.sign) 840 51 s2Step256EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep256Arena : Arena := s2Step256EntryFBefore
def s2PrivateStep256Bank : WindowBank := s2Step256FrontBank
def s2PrivateStep256Spec : HmrSourceWalkStepLog := ⟨143,144,⟨142,142,144,144⟩,51,.early s2Step256CompleteLog⟩
def s2PrivateStep256Plan : HmrSourceStepPlan := .early s2Step256CompletePlan
theorem s2PrivateStep256_source : s2PrivateStep256Spec=s2ObservedLogs256[0] := rfl
theorem s2PrivateStep256_checked : compileHmrSourceStepLog s2PrivateStep256Arena s2PrivateStep256Bank
    s2PrivateStep256Spec.fgWidth s2PrivateStep256Spec.vWidth s2PrivateStep256Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900]
    6 498 256 s2PrivateStep256Spec.need none s2PrivateStep256Spec.log=some s2PrivateStep256Plan := by
  change compileHmrSourceStepLog s2Step256EntryFBefore s2Step256FrontBank 143 144 ⟨142,142,144,144⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 6 498 256 51 none (.early s2Step256CompleteLog)=some (.early s2Step256CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 256<498)]
  rw [s2Step256Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
