import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep287
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

private def s2Step289CompleteMoves : List (Wire × Wire) := [(847,637)]

private def s2Step289EarlyControlLog : HmrEarlyControlLog := ⟨[847, 783, 790, 849, 812],[791],[811],[780, 830, 800, 894, 896, 901],[]⟩

private def s2Step289FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[849], [790], [783], [815]],[[], [], [], []]⟩,[808],[796],[812],[791],[811, 780, 830, 800, 894, 896, 901, 903, 904, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[811, 780, 830, 800, 894, 896, 901, 903, 904, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[812, 791, 811, 780]⟩

private def s2Step289CompleteLog : HmrEarlyStepLog := ⟨s2Step289FrontLog,s2Step289CompleteMoves,s2Step289EarlyControlLog⟩

private def s2Step289ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636],768⟩

private def s2Step289ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815],770⟩

private def s2Step289ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125],769⟩

private def s2Step289ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804],771⟩

private def s2Step289FrontOut : WindowBank := ⟨s2Step289ExitFOut,s2Step289ExitGOut,s2Step289ExitFvOut,s2Step289ExitGvOut⟩

private def s2Step289CompleteOut : WindowBank := s2Step289FrontOut.repacked s2Step289CompleteMoves

private def s2Step289EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step289EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step289EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step289EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step289EarlyControlPositiveArena,[791],s2Step289EarlyControlEqualityArena,[811],⟨⟨808,false⟩,[⟨⟨791,false⟩,811⟩]⟩⟩

private def s2Step289EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step289EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step289EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step289EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step289EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step289EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step289EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,847⟩,⟨⟨774,false⟩,783⟩,⟨⟨775,false⟩,790⟩,⟨⟨776,false⟩,849⟩,⟨⟨777,false⟩,812⟩]⟩

private def s2Step289EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step289EarlyControlZeroArena,s2Step289EarlyControlZeroPlan,s2Step289EarlyControlClassPlan,s2Step289EarlyControlFlagArena,s2Step289EarlyControlFittedArena,s2Step289EarlyControlHistoryArena,s2Step289EarlyControlSigmaArena,s2Step289EarlyControlOutputArena,s2Step289EarlyControlLog⟩

private def s2Step289CounterWork : List Wire := [812, 791, 811, 780]

private theorem s2Step289Counter_bounded : s2Step289CounterWork.toFinset⊆arenaWires := by norm_num [s2Step289CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step289HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step289CounterDuring : Arena := ⟨s2Step289HeadFvAfter.live∪s2Step289CounterWork.toFinset,Finset.union_subset s2Step289HeadFvAfter.bounded s2Step289Counter_bounded⟩

private def s2Step289EntryFFresh : List Wire := []

private def s2Step289EntryFvFresh : List Wire := []

private def s2Step289EntryGFresh : List Wire := []

private def s2Step289EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step289EntryGvAfter : Arena := s2Step289EntryFBefore

private def s2Step289EntryGvFresh : List Wire := []

private def s2Step289ExitFExtra : List Wire := [637, 790]

private def s2Step289ExitGExtra : List Wire := [849]

private def s2Step289ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<637) ∨ (638≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step289ExitGvExtra : List Wire := [783]

private def s2Step289Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step289Add0Work : List Wire := [811, 780, 830, 800, 894, 896, 901, 903, 904, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step289Add0_bounded : s2Step289Add0Work.toFinset⊆arenaWires := by
  have h : s2Step289Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step289Add0During : Arena := ⟨s2Step289Add0Arena.live∪s2Step289Add0Work.toFinset,Finset.union_subset s2Step289Add0Arena.bounded s2Step289Add0_bounded⟩

private def s2Step289Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step289Add1Work : List Wire := [811, 780, 830, 800, 894, 896, 901, 903, 904, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step289Add1_bounded : s2Step289Add1Work.toFinset⊆arenaWires := by
  have h : s2Step289Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step289Add1During : Arena := ⟨s2Step289Add1Arena.live∪s2Step289Add1Work.toFinset,Finset.union_subset s2Step289Add1Arena.bounded s2Step289Add1_bounded⟩

private def s2Step289F4FlagArena : Arena := ⟨s2Step289HeadFvAfter.live∪{812},Finset.union_subset s2Step289HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step289F4Plan : HmrHybridF4Plan := ⟨s2Step289F4FlagArena,[812],s2Step289Add0Arena,[791],s2Step289Add0During,s2Step289Add0Work,s2Step289Add1During,s2Step289Add1Work⟩

private def s2Step289HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 790],768⟩

private def s2Step289HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815],770⟩

private def s2Step289HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 849],769⟩

private def s2Step289HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 783],771⟩

private def s2Step289FrontHead : WindowBank := ⟨s2Step289HeadFOut,s2Step289HeadGOut,s2Step289HeadFvOut,s2Step289HeadGvOut⟩

private def s2Step289EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637],768⟩

private def s2Step289EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781],770⟩

private def s2Step289EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125],769⟩

private def s2Step289EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804],771⟩

private def s2Step289FrontPair : WindowBank := ⟨s2Step289EntryFOut,s2Step289EntryGOut,s2Step289EntryFvOut,s2Step289EntryGvOut⟩

private def s2Step289FrontSigmaArena : Arena := ⟨s2Step289EntryGvAfter.live∪{808},Finset.union_subset s2Step289EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step289HeadFFresh : List Wire := [790]

private def s2Step289HeadFvFresh : List Wire := [815]

private def s2Step289HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step289HeadGFresh : List Wire := [849]

private def s2Step289HeadGvFresh : List Wire := [783]

private def s2Step289FrontPlan : HmrSourceFront := ⟨s2Step289EntryGvAfter,s2Step289FrontPair,(growRow 768 s2Step289EntryFFresh ++ (growRow 769 s2Step289EntryGFresh ++ (growRow 770 s2Step289EntryFvFresh ++ (growRow 771 s2Step289EntryGvFresh ++ [])))),s2Step289FrontSigmaArena,[808],s2Step289HeadGBefore,[796],
  s2Step289HeadFvAfter,s2Step289FrontHead,(growRow 769 s2Step289HeadGFresh ++ (growRow 768 s2Step289HeadFFresh ++ (growRow 771 s2Step289HeadGvFresh ++ (growRow 770 s2Step289HeadFvFresh ++ [])))),s2Step289F4Plan,s2Step289CounterDuring,s2Step289CounterWork,s2Step289ExitGvAfter,s2Step289FrontOut,(shrinkRow 769 s2Step289ExitGExtra ++ (shrinkRow 768 s2Step289ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step289ExitGvExtra ++ []))))⟩

private def s2Step289CompletePlan : HmrEarlyStepPlan := ⟨s2Step289FrontPlan,s2Step289EarlyControlArena,s2Step289EarlyControlPlan,s2Step289CompleteMoves⟩

private theorem s2Step289Complete_apart : List.Disjoint (s2Step289CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [808, 796, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] := by
  have nd : ((s2Step289CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[808, 796, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step289Complete_owned : (s2Step289CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step289EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step289EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private def s2Step289CompleteMoveArena : Arena := ⟨s2Step289ExitGvAfter.live∪{637},Finset.union_subset s2Step289ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step289Complete_repack : s2Step289ExitGvAfter.checkRepack s2Step289CompleteMoves=some s2Step289EarlyControlArena := by
  have owned : 847∈s2Step289ExitGvAfter.live := by norm_num [s2Step289ExitGvAfter,arenaWires]
  have reserve : s2Step289ExitGvAfter.reserve {637}=some s2Step289CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step289ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step289CompleteMoveArena.retireSet {847}=s2Step289EarlyControlArena := by
    unfold Arena.retireSet s2Step289EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step289CompleteMoveArena,s2Step289ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step289CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step289CompleteMoveArena.retireSet {847}).checkRepack []=some s2Step289EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step289EarlyControl_branchOwned : ([796] : List Wire).toFinset⊆s2Step289EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step289EarlyControlSigmaArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step289EarlyControl_branch : compileHmrBranchRetirement s2Step289EarlyControlSigmaArena 796=some s2Step289EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step289EarlyControl_branchOwned
  · ext q
    simp [s2Step289EarlyControlOutputArena,s2Step289EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step289EarlyControl_classEqualityBorrow : s2Step289EarlyControlPositiveArena.checkBorrow (([808, 791] : List Wire).length-1) s2Step289EarlyControlLog.classWork=some s2Step289EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step289EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step289EarlyControlPositiveArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step289EarlyControlEqualityArena,s2Step289EarlyControlPositiveArena,s2Step289EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step289EarlyControl_classEqualityOwned : ([808, 791] : List Wire).toFinset⊆s2Step289EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step289EarlyControlPositiveArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step289EarlyControl_classEquality : compileHmrEqualityLog s2Step289EarlyControlPositiveArena [808, 791] 0 s2Step289EarlyControlLog.classWork=some (s2Step289EarlyControlEqualityArena,s2Step289EarlyControlLog.classWork,s2Step289EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step289EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step289EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step289EarlyControl_classOwned : ([777, 812, 808] : List Wire).toFinset⊆s2Step289EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step289EarlyControlZeroArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step289EarlyControl_positiveBorrow : s2Step289EarlyControlZeroArena.checkBorrow (1) s2Step289EarlyControlLog.positiveWork=some s2Step289EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step289EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step289EarlyControlZeroArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step289EarlyControlPositiveArena,s2Step289EarlyControlZeroArena,s2Step289EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step289EarlyControl_class : compileHmrSourceClassLog s2Step289EarlyControlZeroArena false 777 s2Step289EarlyControlZeroPlan.top 0 808 s2Step289EarlyControlLog.positiveWork s2Step289EarlyControlLog.classWork=some s2Step289EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step289EarlyControlClassPlan s2Step289EarlyControlZeroArena false 777 s2Step289EarlyControlZeroPlan.top 0 808
  constructor
  · decide +kernel
  · exact s2Step289EarlyControl_classOwned
  · exact s2Step289EarlyControl_positiveBorrow
  · exact s2Step289EarlyControl_classEquality

private theorem s2Step289EarlyControl_entryRecordOwned : ([796, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).toFinset⊆s2Step289EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step289EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step289EarlyControl_entrySigmaOwned : ([808, 254] : List Wire).toFinset⊆s2Step289EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step289EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step289EarlyControl_fitBorrow : s2Step289EarlyControlFlagArena.checkBorrow ((54-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).length)) s2Step289EarlyControlLog.recordFresh=some s2Step289EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step289EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step289EarlyControlFlagArena (fun q => (0≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step289EarlyControlFittedArena,s2Step289EarlyControlFlagArena,s2Step289EarlyControlLog,arenaWires]

private theorem s2Step289EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).toFinset⊆s2Step289EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step289EarlyControlFlagArena (fun q => (0≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step289EarlyControl_fit : compileHmrRecordGrowLog s2Step289EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 54 s2Step289EarlyControlLog.recordFresh=some s2Step289EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step289EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step289EarlyControl_fitBorrow

private theorem s2Step289EarlyControl_flagsBorrow : s2Step289EarlyControlEqualityArena.checkBorrow (6) s2Step289EarlyControlLog.flagWork=some s2Step289EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step289EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step289EarlyControlEqualityArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step289EarlyControlFlagArena,s2Step289EarlyControlEqualityArena,s2Step289EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step289EarlyControl_flagsOwned : ([811, 253, 252, 251] : List Wire).toFinset⊆s2Step289EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step289EarlyControlEqualityArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step289EarlyControl_flags : compileHmrFlagsLog s2Step289EarlyControlClassPlan.equalityArena s2Step289EarlyControlClassPlan.equality.top 253 252 251 s2Step289EarlyControlLog.flagWork=some s2Step289EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step289EarlyControl_flagsOwned⟩
  · exact s2Step289EarlyControl_flagsBorrow

private theorem s2Step289EarlyControl_historyBorrow : s2Step289EarlyControlArena.checkBorrow ((54-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).length)) s2Step289EarlyControlLog.recordFresh=some s2Step289EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step289EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step289EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step289EarlyControlHistoryArena,s2Step289EarlyControlArena,s2Step289EarlyControlLog,arenaWires]

private theorem s2Step289EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).toFinset⊆s2Step289EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step289EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step289EarlyControl_history : compileHmrRecordGrowLog s2Step289EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 54 s2Step289EarlyControlLog.recordFresh=some s2Step289EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step289EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step289EarlyControl_historyBorrow

private theorem s2Step289EarlyControl_sigmaOwned : ([254, 808] : List Wire).toFinset⊆s2Step289EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step289EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step289EarlyControl_sigmaReleaseOwned : ([808] : List Wire).toFinset⊆s2Step289EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step289EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step289EarlyControl_sigmaRelease : s2Step289EarlyControlHistoryArena.release {808} (fun _ => false)=some s2Step289EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step289EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step289EarlyControlSigmaArena,s2Step289EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step289EarlyControl_sigma : compileHmrSigmaDropLog s2Step289EarlyControlHistoryArena false 0 0 254 808 []=some s2Step289EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step289EarlyControl_sigmaOwned⟩
  · exact s2Step289EarlyControl_sigmaRelease

private theorem s2Step289EarlyControl_zeroBorrow : s2Step289EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step289EarlyControlLog.zeroWork=some s2Step289EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step289EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step289EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step289EarlyControlZeroArena,s2Step289EarlyControlArena,s2Step289EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step289EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step289EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step289EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step289EarlyControl_zero : compileHmrEqualityLog s2Step289EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step289EarlyControlLog.zeroWork=some (s2Step289EarlyControlZeroArena,s2Step289EarlyControlLog.zeroWork,s2Step289EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step289EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step289EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step289EarlyControl_logged : s2Step289EarlyControlPlan.Logged s2Step289EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 777 808 254 253 252 251 796 54 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step289EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step289EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step289EarlyControl_zero
  · exact s2Step289EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step289EarlyControl_flags
  · exact s2Step289EarlyControl_fit
  · exact s2Step289EarlyControl_history
  · exact s2Step289EarlyControl_sigma
  · exact s2Step289EarlyControl_branch

private theorem s2Step289EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step289EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 777 808 254 253 252 251 796 54 s2Step289EarlyControlLog=some s2Step289EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step289EarlyControlPlan s2Step289EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 777 808 254 253 252 251 796 54 s2Step289EarlyControl_logged

private def s2Step289EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637],768⟩

private def s2Step289EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781],770⟩

private def s2Step289EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125],769⟩

private def s2Step289EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804],771⟩

private def s2Step289FrontBank : WindowBank := ⟨s2Step289EntryFRow,s2Step289EntryGRow,s2Step289EntryFvRow,s2Step289EntryGvRow⟩

private def s2Step289Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 790, 768]

private def s2Step289Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 849, 769]

private def s2Step289Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 770]

private def s2Step289Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 783, 771]

private theorem s2Step289Counter_apart : Disjoint s2Step289HeadFvAfter.live s2Step289CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step289HeadFvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step289Counter_borrowed : s2Step289HeadFvAfter.checkBorrow 4 s2Step289CounterWork=some s2Step289CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step289HeadFvAfter s2Step289CounterDuring s2Step289CounterWork.toFinset s2Step289Counter_bounded s2Step289Counter_apart rfl

private theorem s2Step289Counter_owned : (808::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step289HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step289HeadFvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step289Counter_checked : compileHmrCounterStepLog s2Step289HeadFvAfter true 808 [772, 773, 774, 775, 776, 777] s2Step289CounterWork=some s2Step289CounterDuring := by
  have owned : ∀q∈808::[772, 773, 774, 775, 776, 777],q∈s2Step289HeadFvAfter.live := fun q hq => s2Step289Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step289Counter_borrowed

private def s2Step289EntryFAfter : Arena := s2Step289EntryFBefore

private theorem s2Step289EntryBank_incomingDistinct : ([s2Step289EntryFRow,s2Step289EntryGRow,s2Step289EntryFvRow,s2Step289EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step289EntryF_Incoming : rowsOwned s2Step289EntryFBefore [s2Step289EntryFRow,s2Step289EntryGRow,s2Step289EntryFvRow,s2Step289EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step289EntryFRow,s2Step289EntryGRow,s2Step289EntryFvRow,s2Step289EntryGvRow] 0 s2Step289EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step289EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step289EntryBank_outgoingOwned : rowsOwned s2Step289EntryGvAfter [s2Step289EntryFOut,s2Step289EntryGOut,s2Step289EntryFvOut,s2Step289EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step289EntryGvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step289EntryF_Outgoing : rowsOwned s2Step289EntryGvAfter [s2Step289EntryFOut,s2Step289EntryGOut,s2Step289EntryFvOut,s2Step289EntryGvOut] :=
  hmrRows_owned_drop s2Step289EntryGvAfter [s2Step289EntryFOut,s2Step289EntryGOut,s2Step289EntryFvOut,s2Step289EntryGvOut] 0 s2Step289EntryBank_outgoingOwned

private theorem s2Step289EntryF_distinct : (s2Step289EntryFRow.sign::s2Step289EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step289EntryF_owned : (s2Step289EntryFRow.sign::s2Step289EntryFRow.payload).toFinset⊆s2Step289EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step289EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step289EntryF_reserved : s2Step289EntryFBefore.reserve s2Step289EntryFFresh.toFinset=some s2Step289EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step289EntryFFresh,arenaWires]
  · norm_num [s2Step289EntryFBefore,s2Step289EntryFFresh,arenaWires]
  · simp only [s2Step289EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step289EntryF_checked : planRowResizeLog s2Step289EntryFBefore s2Step289EntryFRow 126 s2Step289EntryFFresh=
    some (s2Step289EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637],768⟩,growRow 768 s2Step289EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step289EntryFBefore s2Step289EntryFAfter s2Step289EntryFRow 126 s2Step289EntryFFresh
    s2Step289EntryF_distinct s2Step289EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step289EntryF_reserved
  have rowEq : WindowRow.mk (s2Step289EntryFRow.payload++s2Step289EntryFFresh) s2Step289EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step289EntryFvAfter : Arena := s2Step289EntryFBefore

private def s2Step289EntryFvBefore : Arena := s2Step289EntryFBefore

private theorem s2Step289EntryFv_Incoming : rowsOwned s2Step289EntryFvBefore [s2Step289EntryFvRow,s2Step289EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step289EntryFRow,s2Step289EntryGRow,s2Step289EntryFvRow,s2Step289EntryGvRow] 2 s2Step289EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step289EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step289EntryFv_Outgoing : rowsOwned s2Step289EntryGvAfter [s2Step289EntryFvOut,s2Step289EntryGvOut] :=
  hmrRows_owned_drop s2Step289EntryGvAfter [s2Step289EntryFOut,s2Step289EntryGOut,s2Step289EntryFvOut,s2Step289EntryGvOut] 2 s2Step289EntryBank_outgoingOwned

private theorem s2Step289EntryFv_distinct : (s2Step289EntryFvRow.sign::s2Step289EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step289EntryFv_owned : (s2Step289EntryFvRow.sign::s2Step289EntryFvRow.payload).toFinset⊆s2Step289EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step289EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step289EntryFv_reserved : s2Step289EntryFvBefore.reserve s2Step289EntryFvFresh.toFinset=some s2Step289EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step289EntryFvFresh,arenaWires]
  · norm_num [s2Step289EntryFvBefore,s2Step289EntryFBefore,s2Step289EntryFvFresh,arenaWires]
  · simp only [s2Step289EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step289EntryFv_checked : planRowResizeLog s2Step289EntryFvBefore s2Step289EntryFvRow 159 s2Step289EntryFvFresh=
    some (s2Step289EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781],770⟩,growRow 770 s2Step289EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step289EntryFvBefore s2Step289EntryFvAfter s2Step289EntryFvRow 159 s2Step289EntryFvFresh
    s2Step289EntryFv_distinct s2Step289EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step289EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step289EntryFvRow.payload++s2Step289EntryFvFresh) s2Step289EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step289EntryGAfter : Arena := s2Step289EntryFBefore

private def s2Step289EntryGBefore : Arena := s2Step289EntryFBefore

private theorem s2Step289EntryG_Incoming : rowsOwned s2Step289EntryGBefore [s2Step289EntryGRow,s2Step289EntryFvRow,s2Step289EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step289EntryFRow,s2Step289EntryGRow,s2Step289EntryFvRow,s2Step289EntryGvRow] 1 s2Step289EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step289EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step289EntryG_Outgoing : rowsOwned s2Step289EntryGvAfter [s2Step289EntryGOut,s2Step289EntryFvOut,s2Step289EntryGvOut] :=
  hmrRows_owned_drop s2Step289EntryGvAfter [s2Step289EntryFOut,s2Step289EntryGOut,s2Step289EntryFvOut,s2Step289EntryGvOut] 1 s2Step289EntryBank_outgoingOwned

private theorem s2Step289EntryG_distinct : (s2Step289EntryGRow.sign::s2Step289EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step289EntryG_owned : (s2Step289EntryGRow.sign::s2Step289EntryGRow.payload).toFinset⊆s2Step289EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step289EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step289EntryG_reserved : s2Step289EntryGBefore.reserve s2Step289EntryGFresh.toFinset=some s2Step289EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step289EntryGFresh,arenaWires]
  · norm_num [s2Step289EntryGBefore,s2Step289EntryFBefore,s2Step289EntryGFresh,arenaWires]
  · simp only [s2Step289EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step289EntryG_checked : planRowResizeLog s2Step289EntryGBefore s2Step289EntryGRow 126 s2Step289EntryGFresh=
    some (s2Step289EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125],769⟩,growRow 769 s2Step289EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step289EntryGBefore s2Step289EntryGAfter s2Step289EntryGRow 126 s2Step289EntryGFresh
    s2Step289EntryG_distinct s2Step289EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step289EntryG_reserved
  have rowEq : WindowRow.mk (s2Step289EntryGRow.payload++s2Step289EntryGFresh) s2Step289EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step289EntryGvBefore : Arena := s2Step289EntryFBefore

private theorem s2Step289EntryGv_Incoming : rowsOwned s2Step289EntryGvBefore [s2Step289EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step289EntryFRow,s2Step289EntryGRow,s2Step289EntryFvRow,s2Step289EntryGvRow] 3 s2Step289EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step289EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step289EntryGv_Outgoing : rowsOwned s2Step289EntryGvAfter [s2Step289EntryGvOut] :=
  hmrRows_owned_drop s2Step289EntryGvAfter [s2Step289EntryFOut,s2Step289EntryGOut,s2Step289EntryFvOut,s2Step289EntryGvOut] 3 s2Step289EntryBank_outgoingOwned

private theorem s2Step289EntryGv_distinct : (s2Step289EntryGvRow.sign::s2Step289EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step289EntryGv_owned : (s2Step289EntryGvRow.sign::s2Step289EntryGvRow.payload).toFinset⊆s2Step289EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step289EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step289EntryGv_reserved : s2Step289EntryGvBefore.reserve s2Step289EntryGvFresh.toFinset=some s2Step289EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step289EntryGvFresh,arenaWires]
  · norm_num [s2Step289EntryGvBefore,s2Step289EntryFBefore,s2Step289EntryGvFresh,arenaWires]
  · simp only [s2Step289EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step289EntryGv_checked : planRowResizeLog s2Step289EntryGvBefore s2Step289EntryGvRow 159 s2Step289EntryGvFresh=
    some (s2Step289EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804],771⟩,growRow 771 s2Step289EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step289EntryGvBefore s2Step289EntryGvAfter s2Step289EntryGvRow 159 s2Step289EntryGvFresh
    s2Step289EntryGv_distinct s2Step289EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step289EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step289EntryGvRow.payload++s2Step289EntryGvFresh) s2Step289EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step289EntryBank_rows : planWindowRowsLog s2Step289EntryFBefore [(s2Step289EntryFRow,126),(s2Step289EntryGRow,126),(s2Step289EntryFvRow,159),(s2Step289EntryGvRow,159)] [s2Step289EntryFFresh,s2Step289EntryGFresh,s2Step289EntryFvFresh,s2Step289EntryGvFresh]=
    some (s2Step289EntryGvAfter,[s2Step289EntryFOut,s2Step289EntryGOut,s2Step289EntryFvOut,s2Step289EntryGvOut],(growRow 768 s2Step289EntryFFresh ++ (growRow 769 s2Step289EntryGFresh ++ (growRow 770 s2Step289EntryFvFresh ++ (growRow 771 s2Step289EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step289EntryGvAfter [] []=some (s2Step289EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step289EntryGvBefore s2Step289EntryGvAfter s2Step289EntryGvAfter
    s2Step289EntryGvRow s2Step289EntryGvOut 159 s2Step289EntryGvFresh [] [] []
    (growRow 771 s2Step289EntryGvFresh) ([]) s2Step289EntryGv_Incoming s2Step289EntryGv_checked h4 s2Step289EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step289EntryFvBefore s2Step289EntryFvAfter s2Step289EntryGvAfter
    s2Step289EntryFvRow s2Step289EntryFvOut 159 s2Step289EntryFvFresh [(s2Step289EntryGvRow,159)] [s2Step289EntryGvFresh] [s2Step289EntryGvOut]
    (growRow 770 s2Step289EntryFvFresh) ((growRow 771 s2Step289EntryGvFresh ++ [])) s2Step289EntryFv_Incoming s2Step289EntryFv_checked h3 s2Step289EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step289EntryGBefore s2Step289EntryGAfter s2Step289EntryGvAfter
    s2Step289EntryGRow s2Step289EntryGOut 126 s2Step289EntryGFresh [(s2Step289EntryFvRow,159),(s2Step289EntryGvRow,159)] [s2Step289EntryFvFresh,s2Step289EntryGvFresh] [s2Step289EntryFvOut,s2Step289EntryGvOut]
    (growRow 769 s2Step289EntryGFresh) ((growRow 770 s2Step289EntryFvFresh ++ (growRow 771 s2Step289EntryGvFresh ++ []))) s2Step289EntryG_Incoming s2Step289EntryG_checked h2 s2Step289EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step289EntryFBefore s2Step289EntryFAfter s2Step289EntryGvAfter
    s2Step289EntryFRow s2Step289EntryFOut 126 s2Step289EntryFFresh [(s2Step289EntryGRow,126),(s2Step289EntryFvRow,159),(s2Step289EntryGvRow,159)] [s2Step289EntryGFresh,s2Step289EntryFvFresh,s2Step289EntryGvFresh] [s2Step289EntryGOut,s2Step289EntryFvOut,s2Step289EntryGvOut]
    (growRow 768 s2Step289EntryFFresh) ((growRow 769 s2Step289EntryGFresh ++ (growRow 770 s2Step289EntryFvFresh ++ (growRow 771 s2Step289EntryGvFresh ++ [])))) s2Step289EntryF_Incoming s2Step289EntryF_checked h1 s2Step289EntryF_Outgoing
  exact h0

private theorem s2Step289EntryBank_checked : compileHmrBankResizeLog .entry s2Step289EntryFBefore ⟨s2Step289EntryFRow,s2Step289EntryGRow,s2Step289EntryFvRow,s2Step289EntryGvRow⟩ ⟨126,126,159,159⟩ [s2Step289EntryFFresh,s2Step289EntryGFresh,s2Step289EntryFvFresh,s2Step289EntryGvFresh]=
    some (s2Step289EntryGvAfter,⟨s2Step289EntryFOut,s2Step289EntryGOut,s2Step289EntryFvOut,s2Step289EntryGvOut⟩,(growRow 768 s2Step289EntryFFresh ++ (growRow 769 s2Step289EntryGFresh ++ (growRow 770 s2Step289EntryFvFresh ++ (growRow 771 s2Step289EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step289EntryBank_rows]
  rfl

private def s2Step289ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<637) ∨ (638≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step289ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step289ExitFBefore : Arena := s2Step289ExitGAfter

private def s2Step289ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 790],768⟩

private def s2Step289ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815],770⟩

private def s2Step289ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 849],769⟩

private def s2Step289ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 783],771⟩

private theorem s2Step289ExitBank_incomingDistinct : ([s2Step289ExitGRow,s2Step289ExitFRow,s2Step289ExitFvRow,s2Step289ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step289ExitF_Incoming : rowsOwned s2Step289ExitFBefore [s2Step289ExitFRow,s2Step289ExitFvRow,s2Step289ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step289ExitGRow,s2Step289ExitFRow,s2Step289ExitFvRow,s2Step289ExitGvRow] 1 s2Step289ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step289ExitFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step289ExitBank_outgoingOwned : rowsOwned s2Step289ExitGvAfter [s2Step289ExitGOut,s2Step289ExitFOut,s2Step289ExitFvOut,s2Step289ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step289ExitGvAfter (fun q => (0≤q ∧ q<637) ∨ (638≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step289ExitF_Outgoing : rowsOwned s2Step289ExitGvAfter [s2Step289ExitFOut,s2Step289ExitFvOut,s2Step289ExitGvOut] :=
  hmrRows_owned_drop s2Step289ExitGvAfter [s2Step289ExitGOut,s2Step289ExitFOut,s2Step289ExitFvOut,s2Step289ExitGvOut] 1 s2Step289ExitBank_outgoingOwned

private theorem s2Step289ExitF_distinct : (s2Step289ExitFRow.sign::s2Step289ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step289ExitF_owned : (s2Step289ExitFRow.sign::s2Step289ExitFRow.payload).toFinset⊆s2Step289ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step289ExitFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step289ExitF_retired : s2Step289ExitFBefore.retireSet s2Step289ExitFExtra.toFinset=s2Step289ExitFAfter := by
  unfold Arena.retireSet s2Step289ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step289ExitFBefore,s2Step289ExitGAfter,s2Step289ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step289ExitF_checked : planRowResizeLog s2Step289ExitFBefore s2Step289ExitFRow 125 []=
    some (s2Step289ExitFAfter,s2Step289ExitFOut,shrinkRow 768 s2Step289ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step289ExitFBefore s2Step289ExitFRow 125 s2Step289ExitF_distinct s2Step289ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step289ExitFRow.payload.take 125) s2Step289ExitFRow.sign=s2Step289ExitFOut := by decide +kernel
  have hi : s2Step289ExitFRow.payload.drop 125=s2Step289ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step289ExitF_retired] at result
  exact result

private def s2Step289ExitFvAfter : Arena := s2Step289ExitFAfter

private def s2Step289ExitFvBefore : Arena := s2Step289ExitFAfter

private theorem s2Step289ExitFv_Incoming : rowsOwned s2Step289ExitFvBefore [s2Step289ExitFvRow,s2Step289ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step289ExitGRow,s2Step289ExitFRow,s2Step289ExitFvRow,s2Step289ExitGvRow] 2 s2Step289ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step289ExitFvBefore (fun q => (0≤q ∧ q<637) ∨ (638≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step289ExitFv_Outgoing : rowsOwned s2Step289ExitGvAfter [s2Step289ExitFvOut,s2Step289ExitGvOut] :=
  hmrRows_owned_drop s2Step289ExitGvAfter [s2Step289ExitGOut,s2Step289ExitFOut,s2Step289ExitFvOut,s2Step289ExitGvOut] 2 s2Step289ExitBank_outgoingOwned

private theorem s2Step289ExitFv_distinct : (s2Step289ExitFvRow.sign::s2Step289ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step289ExitFv_owned : (s2Step289ExitFvRow.sign::s2Step289ExitFvRow.payload).toFinset⊆s2Step289ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step289ExitFvBefore (fun q => (0≤q ∧ q<637) ∨ (638≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step289ExitFv_reserved : s2Step289ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step289ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step289ExitFv_checked : planRowResizeLog s2Step289ExitFvBefore s2Step289ExitFvRow 160 []=
    some (s2Step289ExitFvAfter,s2Step289ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step289ExitFvBefore s2Step289ExitFvAfter s2Step289ExitFvRow 160 []
    s2Step289ExitFv_distinct s2Step289ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step289ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step289ExitFvRow.payload++[]) s2Step289ExitFvRow.sign=s2Step289ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step289ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private theorem s2Step289ExitG_Incoming : rowsOwned s2Step289ExitGBefore [s2Step289ExitGRow,s2Step289ExitFRow,s2Step289ExitFvRow,s2Step289ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step289ExitGRow,s2Step289ExitFRow,s2Step289ExitFvRow,s2Step289ExitGvRow] 0 s2Step289ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step289ExitGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step289ExitG_Outgoing : rowsOwned s2Step289ExitGvAfter [s2Step289ExitGOut,s2Step289ExitFOut,s2Step289ExitFvOut,s2Step289ExitGvOut] :=
  hmrRows_owned_drop s2Step289ExitGvAfter [s2Step289ExitGOut,s2Step289ExitFOut,s2Step289ExitFvOut,s2Step289ExitGvOut] 0 s2Step289ExitBank_outgoingOwned

private theorem s2Step289ExitG_distinct : (s2Step289ExitGRow.sign::s2Step289ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step289ExitG_owned : (s2Step289ExitGRow.sign::s2Step289ExitGRow.payload).toFinset⊆s2Step289ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step289ExitGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step289ExitG_retired : s2Step289ExitGBefore.retireSet s2Step289ExitGExtra.toFinset=s2Step289ExitGAfter := by
  unfold Arena.retireSet s2Step289ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step289ExitGBefore,s2Step289ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step289ExitG_checked : planRowResizeLog s2Step289ExitGBefore s2Step289ExitGRow 126 []=
    some (s2Step289ExitGAfter,s2Step289ExitGOut,shrinkRow 769 s2Step289ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step289ExitGBefore s2Step289ExitGRow 126 s2Step289ExitG_distinct s2Step289ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step289ExitGRow.payload.take 126) s2Step289ExitGRow.sign=s2Step289ExitGOut := by decide +kernel
  have hi : s2Step289ExitGRow.payload.drop 126=s2Step289ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step289ExitG_retired] at result
  exact result

private def s2Step289ExitGvBefore : Arena := s2Step289ExitFAfter

private theorem s2Step289ExitGv_Incoming : rowsOwned s2Step289ExitGvBefore [s2Step289ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step289ExitGRow,s2Step289ExitFRow,s2Step289ExitFvRow,s2Step289ExitGvRow] 3 s2Step289ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step289ExitGvBefore (fun q => (0≤q ∧ q<637) ∨ (638≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step289ExitGv_Outgoing : rowsOwned s2Step289ExitGvAfter [s2Step289ExitGvOut] :=
  hmrRows_owned_drop s2Step289ExitGvAfter [s2Step289ExitGOut,s2Step289ExitFOut,s2Step289ExitFvOut,s2Step289ExitGvOut] 3 s2Step289ExitBank_outgoingOwned

private theorem s2Step289ExitGv_distinct : (s2Step289ExitGvRow.sign::s2Step289ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step289ExitGv_owned : (s2Step289ExitGvRow.sign::s2Step289ExitGvRow.payload).toFinset⊆s2Step289ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step289ExitGvBefore (fun q => (0≤q ∧ q<637) ∨ (638≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step289ExitGv_retired : s2Step289ExitGvBefore.retireSet s2Step289ExitGvExtra.toFinset=s2Step289ExitGvAfter := by
  unfold Arena.retireSet s2Step289ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step289ExitGvBefore,s2Step289ExitFAfter,s2Step289ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step289ExitGv_checked : planRowResizeLog s2Step289ExitGvBefore s2Step289ExitGvRow 159 []=
    some (s2Step289ExitGvAfter,s2Step289ExitGvOut,shrinkRow 771 s2Step289ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step289ExitGvBefore s2Step289ExitGvRow 159 s2Step289ExitGv_distinct s2Step289ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step289ExitGvRow.payload.take 159) s2Step289ExitGvRow.sign=s2Step289ExitGvOut := by decide +kernel
  have hi : s2Step289ExitGvRow.payload.drop 159=s2Step289ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step289ExitGv_retired] at result
  exact result

private theorem s2Step289ExitBank_rows : planWindowRowsLog s2Step289ExitGBefore [(s2Step289ExitGRow,126),(s2Step289ExitFRow,125),(s2Step289ExitFvRow,160),(s2Step289ExitGvRow,159)] [[],[],[],[]]=
    some (s2Step289ExitGvAfter,[s2Step289ExitGOut,s2Step289ExitFOut,s2Step289ExitFvOut,s2Step289ExitGvOut],(shrinkRow 769 s2Step289ExitGExtra ++ (shrinkRow 768 s2Step289ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step289ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step289ExitGvAfter [] []=some (s2Step289ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step289ExitGvBefore s2Step289ExitGvAfter s2Step289ExitGvAfter
    s2Step289ExitGvRow s2Step289ExitGvOut 159 [] [] [] []
    (shrinkRow 771 s2Step289ExitGvExtra) ([]) s2Step289ExitGv_Incoming s2Step289ExitGv_checked h4 s2Step289ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step289ExitFvBefore s2Step289ExitFvAfter s2Step289ExitGvAfter
    s2Step289ExitFvRow s2Step289ExitFvOut 160 [] [(s2Step289ExitGvRow,159)] [[]] [s2Step289ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step289ExitGvExtra ++ [])) s2Step289ExitFv_Incoming s2Step289ExitFv_checked h3 s2Step289ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step289ExitFBefore s2Step289ExitFAfter s2Step289ExitGvAfter
    s2Step289ExitFRow s2Step289ExitFOut 125 [] [(s2Step289ExitFvRow,160),(s2Step289ExitGvRow,159)] [[],[]] [s2Step289ExitFvOut,s2Step289ExitGvOut]
    (shrinkRow 768 s2Step289ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step289ExitGvExtra ++ []))) s2Step289ExitF_Incoming s2Step289ExitF_checked h2 s2Step289ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step289ExitGBefore s2Step289ExitGAfter s2Step289ExitGvAfter
    s2Step289ExitGRow s2Step289ExitGOut 126 [] [(s2Step289ExitFRow,125),(s2Step289ExitFvRow,160),(s2Step289ExitGvRow,159)] [[],[],[]] [s2Step289ExitFOut,s2Step289ExitFvOut,s2Step289ExitGvOut]
    (shrinkRow 769 s2Step289ExitGExtra) ((shrinkRow 768 s2Step289ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step289ExitGvExtra ++ [])))) s2Step289ExitG_Incoming s2Step289ExitG_checked h1 s2Step289ExitG_Outgoing
  exact h0

private theorem s2Step289ExitBank_checked : compileHmrBankResizeLog .exit s2Step289ExitGBefore ⟨s2Step289ExitFRow,s2Step289ExitGRow,s2Step289ExitFvRow,s2Step289ExitGvRow⟩ ⟨125,126,160,159⟩ [[],[],[],[]]=
    some (s2Step289ExitGvAfter,⟨s2Step289ExitFOut,s2Step289ExitGOut,s2Step289ExitFvOut,s2Step289ExitGvOut⟩,(shrinkRow 769 s2Step289ExitGExtra ++ (shrinkRow 768 s2Step289ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step289ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step289ExitBank_rows]
  rfl

private theorem s2Step289Add0_apart : Disjoint s2Step289Add0Arena.live s2Step289Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step289Add0Arena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step289Add0_card : s2Step289Add0Arena.live.card=898 := by
  decide +kernel

private theorem s2Step289Add0_borrowed : s2Step289Add0Arena.checkBorrow (hmrHybridCount s2Step289Add0Arena s2Step289Add0B.length) s2Step289Add0Work=some s2Step289Add0During := by
  have len : s2Step289Add0Work.length=hmrHybridCount s2Step289Add0Arena s2Step289Add0B.length := by
    rw [hmrHybridCount,s2Step289Add0_card]
    decide +kernel
  have nd : s2Step289Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step289Add0Arena s2Step289Add0During s2Step289Add0Work.toFinset s2Step289Add0_bounded s2Step289Add0_apart rfl

private theorem s2Step289Add0_distinct : (812::796::791::(s2Step289Add0A++s2Step289Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step289Add0_owned : (812::796::791::(s2Step289Add0A++s2Step289Add0B)).toFinset⊆s2Step289Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step289Add0Arena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step289Add0_checked : compileHmrHybridCinLog s2Step289Add0Arena 796 812 791 s2Step289Add0A s2Step289Add0B s2Step289Add0Work=some s2Step289Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step289Add0Arena s2Step289Add0During 796 812 791 s2Step289Add0A s2Step289Add0B s2Step289Add0Work
    (by decide +kernel) (by decide +kernel) s2Step289Add0_distinct
    (fun q hq => s2Step289Add0_owned (List.mem_toFinset.mpr hq)) s2Step289Add0_borrowed

private theorem s2Step289Add1_apart : Disjoint s2Step289Add1Arena.live s2Step289Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step289Add1Arena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step289Add1_card : s2Step289Add1Arena.live.card=898 := by
  decide +kernel

private theorem s2Step289Add1_borrowed : s2Step289Add1Arena.checkBorrow (hmrHybridCount s2Step289Add1Arena s2Step289Add1B.length) s2Step289Add1Work=some s2Step289Add1During := by
  have len : s2Step289Add1Work.length=hmrHybridCount s2Step289Add1Arena s2Step289Add1B.length := by
    rw [hmrHybridCount,s2Step289Add1_card]
    decide +kernel
  have nd : s2Step289Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step289Add1Arena s2Step289Add1During s2Step289Add1Work.toFinset s2Step289Add1_bounded s2Step289Add1_apart rfl

private theorem s2Step289Add1_distinct : (812::796::791::(s2Step289Add1A++s2Step289Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step289Add1_owned : (812::796::791::(s2Step289Add1A++s2Step289Add1B)).toFinset⊆s2Step289Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step289Add1Arena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step289Add1_checked : compileHmrHybridCinLog s2Step289Add1Arena 796 812 791 s2Step289Add1A s2Step289Add1B s2Step289Add1Work=some s2Step289Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step289Add1Arena s2Step289Add1During 796 812 791 s2Step289Add1A s2Step289Add1B s2Step289Add1Work
    (by decide +kernel) (by decide +kernel) s2Step289Add1_distinct
    (fun q hq => s2Step289Add1_owned (List.mem_toFinset.mpr hq)) s2Step289Add1_borrowed

private theorem s2Step289F4_apart : Disjoint (s2Step289Add0A++s2Step289Add0B).toFinset (s2Step289Add1A++s2Step289Add1B).toFinset := by
  have nd : ((s2Step289Add0A++s2Step289Add0B)++(s2Step289Add1A++s2Step289Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step289F4_carry : s2Step289F4FlagArena.checkBorrow 1 [791]=some s2Step289Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step289F4FlagArena,s2Step289HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step289F4FlagArena,s2Step289HeadFvAfter,s2Step289Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step289F4_distinct : (808::796::812::791::((s2Step289Add0A++s2Step289Add1A)++(s2Step289Add0B++s2Step289Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step289F4_flag : s2Step289HeadFvAfter.checkBorrow 1 [812]=some s2Step289F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step289HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step289F4_owned : (808::796::((s2Step289Add0A++s2Step289Add1A)++(s2Step289Add0B++s2Step289Add1B))).toFinset⊆s2Step289HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step289HeadFvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step289F4_checked : compileHmrHybridF4Log s2Step289HeadFvAfter 808 796 s2Step289Add0A s2Step289Add0B s2Step289Add1A s2Step289Add1B [812] [791] s2Step289Add0Work s2Step289Add1Work=some s2Step289F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step289HeadFvAfter s2Step289F4FlagArena s2Step289Add0Arena s2Step289Add0During s2Step289Add1During 808 796
    s2Step289Add0A s2Step289Add0B s2Step289Add1A s2Step289Add1B [812] [791] s2Step289Add0Work s2Step289Add1Work
    (fun q hq => s2Step289F4_owned (List.mem_toFinset.mpr hq)) s2Step289F4_flag s2Step289F4_carry
    s2Step289F4_distinct s2Step289F4_apart s2Step289Add0_checked s2Step289Add1_checked

private theorem s2Step289Front_branch : s2Step289FrontSigmaArena.checkBorrow 1 [796]=some s2Step289HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step289FrontSigmaArena,s2Step289EntryGvAfter,s2Step289EntryFBefore,arenaWires]
  · ext q
    simp only [s2Step289FrontSigmaArena,s2Step289EntryGvAfter,s2Step289EntryFBefore,s2Step289HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step289Front_entry : HmrFrontEntryValid s2Step289EntryFBefore s2Step289FrontBank 126 159 ⟨125,126,160,159⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step289FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step289EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step289EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step289FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step289Front_sigma : s2Step289EntryGvAfter.checkBorrow 1 [808]=some s2Step289FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step289EntryGvAfter,s2Step289EntryFBefore,arenaWires]
  · rfl

private def s2Step289HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step289HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step289HeadFBefore : Arena := s2Step289HeadGAfter

private def s2Step289HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637],768⟩

private def s2Step289HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781],770⟩

private def s2Step289HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125],769⟩

private def s2Step289HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804],771⟩

private theorem s2Step289HeadBank_incomingDistinct : ([s2Step289HeadGRow,s2Step289HeadFRow,s2Step289HeadGvRow,s2Step289HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step289HeadF_Incoming : rowsOwned s2Step289HeadFBefore [s2Step289HeadFRow,s2Step289HeadGvRow,s2Step289HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step289HeadGRow,s2Step289HeadFRow,s2Step289HeadGvRow,s2Step289HeadFvRow] 1 s2Step289HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step289HeadFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step289HeadBank_outgoingOwned : rowsOwned s2Step289HeadFvAfter [s2Step289HeadGOut,s2Step289HeadFOut,s2Step289HeadGvOut,s2Step289HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step289HeadFvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step289HeadF_Outgoing : rowsOwned s2Step289HeadFvAfter [s2Step289HeadFOut,s2Step289HeadGvOut,s2Step289HeadFvOut] :=
  hmrRows_owned_drop s2Step289HeadFvAfter [s2Step289HeadGOut,s2Step289HeadFOut,s2Step289HeadGvOut,s2Step289HeadFvOut] 1 s2Step289HeadBank_outgoingOwned

private theorem s2Step289HeadF_distinct : (s2Step289HeadFRow.sign::s2Step289HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step289HeadF_owned : (s2Step289HeadFRow.sign::s2Step289HeadFRow.payload).toFinset⊆s2Step289HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step289HeadFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step289HeadF_reserved : s2Step289HeadFBefore.reserve s2Step289HeadFFresh.toFinset=some s2Step289HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step289HeadFFresh,arenaWires]
  · norm_num [s2Step289HeadFBefore,s2Step289HeadGAfter,s2Step289HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step289HeadFAfter,s2Step289HeadFBefore,s2Step289HeadGAfter,s2Step289HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step289HeadF_checked : planRowResizeLog s2Step289HeadFBefore s2Step289HeadFRow 127 s2Step289HeadFFresh=
    some (s2Step289HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 790],768⟩,growRow 768 s2Step289HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step289HeadFBefore s2Step289HeadFAfter s2Step289HeadFRow 127 s2Step289HeadFFresh
    s2Step289HeadF_distinct s2Step289HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step289HeadF_reserved
  have rowEq : WindowRow.mk (s2Step289HeadFRow.payload++s2Step289HeadFFresh) s2Step289HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 790],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step289HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step289HeadFvBefore : Arena := s2Step289HeadGvAfter

private theorem s2Step289HeadFv_Incoming : rowsOwned s2Step289HeadFvBefore [s2Step289HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step289HeadGRow,s2Step289HeadFRow,s2Step289HeadGvRow,s2Step289HeadFvRow] 3 s2Step289HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step289HeadFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step289HeadFv_Outgoing : rowsOwned s2Step289HeadFvAfter [s2Step289HeadFvOut] :=
  hmrRows_owned_drop s2Step289HeadFvAfter [s2Step289HeadGOut,s2Step289HeadFOut,s2Step289HeadGvOut,s2Step289HeadFvOut] 3 s2Step289HeadBank_outgoingOwned

private theorem s2Step289HeadFv_distinct : (s2Step289HeadFvRow.sign::s2Step289HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step289HeadFv_owned : (s2Step289HeadFvRow.sign::s2Step289HeadFvRow.payload).toFinset⊆s2Step289HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step289HeadFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step289HeadFv_reserved : s2Step289HeadFvBefore.reserve s2Step289HeadFvFresh.toFinset=some s2Step289HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step289HeadFvFresh,arenaWires]
  · norm_num [s2Step289HeadFvBefore,s2Step289HeadGvAfter,s2Step289HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step289HeadFvAfter,s2Step289HeadFvBefore,s2Step289HeadGvAfter,s2Step289HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step289HeadFv_checked : planRowResizeLog s2Step289HeadFvBefore s2Step289HeadFvRow 160 s2Step289HeadFvFresh=
    some (s2Step289HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815],770⟩,growRow 770 s2Step289HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step289HeadFvBefore s2Step289HeadFvAfter s2Step289HeadFvRow 160 s2Step289HeadFvFresh
    s2Step289HeadFv_distinct s2Step289HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step289HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step289HeadFvRow.payload++s2Step289HeadFvFresh) s2Step289HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step289HeadG_Incoming : rowsOwned s2Step289HeadGBefore [s2Step289HeadGRow,s2Step289HeadFRow,s2Step289HeadGvRow,s2Step289HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step289HeadGRow,s2Step289HeadFRow,s2Step289HeadGvRow,s2Step289HeadFvRow] 0 s2Step289HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step289HeadGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step289HeadG_Outgoing : rowsOwned s2Step289HeadFvAfter [s2Step289HeadGOut,s2Step289HeadFOut,s2Step289HeadGvOut,s2Step289HeadFvOut] :=
  hmrRows_owned_drop s2Step289HeadFvAfter [s2Step289HeadGOut,s2Step289HeadFOut,s2Step289HeadGvOut,s2Step289HeadFvOut] 0 s2Step289HeadBank_outgoingOwned

private theorem s2Step289HeadG_distinct : (s2Step289HeadGRow.sign::s2Step289HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step289HeadG_owned : (s2Step289HeadGRow.sign::s2Step289HeadGRow.payload).toFinset⊆s2Step289HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step289HeadGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step289HeadG_reserved : s2Step289HeadGBefore.reserve s2Step289HeadGFresh.toFinset=some s2Step289HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step289HeadGFresh,arenaWires]
  · norm_num [s2Step289HeadGBefore,s2Step289HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step289HeadGAfter,s2Step289HeadGBefore,s2Step289HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step289HeadG_checked : planRowResizeLog s2Step289HeadGBefore s2Step289HeadGRow 127 s2Step289HeadGFresh=
    some (s2Step289HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 849],769⟩,growRow 769 s2Step289HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step289HeadGBefore s2Step289HeadGAfter s2Step289HeadGRow 127 s2Step289HeadGFresh
    s2Step289HeadG_distinct s2Step289HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step289HeadG_reserved
  have rowEq : WindowRow.mk (s2Step289HeadGRow.payload++s2Step289HeadGFresh) s2Step289HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 849],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step289HeadGvBefore : Arena := s2Step289HeadFAfter

private theorem s2Step289HeadGv_Incoming : rowsOwned s2Step289HeadGvBefore [s2Step289HeadGvRow,s2Step289HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step289HeadGRow,s2Step289HeadFRow,s2Step289HeadGvRow,s2Step289HeadFvRow] 2 s2Step289HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step289HeadGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step289HeadGv_Outgoing : rowsOwned s2Step289HeadFvAfter [s2Step289HeadGvOut,s2Step289HeadFvOut] :=
  hmrRows_owned_drop s2Step289HeadFvAfter [s2Step289HeadGOut,s2Step289HeadFOut,s2Step289HeadGvOut,s2Step289HeadFvOut] 2 s2Step289HeadBank_outgoingOwned

private theorem s2Step289HeadGv_distinct : (s2Step289HeadGvRow.sign::s2Step289HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step289HeadGv_owned : (s2Step289HeadGvRow.sign::s2Step289HeadGvRow.payload).toFinset⊆s2Step289HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step289HeadGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step289HeadGv_reserved : s2Step289HeadGvBefore.reserve s2Step289HeadGvFresh.toFinset=some s2Step289HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step289HeadGvFresh,arenaWires]
  · norm_num [s2Step289HeadGvBefore,s2Step289HeadFAfter,s2Step289HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step289HeadGvAfter,s2Step289HeadGvBefore,s2Step289HeadFAfter,s2Step289HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step289HeadGv_checked : planRowResizeLog s2Step289HeadGvBefore s2Step289HeadGvRow 160 s2Step289HeadGvFresh=
    some (s2Step289HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 783],771⟩,growRow 771 s2Step289HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step289HeadGvBefore s2Step289HeadGvAfter s2Step289HeadGvRow 160 s2Step289HeadGvFresh
    s2Step289HeadGv_distinct s2Step289HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step289HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step289HeadGvRow.payload++s2Step289HeadGvFresh) s2Step289HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 783],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step289HeadBank_rows : planWindowRowsLog s2Step289HeadGBefore [(s2Step289HeadGRow,127),(s2Step289HeadFRow,127),(s2Step289HeadGvRow,160),(s2Step289HeadFvRow,160)] [s2Step289HeadGFresh,s2Step289HeadFFresh,s2Step289HeadGvFresh,s2Step289HeadFvFresh]=
    some (s2Step289HeadFvAfter,[s2Step289HeadGOut,s2Step289HeadFOut,s2Step289HeadGvOut,s2Step289HeadFvOut],(growRow 769 s2Step289HeadGFresh ++ (growRow 768 s2Step289HeadFFresh ++ (growRow 771 s2Step289HeadGvFresh ++ (growRow 770 s2Step289HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step289HeadFvAfter [] []=some (s2Step289HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step289HeadFvBefore s2Step289HeadFvAfter s2Step289HeadFvAfter
    s2Step289HeadFvRow s2Step289HeadFvOut 160 s2Step289HeadFvFresh [] [] []
    (growRow 770 s2Step289HeadFvFresh) ([]) s2Step289HeadFv_Incoming s2Step289HeadFv_checked h4 s2Step289HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step289HeadGvBefore s2Step289HeadGvAfter s2Step289HeadFvAfter
    s2Step289HeadGvRow s2Step289HeadGvOut 160 s2Step289HeadGvFresh [(s2Step289HeadFvRow,160)] [s2Step289HeadFvFresh] [s2Step289HeadFvOut]
    (growRow 771 s2Step289HeadGvFresh) ((growRow 770 s2Step289HeadFvFresh ++ [])) s2Step289HeadGv_Incoming s2Step289HeadGv_checked h3 s2Step289HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step289HeadFBefore s2Step289HeadFAfter s2Step289HeadFvAfter
    s2Step289HeadFRow s2Step289HeadFOut 127 s2Step289HeadFFresh [(s2Step289HeadGvRow,160),(s2Step289HeadFvRow,160)] [s2Step289HeadGvFresh,s2Step289HeadFvFresh] [s2Step289HeadGvOut,s2Step289HeadFvOut]
    (growRow 768 s2Step289HeadFFresh) ((growRow 771 s2Step289HeadGvFresh ++ (growRow 770 s2Step289HeadFvFresh ++ []))) s2Step289HeadF_Incoming s2Step289HeadF_checked h2 s2Step289HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step289HeadGBefore s2Step289HeadGAfter s2Step289HeadFvAfter
    s2Step289HeadGRow s2Step289HeadGOut 127 s2Step289HeadGFresh [(s2Step289HeadFRow,127),(s2Step289HeadGvRow,160),(s2Step289HeadFvRow,160)] [s2Step289HeadFFresh,s2Step289HeadGvFresh,s2Step289HeadFvFresh] [s2Step289HeadFOut,s2Step289HeadGvOut,s2Step289HeadFvOut]
    (growRow 769 s2Step289HeadGFresh) ((growRow 768 s2Step289HeadFFresh ++ (growRow 771 s2Step289HeadGvFresh ++ (growRow 770 s2Step289HeadFvFresh ++ [])))) s2Step289HeadG_Incoming s2Step289HeadG_checked h1 s2Step289HeadG_Outgoing
  exact h0

private theorem s2Step289HeadBank_checked : compileHmrBankResizeLog .headroom s2Step289HeadGBefore ⟨s2Step289HeadFRow,s2Step289HeadGRow,s2Step289HeadFvRow,s2Step289HeadGvRow⟩ ⟨127,127,160,160⟩ [s2Step289HeadGFresh,s2Step289HeadFFresh,s2Step289HeadGvFresh,s2Step289HeadFvFresh]=
    some (s2Step289HeadFvAfter,⟨s2Step289HeadFOut,s2Step289HeadGOut,s2Step289HeadFvOut,s2Step289HeadGvOut⟩,(growRow 769 s2Step289HeadGFresh ++ (growRow 768 s2Step289HeadFFresh ++ (growRow 771 s2Step289HeadGvFresh ++ (growRow 770 s2Step289HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step289HeadBank_rows]
  rfl

private theorem s2Step289Front_checked : compileHmrSourceFrontLog s2Step289EntryFBefore s2Step289FrontBank 126 159 ⟨125,126,160,159⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step289FrontLog=some s2Step289FrontPlan := by
  have pairEq : s2Step289FrontPair=⟨s2Step289HeadFRow,s2Step289HeadGRow,s2Step289HeadFvRow,s2Step289HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step289FrontHead=⟨s2Step289ExitFRow,s2Step289ExitGRow,s2Step289ExitFvRow,s2Step289ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step289Add0A=s2Step289FrontHead.f.wires := by decide +kernel
  have gEq : s2Step289Add0B=s2Step289FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step289Add1A=s2Step289FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step289Add1B=s2Step289FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step289EntryFBefore s2Step289FrontBank 126 159 ⟨125,126,160,159⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step289FrontLog s2Step289FrontPlan
  · exact s2Step289Front_entry
  · exact s2Step289EntryBank_checked
  · exact s2Step289Front_sigma
  · rfl
  · exact s2Step289Front_branch
  · rfl
  · simpa only [s2Step289FrontPlan,pairEq] using s2Step289HeadBank_checked
  · simpa only [s2Step289FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step289F4_checked
  · exact s2Step289Counter_checked
  · rfl
  · simpa only [s2Step289FrontPlan,headEq] using s2Step289ExitBank_checked

private theorem s2Step289Complete_explicit_checked : compileHmrEarlyStepLog s2Step289EntryFBefore s2Step289FrontBank 126 159 ⟨125,126,160,159⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 54 s2Step289CompleteLog=some s2Step289CompletePlan := by
  let Q := s2Step289EarlyControlPlan
  have hq := s2Step289EarlyControl_plan_checked
  have fv1 : s2Step289CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step289CompleteOut.fv.payload[2]?.getD s2Step289CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step289CompleteOut.fv.payload[3]?.getD s2Step289CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step289CompleteOut.fv.payload[4]?.getD s2Step289CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step289EntryFBefore s2Step289EarlyControlArena s2Step289FrontBank 126 159 ⟨125,126,160,159⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 54 s2Step289CompleteLog s2Step289FrontPlan Q
    s2Step289Front_checked s2Step289Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step289Complete_owned s2Step289Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step289EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 777 808 s2Step289CompleteOut.fv.second (s2Step289CompleteOut.fv.payload[2]?.getD s2Step289CompleteOut.fv.sign) (s2Step289CompleteOut.fv.payload[3]?.getD s2Step289CompleteOut.fv.sign) (s2Step289CompleteOut.fv.payload[4]?.getD s2Step289CompleteOut.fv.sign) 796 54 s2Step289EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep289Arena : Arena := s2Step289EntryFBefore
def s2PrivateStep289Bank : WindowBank := s2Step289FrontBank
def s2PrivateStep289Spec : HmrSourceWalkStepLog := ⟨126,159,⟨125,126,160,159⟩,54,.early s2Step289CompleteLog⟩
def s2PrivateStep289Plan : HmrSourceStepPlan := .early s2Step289CompletePlan
theorem s2PrivateStep289_source : s2PrivateStep289Spec=s2ObservedLogs288[1] := rfl
theorem s2PrivateStep289_checked : compileHmrSourceStepLog s2PrivateStep289Arena s2PrivateStep289Bank
    s2PrivateStep289Spec.fgWidth s2PrivateStep289Spec.vWidth s2PrivateStep289Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905]
    6 498 289 s2PrivateStep289Spec.need none s2PrivateStep289Spec.log=some s2PrivateStep289Plan := by
  change compileHmrSourceStepLog s2Step289EntryFBefore s2Step289FrontBank 126 159 ⟨125,126,160,159⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 6 498 289 54 none (.early s2Step289CompleteLog)=some (.early s2Step289CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 289<498)]
  rw [s2Step289Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
