import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep285
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

private def s2Step287CompleteMoves : List (Wire × Wire) := [(808,639)]

private def s2Step287EarlyControlLog : HmrEarlyControlLog := ⟨[808, 791, 815, 790, 783],[811],[780],[830, 800, 894, 896, 901, 903],[]⟩

private def s2Step287FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [783, 811], [], [804]],[[780], [790], [791], [815]],[[], [], [], []]⟩,[796],[812],[830],[800],[894, 896, 901, 903, 904, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[894, 896, 901, 903, 904, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[830, 800, 894, 896]⟩

private def s2Step287CompleteLog : HmrEarlyStepLog := ⟨s2Step287FrontLog,s2Step287CompleteMoves,s2Step287EarlyControlLog⟩

private def s2Step287ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638],768⟩

private def s2Step287ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781],770⟩

private def s2Step287ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125],769⟩

private def s2Step287ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804],771⟩

private def s2Step287FrontOut : WindowBank := ⟨s2Step287ExitFOut,s2Step287ExitGOut,s2Step287ExitFvOut,s2Step287ExitGvOut⟩

private def s2Step287CompleteOut : WindowBank := s2Step287FrontOut.repacked s2Step287CompleteMoves

private def s2Step287EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step287EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step287EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step287EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step287EarlyControlPositiveArena,[811],s2Step287EarlyControlEqualityArena,[780],⟨⟨796,false⟩,[⟨⟨811,false⟩,780⟩]⟩⟩

private def s2Step287EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<904) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step287EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<904) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step287EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step287EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step287EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step287EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step287EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,808⟩,⟨⟨774,false⟩,791⟩,⟨⟨775,false⟩,815⟩,⟨⟨776,false⟩,790⟩,⟨⟨777,false⟩,783⟩]⟩

private def s2Step287EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step287EarlyControlZeroArena,s2Step287EarlyControlZeroPlan,s2Step287EarlyControlClassPlan,s2Step287EarlyControlFlagArena,s2Step287EarlyControlFittedArena,s2Step287EarlyControlHistoryArena,s2Step287EarlyControlSigmaArena,s2Step287EarlyControlOutputArena,s2Step287EarlyControlLog⟩

private def s2Step287CounterWork : List Wire := [830, 800, 894, 896]

private theorem s2Step287Counter_bounded : s2Step287CounterWork.toFinset⊆arenaWires := by norm_num [s2Step287CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step287HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step287CounterDuring : Arena := ⟨s2Step287HeadFvAfter.live∪s2Step287CounterWork.toFinset,Finset.union_subset s2Step287HeadFvAfter.bounded s2Step287Counter_bounded⟩

private def s2Step287EntryFFresh : List Wire := []

private def s2Step287EntryFvFresh : List Wire := []

private def s2Step287EntryGFresh : List Wire := [783, 811]

private def s2Step287EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step287EntryGvFresh : List Wire := [804]

private def s2Step287ExitFExtra : List Wire := [639, 790]

private def s2Step287ExitFvExtra : List Wire := [815]

private def s2Step287ExitGExtra : List Wire := [783, 811, 780]

private def s2Step287ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<639) ∨ (640≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step287ExitGvExtra : List Wire := [791]

private def s2Step287Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step287Add0Work : List Wire := [894, 896, 901, 903, 904, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step287Add0_bounded : s2Step287Add0Work.toFinset⊆arenaWires := by
  have h : s2Step287Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step287Add0During : Arena := ⟨s2Step287Add0Arena.live∪s2Step287Add0Work.toFinset,Finset.union_subset s2Step287Add0Arena.bounded s2Step287Add0_bounded⟩

private def s2Step287Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step287Add1Work : List Wire := [894, 896, 901, 903, 904, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step287Add1_bounded : s2Step287Add1Work.toFinset⊆arenaWires := by
  have h : s2Step287Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step287Add1During : Arena := ⟨s2Step287Add1Arena.live∪s2Step287Add1Work.toFinset,Finset.union_subset s2Step287Add1Arena.bounded s2Step287Add1_bounded⟩

private def s2Step287F4FlagArena : Arena := ⟨s2Step287HeadFvAfter.live∪{830},Finset.union_subset s2Step287HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step287F4Plan : HmrHybridF4Plan := ⟨s2Step287F4FlagArena,[830],s2Step287Add0Arena,[800],s2Step287Add0During,s2Step287Add0Work,s2Step287Add1During,s2Step287Add1Work⟩

private def s2Step287HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 790],768⟩

private def s2Step287HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815],770⟩

private def s2Step287HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 783, 811, 780],769⟩

private def s2Step287HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 791],771⟩

private def s2Step287FrontHead : WindowBank := ⟨s2Step287HeadFOut,s2Step287HeadGOut,s2Step287HeadFvOut,s2Step287HeadGvOut⟩

private def s2Step287EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639],768⟩

private def s2Step287EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781],770⟩

private def s2Step287EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 783, 811],769⟩

private def s2Step287EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804],771⟩

private def s2Step287FrontPair : WindowBank := ⟨s2Step287EntryFOut,s2Step287EntryGOut,s2Step287EntryFvOut,s2Step287EntryGvOut⟩

private def s2Step287FrontSigmaArena : Arena := ⟨s2Step287EntryGvAfter.live∪{796},Finset.union_subset s2Step287EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step287HeadFFresh : List Wire := [790]

private def s2Step287HeadFvFresh : List Wire := [815]

private def s2Step287HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step287HeadGFresh : List Wire := [780]

private def s2Step287HeadGvFresh : List Wire := [791]

private def s2Step287FrontPlan : HmrSourceFront := ⟨s2Step287EntryGvAfter,s2Step287FrontPair,(growRow 768 s2Step287EntryFFresh ++ (growRow 769 s2Step287EntryGFresh ++ (growRow 770 s2Step287EntryFvFresh ++ (growRow 771 s2Step287EntryGvFresh ++ [])))),s2Step287FrontSigmaArena,[796],s2Step287HeadGBefore,[812],
  s2Step287HeadFvAfter,s2Step287FrontHead,(growRow 769 s2Step287HeadGFresh ++ (growRow 768 s2Step287HeadFFresh ++ (growRow 771 s2Step287HeadGvFresh ++ (growRow 770 s2Step287HeadFvFresh ++ [])))),s2Step287F4Plan,s2Step287CounterDuring,s2Step287CounterWork,s2Step287ExitGvAfter,s2Step287FrontOut,(shrinkRow 769 s2Step287ExitGExtra ++ (shrinkRow 768 s2Step287ExitFExtra ++ (shrinkRow 770 s2Step287ExitFvExtra ++ (shrinkRow 771 s2Step287ExitGvExtra ++ []))))⟩

private def s2Step287CompletePlan : HmrEarlyStepPlan := ⟨s2Step287FrontPlan,s2Step287EarlyControlArena,s2Step287EarlyControlPlan,s2Step287CompleteMoves⟩

private theorem s2Step287Complete_apart : List.Disjoint (s2Step287CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [796, 812, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] := by
  have nd : ((s2Step287CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[796, 812, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step287Complete_owned : (s2Step287CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step287EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step287EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private def s2Step287CompleteMoveArena : Arena := ⟨s2Step287ExitGvAfter.live∪{639},Finset.union_subset s2Step287ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step287Complete_repack : s2Step287ExitGvAfter.checkRepack s2Step287CompleteMoves=some s2Step287EarlyControlArena := by
  have owned : 808∈s2Step287ExitGvAfter.live := by norm_num [s2Step287ExitGvAfter,arenaWires]
  have reserve : s2Step287ExitGvAfter.reserve {639}=some s2Step287CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step287ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step287CompleteMoveArena.retireSet {808}=s2Step287EarlyControlArena := by
    unfold Arena.retireSet s2Step287EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step287CompleteMoveArena,s2Step287ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step287CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step287CompleteMoveArena.retireSet {808}).checkRepack []=some s2Step287EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step287EarlyControl_branchOwned : ([812] : List Wire).toFinset⊆s2Step287EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step287EarlyControlSigmaArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step287EarlyControl_branch : compileHmrBranchRetirement s2Step287EarlyControlSigmaArena 812=some s2Step287EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step287EarlyControl_branchOwned
  · ext q
    simp [s2Step287EarlyControlOutputArena,s2Step287EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step287EarlyControl_classEqualityBorrow : s2Step287EarlyControlPositiveArena.checkBorrow (([796, 811] : List Wire).length-1) s2Step287EarlyControlLog.classWork=some s2Step287EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step287EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step287EarlyControlPositiveArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step287EarlyControlEqualityArena,s2Step287EarlyControlPositiveArena,s2Step287EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step287EarlyControl_classEqualityOwned : ([796, 811] : List Wire).toFinset⊆s2Step287EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step287EarlyControlPositiveArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step287EarlyControl_classEquality : compileHmrEqualityLog s2Step287EarlyControlPositiveArena [796, 811] 0 s2Step287EarlyControlLog.classWork=some (s2Step287EarlyControlEqualityArena,s2Step287EarlyControlLog.classWork,s2Step287EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step287EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step287EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step287EarlyControl_classOwned : ([777, 783, 796] : List Wire).toFinset⊆s2Step287EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step287EarlyControlZeroArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step287EarlyControl_positiveBorrow : s2Step287EarlyControlZeroArena.checkBorrow (1) s2Step287EarlyControlLog.positiveWork=some s2Step287EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step287EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step287EarlyControlZeroArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step287EarlyControlPositiveArena,s2Step287EarlyControlZeroArena,s2Step287EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step287EarlyControl_class : compileHmrSourceClassLog s2Step287EarlyControlZeroArena false 777 s2Step287EarlyControlZeroPlan.top 0 796 s2Step287EarlyControlLog.positiveWork s2Step287EarlyControlLog.classWork=some s2Step287EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step287EarlyControlClassPlan s2Step287EarlyControlZeroArena false 777 s2Step287EarlyControlZeroPlan.top 0 796
  constructor
  · decide +kernel
  · exact s2Step287EarlyControl_classOwned
  · exact s2Step287EarlyControl_positiveBorrow
  · exact s2Step287EarlyControl_classEquality

private theorem s2Step287EarlyControl_entryRecordOwned : ([812, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).toFinset⊆s2Step287EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step287EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step287EarlyControl_entrySigmaOwned : ([796, 254] : List Wire).toFinset⊆s2Step287EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step287EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step287EarlyControl_fitBorrow : s2Step287EarlyControlFlagArena.checkBorrow ((54-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).length)) s2Step287EarlyControlLog.recordFresh=some s2Step287EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step287EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step287EarlyControlFlagArena (fun q => (0≤q ∧ q<904) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step287EarlyControlFittedArena,s2Step287EarlyControlFlagArena,s2Step287EarlyControlLog,arenaWires]

private theorem s2Step287EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).toFinset⊆s2Step287EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step287EarlyControlFlagArena (fun q => (0≤q ∧ q<904) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step287EarlyControl_fit : compileHmrRecordGrowLog s2Step287EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 54 s2Step287EarlyControlLog.recordFresh=some s2Step287EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step287EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step287EarlyControl_fitBorrow

private theorem s2Step287EarlyControl_flagsBorrow : s2Step287EarlyControlEqualityArena.checkBorrow (6) s2Step287EarlyControlLog.flagWork=some s2Step287EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step287EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step287EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step287EarlyControlFlagArena,s2Step287EarlyControlEqualityArena,s2Step287EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step287EarlyControl_flagsOwned : ([780, 253, 252, 251] : List Wire).toFinset⊆s2Step287EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step287EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step287EarlyControl_flags : compileHmrFlagsLog s2Step287EarlyControlClassPlan.equalityArena s2Step287EarlyControlClassPlan.equality.top 253 252 251 s2Step287EarlyControlLog.flagWork=some s2Step287EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step287EarlyControl_flagsOwned⟩
  · exact s2Step287EarlyControl_flagsBorrow

private theorem s2Step287EarlyControl_historyBorrow : s2Step287EarlyControlArena.checkBorrow ((54-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).length)) s2Step287EarlyControlLog.recordFresh=some s2Step287EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step287EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step287EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step287EarlyControlHistoryArena,s2Step287EarlyControlArena,s2Step287EarlyControlLog,arenaWires]

private theorem s2Step287EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).toFinset⊆s2Step287EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step287EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step287EarlyControl_history : compileHmrRecordGrowLog s2Step287EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 54 s2Step287EarlyControlLog.recordFresh=some s2Step287EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step287EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step287EarlyControl_historyBorrow

private theorem s2Step287EarlyControl_sigmaOwned : ([254, 796] : List Wire).toFinset⊆s2Step287EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step287EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step287EarlyControl_sigmaReleaseOwned : ([796] : List Wire).toFinset⊆s2Step287EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step287EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step287EarlyControl_sigmaRelease : s2Step287EarlyControlHistoryArena.release {796} (fun _ => false)=some s2Step287EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step287EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step287EarlyControlSigmaArena,s2Step287EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step287EarlyControl_sigma : compileHmrSigmaDropLog s2Step287EarlyControlHistoryArena false 0 0 254 796 []=some s2Step287EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step287EarlyControl_sigmaOwned⟩
  · exact s2Step287EarlyControl_sigmaRelease

private theorem s2Step287EarlyControl_zeroBorrow : s2Step287EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step287EarlyControlLog.zeroWork=some s2Step287EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step287EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step287EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step287EarlyControlZeroArena,s2Step287EarlyControlArena,s2Step287EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step287EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step287EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step287EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step287EarlyControl_zero : compileHmrEqualityLog s2Step287EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step287EarlyControlLog.zeroWork=some (s2Step287EarlyControlZeroArena,s2Step287EarlyControlLog.zeroWork,s2Step287EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step287EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step287EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step287EarlyControl_logged : s2Step287EarlyControlPlan.Logged s2Step287EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 777 796 254 253 252 251 812 54 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step287EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step287EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step287EarlyControl_zero
  · exact s2Step287EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step287EarlyControl_flags
  · exact s2Step287EarlyControl_fit
  · exact s2Step287EarlyControl_history
  · exact s2Step287EarlyControl_sigma
  · exact s2Step287EarlyControl_branch

private theorem s2Step287EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step287EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 777 796 254 253 252 251 812 54 s2Step287EarlyControlLog=some s2Step287EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step287EarlyControlPlan s2Step287EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 777 796 254 253 252 251 812 54 s2Step287EarlyControl_logged

private def s2Step287EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step287EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639],768⟩

private def s2Step287EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781],770⟩

private def s2Step287EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125],769⟩

private def s2Step287EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801],771⟩

private def s2Step287FrontBank : WindowBank := ⟨s2Step287EntryFRow,s2Step287EntryGRow,s2Step287EntryFvRow,s2Step287EntryGvRow⟩

private def s2Step287Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 790, 768]

private def s2Step287Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 783, 811, 780, 769]

private def s2Step287Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 770]

private def s2Step287Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 791, 771]

private theorem s2Step287Counter_apart : Disjoint s2Step287HeadFvAfter.live s2Step287CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step287HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step287Counter_borrowed : s2Step287HeadFvAfter.checkBorrow 4 s2Step287CounterWork=some s2Step287CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step287HeadFvAfter s2Step287CounterDuring s2Step287CounterWork.toFinset s2Step287Counter_bounded s2Step287Counter_apart rfl

private theorem s2Step287Counter_owned : (796::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step287HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step287HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step287Counter_checked : compileHmrCounterStepLog s2Step287HeadFvAfter true 796 [772, 773, 774, 775, 776, 777] s2Step287CounterWork=some s2Step287CounterDuring := by
  have owned : ∀q∈796::[772, 773, 774, 775, 776, 777],q∈s2Step287HeadFvAfter.live := fun q hq => s2Step287Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step287Counter_borrowed

private def s2Step287EntryFAfter : Arena := s2Step287EntryFBefore

private theorem s2Step287EntryBank_incomingDistinct : ([s2Step287EntryFRow,s2Step287EntryGRow,s2Step287EntryFvRow,s2Step287EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step287EntryF_Incoming : rowsOwned s2Step287EntryFBefore [s2Step287EntryFRow,s2Step287EntryGRow,s2Step287EntryFvRow,s2Step287EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step287EntryFRow,s2Step287EntryGRow,s2Step287EntryFvRow,s2Step287EntryGvRow] 0 s2Step287EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step287EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step287EntryBank_outgoingOwned : rowsOwned s2Step287EntryGvAfter [s2Step287EntryFOut,s2Step287EntryGOut,s2Step287EntryFvOut,s2Step287EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step287EntryGvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step287EntryF_Outgoing : rowsOwned s2Step287EntryGvAfter [s2Step287EntryFOut,s2Step287EntryGOut,s2Step287EntryFvOut,s2Step287EntryGvOut] :=
  hmrRows_owned_drop s2Step287EntryGvAfter [s2Step287EntryFOut,s2Step287EntryGOut,s2Step287EntryFvOut,s2Step287EntryGvOut] 0 s2Step287EntryBank_outgoingOwned

private theorem s2Step287EntryF_distinct : (s2Step287EntryFRow.sign::s2Step287EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step287EntryF_owned : (s2Step287EntryFRow.sign::s2Step287EntryFRow.payload).toFinset⊆s2Step287EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step287EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step287EntryF_reserved : s2Step287EntryFBefore.reserve s2Step287EntryFFresh.toFinset=some s2Step287EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step287EntryFFresh,arenaWires]
  · norm_num [s2Step287EntryFBefore,s2Step287EntryFFresh,arenaWires]
  · simp only [s2Step287EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step287EntryF_checked : planRowResizeLog s2Step287EntryFBefore s2Step287EntryFRow 128 s2Step287EntryFFresh=
    some (s2Step287EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639],768⟩,growRow 768 s2Step287EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step287EntryFBefore s2Step287EntryFAfter s2Step287EntryFRow 128 s2Step287EntryFFresh
    s2Step287EntryF_distinct s2Step287EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step287EntryF_reserved
  have rowEq : WindowRow.mk (s2Step287EntryFRow.payload++s2Step287EntryFFresh) s2Step287EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step287EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step287EntryFvAfter : Arena := s2Step287EntryGAfter

private def s2Step287EntryFvBefore : Arena := s2Step287EntryGAfter

private theorem s2Step287EntryFv_Incoming : rowsOwned s2Step287EntryFvBefore [s2Step287EntryFvRow,s2Step287EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step287EntryFRow,s2Step287EntryGRow,s2Step287EntryFvRow,s2Step287EntryGvRow] 2 s2Step287EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step287EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step287EntryFv_Outgoing : rowsOwned s2Step287EntryGvAfter [s2Step287EntryFvOut,s2Step287EntryGvOut] :=
  hmrRows_owned_drop s2Step287EntryGvAfter [s2Step287EntryFOut,s2Step287EntryGOut,s2Step287EntryFvOut,s2Step287EntryGvOut] 2 s2Step287EntryBank_outgoingOwned

private theorem s2Step287EntryFv_distinct : (s2Step287EntryFvRow.sign::s2Step287EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step287EntryFv_owned : (s2Step287EntryFvRow.sign::s2Step287EntryFvRow.payload).toFinset⊆s2Step287EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step287EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step287EntryFv_reserved : s2Step287EntryFvBefore.reserve s2Step287EntryFvFresh.toFinset=some s2Step287EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step287EntryFvFresh,arenaWires]
  · norm_num [s2Step287EntryFvBefore,s2Step287EntryGAfter,s2Step287EntryFvFresh,arenaWires]
  · simp only [s2Step287EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step287EntryFv_checked : planRowResizeLog s2Step287EntryFvBefore s2Step287EntryFvRow 159 s2Step287EntryFvFresh=
    some (s2Step287EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781],770⟩,growRow 770 s2Step287EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step287EntryFvBefore s2Step287EntryFvAfter s2Step287EntryFvRow 159 s2Step287EntryFvFresh
    s2Step287EntryFv_distinct s2Step287EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step287EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step287EntryFvRow.payload++s2Step287EntryFvFresh) s2Step287EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step287EntryGBefore : Arena := s2Step287EntryFBefore

private theorem s2Step287EntryG_Incoming : rowsOwned s2Step287EntryGBefore [s2Step287EntryGRow,s2Step287EntryFvRow,s2Step287EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step287EntryFRow,s2Step287EntryGRow,s2Step287EntryFvRow,s2Step287EntryGvRow] 1 s2Step287EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step287EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step287EntryG_Outgoing : rowsOwned s2Step287EntryGvAfter [s2Step287EntryGOut,s2Step287EntryFvOut,s2Step287EntryGvOut] :=
  hmrRows_owned_drop s2Step287EntryGvAfter [s2Step287EntryFOut,s2Step287EntryGOut,s2Step287EntryFvOut,s2Step287EntryGvOut] 1 s2Step287EntryBank_outgoingOwned

private theorem s2Step287EntryG_distinct : (s2Step287EntryGRow.sign::s2Step287EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step287EntryG_owned : (s2Step287EntryGRow.sign::s2Step287EntryGRow.payload).toFinset⊆s2Step287EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step287EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step287EntryG_reserved : s2Step287EntryGBefore.reserve s2Step287EntryGFresh.toFinset=some s2Step287EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step287EntryGFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step287EntryGBefore,s2Step287EntryFBefore,s2Step287EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step287EntryGAfter,s2Step287EntryGBefore,s2Step287EntryFBefore,s2Step287EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step287EntryG_checked : planRowResizeLog s2Step287EntryGBefore s2Step287EntryGRow 128 s2Step287EntryGFresh=
    some (s2Step287EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 783, 811],769⟩,growRow 769 s2Step287EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step287EntryGBefore s2Step287EntryGAfter s2Step287EntryGRow 128 s2Step287EntryGFresh
    s2Step287EntryG_distinct s2Step287EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step287EntryG_reserved
  have rowEq : WindowRow.mk (s2Step287EntryGRow.payload++s2Step287EntryGFresh) s2Step287EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 783, 811],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step287EntryGvBefore : Arena := s2Step287EntryGAfter

private theorem s2Step287EntryGv_Incoming : rowsOwned s2Step287EntryGvBefore [s2Step287EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step287EntryFRow,s2Step287EntryGRow,s2Step287EntryFvRow,s2Step287EntryGvRow] 3 s2Step287EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step287EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step287EntryGv_Outgoing : rowsOwned s2Step287EntryGvAfter [s2Step287EntryGvOut] :=
  hmrRows_owned_drop s2Step287EntryGvAfter [s2Step287EntryFOut,s2Step287EntryGOut,s2Step287EntryFvOut,s2Step287EntryGvOut] 3 s2Step287EntryBank_outgoingOwned

private theorem s2Step287EntryGv_distinct : (s2Step287EntryGvRow.sign::s2Step287EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step287EntryGv_owned : (s2Step287EntryGvRow.sign::s2Step287EntryGvRow.payload).toFinset⊆s2Step287EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step287EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step287EntryGv_reserved : s2Step287EntryGvBefore.reserve s2Step287EntryGvFresh.toFinset=some s2Step287EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step287EntryGvFresh,arenaWires]
  · norm_num [s2Step287EntryGvBefore,s2Step287EntryGAfter,s2Step287EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step287EntryGvAfter,s2Step287EntryGvBefore,s2Step287EntryGAfter,s2Step287EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step287EntryGv_checked : planRowResizeLog s2Step287EntryGvBefore s2Step287EntryGvRow 159 s2Step287EntryGvFresh=
    some (s2Step287EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804],771⟩,growRow 771 s2Step287EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step287EntryGvBefore s2Step287EntryGvAfter s2Step287EntryGvRow 159 s2Step287EntryGvFresh
    s2Step287EntryGv_distinct s2Step287EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step287EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step287EntryGvRow.payload++s2Step287EntryGvFresh) s2Step287EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step287EntryBank_rows : planWindowRowsLog s2Step287EntryFBefore [(s2Step287EntryFRow,128),(s2Step287EntryGRow,128),(s2Step287EntryFvRow,159),(s2Step287EntryGvRow,159)] [s2Step287EntryFFresh,s2Step287EntryGFresh,s2Step287EntryFvFresh,s2Step287EntryGvFresh]=
    some (s2Step287EntryGvAfter,[s2Step287EntryFOut,s2Step287EntryGOut,s2Step287EntryFvOut,s2Step287EntryGvOut],(growRow 768 s2Step287EntryFFresh ++ (growRow 769 s2Step287EntryGFresh ++ (growRow 770 s2Step287EntryFvFresh ++ (growRow 771 s2Step287EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step287EntryGvAfter [] []=some (s2Step287EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step287EntryGvBefore s2Step287EntryGvAfter s2Step287EntryGvAfter
    s2Step287EntryGvRow s2Step287EntryGvOut 159 s2Step287EntryGvFresh [] [] []
    (growRow 771 s2Step287EntryGvFresh) ([]) s2Step287EntryGv_Incoming s2Step287EntryGv_checked h4 s2Step287EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step287EntryFvBefore s2Step287EntryFvAfter s2Step287EntryGvAfter
    s2Step287EntryFvRow s2Step287EntryFvOut 159 s2Step287EntryFvFresh [(s2Step287EntryGvRow,159)] [s2Step287EntryGvFresh] [s2Step287EntryGvOut]
    (growRow 770 s2Step287EntryFvFresh) ((growRow 771 s2Step287EntryGvFresh ++ [])) s2Step287EntryFv_Incoming s2Step287EntryFv_checked h3 s2Step287EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step287EntryGBefore s2Step287EntryGAfter s2Step287EntryGvAfter
    s2Step287EntryGRow s2Step287EntryGOut 128 s2Step287EntryGFresh [(s2Step287EntryFvRow,159),(s2Step287EntryGvRow,159)] [s2Step287EntryFvFresh,s2Step287EntryGvFresh] [s2Step287EntryFvOut,s2Step287EntryGvOut]
    (growRow 769 s2Step287EntryGFresh) ((growRow 770 s2Step287EntryFvFresh ++ (growRow 771 s2Step287EntryGvFresh ++ []))) s2Step287EntryG_Incoming s2Step287EntryG_checked h2 s2Step287EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step287EntryFBefore s2Step287EntryFAfter s2Step287EntryGvAfter
    s2Step287EntryFRow s2Step287EntryFOut 128 s2Step287EntryFFresh [(s2Step287EntryGRow,128),(s2Step287EntryFvRow,159),(s2Step287EntryGvRow,159)] [s2Step287EntryGFresh,s2Step287EntryFvFresh,s2Step287EntryGvFresh] [s2Step287EntryGOut,s2Step287EntryFvOut,s2Step287EntryGvOut]
    (growRow 768 s2Step287EntryFFresh) ((growRow 769 s2Step287EntryGFresh ++ (growRow 770 s2Step287EntryFvFresh ++ (growRow 771 s2Step287EntryGvFresh ++ [])))) s2Step287EntryF_Incoming s2Step287EntryF_checked h1 s2Step287EntryF_Outgoing
  exact h0

private theorem s2Step287EntryBank_checked : compileHmrBankResizeLog .entry s2Step287EntryFBefore ⟨s2Step287EntryFRow,s2Step287EntryGRow,s2Step287EntryFvRow,s2Step287EntryGvRow⟩ ⟨128,128,159,159⟩ [s2Step287EntryFFresh,s2Step287EntryGFresh,s2Step287EntryFvFresh,s2Step287EntryGvFresh]=
    some (s2Step287EntryGvAfter,⟨s2Step287EntryFOut,s2Step287EntryGOut,s2Step287EntryFvOut,s2Step287EntryGvOut⟩,(growRow 768 s2Step287EntryFFresh ++ (growRow 769 s2Step287EntryGFresh ++ (growRow 770 s2Step287EntryFvFresh ++ (growRow 771 s2Step287EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step287EntryBank_rows]
  rfl

private def s2Step287ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<639) ∨ (640≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step287ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step287ExitFBefore : Arena := s2Step287ExitGAfter

private def s2Step287ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 790],768⟩

private def s2Step287ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815],770⟩

private def s2Step287ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 783, 811, 780],769⟩

private def s2Step287ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 791],771⟩

private theorem s2Step287ExitBank_incomingDistinct : ([s2Step287ExitGRow,s2Step287ExitFRow,s2Step287ExitFvRow,s2Step287ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step287ExitF_Incoming : rowsOwned s2Step287ExitFBefore [s2Step287ExitFRow,s2Step287ExitFvRow,s2Step287ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step287ExitGRow,s2Step287ExitFRow,s2Step287ExitFvRow,s2Step287ExitGvRow] 1 s2Step287ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step287ExitFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step287ExitBank_outgoingOwned : rowsOwned s2Step287ExitGvAfter [s2Step287ExitGOut,s2Step287ExitFOut,s2Step287ExitFvOut,s2Step287ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step287ExitGvAfter (fun q => (0≤q ∧ q<639) ∨ (640≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step287ExitF_Outgoing : rowsOwned s2Step287ExitGvAfter [s2Step287ExitFOut,s2Step287ExitFvOut,s2Step287ExitGvOut] :=
  hmrRows_owned_drop s2Step287ExitGvAfter [s2Step287ExitGOut,s2Step287ExitFOut,s2Step287ExitFvOut,s2Step287ExitGvOut] 1 s2Step287ExitBank_outgoingOwned

private theorem s2Step287ExitF_distinct : (s2Step287ExitFRow.sign::s2Step287ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step287ExitF_owned : (s2Step287ExitFRow.sign::s2Step287ExitFRow.payload).toFinset⊆s2Step287ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step287ExitFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step287ExitF_retired : s2Step287ExitFBefore.retireSet s2Step287ExitFExtra.toFinset=s2Step287ExitFAfter := by
  unfold Arena.retireSet s2Step287ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step287ExitFBefore,s2Step287ExitGAfter,s2Step287ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step287ExitF_checked : planRowResizeLog s2Step287ExitFBefore s2Step287ExitFRow 127 []=
    some (s2Step287ExitFAfter,s2Step287ExitFOut,shrinkRow 768 s2Step287ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step287ExitFBefore s2Step287ExitFRow 127 s2Step287ExitF_distinct s2Step287ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step287ExitFRow.payload.take 127) s2Step287ExitFRow.sign=s2Step287ExitFOut := by decide +kernel
  have hi : s2Step287ExitFRow.payload.drop 127=s2Step287ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step287ExitF_retired] at result
  exact result

private def s2Step287ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<639) ∨ (640≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step287ExitFvBefore : Arena := s2Step287ExitFAfter

private theorem s2Step287ExitFv_Incoming : rowsOwned s2Step287ExitFvBefore [s2Step287ExitFvRow,s2Step287ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step287ExitGRow,s2Step287ExitFRow,s2Step287ExitFvRow,s2Step287ExitGvRow] 2 s2Step287ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step287ExitFvBefore (fun q => (0≤q ∧ q<639) ∨ (640≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step287ExitFv_Outgoing : rowsOwned s2Step287ExitGvAfter [s2Step287ExitFvOut,s2Step287ExitGvOut] :=
  hmrRows_owned_drop s2Step287ExitGvAfter [s2Step287ExitGOut,s2Step287ExitFOut,s2Step287ExitFvOut,s2Step287ExitGvOut] 2 s2Step287ExitBank_outgoingOwned

private theorem s2Step287ExitFv_distinct : (s2Step287ExitFvRow.sign::s2Step287ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step287ExitFv_owned : (s2Step287ExitFvRow.sign::s2Step287ExitFvRow.payload).toFinset⊆s2Step287ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step287ExitFvBefore (fun q => (0≤q ∧ q<639) ∨ (640≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step287ExitFv_retired : s2Step287ExitFvBefore.retireSet s2Step287ExitFvExtra.toFinset=s2Step287ExitFvAfter := by
  unfold Arena.retireSet s2Step287ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step287ExitFvBefore,s2Step287ExitFAfter,s2Step287ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step287ExitFv_checked : planRowResizeLog s2Step287ExitFvBefore s2Step287ExitFvRow 159 []=
    some (s2Step287ExitFvAfter,s2Step287ExitFvOut,shrinkRow 770 s2Step287ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step287ExitFvBefore s2Step287ExitFvRow 159 s2Step287ExitFv_distinct s2Step287ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step287ExitFvRow.payload.take 159) s2Step287ExitFvRow.sign=s2Step287ExitFvOut := by decide +kernel
  have hi : s2Step287ExitFvRow.payload.drop 159=s2Step287ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step287ExitFv_retired] at result
  exact result

private def s2Step287ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private theorem s2Step287ExitG_Incoming : rowsOwned s2Step287ExitGBefore [s2Step287ExitGRow,s2Step287ExitFRow,s2Step287ExitFvRow,s2Step287ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step287ExitGRow,s2Step287ExitFRow,s2Step287ExitFvRow,s2Step287ExitGvRow] 0 s2Step287ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step287ExitGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step287ExitG_Outgoing : rowsOwned s2Step287ExitGvAfter [s2Step287ExitGOut,s2Step287ExitFOut,s2Step287ExitFvOut,s2Step287ExitGvOut] :=
  hmrRows_owned_drop s2Step287ExitGvAfter [s2Step287ExitGOut,s2Step287ExitFOut,s2Step287ExitFvOut,s2Step287ExitGvOut] 0 s2Step287ExitBank_outgoingOwned

private theorem s2Step287ExitG_distinct : (s2Step287ExitGRow.sign::s2Step287ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step287ExitG_owned : (s2Step287ExitGRow.sign::s2Step287ExitGRow.payload).toFinset⊆s2Step287ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step287ExitGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step287ExitG_retired : s2Step287ExitGBefore.retireSet s2Step287ExitGExtra.toFinset=s2Step287ExitGAfter := by
  unfold Arena.retireSet s2Step287ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step287ExitGBefore,s2Step287ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step287ExitG_checked : planRowResizeLog s2Step287ExitGBefore s2Step287ExitGRow 126 []=
    some (s2Step287ExitGAfter,s2Step287ExitGOut,shrinkRow 769 s2Step287ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step287ExitGBefore s2Step287ExitGRow 126 s2Step287ExitG_distinct s2Step287ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step287ExitGRow.payload.take 126) s2Step287ExitGRow.sign=s2Step287ExitGOut := by decide +kernel
  have hi : s2Step287ExitGRow.payload.drop 126=s2Step287ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step287ExitG_retired] at result
  exact result

private def s2Step287ExitGvBefore : Arena := s2Step287ExitFvAfter

private theorem s2Step287ExitGv_Incoming : rowsOwned s2Step287ExitGvBefore [s2Step287ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step287ExitGRow,s2Step287ExitFRow,s2Step287ExitFvRow,s2Step287ExitGvRow] 3 s2Step287ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step287ExitGvBefore (fun q => (0≤q ∧ q<639) ∨ (640≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step287ExitGv_Outgoing : rowsOwned s2Step287ExitGvAfter [s2Step287ExitGvOut] :=
  hmrRows_owned_drop s2Step287ExitGvAfter [s2Step287ExitGOut,s2Step287ExitFOut,s2Step287ExitFvOut,s2Step287ExitGvOut] 3 s2Step287ExitBank_outgoingOwned

private theorem s2Step287ExitGv_distinct : (s2Step287ExitGvRow.sign::s2Step287ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step287ExitGv_owned : (s2Step287ExitGvRow.sign::s2Step287ExitGvRow.payload).toFinset⊆s2Step287ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step287ExitGvBefore (fun q => (0≤q ∧ q<639) ∨ (640≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step287ExitGv_retired : s2Step287ExitGvBefore.retireSet s2Step287ExitGvExtra.toFinset=s2Step287ExitGvAfter := by
  unfold Arena.retireSet s2Step287ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step287ExitGvBefore,s2Step287ExitFvAfter,s2Step287ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step287ExitGv_checked : planRowResizeLog s2Step287ExitGvBefore s2Step287ExitGvRow 159 []=
    some (s2Step287ExitGvAfter,s2Step287ExitGvOut,shrinkRow 771 s2Step287ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step287ExitGvBefore s2Step287ExitGvRow 159 s2Step287ExitGv_distinct s2Step287ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step287ExitGvRow.payload.take 159) s2Step287ExitGvRow.sign=s2Step287ExitGvOut := by decide +kernel
  have hi : s2Step287ExitGvRow.payload.drop 159=s2Step287ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step287ExitGv_retired] at result
  exact result

private theorem s2Step287ExitBank_rows : planWindowRowsLog s2Step287ExitGBefore [(s2Step287ExitGRow,126),(s2Step287ExitFRow,127),(s2Step287ExitFvRow,159),(s2Step287ExitGvRow,159)] [[],[],[],[]]=
    some (s2Step287ExitGvAfter,[s2Step287ExitGOut,s2Step287ExitFOut,s2Step287ExitFvOut,s2Step287ExitGvOut],(shrinkRow 769 s2Step287ExitGExtra ++ (shrinkRow 768 s2Step287ExitFExtra ++ (shrinkRow 770 s2Step287ExitFvExtra ++ (shrinkRow 771 s2Step287ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step287ExitGvAfter [] []=some (s2Step287ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step287ExitGvBefore s2Step287ExitGvAfter s2Step287ExitGvAfter
    s2Step287ExitGvRow s2Step287ExitGvOut 159 [] [] [] []
    (shrinkRow 771 s2Step287ExitGvExtra) ([]) s2Step287ExitGv_Incoming s2Step287ExitGv_checked h4 s2Step287ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step287ExitFvBefore s2Step287ExitFvAfter s2Step287ExitGvAfter
    s2Step287ExitFvRow s2Step287ExitFvOut 159 [] [(s2Step287ExitGvRow,159)] [[]] [s2Step287ExitGvOut]
    (shrinkRow 770 s2Step287ExitFvExtra) ((shrinkRow 771 s2Step287ExitGvExtra ++ [])) s2Step287ExitFv_Incoming s2Step287ExitFv_checked h3 s2Step287ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step287ExitFBefore s2Step287ExitFAfter s2Step287ExitGvAfter
    s2Step287ExitFRow s2Step287ExitFOut 127 [] [(s2Step287ExitFvRow,159),(s2Step287ExitGvRow,159)] [[],[]] [s2Step287ExitFvOut,s2Step287ExitGvOut]
    (shrinkRow 768 s2Step287ExitFExtra) ((shrinkRow 770 s2Step287ExitFvExtra ++ (shrinkRow 771 s2Step287ExitGvExtra ++ []))) s2Step287ExitF_Incoming s2Step287ExitF_checked h2 s2Step287ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step287ExitGBefore s2Step287ExitGAfter s2Step287ExitGvAfter
    s2Step287ExitGRow s2Step287ExitGOut 126 [] [(s2Step287ExitFRow,127),(s2Step287ExitFvRow,159),(s2Step287ExitGvRow,159)] [[],[],[]] [s2Step287ExitFOut,s2Step287ExitFvOut,s2Step287ExitGvOut]
    (shrinkRow 769 s2Step287ExitGExtra) ((shrinkRow 768 s2Step287ExitFExtra ++ (shrinkRow 770 s2Step287ExitFvExtra ++ (shrinkRow 771 s2Step287ExitGvExtra ++ [])))) s2Step287ExitG_Incoming s2Step287ExitG_checked h1 s2Step287ExitG_Outgoing
  exact h0

private theorem s2Step287ExitBank_checked : compileHmrBankResizeLog .exit s2Step287ExitGBefore ⟨s2Step287ExitFRow,s2Step287ExitGRow,s2Step287ExitFvRow,s2Step287ExitGvRow⟩ ⟨127,126,159,159⟩ [[],[],[],[]]=
    some (s2Step287ExitGvAfter,⟨s2Step287ExitFOut,s2Step287ExitGOut,s2Step287ExitFvOut,s2Step287ExitGvOut⟩,(shrinkRow 769 s2Step287ExitGExtra ++ (shrinkRow 768 s2Step287ExitFExtra ++ (shrinkRow 770 s2Step287ExitFvExtra ++ (shrinkRow 771 s2Step287ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step287ExitBank_rows]
  rfl

private theorem s2Step287Add0_apart : Disjoint s2Step287Add0Arena.live s2Step287Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step287Add0Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step287Add0_card : s2Step287Add0Arena.live.card=902 := by
  decide +kernel

private theorem s2Step287Add0_borrowed : s2Step287Add0Arena.checkBorrow (hmrHybridCount s2Step287Add0Arena s2Step287Add0B.length) s2Step287Add0Work=some s2Step287Add0During := by
  have len : s2Step287Add0Work.length=hmrHybridCount s2Step287Add0Arena s2Step287Add0B.length := by
    rw [hmrHybridCount,s2Step287Add0_card]
    decide +kernel
  have nd : s2Step287Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step287Add0Arena s2Step287Add0During s2Step287Add0Work.toFinset s2Step287Add0_bounded s2Step287Add0_apart rfl

private theorem s2Step287Add0_distinct : (830::812::800::(s2Step287Add0A++s2Step287Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step287Add0_owned : (830::812::800::(s2Step287Add0A++s2Step287Add0B)).toFinset⊆s2Step287Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step287Add0Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step287Add0_checked : compileHmrHybridCinLog s2Step287Add0Arena 812 830 800 s2Step287Add0A s2Step287Add0B s2Step287Add0Work=some s2Step287Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step287Add0Arena s2Step287Add0During 812 830 800 s2Step287Add0A s2Step287Add0B s2Step287Add0Work
    (by decide +kernel) (by decide +kernel) s2Step287Add0_distinct
    (fun q hq => s2Step287Add0_owned (List.mem_toFinset.mpr hq)) s2Step287Add0_borrowed

private theorem s2Step287Add1_apart : Disjoint s2Step287Add1Arena.live s2Step287Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step287Add1Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step287Add1_card : s2Step287Add1Arena.live.card=902 := by
  decide +kernel

private theorem s2Step287Add1_borrowed : s2Step287Add1Arena.checkBorrow (hmrHybridCount s2Step287Add1Arena s2Step287Add1B.length) s2Step287Add1Work=some s2Step287Add1During := by
  have len : s2Step287Add1Work.length=hmrHybridCount s2Step287Add1Arena s2Step287Add1B.length := by
    rw [hmrHybridCount,s2Step287Add1_card]
    decide +kernel
  have nd : s2Step287Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step287Add1Arena s2Step287Add1During s2Step287Add1Work.toFinset s2Step287Add1_bounded s2Step287Add1_apart rfl

private theorem s2Step287Add1_distinct : (830::812::800::(s2Step287Add1A++s2Step287Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step287Add1_owned : (830::812::800::(s2Step287Add1A++s2Step287Add1B)).toFinset⊆s2Step287Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step287Add1Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step287Add1_checked : compileHmrHybridCinLog s2Step287Add1Arena 812 830 800 s2Step287Add1A s2Step287Add1B s2Step287Add1Work=some s2Step287Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step287Add1Arena s2Step287Add1During 812 830 800 s2Step287Add1A s2Step287Add1B s2Step287Add1Work
    (by decide +kernel) (by decide +kernel) s2Step287Add1_distinct
    (fun q hq => s2Step287Add1_owned (List.mem_toFinset.mpr hq)) s2Step287Add1_borrowed

private theorem s2Step287F4_apart : Disjoint (s2Step287Add0A++s2Step287Add0B).toFinset (s2Step287Add1A++s2Step287Add1B).toFinset := by
  have nd : ((s2Step287Add0A++s2Step287Add0B)++(s2Step287Add1A++s2Step287Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step287F4_carry : s2Step287F4FlagArena.checkBorrow 1 [800]=some s2Step287Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step287F4FlagArena,s2Step287HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step287F4FlagArena,s2Step287HeadFvAfter,s2Step287Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step287F4_distinct : (796::812::830::800::((s2Step287Add0A++s2Step287Add1A)++(s2Step287Add0B++s2Step287Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step287F4_flag : s2Step287HeadFvAfter.checkBorrow 1 [830]=some s2Step287F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step287HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step287F4_owned : (796::812::((s2Step287Add0A++s2Step287Add1A)++(s2Step287Add0B++s2Step287Add1B))).toFinset⊆s2Step287HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step287HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step287F4_checked : compileHmrHybridF4Log s2Step287HeadFvAfter 796 812 s2Step287Add0A s2Step287Add0B s2Step287Add1A s2Step287Add1B [830] [800] s2Step287Add0Work s2Step287Add1Work=some s2Step287F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step287HeadFvAfter s2Step287F4FlagArena s2Step287Add0Arena s2Step287Add0During s2Step287Add1During 796 812
    s2Step287Add0A s2Step287Add0B s2Step287Add1A s2Step287Add1B [830] [800] s2Step287Add0Work s2Step287Add1Work
    (fun q hq => s2Step287F4_owned (List.mem_toFinset.mpr hq)) s2Step287F4_flag s2Step287F4_carry
    s2Step287F4_distinct s2Step287F4_apart s2Step287Add0_checked s2Step287Add1_checked

private theorem s2Step287Front_branch : s2Step287FrontSigmaArena.checkBorrow 1 [812]=some s2Step287HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step287FrontSigmaArena,s2Step287EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step287FrontSigmaArena,s2Step287EntryGvAfter,s2Step287HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step287Front_entry : HmrFrontEntryValid s2Step287EntryFBefore s2Step287FrontBank 128 159 ⟨127,126,159,159⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step287FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step287EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step287EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step287FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step287Front_sigma : s2Step287EntryGvAfter.checkBorrow 1 [796]=some s2Step287FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step287EntryGvAfter,arenaWires]
  · rfl

private def s2Step287HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step287HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step287HeadFBefore : Arena := s2Step287HeadGAfter

private def s2Step287HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639],768⟩

private def s2Step287HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781],770⟩

private def s2Step287HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 783, 811],769⟩

private def s2Step287HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804],771⟩

private theorem s2Step287HeadBank_incomingDistinct : ([s2Step287HeadGRow,s2Step287HeadFRow,s2Step287HeadGvRow,s2Step287HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step287HeadF_Incoming : rowsOwned s2Step287HeadFBefore [s2Step287HeadFRow,s2Step287HeadGvRow,s2Step287HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step287HeadGRow,s2Step287HeadFRow,s2Step287HeadGvRow,s2Step287HeadFvRow] 1 s2Step287HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step287HeadFBefore (fun q => (0≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step287HeadBank_outgoingOwned : rowsOwned s2Step287HeadFvAfter [s2Step287HeadGOut,s2Step287HeadFOut,s2Step287HeadGvOut,s2Step287HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step287HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step287HeadF_Outgoing : rowsOwned s2Step287HeadFvAfter [s2Step287HeadFOut,s2Step287HeadGvOut,s2Step287HeadFvOut] :=
  hmrRows_owned_drop s2Step287HeadFvAfter [s2Step287HeadGOut,s2Step287HeadFOut,s2Step287HeadGvOut,s2Step287HeadFvOut] 1 s2Step287HeadBank_outgoingOwned

private theorem s2Step287HeadF_distinct : (s2Step287HeadFRow.sign::s2Step287HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step287HeadF_owned : (s2Step287HeadFRow.sign::s2Step287HeadFRow.payload).toFinset⊆s2Step287HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step287HeadFBefore (fun q => (0≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step287HeadF_reserved : s2Step287HeadFBefore.reserve s2Step287HeadFFresh.toFinset=some s2Step287HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step287HeadFFresh,arenaWires]
  · norm_num [s2Step287HeadFBefore,s2Step287HeadGAfter,s2Step287HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step287HeadFAfter,s2Step287HeadFBefore,s2Step287HeadGAfter,s2Step287HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step287HeadF_checked : planRowResizeLog s2Step287HeadFBefore s2Step287HeadFRow 129 s2Step287HeadFFresh=
    some (s2Step287HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 790],768⟩,growRow 768 s2Step287HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step287HeadFBefore s2Step287HeadFAfter s2Step287HeadFRow 129 s2Step287HeadFFresh
    s2Step287HeadF_distinct s2Step287HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step287HeadF_reserved
  have rowEq : WindowRow.mk (s2Step287HeadFRow.payload++s2Step287HeadFFresh) s2Step287HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 790],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step287HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step287HeadFvBefore : Arena := s2Step287HeadGvAfter

private theorem s2Step287HeadFv_Incoming : rowsOwned s2Step287HeadFvBefore [s2Step287HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step287HeadGRow,s2Step287HeadFRow,s2Step287HeadGvRow,s2Step287HeadFvRow] 3 s2Step287HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step287HeadFvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step287HeadFv_Outgoing : rowsOwned s2Step287HeadFvAfter [s2Step287HeadFvOut] :=
  hmrRows_owned_drop s2Step287HeadFvAfter [s2Step287HeadGOut,s2Step287HeadFOut,s2Step287HeadGvOut,s2Step287HeadFvOut] 3 s2Step287HeadBank_outgoingOwned

private theorem s2Step287HeadFv_distinct : (s2Step287HeadFvRow.sign::s2Step287HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step287HeadFv_owned : (s2Step287HeadFvRow.sign::s2Step287HeadFvRow.payload).toFinset⊆s2Step287HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step287HeadFvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step287HeadFv_reserved : s2Step287HeadFvBefore.reserve s2Step287HeadFvFresh.toFinset=some s2Step287HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step287HeadFvFresh,arenaWires]
  · norm_num [s2Step287HeadFvBefore,s2Step287HeadGvAfter,s2Step287HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step287HeadFvAfter,s2Step287HeadFvBefore,s2Step287HeadGvAfter,s2Step287HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step287HeadFv_checked : planRowResizeLog s2Step287HeadFvBefore s2Step287HeadFvRow 160 s2Step287HeadFvFresh=
    some (s2Step287HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815],770⟩,growRow 770 s2Step287HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step287HeadFvBefore s2Step287HeadFvAfter s2Step287HeadFvRow 160 s2Step287HeadFvFresh
    s2Step287HeadFv_distinct s2Step287HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step287HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step287HeadFvRow.payload++s2Step287HeadFvFresh) s2Step287HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step287HeadG_Incoming : rowsOwned s2Step287HeadGBefore [s2Step287HeadGRow,s2Step287HeadFRow,s2Step287HeadGvRow,s2Step287HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step287HeadGRow,s2Step287HeadFRow,s2Step287HeadGvRow,s2Step287HeadFvRow] 0 s2Step287HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step287HeadGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step287HeadG_Outgoing : rowsOwned s2Step287HeadFvAfter [s2Step287HeadGOut,s2Step287HeadFOut,s2Step287HeadGvOut,s2Step287HeadFvOut] :=
  hmrRows_owned_drop s2Step287HeadFvAfter [s2Step287HeadGOut,s2Step287HeadFOut,s2Step287HeadGvOut,s2Step287HeadFvOut] 0 s2Step287HeadBank_outgoingOwned

private theorem s2Step287HeadG_distinct : (s2Step287HeadGRow.sign::s2Step287HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step287HeadG_owned : (s2Step287HeadGRow.sign::s2Step287HeadGRow.payload).toFinset⊆s2Step287HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step287HeadGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step287HeadG_reserved : s2Step287HeadGBefore.reserve s2Step287HeadGFresh.toFinset=some s2Step287HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step287HeadGFresh,arenaWires]
  · norm_num [s2Step287HeadGBefore,s2Step287HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step287HeadGAfter,s2Step287HeadGBefore,s2Step287HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step287HeadG_checked : planRowResizeLog s2Step287HeadGBefore s2Step287HeadGRow 129 s2Step287HeadGFresh=
    some (s2Step287HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 783, 811, 780],769⟩,growRow 769 s2Step287HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step287HeadGBefore s2Step287HeadGAfter s2Step287HeadGRow 129 s2Step287HeadGFresh
    s2Step287HeadG_distinct s2Step287HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step287HeadG_reserved
  have rowEq : WindowRow.mk (s2Step287HeadGRow.payload++s2Step287HeadGFresh) s2Step287HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 783, 811, 780],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step287HeadGvBefore : Arena := s2Step287HeadFAfter

private theorem s2Step287HeadGv_Incoming : rowsOwned s2Step287HeadGvBefore [s2Step287HeadGvRow,s2Step287HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step287HeadGRow,s2Step287HeadFRow,s2Step287HeadGvRow,s2Step287HeadFvRow] 2 s2Step287HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step287HeadGvBefore (fun q => (0≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step287HeadGv_Outgoing : rowsOwned s2Step287HeadFvAfter [s2Step287HeadGvOut,s2Step287HeadFvOut] :=
  hmrRows_owned_drop s2Step287HeadFvAfter [s2Step287HeadGOut,s2Step287HeadFOut,s2Step287HeadGvOut,s2Step287HeadFvOut] 2 s2Step287HeadBank_outgoingOwned

private theorem s2Step287HeadGv_distinct : (s2Step287HeadGvRow.sign::s2Step287HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step287HeadGv_owned : (s2Step287HeadGvRow.sign::s2Step287HeadGvRow.payload).toFinset⊆s2Step287HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step287HeadGvBefore (fun q => (0≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step287HeadGv_reserved : s2Step287HeadGvBefore.reserve s2Step287HeadGvFresh.toFinset=some s2Step287HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step287HeadGvFresh,arenaWires]
  · norm_num [s2Step287HeadGvBefore,s2Step287HeadFAfter,s2Step287HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step287HeadGvAfter,s2Step287HeadGvBefore,s2Step287HeadFAfter,s2Step287HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step287HeadGv_checked : planRowResizeLog s2Step287HeadGvBefore s2Step287HeadGvRow 160 s2Step287HeadGvFresh=
    some (s2Step287HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 791],771⟩,growRow 771 s2Step287HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step287HeadGvBefore s2Step287HeadGvAfter s2Step287HeadGvRow 160 s2Step287HeadGvFresh
    s2Step287HeadGv_distinct s2Step287HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step287HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step287HeadGvRow.payload++s2Step287HeadGvFresh) s2Step287HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 791],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step287HeadBank_rows : planWindowRowsLog s2Step287HeadGBefore [(s2Step287HeadGRow,129),(s2Step287HeadFRow,129),(s2Step287HeadGvRow,160),(s2Step287HeadFvRow,160)] [s2Step287HeadGFresh,s2Step287HeadFFresh,s2Step287HeadGvFresh,s2Step287HeadFvFresh]=
    some (s2Step287HeadFvAfter,[s2Step287HeadGOut,s2Step287HeadFOut,s2Step287HeadGvOut,s2Step287HeadFvOut],(growRow 769 s2Step287HeadGFresh ++ (growRow 768 s2Step287HeadFFresh ++ (growRow 771 s2Step287HeadGvFresh ++ (growRow 770 s2Step287HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step287HeadFvAfter [] []=some (s2Step287HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step287HeadFvBefore s2Step287HeadFvAfter s2Step287HeadFvAfter
    s2Step287HeadFvRow s2Step287HeadFvOut 160 s2Step287HeadFvFresh [] [] []
    (growRow 770 s2Step287HeadFvFresh) ([]) s2Step287HeadFv_Incoming s2Step287HeadFv_checked h4 s2Step287HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step287HeadGvBefore s2Step287HeadGvAfter s2Step287HeadFvAfter
    s2Step287HeadGvRow s2Step287HeadGvOut 160 s2Step287HeadGvFresh [(s2Step287HeadFvRow,160)] [s2Step287HeadFvFresh] [s2Step287HeadFvOut]
    (growRow 771 s2Step287HeadGvFresh) ((growRow 770 s2Step287HeadFvFresh ++ [])) s2Step287HeadGv_Incoming s2Step287HeadGv_checked h3 s2Step287HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step287HeadFBefore s2Step287HeadFAfter s2Step287HeadFvAfter
    s2Step287HeadFRow s2Step287HeadFOut 129 s2Step287HeadFFresh [(s2Step287HeadGvRow,160),(s2Step287HeadFvRow,160)] [s2Step287HeadGvFresh,s2Step287HeadFvFresh] [s2Step287HeadGvOut,s2Step287HeadFvOut]
    (growRow 768 s2Step287HeadFFresh) ((growRow 771 s2Step287HeadGvFresh ++ (growRow 770 s2Step287HeadFvFresh ++ []))) s2Step287HeadF_Incoming s2Step287HeadF_checked h2 s2Step287HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step287HeadGBefore s2Step287HeadGAfter s2Step287HeadFvAfter
    s2Step287HeadGRow s2Step287HeadGOut 129 s2Step287HeadGFresh [(s2Step287HeadFRow,129),(s2Step287HeadGvRow,160),(s2Step287HeadFvRow,160)] [s2Step287HeadFFresh,s2Step287HeadGvFresh,s2Step287HeadFvFresh] [s2Step287HeadFOut,s2Step287HeadGvOut,s2Step287HeadFvOut]
    (growRow 769 s2Step287HeadGFresh) ((growRow 768 s2Step287HeadFFresh ++ (growRow 771 s2Step287HeadGvFresh ++ (growRow 770 s2Step287HeadFvFresh ++ [])))) s2Step287HeadG_Incoming s2Step287HeadG_checked h1 s2Step287HeadG_Outgoing
  exact h0

private theorem s2Step287HeadBank_checked : compileHmrBankResizeLog .headroom s2Step287HeadGBefore ⟨s2Step287HeadFRow,s2Step287HeadGRow,s2Step287HeadFvRow,s2Step287HeadGvRow⟩ ⟨129,129,160,160⟩ [s2Step287HeadGFresh,s2Step287HeadFFresh,s2Step287HeadGvFresh,s2Step287HeadFvFresh]=
    some (s2Step287HeadFvAfter,⟨s2Step287HeadFOut,s2Step287HeadGOut,s2Step287HeadFvOut,s2Step287HeadGvOut⟩,(growRow 769 s2Step287HeadGFresh ++ (growRow 768 s2Step287HeadFFresh ++ (growRow 771 s2Step287HeadGvFresh ++ (growRow 770 s2Step287HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step287HeadBank_rows]
  rfl

private theorem s2Step287Front_checked : compileHmrSourceFrontLog s2Step287EntryFBefore s2Step287FrontBank 128 159 ⟨127,126,159,159⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step287FrontLog=some s2Step287FrontPlan := by
  have pairEq : s2Step287FrontPair=⟨s2Step287HeadFRow,s2Step287HeadGRow,s2Step287HeadFvRow,s2Step287HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step287FrontHead=⟨s2Step287ExitFRow,s2Step287ExitGRow,s2Step287ExitFvRow,s2Step287ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step287Add0A=s2Step287FrontHead.f.wires := by decide +kernel
  have gEq : s2Step287Add0B=s2Step287FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step287Add1A=s2Step287FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step287Add1B=s2Step287FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step287EntryFBefore s2Step287FrontBank 128 159 ⟨127,126,159,159⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step287FrontLog s2Step287FrontPlan
  · exact s2Step287Front_entry
  · exact s2Step287EntryBank_checked
  · exact s2Step287Front_sigma
  · rfl
  · exact s2Step287Front_branch
  · rfl
  · simpa only [s2Step287FrontPlan,pairEq] using s2Step287HeadBank_checked
  · simpa only [s2Step287FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step287F4_checked
  · exact s2Step287Counter_checked
  · rfl
  · simpa only [s2Step287FrontPlan,headEq] using s2Step287ExitBank_checked

private theorem s2Step287Complete_explicit_checked : compileHmrEarlyStepLog s2Step287EntryFBefore s2Step287FrontBank 128 159 ⟨127,126,159,159⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 54 s2Step287CompleteLog=some s2Step287CompletePlan := by
  let Q := s2Step287EarlyControlPlan
  have hq := s2Step287EarlyControl_plan_checked
  have fv1 : s2Step287CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step287CompleteOut.fv.payload[2]?.getD s2Step287CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step287CompleteOut.fv.payload[3]?.getD s2Step287CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step287CompleteOut.fv.payload[4]?.getD s2Step287CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step287EntryFBefore s2Step287EarlyControlArena s2Step287FrontBank 128 159 ⟨127,126,159,159⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 54 s2Step287CompleteLog s2Step287FrontPlan Q
    s2Step287Front_checked s2Step287Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step287Complete_owned s2Step287Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step287EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 777 796 s2Step287CompleteOut.fv.second (s2Step287CompleteOut.fv.payload[2]?.getD s2Step287CompleteOut.fv.sign) (s2Step287CompleteOut.fv.payload[3]?.getD s2Step287CompleteOut.fv.sign) (s2Step287CompleteOut.fv.payload[4]?.getD s2Step287CompleteOut.fv.sign) 812 54 s2Step287EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep287Arena : Arena := s2Step287EntryFBefore
def s2PrivateStep287Bank : WindowBank := s2Step287FrontBank
def s2PrivateStep287Spec : HmrSourceWalkStepLog := ⟨128,159,⟨127,126,159,159⟩,54,.early s2Step287CompleteLog⟩
def s2PrivateStep287Plan : HmrSourceStepPlan := .early s2Step287CompletePlan
theorem s2PrivateStep287_source : s2PrivateStep287Spec=s2ObservedLogs272[15] := rfl
theorem s2PrivateStep287_checked : compileHmrSourceStepLog s2PrivateStep287Arena s2PrivateStep287Bank
    s2PrivateStep287Spec.fgWidth s2PrivateStep287Spec.vWidth s2PrivateStep287Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905]
    6 498 287 s2PrivateStep287Spec.need none s2PrivateStep287Spec.log=some s2PrivateStep287Plan := by
  change compileHmrSourceStepLog s2Step287EntryFBefore s2Step287FrontBank 128 159 ⟨127,126,159,159⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 6 498 287 54 none (.early s2Step287CompleteLog)=some (.early s2Step287CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 287<498)]
  rw [s2Step287Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
