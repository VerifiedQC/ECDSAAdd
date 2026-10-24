import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep284
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

private def s2Step286CompleteMoves : List (Wire × Wire) := [(804,126)]

private def s2Step286EarlyControlLog : HmrEarlyControlLog := ⟨[804, 796, 812, 780, 790],[791],[815],[830, 800, 894, 896, 901, 903],[]⟩

private def s2Step286FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [780], [], [801]],[[790], [812], [796], [781]],[[], [], [], []]⟩,[811],[783],[791],[815],[830, 800, 894, 896, 901, 903, 904, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[830, 800, 894, 896, 901, 903, 904, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[791, 815, 830, 800]⟩

private def s2Step286CompleteLog : HmrEarlyStepLog := ⟨s2Step286FrontLog,s2Step286CompleteMoves,s2Step286EarlyControlLog⟩

private def s2Step286ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639],768⟩

private def s2Step286ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781],770⟩

private def s2Step286ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125],769⟩

private def s2Step286ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801],771⟩

private def s2Step286FrontOut : WindowBank := ⟨s2Step286ExitFOut,s2Step286ExitGOut,s2Step286ExitFvOut,s2Step286ExitGvOut⟩

private def s2Step286CompleteOut : WindowBank := s2Step286FrontOut.repacked s2Step286CompleteMoves

private def s2Step286EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step286EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step286EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step286EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step286EarlyControlPositiveArena,[791],s2Step286EarlyControlEqualityArena,[815],⟨⟨811,false⟩,[⟨⟨791,false⟩,815⟩]⟩⟩

private def s2Step286EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<904) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step286EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<904) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step286EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step286EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step286EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step286EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step286EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,804⟩,⟨⟨774,false⟩,796⟩,⟨⟨775,false⟩,812⟩,⟨⟨776,false⟩,780⟩,⟨⟨777,false⟩,790⟩]⟩

private def s2Step286EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step286EarlyControlZeroArena,s2Step286EarlyControlZeroPlan,s2Step286EarlyControlClassPlan,s2Step286EarlyControlFlagArena,s2Step286EarlyControlFittedArena,s2Step286EarlyControlHistoryArena,s2Step286EarlyControlSigmaArena,s2Step286EarlyControlOutputArena,s2Step286EarlyControlLog⟩

private def s2Step286CounterWork : List Wire := [791, 815, 830, 800]

private theorem s2Step286Counter_bounded : s2Step286CounterWork.toFinset⊆arenaWires := by norm_num [s2Step286CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step286HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step286CounterDuring : Arena := ⟨s2Step286HeadFvAfter.live∪s2Step286CounterWork.toFinset,Finset.union_subset s2Step286HeadFvAfter.bounded s2Step286Counter_bounded⟩

private def s2Step286EntryFFresh : List Wire := []

private def s2Step286EntryFvFresh : List Wire := []

private def s2Step286EntryGFresh : List Wire := [780]

private def s2Step286EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step286EntryGvFresh : List Wire := [801]

private def s2Step286ExitFExtra : List Wire := [812]

private def s2Step286ExitGExtra : List Wire := [126, 780, 790]

private def s2Step286ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<126) ∨ (127≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step286ExitGvExtra : List Wire := [796]

private def s2Step286Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step286Add0Work : List Wire := [830, 800, 894, 896, 901, 903, 904, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step286Add0_bounded : s2Step286Add0Work.toFinset⊆arenaWires := by
  have h : s2Step286Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step286Add0During : Arena := ⟨s2Step286Add0Arena.live∪s2Step286Add0Work.toFinset,Finset.union_subset s2Step286Add0Arena.bounded s2Step286Add0_bounded⟩

private def s2Step286Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step286Add1Work : List Wire := [830, 800, 894, 896, 901, 903, 904, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step286Add1_bounded : s2Step286Add1Work.toFinset⊆arenaWires := by
  have h : s2Step286Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step286Add1During : Arena := ⟨s2Step286Add1Arena.live∪s2Step286Add1Work.toFinset,Finset.union_subset s2Step286Add1Arena.bounded s2Step286Add1_bounded⟩

private def s2Step286F4FlagArena : Arena := ⟨s2Step286HeadFvAfter.live∪{791},Finset.union_subset s2Step286HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step286F4Plan : HmrHybridF4Plan := ⟨s2Step286F4FlagArena,[791],s2Step286Add0Arena,[815],s2Step286Add0During,s2Step286Add0Work,s2Step286Add1During,s2Step286Add1Work⟩

private def s2Step286HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 812],768⟩

private def s2Step286HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781],770⟩

private def s2Step286HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 780, 790],769⟩

private def s2Step286HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 796],771⟩

private def s2Step286FrontHead : WindowBank := ⟨s2Step286HeadFOut,s2Step286HeadGOut,s2Step286HeadFvOut,s2Step286HeadGvOut⟩

private def s2Step286EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639],768⟩

private def s2Step286EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891],770⟩

private def s2Step286EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 780],769⟩

private def s2Step286EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801],771⟩

private def s2Step286FrontPair : WindowBank := ⟨s2Step286EntryFOut,s2Step286EntryGOut,s2Step286EntryFvOut,s2Step286EntryGvOut⟩

private def s2Step286FrontSigmaArena : Arena := ⟨s2Step286EntryGvAfter.live∪{811},Finset.union_subset s2Step286EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step286HeadFFresh : List Wire := [812]

private def s2Step286HeadFvFresh : List Wire := [781]

private def s2Step286HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step286HeadGFresh : List Wire := [790]

private def s2Step286HeadGvFresh : List Wire := [796]

private def s2Step286FrontPlan : HmrSourceFront := ⟨s2Step286EntryGvAfter,s2Step286FrontPair,(growRow 768 s2Step286EntryFFresh ++ (growRow 769 s2Step286EntryGFresh ++ (growRow 770 s2Step286EntryFvFresh ++ (growRow 771 s2Step286EntryGvFresh ++ [])))),s2Step286FrontSigmaArena,[811],s2Step286HeadGBefore,[783],
  s2Step286HeadFvAfter,s2Step286FrontHead,(growRow 769 s2Step286HeadGFresh ++ (growRow 768 s2Step286HeadFFresh ++ (growRow 771 s2Step286HeadGvFresh ++ (growRow 770 s2Step286HeadFvFresh ++ [])))),s2Step286F4Plan,s2Step286CounterDuring,s2Step286CounterWork,s2Step286ExitGvAfter,s2Step286FrontOut,(shrinkRow 769 s2Step286ExitGExtra ++ (shrinkRow 768 s2Step286ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step286ExitGvExtra ++ []))))⟩

private def s2Step286CompletePlan : HmrEarlyStepPlan := ⟨s2Step286FrontPlan,s2Step286EarlyControlArena,s2Step286EarlyControlPlan,s2Step286CompleteMoves⟩

private theorem s2Step286Complete_apart : List.Disjoint (s2Step286CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [811, 783, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] := by
  have nd : ((s2Step286CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[811, 783, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step286Complete_owned : (s2Step286CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step286EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step286EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private def s2Step286CompleteMoveArena : Arena := ⟨s2Step286ExitGvAfter.live∪{126},Finset.union_subset s2Step286ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step286Complete_repack : s2Step286ExitGvAfter.checkRepack s2Step286CompleteMoves=some s2Step286EarlyControlArena := by
  have owned : 804∈s2Step286ExitGvAfter.live := by norm_num [s2Step286ExitGvAfter,arenaWires]
  have reserve : s2Step286ExitGvAfter.reserve {126}=some s2Step286CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step286ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step286CompleteMoveArena.retireSet {804}=s2Step286EarlyControlArena := by
    unfold Arena.retireSet s2Step286EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step286CompleteMoveArena,s2Step286ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step286CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step286CompleteMoveArena.retireSet {804}).checkRepack []=some s2Step286EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step286EarlyControl_branchOwned : ([783] : List Wire).toFinset⊆s2Step286EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step286EarlyControlSigmaArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step286EarlyControl_branch : compileHmrBranchRetirement s2Step286EarlyControlSigmaArena 783=some s2Step286EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step286EarlyControl_branchOwned
  · ext q
    simp [s2Step286EarlyControlOutputArena,s2Step286EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step286EarlyControl_classEqualityBorrow : s2Step286EarlyControlPositiveArena.checkBorrow (([811, 791] : List Wire).length-1) s2Step286EarlyControlLog.classWork=some s2Step286EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step286EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step286EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step286EarlyControlEqualityArena,s2Step286EarlyControlPositiveArena,s2Step286EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step286EarlyControl_classEqualityOwned : ([811, 791] : List Wire).toFinset⊆s2Step286EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step286EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step286EarlyControl_classEquality : compileHmrEqualityLog s2Step286EarlyControlPositiveArena [811, 791] 0 s2Step286EarlyControlLog.classWork=some (s2Step286EarlyControlEqualityArena,s2Step286EarlyControlLog.classWork,s2Step286EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step286EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step286EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step286EarlyControl_classOwned : ([777, 790, 811] : List Wire).toFinset⊆s2Step286EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step286EarlyControlZeroArena (fun q => (0≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step286EarlyControl_positiveBorrow : s2Step286EarlyControlZeroArena.checkBorrow (1) s2Step286EarlyControlLog.positiveWork=some s2Step286EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step286EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step286EarlyControlZeroArena (fun q => (0≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step286EarlyControlPositiveArena,s2Step286EarlyControlZeroArena,s2Step286EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step286EarlyControl_class : compileHmrSourceClassLog s2Step286EarlyControlZeroArena false 777 s2Step286EarlyControlZeroPlan.top 0 811 s2Step286EarlyControlLog.positiveWork s2Step286EarlyControlLog.classWork=some s2Step286EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step286EarlyControlClassPlan s2Step286EarlyControlZeroArena false 777 s2Step286EarlyControlZeroPlan.top 0 811
  constructor
  · decide +kernel
  · exact s2Step286EarlyControl_classOwned
  · exact s2Step286EarlyControl_positiveBorrow
  · exact s2Step286EarlyControl_classEquality

private theorem s2Step286EarlyControl_entryRecordOwned : ([783, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).toFinset⊆s2Step286EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step286EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step286EarlyControl_entrySigmaOwned : ([811, 254] : List Wire).toFinset⊆s2Step286EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step286EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step286EarlyControl_fitBorrow : s2Step286EarlyControlFlagArena.checkBorrow ((54-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).length)) s2Step286EarlyControlLog.recordFresh=some s2Step286EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step286EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step286EarlyControlFlagArena (fun q => (0≤q ∧ q<904) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step286EarlyControlFittedArena,s2Step286EarlyControlFlagArena,s2Step286EarlyControlLog,arenaWires]

private theorem s2Step286EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).toFinset⊆s2Step286EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step286EarlyControlFlagArena (fun q => (0≤q ∧ q<904) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step286EarlyControl_fit : compileHmrRecordGrowLog s2Step286EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 54 s2Step286EarlyControlLog.recordFresh=some s2Step286EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step286EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step286EarlyControl_fitBorrow

private theorem s2Step286EarlyControl_flagsBorrow : s2Step286EarlyControlEqualityArena.checkBorrow (6) s2Step286EarlyControlLog.flagWork=some s2Step286EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step286EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step286EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step286EarlyControlFlagArena,s2Step286EarlyControlEqualityArena,s2Step286EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step286EarlyControl_flagsOwned : ([815, 253, 252, 251] : List Wire).toFinset⊆s2Step286EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step286EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step286EarlyControl_flags : compileHmrFlagsLog s2Step286EarlyControlClassPlan.equalityArena s2Step286EarlyControlClassPlan.equality.top 253 252 251 s2Step286EarlyControlLog.flagWork=some s2Step286EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step286EarlyControl_flagsOwned⟩
  · exact s2Step286EarlyControl_flagsBorrow

private theorem s2Step286EarlyControl_historyBorrow : s2Step286EarlyControlArena.checkBorrow ((54-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).length)) s2Step286EarlyControlLog.recordFresh=some s2Step286EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step286EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step286EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step286EarlyControlHistoryArena,s2Step286EarlyControlArena,s2Step286EarlyControlLog,arenaWires]

private theorem s2Step286EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).toFinset⊆s2Step286EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step286EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step286EarlyControl_history : compileHmrRecordGrowLog s2Step286EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 54 s2Step286EarlyControlLog.recordFresh=some s2Step286EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step286EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step286EarlyControl_historyBorrow

private theorem s2Step286EarlyControl_sigmaOwned : ([254, 811] : List Wire).toFinset⊆s2Step286EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step286EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step286EarlyControl_sigmaReleaseOwned : ([811] : List Wire).toFinset⊆s2Step286EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step286EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step286EarlyControl_sigmaRelease : s2Step286EarlyControlHistoryArena.release {811} (fun _ => false)=some s2Step286EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step286EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step286EarlyControlSigmaArena,s2Step286EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step286EarlyControl_sigma : compileHmrSigmaDropLog s2Step286EarlyControlHistoryArena false 0 0 254 811 []=some s2Step286EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step286EarlyControl_sigmaOwned⟩
  · exact s2Step286EarlyControl_sigmaRelease

private theorem s2Step286EarlyControl_zeroBorrow : s2Step286EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step286EarlyControlLog.zeroWork=some s2Step286EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step286EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step286EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step286EarlyControlZeroArena,s2Step286EarlyControlArena,s2Step286EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step286EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step286EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step286EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step286EarlyControl_zero : compileHmrEqualityLog s2Step286EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step286EarlyControlLog.zeroWork=some (s2Step286EarlyControlZeroArena,s2Step286EarlyControlLog.zeroWork,s2Step286EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step286EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step286EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step286EarlyControl_logged : s2Step286EarlyControlPlan.Logged s2Step286EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 777 811 254 253 252 251 783 54 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step286EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step286EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step286EarlyControl_zero
  · exact s2Step286EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step286EarlyControl_flags
  · exact s2Step286EarlyControl_fit
  · exact s2Step286EarlyControl_history
  · exact s2Step286EarlyControl_sigma
  · exact s2Step286EarlyControl_branch

private theorem s2Step286EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step286EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 777 811 254 253 252 251 783 54 s2Step286EarlyControlLog=some s2Step286EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step286EarlyControlPlan s2Step286EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 777 811 254 253 252 251 783 54 s2Step286EarlyControl_logged

private def s2Step286EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step286EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639],768⟩

private def s2Step286EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891],770⟩

private def s2Step286EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126],769⟩

private def s2Step286EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845],771⟩

private def s2Step286FrontBank : WindowBank := ⟨s2Step286EntryFRow,s2Step286EntryGRow,s2Step286EntryFvRow,s2Step286EntryGvRow⟩

private def s2Step286Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 812, 768]

private def s2Step286Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 780, 790, 769]

private def s2Step286Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 770]

private def s2Step286Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 796, 771]

private theorem s2Step286Counter_apart : Disjoint s2Step286HeadFvAfter.live s2Step286CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step286HeadFvAfter (fun q => (0≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step286Counter_borrowed : s2Step286HeadFvAfter.checkBorrow 4 s2Step286CounterWork=some s2Step286CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step286HeadFvAfter s2Step286CounterDuring s2Step286CounterWork.toFinset s2Step286Counter_bounded s2Step286Counter_apart rfl

private theorem s2Step286Counter_owned : (811::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step286HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step286HeadFvAfter (fun q => (0≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step286Counter_checked : compileHmrCounterStepLog s2Step286HeadFvAfter true 811 [772, 773, 774, 775, 776, 777] s2Step286CounterWork=some s2Step286CounterDuring := by
  have owned : ∀q∈811::[772, 773, 774, 775, 776, 777],q∈s2Step286HeadFvAfter.live := fun q hq => s2Step286Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step286Counter_borrowed

private def s2Step286EntryFAfter : Arena := s2Step286EntryFBefore

private theorem s2Step286EntryBank_incomingDistinct : ([s2Step286EntryFRow,s2Step286EntryGRow,s2Step286EntryFvRow,s2Step286EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step286EntryF_Incoming : rowsOwned s2Step286EntryFBefore [s2Step286EntryFRow,s2Step286EntryGRow,s2Step286EntryFvRow,s2Step286EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step286EntryFRow,s2Step286EntryGRow,s2Step286EntryFvRow,s2Step286EntryGvRow] 0 s2Step286EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step286EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step286EntryBank_outgoingOwned : rowsOwned s2Step286EntryGvAfter [s2Step286EntryFOut,s2Step286EntryGOut,s2Step286EntryFvOut,s2Step286EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step286EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step286EntryF_Outgoing : rowsOwned s2Step286EntryGvAfter [s2Step286EntryFOut,s2Step286EntryGOut,s2Step286EntryFvOut,s2Step286EntryGvOut] :=
  hmrRows_owned_drop s2Step286EntryGvAfter [s2Step286EntryFOut,s2Step286EntryGOut,s2Step286EntryFvOut,s2Step286EntryGvOut] 0 s2Step286EntryBank_outgoingOwned

private theorem s2Step286EntryF_distinct : (s2Step286EntryFRow.sign::s2Step286EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step286EntryF_owned : (s2Step286EntryFRow.sign::s2Step286EntryFRow.payload).toFinset⊆s2Step286EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step286EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step286EntryF_reserved : s2Step286EntryFBefore.reserve s2Step286EntryFFresh.toFinset=some s2Step286EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step286EntryFFresh,arenaWires]
  · norm_num [s2Step286EntryFBefore,s2Step286EntryFFresh,arenaWires]
  · simp only [s2Step286EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step286EntryF_checked : planRowResizeLog s2Step286EntryFBefore s2Step286EntryFRow 128 s2Step286EntryFFresh=
    some (s2Step286EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639],768⟩,growRow 768 s2Step286EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step286EntryFBefore s2Step286EntryFAfter s2Step286EntryFRow 128 s2Step286EntryFFresh
    s2Step286EntryF_distinct s2Step286EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step286EntryF_reserved
  have rowEq : WindowRow.mk (s2Step286EntryFRow.payload++s2Step286EntryFFresh) s2Step286EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step286EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step286EntryFvAfter : Arena := s2Step286EntryGAfter

private def s2Step286EntryFvBefore : Arena := s2Step286EntryGAfter

private theorem s2Step286EntryFv_Incoming : rowsOwned s2Step286EntryFvBefore [s2Step286EntryFvRow,s2Step286EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step286EntryFRow,s2Step286EntryGRow,s2Step286EntryFvRow,s2Step286EntryGvRow] 2 s2Step286EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step286EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step286EntryFv_Outgoing : rowsOwned s2Step286EntryGvAfter [s2Step286EntryFvOut,s2Step286EntryGvOut] :=
  hmrRows_owned_drop s2Step286EntryGvAfter [s2Step286EntryFOut,s2Step286EntryGOut,s2Step286EntryFvOut,s2Step286EntryGvOut] 2 s2Step286EntryBank_outgoingOwned

private theorem s2Step286EntryFv_distinct : (s2Step286EntryFvRow.sign::s2Step286EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step286EntryFv_owned : (s2Step286EntryFvRow.sign::s2Step286EntryFvRow.payload).toFinset⊆s2Step286EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step286EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step286EntryFv_reserved : s2Step286EntryFvBefore.reserve s2Step286EntryFvFresh.toFinset=some s2Step286EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step286EntryFvFresh,arenaWires]
  · norm_num [s2Step286EntryFvBefore,s2Step286EntryGAfter,s2Step286EntryFvFresh,arenaWires]
  · simp only [s2Step286EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step286EntryFv_checked : planRowResizeLog s2Step286EntryFvBefore s2Step286EntryFvRow 158 s2Step286EntryFvFresh=
    some (s2Step286EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891],770⟩,growRow 770 s2Step286EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step286EntryFvBefore s2Step286EntryFvAfter s2Step286EntryFvRow 158 s2Step286EntryFvFresh
    s2Step286EntryFv_distinct s2Step286EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step286EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step286EntryFvRow.payload++s2Step286EntryFvFresh) s2Step286EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step286EntryGBefore : Arena := s2Step286EntryFBefore

private theorem s2Step286EntryG_Incoming : rowsOwned s2Step286EntryGBefore [s2Step286EntryGRow,s2Step286EntryFvRow,s2Step286EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step286EntryFRow,s2Step286EntryGRow,s2Step286EntryFvRow,s2Step286EntryGvRow] 1 s2Step286EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step286EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step286EntryG_Outgoing : rowsOwned s2Step286EntryGvAfter [s2Step286EntryGOut,s2Step286EntryFvOut,s2Step286EntryGvOut] :=
  hmrRows_owned_drop s2Step286EntryGvAfter [s2Step286EntryFOut,s2Step286EntryGOut,s2Step286EntryFvOut,s2Step286EntryGvOut] 1 s2Step286EntryBank_outgoingOwned

private theorem s2Step286EntryG_distinct : (s2Step286EntryGRow.sign::s2Step286EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step286EntryG_owned : (s2Step286EntryGRow.sign::s2Step286EntryGRow.payload).toFinset⊆s2Step286EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step286EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step286EntryG_reserved : s2Step286EntryGBefore.reserve s2Step286EntryGFresh.toFinset=some s2Step286EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step286EntryGFresh,arenaWires]
  · norm_num [s2Step286EntryGBefore,s2Step286EntryFBefore,s2Step286EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step286EntryGAfter,s2Step286EntryGBefore,s2Step286EntryFBefore,s2Step286EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step286EntryG_checked : planRowResizeLog s2Step286EntryGBefore s2Step286EntryGRow 128 s2Step286EntryGFresh=
    some (s2Step286EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 780],769⟩,growRow 769 s2Step286EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step286EntryGBefore s2Step286EntryGAfter s2Step286EntryGRow 128 s2Step286EntryGFresh
    s2Step286EntryG_distinct s2Step286EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step286EntryG_reserved
  have rowEq : WindowRow.mk (s2Step286EntryGRow.payload++s2Step286EntryGFresh) s2Step286EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 780],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step286EntryGvBefore : Arena := s2Step286EntryGAfter

private theorem s2Step286EntryGv_Incoming : rowsOwned s2Step286EntryGvBefore [s2Step286EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step286EntryFRow,s2Step286EntryGRow,s2Step286EntryFvRow,s2Step286EntryGvRow] 3 s2Step286EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step286EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step286EntryGv_Outgoing : rowsOwned s2Step286EntryGvAfter [s2Step286EntryGvOut] :=
  hmrRows_owned_drop s2Step286EntryGvAfter [s2Step286EntryFOut,s2Step286EntryGOut,s2Step286EntryFvOut,s2Step286EntryGvOut] 3 s2Step286EntryBank_outgoingOwned

private theorem s2Step286EntryGv_distinct : (s2Step286EntryGvRow.sign::s2Step286EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step286EntryGv_owned : (s2Step286EntryGvRow.sign::s2Step286EntryGvRow.payload).toFinset⊆s2Step286EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step286EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step286EntryGv_reserved : s2Step286EntryGvBefore.reserve s2Step286EntryGvFresh.toFinset=some s2Step286EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step286EntryGvFresh,arenaWires]
  · norm_num [s2Step286EntryGvBefore,s2Step286EntryGAfter,s2Step286EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step286EntryGvAfter,s2Step286EntryGvBefore,s2Step286EntryGAfter,s2Step286EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step286EntryGv_checked : planRowResizeLog s2Step286EntryGvBefore s2Step286EntryGvRow 158 s2Step286EntryGvFresh=
    some (s2Step286EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801],771⟩,growRow 771 s2Step286EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step286EntryGvBefore s2Step286EntryGvAfter s2Step286EntryGvRow 158 s2Step286EntryGvFresh
    s2Step286EntryGv_distinct s2Step286EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step286EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step286EntryGvRow.payload++s2Step286EntryGvFresh) s2Step286EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step286EntryBank_rows : planWindowRowsLog s2Step286EntryFBefore [(s2Step286EntryFRow,128),(s2Step286EntryGRow,128),(s2Step286EntryFvRow,158),(s2Step286EntryGvRow,158)] [s2Step286EntryFFresh,s2Step286EntryGFresh,s2Step286EntryFvFresh,s2Step286EntryGvFresh]=
    some (s2Step286EntryGvAfter,[s2Step286EntryFOut,s2Step286EntryGOut,s2Step286EntryFvOut,s2Step286EntryGvOut],(growRow 768 s2Step286EntryFFresh ++ (growRow 769 s2Step286EntryGFresh ++ (growRow 770 s2Step286EntryFvFresh ++ (growRow 771 s2Step286EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step286EntryGvAfter [] []=some (s2Step286EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step286EntryGvBefore s2Step286EntryGvAfter s2Step286EntryGvAfter
    s2Step286EntryGvRow s2Step286EntryGvOut 158 s2Step286EntryGvFresh [] [] []
    (growRow 771 s2Step286EntryGvFresh) ([]) s2Step286EntryGv_Incoming s2Step286EntryGv_checked h4 s2Step286EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step286EntryFvBefore s2Step286EntryFvAfter s2Step286EntryGvAfter
    s2Step286EntryFvRow s2Step286EntryFvOut 158 s2Step286EntryFvFresh [(s2Step286EntryGvRow,158)] [s2Step286EntryGvFresh] [s2Step286EntryGvOut]
    (growRow 770 s2Step286EntryFvFresh) ((growRow 771 s2Step286EntryGvFresh ++ [])) s2Step286EntryFv_Incoming s2Step286EntryFv_checked h3 s2Step286EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step286EntryGBefore s2Step286EntryGAfter s2Step286EntryGvAfter
    s2Step286EntryGRow s2Step286EntryGOut 128 s2Step286EntryGFresh [(s2Step286EntryFvRow,158),(s2Step286EntryGvRow,158)] [s2Step286EntryFvFresh,s2Step286EntryGvFresh] [s2Step286EntryFvOut,s2Step286EntryGvOut]
    (growRow 769 s2Step286EntryGFresh) ((growRow 770 s2Step286EntryFvFresh ++ (growRow 771 s2Step286EntryGvFresh ++ []))) s2Step286EntryG_Incoming s2Step286EntryG_checked h2 s2Step286EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step286EntryFBefore s2Step286EntryFAfter s2Step286EntryGvAfter
    s2Step286EntryFRow s2Step286EntryFOut 128 s2Step286EntryFFresh [(s2Step286EntryGRow,128),(s2Step286EntryFvRow,158),(s2Step286EntryGvRow,158)] [s2Step286EntryGFresh,s2Step286EntryFvFresh,s2Step286EntryGvFresh] [s2Step286EntryGOut,s2Step286EntryFvOut,s2Step286EntryGvOut]
    (growRow 768 s2Step286EntryFFresh) ((growRow 769 s2Step286EntryGFresh ++ (growRow 770 s2Step286EntryFvFresh ++ (growRow 771 s2Step286EntryGvFresh ++ [])))) s2Step286EntryF_Incoming s2Step286EntryF_checked h1 s2Step286EntryF_Outgoing
  exact h0

private theorem s2Step286EntryBank_checked : compileHmrBankResizeLog .entry s2Step286EntryFBefore ⟨s2Step286EntryFRow,s2Step286EntryGRow,s2Step286EntryFvRow,s2Step286EntryGvRow⟩ ⟨128,128,158,158⟩ [s2Step286EntryFFresh,s2Step286EntryGFresh,s2Step286EntryFvFresh,s2Step286EntryGvFresh]=
    some (s2Step286EntryGvAfter,⟨s2Step286EntryFOut,s2Step286EntryGOut,s2Step286EntryFvOut,s2Step286EntryGvOut⟩,(growRow 768 s2Step286EntryFFresh ++ (growRow 769 s2Step286EntryGFresh ++ (growRow 770 s2Step286EntryFvFresh ++ (growRow 771 s2Step286EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step286EntryBank_rows]
  rfl

private def s2Step286ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<126) ∨ (127≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step286ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<126) ∨ (127≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step286ExitFBefore : Arena := s2Step286ExitGAfter

private def s2Step286ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 812],768⟩

private def s2Step286ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781],770⟩

private def s2Step286ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 780, 790],769⟩

private def s2Step286ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 796],771⟩

private theorem s2Step286ExitBank_incomingDistinct : ([s2Step286ExitGRow,s2Step286ExitFRow,s2Step286ExitFvRow,s2Step286ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step286ExitF_Incoming : rowsOwned s2Step286ExitFBefore [s2Step286ExitFRow,s2Step286ExitFvRow,s2Step286ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step286ExitGRow,s2Step286ExitFRow,s2Step286ExitFvRow,s2Step286ExitGvRow] 1 s2Step286ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step286ExitFBefore (fun q => (0≤q ∧ q<126) ∨ (127≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step286ExitBank_outgoingOwned : rowsOwned s2Step286ExitGvAfter [s2Step286ExitGOut,s2Step286ExitFOut,s2Step286ExitFvOut,s2Step286ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step286ExitGvAfter (fun q => (0≤q ∧ q<126) ∨ (127≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step286ExitF_Outgoing : rowsOwned s2Step286ExitGvAfter [s2Step286ExitFOut,s2Step286ExitFvOut,s2Step286ExitGvOut] :=
  hmrRows_owned_drop s2Step286ExitGvAfter [s2Step286ExitGOut,s2Step286ExitFOut,s2Step286ExitFvOut,s2Step286ExitGvOut] 1 s2Step286ExitBank_outgoingOwned

private theorem s2Step286ExitF_distinct : (s2Step286ExitFRow.sign::s2Step286ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step286ExitF_owned : (s2Step286ExitFRow.sign::s2Step286ExitFRow.payload).toFinset⊆s2Step286ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step286ExitFBefore (fun q => (0≤q ∧ q<126) ∨ (127≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step286ExitF_retired : s2Step286ExitFBefore.retireSet s2Step286ExitFExtra.toFinset=s2Step286ExitFAfter := by
  unfold Arena.retireSet s2Step286ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step286ExitFBefore,s2Step286ExitGAfter,s2Step286ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step286ExitF_checked : planRowResizeLog s2Step286ExitFBefore s2Step286ExitFRow 128 []=
    some (s2Step286ExitFAfter,s2Step286ExitFOut,shrinkRow 768 s2Step286ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step286ExitFBefore s2Step286ExitFRow 128 s2Step286ExitF_distinct s2Step286ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step286ExitFRow.payload.take 128) s2Step286ExitFRow.sign=s2Step286ExitFOut := by decide +kernel
  have hi : s2Step286ExitFRow.payload.drop 128=s2Step286ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step286ExitF_retired] at result
  exact result

private def s2Step286ExitFvAfter : Arena := s2Step286ExitFAfter

private def s2Step286ExitFvBefore : Arena := s2Step286ExitFAfter

private theorem s2Step286ExitFv_Incoming : rowsOwned s2Step286ExitFvBefore [s2Step286ExitFvRow,s2Step286ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step286ExitGRow,s2Step286ExitFRow,s2Step286ExitFvRow,s2Step286ExitGvRow] 2 s2Step286ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step286ExitFvBefore (fun q => (0≤q ∧ q<126) ∨ (127≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step286ExitFv_Outgoing : rowsOwned s2Step286ExitGvAfter [s2Step286ExitFvOut,s2Step286ExitGvOut] :=
  hmrRows_owned_drop s2Step286ExitGvAfter [s2Step286ExitGOut,s2Step286ExitFOut,s2Step286ExitFvOut,s2Step286ExitGvOut] 2 s2Step286ExitBank_outgoingOwned

private theorem s2Step286ExitFv_distinct : (s2Step286ExitFvRow.sign::s2Step286ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step286ExitFv_owned : (s2Step286ExitFvRow.sign::s2Step286ExitFvRow.payload).toFinset⊆s2Step286ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step286ExitFvBefore (fun q => (0≤q ∧ q<126) ∨ (127≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step286ExitFv_reserved : s2Step286ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step286ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step286ExitFv_checked : planRowResizeLog s2Step286ExitFvBefore s2Step286ExitFvRow 159 []=
    some (s2Step286ExitFvAfter,s2Step286ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step286ExitFvBefore s2Step286ExitFvAfter s2Step286ExitFvRow 159 []
    s2Step286ExitFv_distinct s2Step286ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step286ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step286ExitFvRow.payload++[]) s2Step286ExitFvRow.sign=s2Step286ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step286ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private theorem s2Step286ExitG_Incoming : rowsOwned s2Step286ExitGBefore [s2Step286ExitGRow,s2Step286ExitFRow,s2Step286ExitFvRow,s2Step286ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step286ExitGRow,s2Step286ExitFRow,s2Step286ExitFvRow,s2Step286ExitGvRow] 0 s2Step286ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step286ExitGBefore (fun q => (0≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step286ExitG_Outgoing : rowsOwned s2Step286ExitGvAfter [s2Step286ExitGOut,s2Step286ExitFOut,s2Step286ExitFvOut,s2Step286ExitGvOut] :=
  hmrRows_owned_drop s2Step286ExitGvAfter [s2Step286ExitGOut,s2Step286ExitFOut,s2Step286ExitFvOut,s2Step286ExitGvOut] 0 s2Step286ExitBank_outgoingOwned

private theorem s2Step286ExitG_distinct : (s2Step286ExitGRow.sign::s2Step286ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step286ExitG_owned : (s2Step286ExitGRow.sign::s2Step286ExitGRow.payload).toFinset⊆s2Step286ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step286ExitGBefore (fun q => (0≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step286ExitG_retired : s2Step286ExitGBefore.retireSet s2Step286ExitGExtra.toFinset=s2Step286ExitGAfter := by
  unfold Arena.retireSet s2Step286ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step286ExitGBefore,s2Step286ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step286ExitG_checked : planRowResizeLog s2Step286ExitGBefore s2Step286ExitGRow 126 []=
    some (s2Step286ExitGAfter,s2Step286ExitGOut,shrinkRow 769 s2Step286ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step286ExitGBefore s2Step286ExitGRow 126 s2Step286ExitG_distinct s2Step286ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step286ExitGRow.payload.take 126) s2Step286ExitGRow.sign=s2Step286ExitGOut := by decide +kernel
  have hi : s2Step286ExitGRow.payload.drop 126=s2Step286ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step286ExitG_retired] at result
  exact result

private def s2Step286ExitGvBefore : Arena := s2Step286ExitFAfter

private theorem s2Step286ExitGv_Incoming : rowsOwned s2Step286ExitGvBefore [s2Step286ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step286ExitGRow,s2Step286ExitFRow,s2Step286ExitFvRow,s2Step286ExitGvRow] 3 s2Step286ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step286ExitGvBefore (fun q => (0≤q ∧ q<126) ∨ (127≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step286ExitGv_Outgoing : rowsOwned s2Step286ExitGvAfter [s2Step286ExitGvOut] :=
  hmrRows_owned_drop s2Step286ExitGvAfter [s2Step286ExitGOut,s2Step286ExitFOut,s2Step286ExitFvOut,s2Step286ExitGvOut] 3 s2Step286ExitBank_outgoingOwned

private theorem s2Step286ExitGv_distinct : (s2Step286ExitGvRow.sign::s2Step286ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step286ExitGv_owned : (s2Step286ExitGvRow.sign::s2Step286ExitGvRow.payload).toFinset⊆s2Step286ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step286ExitGvBefore (fun q => (0≤q ∧ q<126) ∨ (127≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step286ExitGv_retired : s2Step286ExitGvBefore.retireSet s2Step286ExitGvExtra.toFinset=s2Step286ExitGvAfter := by
  unfold Arena.retireSet s2Step286ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step286ExitGvBefore,s2Step286ExitFAfter,s2Step286ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step286ExitGv_checked : planRowResizeLog s2Step286ExitGvBefore s2Step286ExitGvRow 158 []=
    some (s2Step286ExitGvAfter,s2Step286ExitGvOut,shrinkRow 771 s2Step286ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step286ExitGvBefore s2Step286ExitGvRow 158 s2Step286ExitGv_distinct s2Step286ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step286ExitGvRow.payload.take 158) s2Step286ExitGvRow.sign=s2Step286ExitGvOut := by decide +kernel
  have hi : s2Step286ExitGvRow.payload.drop 158=s2Step286ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step286ExitGv_retired] at result
  exact result

private theorem s2Step286ExitBank_rows : planWindowRowsLog s2Step286ExitGBefore [(s2Step286ExitGRow,126),(s2Step286ExitFRow,128),(s2Step286ExitFvRow,159),(s2Step286ExitGvRow,158)] [[],[],[],[]]=
    some (s2Step286ExitGvAfter,[s2Step286ExitGOut,s2Step286ExitFOut,s2Step286ExitFvOut,s2Step286ExitGvOut],(shrinkRow 769 s2Step286ExitGExtra ++ (shrinkRow 768 s2Step286ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step286ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step286ExitGvAfter [] []=some (s2Step286ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step286ExitGvBefore s2Step286ExitGvAfter s2Step286ExitGvAfter
    s2Step286ExitGvRow s2Step286ExitGvOut 158 [] [] [] []
    (shrinkRow 771 s2Step286ExitGvExtra) ([]) s2Step286ExitGv_Incoming s2Step286ExitGv_checked h4 s2Step286ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step286ExitFvBefore s2Step286ExitFvAfter s2Step286ExitGvAfter
    s2Step286ExitFvRow s2Step286ExitFvOut 159 [] [(s2Step286ExitGvRow,158)] [[]] [s2Step286ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step286ExitGvExtra ++ [])) s2Step286ExitFv_Incoming s2Step286ExitFv_checked h3 s2Step286ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step286ExitFBefore s2Step286ExitFAfter s2Step286ExitGvAfter
    s2Step286ExitFRow s2Step286ExitFOut 128 [] [(s2Step286ExitFvRow,159),(s2Step286ExitGvRow,158)] [[],[]] [s2Step286ExitFvOut,s2Step286ExitGvOut]
    (shrinkRow 768 s2Step286ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step286ExitGvExtra ++ []))) s2Step286ExitF_Incoming s2Step286ExitF_checked h2 s2Step286ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step286ExitGBefore s2Step286ExitGAfter s2Step286ExitGvAfter
    s2Step286ExitGRow s2Step286ExitGOut 126 [] [(s2Step286ExitFRow,128),(s2Step286ExitFvRow,159),(s2Step286ExitGvRow,158)] [[],[],[]] [s2Step286ExitFOut,s2Step286ExitFvOut,s2Step286ExitGvOut]
    (shrinkRow 769 s2Step286ExitGExtra) ((shrinkRow 768 s2Step286ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step286ExitGvExtra ++ [])))) s2Step286ExitG_Incoming s2Step286ExitG_checked h1 s2Step286ExitG_Outgoing
  exact h0

private theorem s2Step286ExitBank_checked : compileHmrBankResizeLog .exit s2Step286ExitGBefore ⟨s2Step286ExitFRow,s2Step286ExitGRow,s2Step286ExitFvRow,s2Step286ExitGvRow⟩ ⟨128,126,159,158⟩ [[],[],[],[]]=
    some (s2Step286ExitGvAfter,⟨s2Step286ExitFOut,s2Step286ExitGOut,s2Step286ExitFvOut,s2Step286ExitGvOut⟩,(shrinkRow 769 s2Step286ExitGExtra ++ (shrinkRow 768 s2Step286ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step286ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step286ExitBank_rows]
  rfl

private theorem s2Step286Add0_apart : Disjoint s2Step286Add0Arena.live s2Step286Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step286Add0Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step286Add0_card : s2Step286Add0Arena.live.card=900 := by
  decide +kernel

private theorem s2Step286Add0_borrowed : s2Step286Add0Arena.checkBorrow (hmrHybridCount s2Step286Add0Arena s2Step286Add0B.length) s2Step286Add0Work=some s2Step286Add0During := by
  have len : s2Step286Add0Work.length=hmrHybridCount s2Step286Add0Arena s2Step286Add0B.length := by
    rw [hmrHybridCount,s2Step286Add0_card]
    decide +kernel
  have nd : s2Step286Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step286Add0Arena s2Step286Add0During s2Step286Add0Work.toFinset s2Step286Add0_bounded s2Step286Add0_apart rfl

private theorem s2Step286Add0_distinct : (791::783::815::(s2Step286Add0A++s2Step286Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step286Add0_owned : (791::783::815::(s2Step286Add0A++s2Step286Add0B)).toFinset⊆s2Step286Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step286Add0Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step286Add0_checked : compileHmrHybridCinLog s2Step286Add0Arena 783 791 815 s2Step286Add0A s2Step286Add0B s2Step286Add0Work=some s2Step286Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step286Add0Arena s2Step286Add0During 783 791 815 s2Step286Add0A s2Step286Add0B s2Step286Add0Work
    (by decide +kernel) (by decide +kernel) s2Step286Add0_distinct
    (fun q hq => s2Step286Add0_owned (List.mem_toFinset.mpr hq)) s2Step286Add0_borrowed

private theorem s2Step286Add1_apart : Disjoint s2Step286Add1Arena.live s2Step286Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step286Add1Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step286Add1_card : s2Step286Add1Arena.live.card=900 := by
  decide +kernel

private theorem s2Step286Add1_borrowed : s2Step286Add1Arena.checkBorrow (hmrHybridCount s2Step286Add1Arena s2Step286Add1B.length) s2Step286Add1Work=some s2Step286Add1During := by
  have len : s2Step286Add1Work.length=hmrHybridCount s2Step286Add1Arena s2Step286Add1B.length := by
    rw [hmrHybridCount,s2Step286Add1_card]
    decide +kernel
  have nd : s2Step286Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step286Add1Arena s2Step286Add1During s2Step286Add1Work.toFinset s2Step286Add1_bounded s2Step286Add1_apart rfl

private theorem s2Step286Add1_distinct : (791::783::815::(s2Step286Add1A++s2Step286Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step286Add1_owned : (791::783::815::(s2Step286Add1A++s2Step286Add1B)).toFinset⊆s2Step286Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step286Add1Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step286Add1_checked : compileHmrHybridCinLog s2Step286Add1Arena 783 791 815 s2Step286Add1A s2Step286Add1B s2Step286Add1Work=some s2Step286Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step286Add1Arena s2Step286Add1During 783 791 815 s2Step286Add1A s2Step286Add1B s2Step286Add1Work
    (by decide +kernel) (by decide +kernel) s2Step286Add1_distinct
    (fun q hq => s2Step286Add1_owned (List.mem_toFinset.mpr hq)) s2Step286Add1_borrowed

private theorem s2Step286F4_apart : Disjoint (s2Step286Add0A++s2Step286Add0B).toFinset (s2Step286Add1A++s2Step286Add1B).toFinset := by
  have nd : ((s2Step286Add0A++s2Step286Add0B)++(s2Step286Add1A++s2Step286Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step286F4_carry : s2Step286F4FlagArena.checkBorrow 1 [815]=some s2Step286Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step286F4FlagArena,s2Step286HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step286F4FlagArena,s2Step286HeadFvAfter,s2Step286Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step286F4_distinct : (811::783::791::815::((s2Step286Add0A++s2Step286Add1A)++(s2Step286Add0B++s2Step286Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step286F4_flag : s2Step286HeadFvAfter.checkBorrow 1 [791]=some s2Step286F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step286HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step286F4_owned : (811::783::((s2Step286Add0A++s2Step286Add1A)++(s2Step286Add0B++s2Step286Add1B))).toFinset⊆s2Step286HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step286HeadFvAfter (fun q => (0≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step286F4_checked : compileHmrHybridF4Log s2Step286HeadFvAfter 811 783 s2Step286Add0A s2Step286Add0B s2Step286Add1A s2Step286Add1B [791] [815] s2Step286Add0Work s2Step286Add1Work=some s2Step286F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step286HeadFvAfter s2Step286F4FlagArena s2Step286Add0Arena s2Step286Add0During s2Step286Add1During 811 783
    s2Step286Add0A s2Step286Add0B s2Step286Add1A s2Step286Add1B [791] [815] s2Step286Add0Work s2Step286Add1Work
    (fun q hq => s2Step286F4_owned (List.mem_toFinset.mpr hq)) s2Step286F4_flag s2Step286F4_carry
    s2Step286F4_distinct s2Step286F4_apart s2Step286Add0_checked s2Step286Add1_checked

private theorem s2Step286Front_branch : s2Step286FrontSigmaArena.checkBorrow 1 [783]=some s2Step286HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step286FrontSigmaArena,s2Step286EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step286FrontSigmaArena,s2Step286EntryGvAfter,s2Step286HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step286Front_entry : HmrFrontEntryValid s2Step286EntryFBefore s2Step286FrontBank 128 158 ⟨128,126,159,158⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step286FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step286EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step286EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step286FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step286Front_sigma : s2Step286EntryGvAfter.checkBorrow 1 [811]=some s2Step286FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step286EntryGvAfter,arenaWires]
  · rfl

private def s2Step286HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step286HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step286HeadFBefore : Arena := s2Step286HeadGAfter

private def s2Step286HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639],768⟩

private def s2Step286HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891],770⟩

private def s2Step286HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 780],769⟩

private def s2Step286HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801],771⟩

private theorem s2Step286HeadBank_incomingDistinct : ([s2Step286HeadGRow,s2Step286HeadFRow,s2Step286HeadGvRow,s2Step286HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step286HeadF_Incoming : rowsOwned s2Step286HeadFBefore [s2Step286HeadFRow,s2Step286HeadGvRow,s2Step286HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step286HeadGRow,s2Step286HeadFRow,s2Step286HeadGvRow,s2Step286HeadFvRow] 1 s2Step286HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step286HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step286HeadBank_outgoingOwned : rowsOwned s2Step286HeadFvAfter [s2Step286HeadGOut,s2Step286HeadFOut,s2Step286HeadGvOut,s2Step286HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step286HeadFvAfter (fun q => (0≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step286HeadF_Outgoing : rowsOwned s2Step286HeadFvAfter [s2Step286HeadFOut,s2Step286HeadGvOut,s2Step286HeadFvOut] :=
  hmrRows_owned_drop s2Step286HeadFvAfter [s2Step286HeadGOut,s2Step286HeadFOut,s2Step286HeadGvOut,s2Step286HeadFvOut] 1 s2Step286HeadBank_outgoingOwned

private theorem s2Step286HeadF_distinct : (s2Step286HeadFRow.sign::s2Step286HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step286HeadF_owned : (s2Step286HeadFRow.sign::s2Step286HeadFRow.payload).toFinset⊆s2Step286HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step286HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step286HeadF_reserved : s2Step286HeadFBefore.reserve s2Step286HeadFFresh.toFinset=some s2Step286HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step286HeadFFresh,arenaWires]
  · norm_num [s2Step286HeadFBefore,s2Step286HeadGAfter,s2Step286HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step286HeadFAfter,s2Step286HeadFBefore,s2Step286HeadGAfter,s2Step286HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step286HeadF_checked : planRowResizeLog s2Step286HeadFBefore s2Step286HeadFRow 129 s2Step286HeadFFresh=
    some (s2Step286HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 812],768⟩,growRow 768 s2Step286HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step286HeadFBefore s2Step286HeadFAfter s2Step286HeadFRow 129 s2Step286HeadFFresh
    s2Step286HeadF_distinct s2Step286HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step286HeadF_reserved
  have rowEq : WindowRow.mk (s2Step286HeadFRow.payload++s2Step286HeadFFresh) s2Step286HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 812],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step286HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step286HeadFvBefore : Arena := s2Step286HeadGvAfter

private theorem s2Step286HeadFv_Incoming : rowsOwned s2Step286HeadFvBefore [s2Step286HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step286HeadGRow,s2Step286HeadFRow,s2Step286HeadGvRow,s2Step286HeadFvRow] 3 s2Step286HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step286HeadFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step286HeadFv_Outgoing : rowsOwned s2Step286HeadFvAfter [s2Step286HeadFvOut] :=
  hmrRows_owned_drop s2Step286HeadFvAfter [s2Step286HeadGOut,s2Step286HeadFOut,s2Step286HeadGvOut,s2Step286HeadFvOut] 3 s2Step286HeadBank_outgoingOwned

private theorem s2Step286HeadFv_distinct : (s2Step286HeadFvRow.sign::s2Step286HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step286HeadFv_owned : (s2Step286HeadFvRow.sign::s2Step286HeadFvRow.payload).toFinset⊆s2Step286HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step286HeadFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step286HeadFv_reserved : s2Step286HeadFvBefore.reserve s2Step286HeadFvFresh.toFinset=some s2Step286HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step286HeadFvFresh,arenaWires]
  · norm_num [s2Step286HeadFvBefore,s2Step286HeadGvAfter,s2Step286HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step286HeadFvAfter,s2Step286HeadFvBefore,s2Step286HeadGvAfter,s2Step286HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step286HeadFv_checked : planRowResizeLog s2Step286HeadFvBefore s2Step286HeadFvRow 159 s2Step286HeadFvFresh=
    some (s2Step286HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781],770⟩,growRow 770 s2Step286HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step286HeadFvBefore s2Step286HeadFvAfter s2Step286HeadFvRow 159 s2Step286HeadFvFresh
    s2Step286HeadFv_distinct s2Step286HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step286HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step286HeadFvRow.payload++s2Step286HeadFvFresh) s2Step286HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step286HeadG_Incoming : rowsOwned s2Step286HeadGBefore [s2Step286HeadGRow,s2Step286HeadFRow,s2Step286HeadGvRow,s2Step286HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step286HeadGRow,s2Step286HeadFRow,s2Step286HeadGvRow,s2Step286HeadFvRow] 0 s2Step286HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step286HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step286HeadG_Outgoing : rowsOwned s2Step286HeadFvAfter [s2Step286HeadGOut,s2Step286HeadFOut,s2Step286HeadGvOut,s2Step286HeadFvOut] :=
  hmrRows_owned_drop s2Step286HeadFvAfter [s2Step286HeadGOut,s2Step286HeadFOut,s2Step286HeadGvOut,s2Step286HeadFvOut] 0 s2Step286HeadBank_outgoingOwned

private theorem s2Step286HeadG_distinct : (s2Step286HeadGRow.sign::s2Step286HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step286HeadG_owned : (s2Step286HeadGRow.sign::s2Step286HeadGRow.payload).toFinset⊆s2Step286HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step286HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step286HeadG_reserved : s2Step286HeadGBefore.reserve s2Step286HeadGFresh.toFinset=some s2Step286HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step286HeadGFresh,arenaWires]
  · norm_num [s2Step286HeadGBefore,s2Step286HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step286HeadGAfter,s2Step286HeadGBefore,s2Step286HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step286HeadG_checked : planRowResizeLog s2Step286HeadGBefore s2Step286HeadGRow 129 s2Step286HeadGFresh=
    some (s2Step286HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 780, 790],769⟩,growRow 769 s2Step286HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step286HeadGBefore s2Step286HeadGAfter s2Step286HeadGRow 129 s2Step286HeadGFresh
    s2Step286HeadG_distinct s2Step286HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step286HeadG_reserved
  have rowEq : WindowRow.mk (s2Step286HeadGRow.payload++s2Step286HeadGFresh) s2Step286HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 780, 790],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step286HeadGvBefore : Arena := s2Step286HeadFAfter

private theorem s2Step286HeadGv_Incoming : rowsOwned s2Step286HeadGvBefore [s2Step286HeadGvRow,s2Step286HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step286HeadGRow,s2Step286HeadFRow,s2Step286HeadGvRow,s2Step286HeadFvRow] 2 s2Step286HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step286HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step286HeadGv_Outgoing : rowsOwned s2Step286HeadFvAfter [s2Step286HeadGvOut,s2Step286HeadFvOut] :=
  hmrRows_owned_drop s2Step286HeadFvAfter [s2Step286HeadGOut,s2Step286HeadFOut,s2Step286HeadGvOut,s2Step286HeadFvOut] 2 s2Step286HeadBank_outgoingOwned

private theorem s2Step286HeadGv_distinct : (s2Step286HeadGvRow.sign::s2Step286HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step286HeadGv_owned : (s2Step286HeadGvRow.sign::s2Step286HeadGvRow.payload).toFinset⊆s2Step286HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step286HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step286HeadGv_reserved : s2Step286HeadGvBefore.reserve s2Step286HeadGvFresh.toFinset=some s2Step286HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step286HeadGvFresh,arenaWires]
  · norm_num [s2Step286HeadGvBefore,s2Step286HeadFAfter,s2Step286HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step286HeadGvAfter,s2Step286HeadGvBefore,s2Step286HeadFAfter,s2Step286HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step286HeadGv_checked : planRowResizeLog s2Step286HeadGvBefore s2Step286HeadGvRow 159 s2Step286HeadGvFresh=
    some (s2Step286HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 796],771⟩,growRow 771 s2Step286HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step286HeadGvBefore s2Step286HeadGvAfter s2Step286HeadGvRow 159 s2Step286HeadGvFresh
    s2Step286HeadGv_distinct s2Step286HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step286HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step286HeadGvRow.payload++s2Step286HeadGvFresh) s2Step286HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 796],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step286HeadBank_rows : planWindowRowsLog s2Step286HeadGBefore [(s2Step286HeadGRow,129),(s2Step286HeadFRow,129),(s2Step286HeadGvRow,159),(s2Step286HeadFvRow,159)] [s2Step286HeadGFresh,s2Step286HeadFFresh,s2Step286HeadGvFresh,s2Step286HeadFvFresh]=
    some (s2Step286HeadFvAfter,[s2Step286HeadGOut,s2Step286HeadFOut,s2Step286HeadGvOut,s2Step286HeadFvOut],(growRow 769 s2Step286HeadGFresh ++ (growRow 768 s2Step286HeadFFresh ++ (growRow 771 s2Step286HeadGvFresh ++ (growRow 770 s2Step286HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step286HeadFvAfter [] []=some (s2Step286HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step286HeadFvBefore s2Step286HeadFvAfter s2Step286HeadFvAfter
    s2Step286HeadFvRow s2Step286HeadFvOut 159 s2Step286HeadFvFresh [] [] []
    (growRow 770 s2Step286HeadFvFresh) ([]) s2Step286HeadFv_Incoming s2Step286HeadFv_checked h4 s2Step286HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step286HeadGvBefore s2Step286HeadGvAfter s2Step286HeadFvAfter
    s2Step286HeadGvRow s2Step286HeadGvOut 159 s2Step286HeadGvFresh [(s2Step286HeadFvRow,159)] [s2Step286HeadFvFresh] [s2Step286HeadFvOut]
    (growRow 771 s2Step286HeadGvFresh) ((growRow 770 s2Step286HeadFvFresh ++ [])) s2Step286HeadGv_Incoming s2Step286HeadGv_checked h3 s2Step286HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step286HeadFBefore s2Step286HeadFAfter s2Step286HeadFvAfter
    s2Step286HeadFRow s2Step286HeadFOut 129 s2Step286HeadFFresh [(s2Step286HeadGvRow,159),(s2Step286HeadFvRow,159)] [s2Step286HeadGvFresh,s2Step286HeadFvFresh] [s2Step286HeadGvOut,s2Step286HeadFvOut]
    (growRow 768 s2Step286HeadFFresh) ((growRow 771 s2Step286HeadGvFresh ++ (growRow 770 s2Step286HeadFvFresh ++ []))) s2Step286HeadF_Incoming s2Step286HeadF_checked h2 s2Step286HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step286HeadGBefore s2Step286HeadGAfter s2Step286HeadFvAfter
    s2Step286HeadGRow s2Step286HeadGOut 129 s2Step286HeadGFresh [(s2Step286HeadFRow,129),(s2Step286HeadGvRow,159),(s2Step286HeadFvRow,159)] [s2Step286HeadFFresh,s2Step286HeadGvFresh,s2Step286HeadFvFresh] [s2Step286HeadFOut,s2Step286HeadGvOut,s2Step286HeadFvOut]
    (growRow 769 s2Step286HeadGFresh) ((growRow 768 s2Step286HeadFFresh ++ (growRow 771 s2Step286HeadGvFresh ++ (growRow 770 s2Step286HeadFvFresh ++ [])))) s2Step286HeadG_Incoming s2Step286HeadG_checked h1 s2Step286HeadG_Outgoing
  exact h0

private theorem s2Step286HeadBank_checked : compileHmrBankResizeLog .headroom s2Step286HeadGBefore ⟨s2Step286HeadFRow,s2Step286HeadGRow,s2Step286HeadFvRow,s2Step286HeadGvRow⟩ ⟨129,129,159,159⟩ [s2Step286HeadGFresh,s2Step286HeadFFresh,s2Step286HeadGvFresh,s2Step286HeadFvFresh]=
    some (s2Step286HeadFvAfter,⟨s2Step286HeadFOut,s2Step286HeadGOut,s2Step286HeadFvOut,s2Step286HeadGvOut⟩,(growRow 769 s2Step286HeadGFresh ++ (growRow 768 s2Step286HeadFFresh ++ (growRow 771 s2Step286HeadGvFresh ++ (growRow 770 s2Step286HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step286HeadBank_rows]
  rfl

private theorem s2Step286Front_checked : compileHmrSourceFrontLog s2Step286EntryFBefore s2Step286FrontBank 128 158 ⟨128,126,159,158⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step286FrontLog=some s2Step286FrontPlan := by
  have pairEq : s2Step286FrontPair=⟨s2Step286HeadFRow,s2Step286HeadGRow,s2Step286HeadFvRow,s2Step286HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step286FrontHead=⟨s2Step286ExitFRow,s2Step286ExitGRow,s2Step286ExitFvRow,s2Step286ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step286Add0A=s2Step286FrontHead.f.wires := by decide +kernel
  have gEq : s2Step286Add0B=s2Step286FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step286Add1A=s2Step286FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step286Add1B=s2Step286FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step286EntryFBefore s2Step286FrontBank 128 158 ⟨128,126,159,158⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step286FrontLog s2Step286FrontPlan
  · exact s2Step286Front_entry
  · exact s2Step286EntryBank_checked
  · exact s2Step286Front_sigma
  · rfl
  · exact s2Step286Front_branch
  · rfl
  · simpa only [s2Step286FrontPlan,pairEq] using s2Step286HeadBank_checked
  · simpa only [s2Step286FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step286F4_checked
  · exact s2Step286Counter_checked
  · rfl
  · simpa only [s2Step286FrontPlan,headEq] using s2Step286ExitBank_checked

private theorem s2Step286Complete_explicit_checked : compileHmrEarlyStepLog s2Step286EntryFBefore s2Step286FrontBank 128 158 ⟨128,126,159,158⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 54 s2Step286CompleteLog=some s2Step286CompletePlan := by
  let Q := s2Step286EarlyControlPlan
  have hq := s2Step286EarlyControl_plan_checked
  have fv1 : s2Step286CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step286CompleteOut.fv.payload[2]?.getD s2Step286CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step286CompleteOut.fv.payload[3]?.getD s2Step286CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step286CompleteOut.fv.payload[4]?.getD s2Step286CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step286EntryFBefore s2Step286EarlyControlArena s2Step286FrontBank 128 158 ⟨128,126,159,158⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 54 s2Step286CompleteLog s2Step286FrontPlan Q
    s2Step286Front_checked s2Step286Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step286Complete_owned s2Step286Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step286EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 777 811 s2Step286CompleteOut.fv.second (s2Step286CompleteOut.fv.payload[2]?.getD s2Step286CompleteOut.fv.sign) (s2Step286CompleteOut.fv.payload[3]?.getD s2Step286CompleteOut.fv.sign) (s2Step286CompleteOut.fv.payload[4]?.getD s2Step286CompleteOut.fv.sign) 783 54 s2Step286EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep286Arena : Arena := s2Step286EntryFBefore
def s2PrivateStep286Bank : WindowBank := s2Step286FrontBank
def s2PrivateStep286Spec : HmrSourceWalkStepLog := ⟨128,158,⟨128,126,159,158⟩,54,.early s2Step286CompleteLog⟩
def s2PrivateStep286Plan : HmrSourceStepPlan := .early s2Step286CompletePlan
theorem s2PrivateStep286_source : s2PrivateStep286Spec=s2ObservedLogs272[14] := rfl
theorem s2PrivateStep286_checked : compileHmrSourceStepLog s2PrivateStep286Arena s2PrivateStep286Bank
    s2PrivateStep286Spec.fgWidth s2PrivateStep286Spec.vWidth s2PrivateStep286Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905]
    6 498 286 s2PrivateStep286Spec.need none s2PrivateStep286Spec.log=some s2PrivateStep286Plan := by
  change compileHmrSourceStepLog s2Step286EntryFBefore s2Step286FrontBank 128 158 ⟨128,126,159,158⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 6 498 286 54 none (.early s2Step286CompleteLog)=some (.early s2Step286CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 286<498)]
  rw [s2Step286Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
