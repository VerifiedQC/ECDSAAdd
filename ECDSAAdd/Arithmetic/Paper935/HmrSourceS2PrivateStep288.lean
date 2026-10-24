import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep286
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

private def s2Step288CompleteMoves : List (Wire × Wire) := [(849,638)]

private def s2Step288EarlyControlLog : HmrEarlyControlLog := ⟨[849, 790, 783, 815, 812],[791],[811],[780, 830, 800, 894, 896, 901],[]⟩

private def s2Step288FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [812], [], []],[[791], [815], [790], [783]],[[], [], [], []]⟩,[796],[808],[811],[780],[830, 800, 894, 896, 901, 903, 904, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[830, 800, 894, 896, 901, 903, 904, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[811, 780, 830, 800]⟩

private def s2Step288CompleteLog : HmrEarlyStepLog := ⟨s2Step288FrontLog,s2Step288CompleteMoves,s2Step288EarlyControlLog⟩

private def s2Step288ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637],768⟩

private def s2Step288ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781],770⟩

private def s2Step288ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125],769⟩

private def s2Step288ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804],771⟩

private def s2Step288FrontOut : WindowBank := ⟨s2Step288ExitFOut,s2Step288ExitGOut,s2Step288ExitFvOut,s2Step288ExitGvOut⟩

private def s2Step288CompleteOut : WindowBank := s2Step288FrontOut.repacked s2Step288CompleteMoves

private def s2Step288EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step288EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step288EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step288EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step288EarlyControlPositiveArena,[791],s2Step288EarlyControlEqualityArena,[811],⟨⟨796,false⟩,[⟨⟨791,false⟩,811⟩]⟩⟩

private def s2Step288EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step288EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step288EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step288EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step288EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step288EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step288EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,849⟩,⟨⟨774,false⟩,790⟩,⟨⟨775,false⟩,783⟩,⟨⟨776,false⟩,815⟩,⟨⟨777,false⟩,812⟩]⟩

private def s2Step288EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step288EarlyControlZeroArena,s2Step288EarlyControlZeroPlan,s2Step288EarlyControlClassPlan,s2Step288EarlyControlFlagArena,s2Step288EarlyControlFittedArena,s2Step288EarlyControlHistoryArena,s2Step288EarlyControlSigmaArena,s2Step288EarlyControlOutputArena,s2Step288EarlyControlLog⟩

private def s2Step288CounterWork : List Wire := [811, 780, 830, 800]

private theorem s2Step288Counter_bounded : s2Step288CounterWork.toFinset⊆arenaWires := by norm_num [s2Step288CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step288HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step288CounterDuring : Arena := ⟨s2Step288HeadFvAfter.live∪s2Step288CounterWork.toFinset,Finset.union_subset s2Step288HeadFvAfter.bounded s2Step288Counter_bounded⟩

private def s2Step288EntryFFresh : List Wire := []

private def s2Step288EntryFvFresh : List Wire := []

private def s2Step288EntryGFresh : List Wire := [812]

private def s2Step288EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step288EntryGvAfter : Arena := s2Step288EntryGAfter

private def s2Step288EntryGvFresh : List Wire := []

private def s2Step288ExitFExtra : List Wire := [638, 815]

private def s2Step288ExitFvExtra : List Wire := [783]

private def s2Step288ExitGExtra : List Wire := [812, 791]

private def s2Step288ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<638) ∨ (639≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step288ExitGvExtra : List Wire := [790]

private def s2Step288Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step288Add0Work : List Wire := [830, 800, 894, 896, 901, 903, 904, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step288Add0_bounded : s2Step288Add0Work.toFinset⊆arenaWires := by
  have h : s2Step288Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step288Add0During : Arena := ⟨s2Step288Add0Arena.live∪s2Step288Add0Work.toFinset,Finset.union_subset s2Step288Add0Arena.bounded s2Step288Add0_bounded⟩

private def s2Step288Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step288Add1Work : List Wire := [830, 800, 894, 896, 901, 903, 904, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step288Add1_bounded : s2Step288Add1Work.toFinset⊆arenaWires := by
  have h : s2Step288Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step288Add1During : Arena := ⟨s2Step288Add1Arena.live∪s2Step288Add1Work.toFinset,Finset.union_subset s2Step288Add1Arena.bounded s2Step288Add1_bounded⟩

private def s2Step288F4FlagArena : Arena := ⟨s2Step288HeadFvAfter.live∪{811},Finset.union_subset s2Step288HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step288F4Plan : HmrHybridF4Plan := ⟨s2Step288F4FlagArena,[811],s2Step288Add0Arena,[780],s2Step288Add0During,s2Step288Add0Work,s2Step288Add1During,s2Step288Add1Work⟩

private def s2Step288HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 815],768⟩

private def s2Step288HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 783],770⟩

private def s2Step288HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 812, 791],769⟩

private def s2Step288HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 790],771⟩

private def s2Step288FrontHead : WindowBank := ⟨s2Step288HeadFOut,s2Step288HeadGOut,s2Step288HeadFvOut,s2Step288HeadGvOut⟩

private def s2Step288EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638],768⟩

private def s2Step288EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781],770⟩

private def s2Step288EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 812],769⟩

private def s2Step288EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804],771⟩

private def s2Step288FrontPair : WindowBank := ⟨s2Step288EntryFOut,s2Step288EntryGOut,s2Step288EntryFvOut,s2Step288EntryGvOut⟩

private def s2Step288FrontSigmaArena : Arena := ⟨s2Step288EntryGvAfter.live∪{796},Finset.union_subset s2Step288EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step288HeadFFresh : List Wire := [815]

private def s2Step288HeadFvFresh : List Wire := [783]

private def s2Step288HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step288HeadGFresh : List Wire := [791]

private def s2Step288HeadGvFresh : List Wire := [790]

private def s2Step288FrontPlan : HmrSourceFront := ⟨s2Step288EntryGvAfter,s2Step288FrontPair,(growRow 768 s2Step288EntryFFresh ++ (growRow 769 s2Step288EntryGFresh ++ (growRow 770 s2Step288EntryFvFresh ++ (growRow 771 s2Step288EntryGvFresh ++ [])))),s2Step288FrontSigmaArena,[796],s2Step288HeadGBefore,[808],
  s2Step288HeadFvAfter,s2Step288FrontHead,(growRow 769 s2Step288HeadGFresh ++ (growRow 768 s2Step288HeadFFresh ++ (growRow 771 s2Step288HeadGvFresh ++ (growRow 770 s2Step288HeadFvFresh ++ [])))),s2Step288F4Plan,s2Step288CounterDuring,s2Step288CounterWork,s2Step288ExitGvAfter,s2Step288FrontOut,(shrinkRow 769 s2Step288ExitGExtra ++ (shrinkRow 768 s2Step288ExitFExtra ++ (shrinkRow 770 s2Step288ExitFvExtra ++ (shrinkRow 771 s2Step288ExitGvExtra ++ []))))⟩

private def s2Step288CompletePlan : HmrEarlyStepPlan := ⟨s2Step288FrontPlan,s2Step288EarlyControlArena,s2Step288EarlyControlPlan,s2Step288CompleteMoves⟩

private theorem s2Step288Complete_apart : List.Disjoint (s2Step288CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [796, 808, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] := by
  have nd : ((s2Step288CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[796, 808, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step288Complete_owned : (s2Step288CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step288EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step288EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private def s2Step288CompleteMoveArena : Arena := ⟨s2Step288ExitGvAfter.live∪{638},Finset.union_subset s2Step288ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step288Complete_repack : s2Step288ExitGvAfter.checkRepack s2Step288CompleteMoves=some s2Step288EarlyControlArena := by
  have owned : 849∈s2Step288ExitGvAfter.live := by norm_num [s2Step288ExitGvAfter,arenaWires]
  have reserve : s2Step288ExitGvAfter.reserve {638}=some s2Step288CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step288ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step288CompleteMoveArena.retireSet {849}=s2Step288EarlyControlArena := by
    unfold Arena.retireSet s2Step288EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step288CompleteMoveArena,s2Step288ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step288CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step288CompleteMoveArena.retireSet {849}).checkRepack []=some s2Step288EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step288EarlyControl_branchOwned : ([808] : List Wire).toFinset⊆s2Step288EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step288EarlyControlSigmaArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step288EarlyControl_branch : compileHmrBranchRetirement s2Step288EarlyControlSigmaArena 808=some s2Step288EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step288EarlyControl_branchOwned
  · ext q
    simp [s2Step288EarlyControlOutputArena,s2Step288EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step288EarlyControl_classEqualityBorrow : s2Step288EarlyControlPositiveArena.checkBorrow (([796, 791] : List Wire).length-1) s2Step288EarlyControlLog.classWork=some s2Step288EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step288EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step288EarlyControlPositiveArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step288EarlyControlEqualityArena,s2Step288EarlyControlPositiveArena,s2Step288EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step288EarlyControl_classEqualityOwned : ([796, 791] : List Wire).toFinset⊆s2Step288EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step288EarlyControlPositiveArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step288EarlyControl_classEquality : compileHmrEqualityLog s2Step288EarlyControlPositiveArena [796, 791] 0 s2Step288EarlyControlLog.classWork=some (s2Step288EarlyControlEqualityArena,s2Step288EarlyControlLog.classWork,s2Step288EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step288EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step288EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step288EarlyControl_classOwned : ([777, 812, 796] : List Wire).toFinset⊆s2Step288EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step288EarlyControlZeroArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step288EarlyControl_positiveBorrow : s2Step288EarlyControlZeroArena.checkBorrow (1) s2Step288EarlyControlLog.positiveWork=some s2Step288EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step288EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step288EarlyControlZeroArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step288EarlyControlPositiveArena,s2Step288EarlyControlZeroArena,s2Step288EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step288EarlyControl_class : compileHmrSourceClassLog s2Step288EarlyControlZeroArena false 777 s2Step288EarlyControlZeroPlan.top 0 796 s2Step288EarlyControlLog.positiveWork s2Step288EarlyControlLog.classWork=some s2Step288EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step288EarlyControlClassPlan s2Step288EarlyControlZeroArena false 777 s2Step288EarlyControlZeroPlan.top 0 796
  constructor
  · decide +kernel
  · exact s2Step288EarlyControl_classOwned
  · exact s2Step288EarlyControl_positiveBorrow
  · exact s2Step288EarlyControl_classEquality

private theorem s2Step288EarlyControl_entryRecordOwned : ([808, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).toFinset⊆s2Step288EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step288EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step288EarlyControl_entrySigmaOwned : ([796, 254] : List Wire).toFinset⊆s2Step288EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step288EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step288EarlyControl_fitBorrow : s2Step288EarlyControlFlagArena.checkBorrow ((54-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).length)) s2Step288EarlyControlLog.recordFresh=some s2Step288EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step288EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step288EarlyControlFlagArena (fun q => (0≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step288EarlyControlFittedArena,s2Step288EarlyControlFlagArena,s2Step288EarlyControlLog,arenaWires]

private theorem s2Step288EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).toFinset⊆s2Step288EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step288EarlyControlFlagArena (fun q => (0≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step288EarlyControl_fit : compileHmrRecordGrowLog s2Step288EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 54 s2Step288EarlyControlLog.recordFresh=some s2Step288EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step288EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step288EarlyControl_fitBorrow

private theorem s2Step288EarlyControl_flagsBorrow : s2Step288EarlyControlEqualityArena.checkBorrow (6) s2Step288EarlyControlLog.flagWork=some s2Step288EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step288EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step288EarlyControlEqualityArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step288EarlyControlFlagArena,s2Step288EarlyControlEqualityArena,s2Step288EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step288EarlyControl_flagsOwned : ([811, 253, 252, 251] : List Wire).toFinset⊆s2Step288EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step288EarlyControlEqualityArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step288EarlyControl_flags : compileHmrFlagsLog s2Step288EarlyControlClassPlan.equalityArena s2Step288EarlyControlClassPlan.equality.top 253 252 251 s2Step288EarlyControlLog.flagWork=some s2Step288EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step288EarlyControl_flagsOwned⟩
  · exact s2Step288EarlyControl_flagsBorrow

private theorem s2Step288EarlyControl_historyBorrow : s2Step288EarlyControlArena.checkBorrow ((54-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).length)) s2Step288EarlyControlLog.recordFresh=some s2Step288EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step288EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step288EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step288EarlyControlHistoryArena,s2Step288EarlyControlArena,s2Step288EarlyControlLog,arenaWires]

private theorem s2Step288EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).toFinset⊆s2Step288EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step288EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step288EarlyControl_history : compileHmrRecordGrowLog s2Step288EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 54 s2Step288EarlyControlLog.recordFresh=some s2Step288EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step288EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step288EarlyControl_historyBorrow

private theorem s2Step288EarlyControl_sigmaOwned : ([254, 796] : List Wire).toFinset⊆s2Step288EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step288EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step288EarlyControl_sigmaReleaseOwned : ([796] : List Wire).toFinset⊆s2Step288EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step288EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step288EarlyControl_sigmaRelease : s2Step288EarlyControlHistoryArena.release {796} (fun _ => false)=some s2Step288EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step288EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step288EarlyControlSigmaArena,s2Step288EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step288EarlyControl_sigma : compileHmrSigmaDropLog s2Step288EarlyControlHistoryArena false 0 0 254 796 []=some s2Step288EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step288EarlyControl_sigmaOwned⟩
  · exact s2Step288EarlyControl_sigmaRelease

private theorem s2Step288EarlyControl_zeroBorrow : s2Step288EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step288EarlyControlLog.zeroWork=some s2Step288EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step288EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step288EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step288EarlyControlZeroArena,s2Step288EarlyControlArena,s2Step288EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step288EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step288EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step288EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step288EarlyControl_zero : compileHmrEqualityLog s2Step288EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step288EarlyControlLog.zeroWork=some (s2Step288EarlyControlZeroArena,s2Step288EarlyControlLog.zeroWork,s2Step288EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step288EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step288EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step288EarlyControl_logged : s2Step288EarlyControlPlan.Logged s2Step288EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 777 796 254 253 252 251 808 54 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step288EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step288EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step288EarlyControl_zero
  · exact s2Step288EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step288EarlyControl_flags
  · exact s2Step288EarlyControl_fit
  · exact s2Step288EarlyControl_history
  · exact s2Step288EarlyControl_sigma
  · exact s2Step288EarlyControl_branch

private theorem s2Step288EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step288EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 777 796 254 253 252 251 808 54 s2Step288EarlyControlLog=some s2Step288EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step288EarlyControlPlan s2Step288EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 777 796 254 253 252 251 808 54 s2Step288EarlyControl_logged

private def s2Step288EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step288EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638],768⟩

private def s2Step288EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781],770⟩

private def s2Step288EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125],769⟩

private def s2Step288EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804],771⟩

private def s2Step288FrontBank : WindowBank := ⟨s2Step288EntryFRow,s2Step288EntryGRow,s2Step288EntryFvRow,s2Step288EntryGvRow⟩

private def s2Step288Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 815, 768]

private def s2Step288Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 812, 791, 769]

private def s2Step288Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 783, 770]

private def s2Step288Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 790, 771]

private theorem s2Step288Counter_apart : Disjoint s2Step288HeadFvAfter.live s2Step288CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step288HeadFvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step288Counter_borrowed : s2Step288HeadFvAfter.checkBorrow 4 s2Step288CounterWork=some s2Step288CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step288HeadFvAfter s2Step288CounterDuring s2Step288CounterWork.toFinset s2Step288Counter_bounded s2Step288Counter_apart rfl

private theorem s2Step288Counter_owned : (796::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step288HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step288HeadFvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step288Counter_checked : compileHmrCounterStepLog s2Step288HeadFvAfter true 796 [772, 773, 774, 775, 776, 777] s2Step288CounterWork=some s2Step288CounterDuring := by
  have owned : ∀q∈796::[772, 773, 774, 775, 776, 777],q∈s2Step288HeadFvAfter.live := fun q hq => s2Step288Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step288Counter_borrowed

private def s2Step288EntryFAfter : Arena := s2Step288EntryFBefore

private theorem s2Step288EntryBank_incomingDistinct : ([s2Step288EntryFRow,s2Step288EntryGRow,s2Step288EntryFvRow,s2Step288EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step288EntryF_Incoming : rowsOwned s2Step288EntryFBefore [s2Step288EntryFRow,s2Step288EntryGRow,s2Step288EntryFvRow,s2Step288EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step288EntryFRow,s2Step288EntryGRow,s2Step288EntryFvRow,s2Step288EntryGvRow] 0 s2Step288EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step288EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step288EntryBank_outgoingOwned : rowsOwned s2Step288EntryGvAfter [s2Step288EntryFOut,s2Step288EntryGOut,s2Step288EntryFvOut,s2Step288EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step288EntryGvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step288EntryF_Outgoing : rowsOwned s2Step288EntryGvAfter [s2Step288EntryFOut,s2Step288EntryGOut,s2Step288EntryFvOut,s2Step288EntryGvOut] :=
  hmrRows_owned_drop s2Step288EntryGvAfter [s2Step288EntryFOut,s2Step288EntryGOut,s2Step288EntryFvOut,s2Step288EntryGvOut] 0 s2Step288EntryBank_outgoingOwned

private theorem s2Step288EntryF_distinct : (s2Step288EntryFRow.sign::s2Step288EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step288EntryF_owned : (s2Step288EntryFRow.sign::s2Step288EntryFRow.payload).toFinset⊆s2Step288EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step288EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step288EntryF_reserved : s2Step288EntryFBefore.reserve s2Step288EntryFFresh.toFinset=some s2Step288EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step288EntryFFresh,arenaWires]
  · norm_num [s2Step288EntryFBefore,s2Step288EntryFFresh,arenaWires]
  · simp only [s2Step288EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step288EntryF_checked : planRowResizeLog s2Step288EntryFBefore s2Step288EntryFRow 127 s2Step288EntryFFresh=
    some (s2Step288EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638],768⟩,growRow 768 s2Step288EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step288EntryFBefore s2Step288EntryFAfter s2Step288EntryFRow 127 s2Step288EntryFFresh
    s2Step288EntryF_distinct s2Step288EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step288EntryF_reserved
  have rowEq : WindowRow.mk (s2Step288EntryFRow.payload++s2Step288EntryFFresh) s2Step288EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step288EntryFvAfter : Arena := s2Step288EntryGAfter

private def s2Step288EntryFvBefore : Arena := s2Step288EntryGAfter

private theorem s2Step288EntryFv_Incoming : rowsOwned s2Step288EntryFvBefore [s2Step288EntryFvRow,s2Step288EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step288EntryFRow,s2Step288EntryGRow,s2Step288EntryFvRow,s2Step288EntryGvRow] 2 s2Step288EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step288EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step288EntryFv_Outgoing : rowsOwned s2Step288EntryGvAfter [s2Step288EntryFvOut,s2Step288EntryGvOut] :=
  hmrRows_owned_drop s2Step288EntryGvAfter [s2Step288EntryFOut,s2Step288EntryGOut,s2Step288EntryFvOut,s2Step288EntryGvOut] 2 s2Step288EntryBank_outgoingOwned

private theorem s2Step288EntryFv_distinct : (s2Step288EntryFvRow.sign::s2Step288EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step288EntryFv_owned : (s2Step288EntryFvRow.sign::s2Step288EntryFvRow.payload).toFinset⊆s2Step288EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step288EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step288EntryFv_reserved : s2Step288EntryFvBefore.reserve s2Step288EntryFvFresh.toFinset=some s2Step288EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step288EntryFvFresh,arenaWires]
  · norm_num [s2Step288EntryFvBefore,s2Step288EntryGAfter,s2Step288EntryFvFresh,arenaWires]
  · simp only [s2Step288EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step288EntryFv_checked : planRowResizeLog s2Step288EntryFvBefore s2Step288EntryFvRow 159 s2Step288EntryFvFresh=
    some (s2Step288EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781],770⟩,growRow 770 s2Step288EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step288EntryFvBefore s2Step288EntryFvAfter s2Step288EntryFvRow 159 s2Step288EntryFvFresh
    s2Step288EntryFv_distinct s2Step288EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step288EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step288EntryFvRow.payload++s2Step288EntryFvFresh) s2Step288EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step288EntryGBefore : Arena := s2Step288EntryFBefore

private theorem s2Step288EntryG_Incoming : rowsOwned s2Step288EntryGBefore [s2Step288EntryGRow,s2Step288EntryFvRow,s2Step288EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step288EntryFRow,s2Step288EntryGRow,s2Step288EntryFvRow,s2Step288EntryGvRow] 1 s2Step288EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step288EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step288EntryG_Outgoing : rowsOwned s2Step288EntryGvAfter [s2Step288EntryGOut,s2Step288EntryFvOut,s2Step288EntryGvOut] :=
  hmrRows_owned_drop s2Step288EntryGvAfter [s2Step288EntryFOut,s2Step288EntryGOut,s2Step288EntryFvOut,s2Step288EntryGvOut] 1 s2Step288EntryBank_outgoingOwned

private theorem s2Step288EntryG_distinct : (s2Step288EntryGRow.sign::s2Step288EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step288EntryG_owned : (s2Step288EntryGRow.sign::s2Step288EntryGRow.payload).toFinset⊆s2Step288EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step288EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step288EntryG_reserved : s2Step288EntryGBefore.reserve s2Step288EntryGFresh.toFinset=some s2Step288EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step288EntryGFresh,arenaWires]
  · norm_num [s2Step288EntryGBefore,s2Step288EntryFBefore,s2Step288EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step288EntryGAfter,s2Step288EntryGBefore,s2Step288EntryFBefore,s2Step288EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step288EntryG_checked : planRowResizeLog s2Step288EntryGBefore s2Step288EntryGRow 127 s2Step288EntryGFresh=
    some (s2Step288EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 812],769⟩,growRow 769 s2Step288EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step288EntryGBefore s2Step288EntryGAfter s2Step288EntryGRow 127 s2Step288EntryGFresh
    s2Step288EntryG_distinct s2Step288EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step288EntryG_reserved
  have rowEq : WindowRow.mk (s2Step288EntryGRow.payload++s2Step288EntryGFresh) s2Step288EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 812],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step288EntryGvBefore : Arena := s2Step288EntryGAfter

private theorem s2Step288EntryGv_Incoming : rowsOwned s2Step288EntryGvBefore [s2Step288EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step288EntryFRow,s2Step288EntryGRow,s2Step288EntryFvRow,s2Step288EntryGvRow] 3 s2Step288EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step288EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step288EntryGv_Outgoing : rowsOwned s2Step288EntryGvAfter [s2Step288EntryGvOut] :=
  hmrRows_owned_drop s2Step288EntryGvAfter [s2Step288EntryFOut,s2Step288EntryGOut,s2Step288EntryFvOut,s2Step288EntryGvOut] 3 s2Step288EntryBank_outgoingOwned

private theorem s2Step288EntryGv_distinct : (s2Step288EntryGvRow.sign::s2Step288EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step288EntryGv_owned : (s2Step288EntryGvRow.sign::s2Step288EntryGvRow.payload).toFinset⊆s2Step288EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step288EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step288EntryGv_reserved : s2Step288EntryGvBefore.reserve s2Step288EntryGvFresh.toFinset=some s2Step288EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step288EntryGvFresh,arenaWires]
  · norm_num [s2Step288EntryGvBefore,s2Step288EntryGAfter,s2Step288EntryGvFresh,arenaWires]
  · simp only [s2Step288EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step288EntryGv_checked : planRowResizeLog s2Step288EntryGvBefore s2Step288EntryGvRow 159 s2Step288EntryGvFresh=
    some (s2Step288EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804],771⟩,growRow 771 s2Step288EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step288EntryGvBefore s2Step288EntryGvAfter s2Step288EntryGvRow 159 s2Step288EntryGvFresh
    s2Step288EntryGv_distinct s2Step288EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step288EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step288EntryGvRow.payload++s2Step288EntryGvFresh) s2Step288EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step288EntryBank_rows : planWindowRowsLog s2Step288EntryFBefore [(s2Step288EntryFRow,127),(s2Step288EntryGRow,127),(s2Step288EntryFvRow,159),(s2Step288EntryGvRow,159)] [s2Step288EntryFFresh,s2Step288EntryGFresh,s2Step288EntryFvFresh,s2Step288EntryGvFresh]=
    some (s2Step288EntryGvAfter,[s2Step288EntryFOut,s2Step288EntryGOut,s2Step288EntryFvOut,s2Step288EntryGvOut],(growRow 768 s2Step288EntryFFresh ++ (growRow 769 s2Step288EntryGFresh ++ (growRow 770 s2Step288EntryFvFresh ++ (growRow 771 s2Step288EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step288EntryGvAfter [] []=some (s2Step288EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step288EntryGvBefore s2Step288EntryGvAfter s2Step288EntryGvAfter
    s2Step288EntryGvRow s2Step288EntryGvOut 159 s2Step288EntryGvFresh [] [] []
    (growRow 771 s2Step288EntryGvFresh) ([]) s2Step288EntryGv_Incoming s2Step288EntryGv_checked h4 s2Step288EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step288EntryFvBefore s2Step288EntryFvAfter s2Step288EntryGvAfter
    s2Step288EntryFvRow s2Step288EntryFvOut 159 s2Step288EntryFvFresh [(s2Step288EntryGvRow,159)] [s2Step288EntryGvFresh] [s2Step288EntryGvOut]
    (growRow 770 s2Step288EntryFvFresh) ((growRow 771 s2Step288EntryGvFresh ++ [])) s2Step288EntryFv_Incoming s2Step288EntryFv_checked h3 s2Step288EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step288EntryGBefore s2Step288EntryGAfter s2Step288EntryGvAfter
    s2Step288EntryGRow s2Step288EntryGOut 127 s2Step288EntryGFresh [(s2Step288EntryFvRow,159),(s2Step288EntryGvRow,159)] [s2Step288EntryFvFresh,s2Step288EntryGvFresh] [s2Step288EntryFvOut,s2Step288EntryGvOut]
    (growRow 769 s2Step288EntryGFresh) ((growRow 770 s2Step288EntryFvFresh ++ (growRow 771 s2Step288EntryGvFresh ++ []))) s2Step288EntryG_Incoming s2Step288EntryG_checked h2 s2Step288EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step288EntryFBefore s2Step288EntryFAfter s2Step288EntryGvAfter
    s2Step288EntryFRow s2Step288EntryFOut 127 s2Step288EntryFFresh [(s2Step288EntryGRow,127),(s2Step288EntryFvRow,159),(s2Step288EntryGvRow,159)] [s2Step288EntryGFresh,s2Step288EntryFvFresh,s2Step288EntryGvFresh] [s2Step288EntryGOut,s2Step288EntryFvOut,s2Step288EntryGvOut]
    (growRow 768 s2Step288EntryFFresh) ((growRow 769 s2Step288EntryGFresh ++ (growRow 770 s2Step288EntryFvFresh ++ (growRow 771 s2Step288EntryGvFresh ++ [])))) s2Step288EntryF_Incoming s2Step288EntryF_checked h1 s2Step288EntryF_Outgoing
  exact h0

private theorem s2Step288EntryBank_checked : compileHmrBankResizeLog .entry s2Step288EntryFBefore ⟨s2Step288EntryFRow,s2Step288EntryGRow,s2Step288EntryFvRow,s2Step288EntryGvRow⟩ ⟨127,127,159,159⟩ [s2Step288EntryFFresh,s2Step288EntryGFresh,s2Step288EntryFvFresh,s2Step288EntryGvFresh]=
    some (s2Step288EntryGvAfter,⟨s2Step288EntryFOut,s2Step288EntryGOut,s2Step288EntryFvOut,s2Step288EntryGvOut⟩,(growRow 768 s2Step288EntryFFresh ++ (growRow 769 s2Step288EntryGFresh ++ (growRow 770 s2Step288EntryFvFresh ++ (growRow 771 s2Step288EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step288EntryBank_rows]
  rfl

private def s2Step288ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<638) ∨ (639≤q ∧ q<780) ∨ (781≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step288ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step288ExitFBefore : Arena := s2Step288ExitGAfter

private def s2Step288ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 815],768⟩

private def s2Step288ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 783],770⟩

private def s2Step288ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 812, 791],769⟩

private def s2Step288ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 790],771⟩

private theorem s2Step288ExitBank_incomingDistinct : ([s2Step288ExitGRow,s2Step288ExitFRow,s2Step288ExitFvRow,s2Step288ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step288ExitF_Incoming : rowsOwned s2Step288ExitFBefore [s2Step288ExitFRow,s2Step288ExitFvRow,s2Step288ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step288ExitGRow,s2Step288ExitFRow,s2Step288ExitFvRow,s2Step288ExitGvRow] 1 s2Step288ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step288ExitFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step288ExitBank_outgoingOwned : rowsOwned s2Step288ExitGvAfter [s2Step288ExitGOut,s2Step288ExitFOut,s2Step288ExitFvOut,s2Step288ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step288ExitGvAfter (fun q => (0≤q ∧ q<638) ∨ (639≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step288ExitF_Outgoing : rowsOwned s2Step288ExitGvAfter [s2Step288ExitFOut,s2Step288ExitFvOut,s2Step288ExitGvOut] :=
  hmrRows_owned_drop s2Step288ExitGvAfter [s2Step288ExitGOut,s2Step288ExitFOut,s2Step288ExitFvOut,s2Step288ExitGvOut] 1 s2Step288ExitBank_outgoingOwned

private theorem s2Step288ExitF_distinct : (s2Step288ExitFRow.sign::s2Step288ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step288ExitF_owned : (s2Step288ExitFRow.sign::s2Step288ExitFRow.payload).toFinset⊆s2Step288ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step288ExitFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step288ExitF_retired : s2Step288ExitFBefore.retireSet s2Step288ExitFExtra.toFinset=s2Step288ExitFAfter := by
  unfold Arena.retireSet s2Step288ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step288ExitFBefore,s2Step288ExitGAfter,s2Step288ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step288ExitF_checked : planRowResizeLog s2Step288ExitFBefore s2Step288ExitFRow 126 []=
    some (s2Step288ExitFAfter,s2Step288ExitFOut,shrinkRow 768 s2Step288ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step288ExitFBefore s2Step288ExitFRow 126 s2Step288ExitF_distinct s2Step288ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step288ExitFRow.payload.take 126) s2Step288ExitFRow.sign=s2Step288ExitFOut := by decide +kernel
  have hi : s2Step288ExitFRow.payload.drop 126=s2Step288ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step288ExitF_retired] at result
  exact result

private def s2Step288ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<638) ∨ (639≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step288ExitFvBefore : Arena := s2Step288ExitFAfter

private theorem s2Step288ExitFv_Incoming : rowsOwned s2Step288ExitFvBefore [s2Step288ExitFvRow,s2Step288ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step288ExitGRow,s2Step288ExitFRow,s2Step288ExitFvRow,s2Step288ExitGvRow] 2 s2Step288ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step288ExitFvBefore (fun q => (0≤q ∧ q<638) ∨ (639≤q ∧ q<780) ∨ (781≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step288ExitFv_Outgoing : rowsOwned s2Step288ExitGvAfter [s2Step288ExitFvOut,s2Step288ExitGvOut] :=
  hmrRows_owned_drop s2Step288ExitGvAfter [s2Step288ExitGOut,s2Step288ExitFOut,s2Step288ExitFvOut,s2Step288ExitGvOut] 2 s2Step288ExitBank_outgoingOwned

private theorem s2Step288ExitFv_distinct : (s2Step288ExitFvRow.sign::s2Step288ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step288ExitFv_owned : (s2Step288ExitFvRow.sign::s2Step288ExitFvRow.payload).toFinset⊆s2Step288ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step288ExitFvBefore (fun q => (0≤q ∧ q<638) ∨ (639≤q ∧ q<780) ∨ (781≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step288ExitFv_retired : s2Step288ExitFvBefore.retireSet s2Step288ExitFvExtra.toFinset=s2Step288ExitFvAfter := by
  unfold Arena.retireSet s2Step288ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step288ExitFvBefore,s2Step288ExitFAfter,s2Step288ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step288ExitFv_checked : planRowResizeLog s2Step288ExitFvBefore s2Step288ExitFvRow 159 []=
    some (s2Step288ExitFvAfter,s2Step288ExitFvOut,shrinkRow 770 s2Step288ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step288ExitFvBefore s2Step288ExitFvRow 159 s2Step288ExitFv_distinct s2Step288ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step288ExitFvRow.payload.take 159) s2Step288ExitFvRow.sign=s2Step288ExitFvOut := by decide +kernel
  have hi : s2Step288ExitFvRow.payload.drop 159=s2Step288ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step288ExitFv_retired] at result
  exact result

private def s2Step288ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private theorem s2Step288ExitG_Incoming : rowsOwned s2Step288ExitGBefore [s2Step288ExitGRow,s2Step288ExitFRow,s2Step288ExitFvRow,s2Step288ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step288ExitGRow,s2Step288ExitFRow,s2Step288ExitFvRow,s2Step288ExitGvRow] 0 s2Step288ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step288ExitGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step288ExitG_Outgoing : rowsOwned s2Step288ExitGvAfter [s2Step288ExitGOut,s2Step288ExitFOut,s2Step288ExitFvOut,s2Step288ExitGvOut] :=
  hmrRows_owned_drop s2Step288ExitGvAfter [s2Step288ExitGOut,s2Step288ExitFOut,s2Step288ExitFvOut,s2Step288ExitGvOut] 0 s2Step288ExitBank_outgoingOwned

private theorem s2Step288ExitG_distinct : (s2Step288ExitGRow.sign::s2Step288ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step288ExitG_owned : (s2Step288ExitGRow.sign::s2Step288ExitGRow.payload).toFinset⊆s2Step288ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step288ExitGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step288ExitG_retired : s2Step288ExitGBefore.retireSet s2Step288ExitGExtra.toFinset=s2Step288ExitGAfter := by
  unfold Arena.retireSet s2Step288ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step288ExitGBefore,s2Step288ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step288ExitG_checked : planRowResizeLog s2Step288ExitGBefore s2Step288ExitGRow 126 []=
    some (s2Step288ExitGAfter,s2Step288ExitGOut,shrinkRow 769 s2Step288ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step288ExitGBefore s2Step288ExitGRow 126 s2Step288ExitG_distinct s2Step288ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step288ExitGRow.payload.take 126) s2Step288ExitGRow.sign=s2Step288ExitGOut := by decide +kernel
  have hi : s2Step288ExitGRow.payload.drop 126=s2Step288ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step288ExitG_retired] at result
  exact result

private def s2Step288ExitGvBefore : Arena := s2Step288ExitFvAfter

private theorem s2Step288ExitGv_Incoming : rowsOwned s2Step288ExitGvBefore [s2Step288ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step288ExitGRow,s2Step288ExitFRow,s2Step288ExitFvRow,s2Step288ExitGvRow] 3 s2Step288ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step288ExitGvBefore (fun q => (0≤q ∧ q<638) ∨ (639≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step288ExitGv_Outgoing : rowsOwned s2Step288ExitGvAfter [s2Step288ExitGvOut] :=
  hmrRows_owned_drop s2Step288ExitGvAfter [s2Step288ExitGOut,s2Step288ExitFOut,s2Step288ExitFvOut,s2Step288ExitGvOut] 3 s2Step288ExitBank_outgoingOwned

private theorem s2Step288ExitGv_distinct : (s2Step288ExitGvRow.sign::s2Step288ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step288ExitGv_owned : (s2Step288ExitGvRow.sign::s2Step288ExitGvRow.payload).toFinset⊆s2Step288ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step288ExitGvBefore (fun q => (0≤q ∧ q<638) ∨ (639≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step288ExitGv_retired : s2Step288ExitGvBefore.retireSet s2Step288ExitGvExtra.toFinset=s2Step288ExitGvAfter := by
  unfold Arena.retireSet s2Step288ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step288ExitGvBefore,s2Step288ExitFvAfter,s2Step288ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step288ExitGv_checked : planRowResizeLog s2Step288ExitGvBefore s2Step288ExitGvRow 159 []=
    some (s2Step288ExitGvAfter,s2Step288ExitGvOut,shrinkRow 771 s2Step288ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step288ExitGvBefore s2Step288ExitGvRow 159 s2Step288ExitGv_distinct s2Step288ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step288ExitGvRow.payload.take 159) s2Step288ExitGvRow.sign=s2Step288ExitGvOut := by decide +kernel
  have hi : s2Step288ExitGvRow.payload.drop 159=s2Step288ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step288ExitGv_retired] at result
  exact result

private theorem s2Step288ExitBank_rows : planWindowRowsLog s2Step288ExitGBefore [(s2Step288ExitGRow,126),(s2Step288ExitFRow,126),(s2Step288ExitFvRow,159),(s2Step288ExitGvRow,159)] [[],[],[],[]]=
    some (s2Step288ExitGvAfter,[s2Step288ExitGOut,s2Step288ExitFOut,s2Step288ExitFvOut,s2Step288ExitGvOut],(shrinkRow 769 s2Step288ExitGExtra ++ (shrinkRow 768 s2Step288ExitFExtra ++ (shrinkRow 770 s2Step288ExitFvExtra ++ (shrinkRow 771 s2Step288ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step288ExitGvAfter [] []=some (s2Step288ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step288ExitGvBefore s2Step288ExitGvAfter s2Step288ExitGvAfter
    s2Step288ExitGvRow s2Step288ExitGvOut 159 [] [] [] []
    (shrinkRow 771 s2Step288ExitGvExtra) ([]) s2Step288ExitGv_Incoming s2Step288ExitGv_checked h4 s2Step288ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step288ExitFvBefore s2Step288ExitFvAfter s2Step288ExitGvAfter
    s2Step288ExitFvRow s2Step288ExitFvOut 159 [] [(s2Step288ExitGvRow,159)] [[]] [s2Step288ExitGvOut]
    (shrinkRow 770 s2Step288ExitFvExtra) ((shrinkRow 771 s2Step288ExitGvExtra ++ [])) s2Step288ExitFv_Incoming s2Step288ExitFv_checked h3 s2Step288ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step288ExitFBefore s2Step288ExitFAfter s2Step288ExitGvAfter
    s2Step288ExitFRow s2Step288ExitFOut 126 [] [(s2Step288ExitFvRow,159),(s2Step288ExitGvRow,159)] [[],[]] [s2Step288ExitFvOut,s2Step288ExitGvOut]
    (shrinkRow 768 s2Step288ExitFExtra) ((shrinkRow 770 s2Step288ExitFvExtra ++ (shrinkRow 771 s2Step288ExitGvExtra ++ []))) s2Step288ExitF_Incoming s2Step288ExitF_checked h2 s2Step288ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step288ExitGBefore s2Step288ExitGAfter s2Step288ExitGvAfter
    s2Step288ExitGRow s2Step288ExitGOut 126 [] [(s2Step288ExitFRow,126),(s2Step288ExitFvRow,159),(s2Step288ExitGvRow,159)] [[],[],[]] [s2Step288ExitFOut,s2Step288ExitFvOut,s2Step288ExitGvOut]
    (shrinkRow 769 s2Step288ExitGExtra) ((shrinkRow 768 s2Step288ExitFExtra ++ (shrinkRow 770 s2Step288ExitFvExtra ++ (shrinkRow 771 s2Step288ExitGvExtra ++ [])))) s2Step288ExitG_Incoming s2Step288ExitG_checked h1 s2Step288ExitG_Outgoing
  exact h0

private theorem s2Step288ExitBank_checked : compileHmrBankResizeLog .exit s2Step288ExitGBefore ⟨s2Step288ExitFRow,s2Step288ExitGRow,s2Step288ExitFvRow,s2Step288ExitGvRow⟩ ⟨126,126,159,159⟩ [[],[],[],[]]=
    some (s2Step288ExitGvAfter,⟨s2Step288ExitFOut,s2Step288ExitGOut,s2Step288ExitFvOut,s2Step288ExitGvOut⟩,(shrinkRow 769 s2Step288ExitGExtra ++ (shrinkRow 768 s2Step288ExitFExtra ++ (shrinkRow 770 s2Step288ExitFvExtra ++ (shrinkRow 771 s2Step288ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step288ExitBank_rows]
  rfl

private theorem s2Step288Add0_apart : Disjoint s2Step288Add0Arena.live s2Step288Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step288Add0Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step288Add0_card : s2Step288Add0Arena.live.card=900 := by
  decide +kernel

private theorem s2Step288Add0_borrowed : s2Step288Add0Arena.checkBorrow (hmrHybridCount s2Step288Add0Arena s2Step288Add0B.length) s2Step288Add0Work=some s2Step288Add0During := by
  have len : s2Step288Add0Work.length=hmrHybridCount s2Step288Add0Arena s2Step288Add0B.length := by
    rw [hmrHybridCount,s2Step288Add0_card]
    decide +kernel
  have nd : s2Step288Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step288Add0Arena s2Step288Add0During s2Step288Add0Work.toFinset s2Step288Add0_bounded s2Step288Add0_apart rfl

private theorem s2Step288Add0_distinct : (811::808::780::(s2Step288Add0A++s2Step288Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step288Add0_owned : (811::808::780::(s2Step288Add0A++s2Step288Add0B)).toFinset⊆s2Step288Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step288Add0Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step288Add0_checked : compileHmrHybridCinLog s2Step288Add0Arena 808 811 780 s2Step288Add0A s2Step288Add0B s2Step288Add0Work=some s2Step288Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step288Add0Arena s2Step288Add0During 808 811 780 s2Step288Add0A s2Step288Add0B s2Step288Add0Work
    (by decide +kernel) (by decide +kernel) s2Step288Add0_distinct
    (fun q hq => s2Step288Add0_owned (List.mem_toFinset.mpr hq)) s2Step288Add0_borrowed

private theorem s2Step288Add1_apart : Disjoint s2Step288Add1Arena.live s2Step288Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step288Add1Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step288Add1_card : s2Step288Add1Arena.live.card=900 := by
  decide +kernel

private theorem s2Step288Add1_borrowed : s2Step288Add1Arena.checkBorrow (hmrHybridCount s2Step288Add1Arena s2Step288Add1B.length) s2Step288Add1Work=some s2Step288Add1During := by
  have len : s2Step288Add1Work.length=hmrHybridCount s2Step288Add1Arena s2Step288Add1B.length := by
    rw [hmrHybridCount,s2Step288Add1_card]
    decide +kernel
  have nd : s2Step288Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step288Add1Arena s2Step288Add1During s2Step288Add1Work.toFinset s2Step288Add1_bounded s2Step288Add1_apart rfl

private theorem s2Step288Add1_distinct : (811::808::780::(s2Step288Add1A++s2Step288Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step288Add1_owned : (811::808::780::(s2Step288Add1A++s2Step288Add1B)).toFinset⊆s2Step288Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step288Add1Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step288Add1_checked : compileHmrHybridCinLog s2Step288Add1Arena 808 811 780 s2Step288Add1A s2Step288Add1B s2Step288Add1Work=some s2Step288Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step288Add1Arena s2Step288Add1During 808 811 780 s2Step288Add1A s2Step288Add1B s2Step288Add1Work
    (by decide +kernel) (by decide +kernel) s2Step288Add1_distinct
    (fun q hq => s2Step288Add1_owned (List.mem_toFinset.mpr hq)) s2Step288Add1_borrowed

private theorem s2Step288F4_apart : Disjoint (s2Step288Add0A++s2Step288Add0B).toFinset (s2Step288Add1A++s2Step288Add1B).toFinset := by
  have nd : ((s2Step288Add0A++s2Step288Add0B)++(s2Step288Add1A++s2Step288Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step288F4_carry : s2Step288F4FlagArena.checkBorrow 1 [780]=some s2Step288Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step288F4FlagArena,s2Step288HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step288F4FlagArena,s2Step288HeadFvAfter,s2Step288Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step288F4_distinct : (796::808::811::780::((s2Step288Add0A++s2Step288Add1A)++(s2Step288Add0B++s2Step288Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step288F4_flag : s2Step288HeadFvAfter.checkBorrow 1 [811]=some s2Step288F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step288HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step288F4_owned : (796::808::((s2Step288Add0A++s2Step288Add1A)++(s2Step288Add0B++s2Step288Add1B))).toFinset⊆s2Step288HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step288HeadFvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step288F4_checked : compileHmrHybridF4Log s2Step288HeadFvAfter 796 808 s2Step288Add0A s2Step288Add0B s2Step288Add1A s2Step288Add1B [811] [780] s2Step288Add0Work s2Step288Add1Work=some s2Step288F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step288HeadFvAfter s2Step288F4FlagArena s2Step288Add0Arena s2Step288Add0During s2Step288Add1During 796 808
    s2Step288Add0A s2Step288Add0B s2Step288Add1A s2Step288Add1B [811] [780] s2Step288Add0Work s2Step288Add1Work
    (fun q hq => s2Step288F4_owned (List.mem_toFinset.mpr hq)) s2Step288F4_flag s2Step288F4_carry
    s2Step288F4_distinct s2Step288F4_apart s2Step288Add0_checked s2Step288Add1_checked

private theorem s2Step288Front_branch : s2Step288FrontSigmaArena.checkBorrow 1 [808]=some s2Step288HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step288FrontSigmaArena,s2Step288EntryGvAfter,s2Step288EntryGAfter,arenaWires]
  · ext q
    simp only [s2Step288FrontSigmaArena,s2Step288EntryGvAfter,s2Step288EntryGAfter,s2Step288HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step288Front_entry : HmrFrontEntryValid s2Step288EntryFBefore s2Step288FrontBank 127 159 ⟨126,126,159,159⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step288FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step288EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step288EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step288FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step288Front_sigma : s2Step288EntryGvAfter.checkBorrow 1 [796]=some s2Step288FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step288EntryGvAfter,s2Step288EntryGAfter,arenaWires]
  · rfl

private def s2Step288HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step288HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step288HeadFBefore : Arena := s2Step288HeadGAfter

private def s2Step288HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638],768⟩

private def s2Step288HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781],770⟩

private def s2Step288HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 812],769⟩

private def s2Step288HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804],771⟩

private theorem s2Step288HeadBank_incomingDistinct : ([s2Step288HeadGRow,s2Step288HeadFRow,s2Step288HeadGvRow,s2Step288HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step288HeadF_Incoming : rowsOwned s2Step288HeadFBefore [s2Step288HeadFRow,s2Step288HeadGvRow,s2Step288HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step288HeadGRow,s2Step288HeadFRow,s2Step288HeadGvRow,s2Step288HeadFvRow] 1 s2Step288HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step288HeadFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step288HeadBank_outgoingOwned : rowsOwned s2Step288HeadFvAfter [s2Step288HeadGOut,s2Step288HeadFOut,s2Step288HeadGvOut,s2Step288HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step288HeadFvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step288HeadF_Outgoing : rowsOwned s2Step288HeadFvAfter [s2Step288HeadFOut,s2Step288HeadGvOut,s2Step288HeadFvOut] :=
  hmrRows_owned_drop s2Step288HeadFvAfter [s2Step288HeadGOut,s2Step288HeadFOut,s2Step288HeadGvOut,s2Step288HeadFvOut] 1 s2Step288HeadBank_outgoingOwned

private theorem s2Step288HeadF_distinct : (s2Step288HeadFRow.sign::s2Step288HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step288HeadF_owned : (s2Step288HeadFRow.sign::s2Step288HeadFRow.payload).toFinset⊆s2Step288HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step288HeadFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step288HeadF_reserved : s2Step288HeadFBefore.reserve s2Step288HeadFFresh.toFinset=some s2Step288HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step288HeadFFresh,arenaWires]
  · norm_num [s2Step288HeadFBefore,s2Step288HeadGAfter,s2Step288HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step288HeadFAfter,s2Step288HeadFBefore,s2Step288HeadGAfter,s2Step288HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step288HeadF_checked : planRowResizeLog s2Step288HeadFBefore s2Step288HeadFRow 128 s2Step288HeadFFresh=
    some (s2Step288HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 815],768⟩,growRow 768 s2Step288HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step288HeadFBefore s2Step288HeadFAfter s2Step288HeadFRow 128 s2Step288HeadFFresh
    s2Step288HeadF_distinct s2Step288HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step288HeadF_reserved
  have rowEq : WindowRow.mk (s2Step288HeadFRow.payload++s2Step288HeadFFresh) s2Step288HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 815],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step288HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step288HeadFvBefore : Arena := s2Step288HeadGvAfter

private theorem s2Step288HeadFv_Incoming : rowsOwned s2Step288HeadFvBefore [s2Step288HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step288HeadGRow,s2Step288HeadFRow,s2Step288HeadGvRow,s2Step288HeadFvRow] 3 s2Step288HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step288HeadFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step288HeadFv_Outgoing : rowsOwned s2Step288HeadFvAfter [s2Step288HeadFvOut] :=
  hmrRows_owned_drop s2Step288HeadFvAfter [s2Step288HeadGOut,s2Step288HeadFOut,s2Step288HeadGvOut,s2Step288HeadFvOut] 3 s2Step288HeadBank_outgoingOwned

private theorem s2Step288HeadFv_distinct : (s2Step288HeadFvRow.sign::s2Step288HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step288HeadFv_owned : (s2Step288HeadFvRow.sign::s2Step288HeadFvRow.payload).toFinset⊆s2Step288HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step288HeadFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step288HeadFv_reserved : s2Step288HeadFvBefore.reserve s2Step288HeadFvFresh.toFinset=some s2Step288HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step288HeadFvFresh,arenaWires]
  · norm_num [s2Step288HeadFvBefore,s2Step288HeadGvAfter,s2Step288HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step288HeadFvAfter,s2Step288HeadFvBefore,s2Step288HeadGvAfter,s2Step288HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step288HeadFv_checked : planRowResizeLog s2Step288HeadFvBefore s2Step288HeadFvRow 160 s2Step288HeadFvFresh=
    some (s2Step288HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 783],770⟩,growRow 770 s2Step288HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step288HeadFvBefore s2Step288HeadFvAfter s2Step288HeadFvRow 160 s2Step288HeadFvFresh
    s2Step288HeadFv_distinct s2Step288HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step288HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step288HeadFvRow.payload++s2Step288HeadFvFresh) s2Step288HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 783],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step288HeadG_Incoming : rowsOwned s2Step288HeadGBefore [s2Step288HeadGRow,s2Step288HeadFRow,s2Step288HeadGvRow,s2Step288HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step288HeadGRow,s2Step288HeadFRow,s2Step288HeadGvRow,s2Step288HeadFvRow] 0 s2Step288HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step288HeadGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step288HeadG_Outgoing : rowsOwned s2Step288HeadFvAfter [s2Step288HeadGOut,s2Step288HeadFOut,s2Step288HeadGvOut,s2Step288HeadFvOut] :=
  hmrRows_owned_drop s2Step288HeadFvAfter [s2Step288HeadGOut,s2Step288HeadFOut,s2Step288HeadGvOut,s2Step288HeadFvOut] 0 s2Step288HeadBank_outgoingOwned

private theorem s2Step288HeadG_distinct : (s2Step288HeadGRow.sign::s2Step288HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step288HeadG_owned : (s2Step288HeadGRow.sign::s2Step288HeadGRow.payload).toFinset⊆s2Step288HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step288HeadGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step288HeadG_reserved : s2Step288HeadGBefore.reserve s2Step288HeadGFresh.toFinset=some s2Step288HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step288HeadGFresh,arenaWires]
  · norm_num [s2Step288HeadGBefore,s2Step288HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step288HeadGAfter,s2Step288HeadGBefore,s2Step288HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step288HeadG_checked : planRowResizeLog s2Step288HeadGBefore s2Step288HeadGRow 128 s2Step288HeadGFresh=
    some (s2Step288HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 812, 791],769⟩,growRow 769 s2Step288HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step288HeadGBefore s2Step288HeadGAfter s2Step288HeadGRow 128 s2Step288HeadGFresh
    s2Step288HeadG_distinct s2Step288HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step288HeadG_reserved
  have rowEq : WindowRow.mk (s2Step288HeadGRow.payload++s2Step288HeadGFresh) s2Step288HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 812, 791],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step288HeadGvBefore : Arena := s2Step288HeadFAfter

private theorem s2Step288HeadGv_Incoming : rowsOwned s2Step288HeadGvBefore [s2Step288HeadGvRow,s2Step288HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step288HeadGRow,s2Step288HeadFRow,s2Step288HeadGvRow,s2Step288HeadFvRow] 2 s2Step288HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step288HeadGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step288HeadGv_Outgoing : rowsOwned s2Step288HeadFvAfter [s2Step288HeadGvOut,s2Step288HeadFvOut] :=
  hmrRows_owned_drop s2Step288HeadFvAfter [s2Step288HeadGOut,s2Step288HeadFOut,s2Step288HeadGvOut,s2Step288HeadFvOut] 2 s2Step288HeadBank_outgoingOwned

private theorem s2Step288HeadGv_distinct : (s2Step288HeadGvRow.sign::s2Step288HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step288HeadGv_owned : (s2Step288HeadGvRow.sign::s2Step288HeadGvRow.payload).toFinset⊆s2Step288HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step288HeadGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step288HeadGv_reserved : s2Step288HeadGvBefore.reserve s2Step288HeadGvFresh.toFinset=some s2Step288HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step288HeadGvFresh,arenaWires]
  · norm_num [s2Step288HeadGvBefore,s2Step288HeadFAfter,s2Step288HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step288HeadGvAfter,s2Step288HeadGvBefore,s2Step288HeadFAfter,s2Step288HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step288HeadGv_checked : planRowResizeLog s2Step288HeadGvBefore s2Step288HeadGvRow 160 s2Step288HeadGvFresh=
    some (s2Step288HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 790],771⟩,growRow 771 s2Step288HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step288HeadGvBefore s2Step288HeadGvAfter s2Step288HeadGvRow 160 s2Step288HeadGvFresh
    s2Step288HeadGv_distinct s2Step288HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step288HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step288HeadGvRow.payload++s2Step288HeadGvFresh) s2Step288HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 790],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step288HeadBank_rows : planWindowRowsLog s2Step288HeadGBefore [(s2Step288HeadGRow,128),(s2Step288HeadFRow,128),(s2Step288HeadGvRow,160),(s2Step288HeadFvRow,160)] [s2Step288HeadGFresh,s2Step288HeadFFresh,s2Step288HeadGvFresh,s2Step288HeadFvFresh]=
    some (s2Step288HeadFvAfter,[s2Step288HeadGOut,s2Step288HeadFOut,s2Step288HeadGvOut,s2Step288HeadFvOut],(growRow 769 s2Step288HeadGFresh ++ (growRow 768 s2Step288HeadFFresh ++ (growRow 771 s2Step288HeadGvFresh ++ (growRow 770 s2Step288HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step288HeadFvAfter [] []=some (s2Step288HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step288HeadFvBefore s2Step288HeadFvAfter s2Step288HeadFvAfter
    s2Step288HeadFvRow s2Step288HeadFvOut 160 s2Step288HeadFvFresh [] [] []
    (growRow 770 s2Step288HeadFvFresh) ([]) s2Step288HeadFv_Incoming s2Step288HeadFv_checked h4 s2Step288HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step288HeadGvBefore s2Step288HeadGvAfter s2Step288HeadFvAfter
    s2Step288HeadGvRow s2Step288HeadGvOut 160 s2Step288HeadGvFresh [(s2Step288HeadFvRow,160)] [s2Step288HeadFvFresh] [s2Step288HeadFvOut]
    (growRow 771 s2Step288HeadGvFresh) ((growRow 770 s2Step288HeadFvFresh ++ [])) s2Step288HeadGv_Incoming s2Step288HeadGv_checked h3 s2Step288HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step288HeadFBefore s2Step288HeadFAfter s2Step288HeadFvAfter
    s2Step288HeadFRow s2Step288HeadFOut 128 s2Step288HeadFFresh [(s2Step288HeadGvRow,160),(s2Step288HeadFvRow,160)] [s2Step288HeadGvFresh,s2Step288HeadFvFresh] [s2Step288HeadGvOut,s2Step288HeadFvOut]
    (growRow 768 s2Step288HeadFFresh) ((growRow 771 s2Step288HeadGvFresh ++ (growRow 770 s2Step288HeadFvFresh ++ []))) s2Step288HeadF_Incoming s2Step288HeadF_checked h2 s2Step288HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step288HeadGBefore s2Step288HeadGAfter s2Step288HeadFvAfter
    s2Step288HeadGRow s2Step288HeadGOut 128 s2Step288HeadGFresh [(s2Step288HeadFRow,128),(s2Step288HeadGvRow,160),(s2Step288HeadFvRow,160)] [s2Step288HeadFFresh,s2Step288HeadGvFresh,s2Step288HeadFvFresh] [s2Step288HeadFOut,s2Step288HeadGvOut,s2Step288HeadFvOut]
    (growRow 769 s2Step288HeadGFresh) ((growRow 768 s2Step288HeadFFresh ++ (growRow 771 s2Step288HeadGvFresh ++ (growRow 770 s2Step288HeadFvFresh ++ [])))) s2Step288HeadG_Incoming s2Step288HeadG_checked h1 s2Step288HeadG_Outgoing
  exact h0

private theorem s2Step288HeadBank_checked : compileHmrBankResizeLog .headroom s2Step288HeadGBefore ⟨s2Step288HeadFRow,s2Step288HeadGRow,s2Step288HeadFvRow,s2Step288HeadGvRow⟩ ⟨128,128,160,160⟩ [s2Step288HeadGFresh,s2Step288HeadFFresh,s2Step288HeadGvFresh,s2Step288HeadFvFresh]=
    some (s2Step288HeadFvAfter,⟨s2Step288HeadFOut,s2Step288HeadGOut,s2Step288HeadFvOut,s2Step288HeadGvOut⟩,(growRow 769 s2Step288HeadGFresh ++ (growRow 768 s2Step288HeadFFresh ++ (growRow 771 s2Step288HeadGvFresh ++ (growRow 770 s2Step288HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step288HeadBank_rows]
  rfl

private theorem s2Step288Front_checked : compileHmrSourceFrontLog s2Step288EntryFBefore s2Step288FrontBank 127 159 ⟨126,126,159,159⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step288FrontLog=some s2Step288FrontPlan := by
  have pairEq : s2Step288FrontPair=⟨s2Step288HeadFRow,s2Step288HeadGRow,s2Step288HeadFvRow,s2Step288HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step288FrontHead=⟨s2Step288ExitFRow,s2Step288ExitGRow,s2Step288ExitFvRow,s2Step288ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step288Add0A=s2Step288FrontHead.f.wires := by decide +kernel
  have gEq : s2Step288Add0B=s2Step288FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step288Add1A=s2Step288FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step288Add1B=s2Step288FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step288EntryFBefore s2Step288FrontBank 127 159 ⟨126,126,159,159⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step288FrontLog s2Step288FrontPlan
  · exact s2Step288Front_entry
  · exact s2Step288EntryBank_checked
  · exact s2Step288Front_sigma
  · rfl
  · exact s2Step288Front_branch
  · rfl
  · simpa only [s2Step288FrontPlan,pairEq] using s2Step288HeadBank_checked
  · simpa only [s2Step288FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step288F4_checked
  · exact s2Step288Counter_checked
  · rfl
  · simpa only [s2Step288FrontPlan,headEq] using s2Step288ExitBank_checked

private theorem s2Step288Complete_explicit_checked : compileHmrEarlyStepLog s2Step288EntryFBefore s2Step288FrontBank 127 159 ⟨126,126,159,159⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 54 s2Step288CompleteLog=some s2Step288CompletePlan := by
  let Q := s2Step288EarlyControlPlan
  have hq := s2Step288EarlyControl_plan_checked
  have fv1 : s2Step288CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step288CompleteOut.fv.payload[2]?.getD s2Step288CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step288CompleteOut.fv.payload[3]?.getD s2Step288CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step288CompleteOut.fv.payload[4]?.getD s2Step288CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step288EntryFBefore s2Step288EarlyControlArena s2Step288FrontBank 127 159 ⟨126,126,159,159⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 54 s2Step288CompleteLog s2Step288FrontPlan Q
    s2Step288Front_checked s2Step288Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step288Complete_owned s2Step288Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step288EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 777 796 s2Step288CompleteOut.fv.second (s2Step288CompleteOut.fv.payload[2]?.getD s2Step288CompleteOut.fv.sign) (s2Step288CompleteOut.fv.payload[3]?.getD s2Step288CompleteOut.fv.sign) (s2Step288CompleteOut.fv.payload[4]?.getD s2Step288CompleteOut.fv.sign) 808 54 s2Step288EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep288Arena : Arena := s2Step288EntryFBefore
def s2PrivateStep288Bank : WindowBank := s2Step288FrontBank
def s2PrivateStep288Spec : HmrSourceWalkStepLog := ⟨127,159,⟨126,126,159,159⟩,54,.early s2Step288CompleteLog⟩
def s2PrivateStep288Plan : HmrSourceStepPlan := .early s2Step288CompletePlan
theorem s2PrivateStep288_source : s2PrivateStep288Spec=s2ObservedLogs288[0] := rfl
theorem s2PrivateStep288_checked : compileHmrSourceStepLog s2PrivateStep288Arena s2PrivateStep288Bank
    s2PrivateStep288Spec.fgWidth s2PrivateStep288Spec.vWidth s2PrivateStep288Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905]
    6 498 288 s2PrivateStep288Spec.need none s2PrivateStep288Spec.log=some s2PrivateStep288Plan := by
  change compileHmrSourceStepLog s2Step288EntryFBefore s2Step288FrontBank 127 159 ⟨126,126,159,159⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 6 498 288 54 none (.early s2Step288CompleteLog)=some (.early s2Step288CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 288<498)]
  rw [s2Step288Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
