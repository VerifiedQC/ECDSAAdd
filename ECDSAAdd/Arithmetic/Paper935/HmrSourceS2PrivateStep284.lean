import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep282
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

private def s2Step284CompleteMoves : List (Wire × Wire) := [(790,128),(812,640)]

private def s2Step284EarlyControlLog : HmrEarlyControlLog := ⟨[812, 790, 783, 891, 796],[781],[791],[815, 830, 800, 894, 896, 901],[]⟩

private def s2Step284FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [845]],[[781], [796], [783], [891]],[[], [], [], []]⟩,[780],[801],[791],[815],[830, 800, 894, 896, 901, 903, 904, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[830, 800, 894, 896, 901, 903, 904, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[791, 815, 830, 800]⟩

private def s2Step284CompleteLog : HmrEarlyStepLog := ⟨s2Step284FrontLog,s2Step284CompleteMoves,s2Step284EarlyControlLog⟩

private def s2Step284ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639],768⟩

private def s2Step284ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798],770⟩

private def s2Step284ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127],769⟩

private def s2Step284ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845],771⟩

private def s2Step284FrontOut : WindowBank := ⟨s2Step284ExitFOut,s2Step284ExitGOut,s2Step284ExitFvOut,s2Step284ExitGvOut⟩

private def s2Step284CompleteOut : WindowBank := s2Step284FrontOut.repacked s2Step284CompleteMoves

private def s2Step284EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step284EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step284EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step284EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step284EarlyControlPositiveArena,[781],s2Step284EarlyControlEqualityArena,[791],⟨⟨780,false⟩,[⟨⟨781,false⟩,791⟩]⟩⟩

private def s2Step284EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step284EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step284EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step284EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step284EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step284EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step284EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,812⟩,⟨⟨774,false⟩,790⟩,⟨⟨775,false⟩,783⟩,⟨⟨776,false⟩,891⟩,⟨⟨777,false⟩,796⟩]⟩

private def s2Step284EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step284EarlyControlZeroArena,s2Step284EarlyControlZeroPlan,s2Step284EarlyControlClassPlan,s2Step284EarlyControlFlagArena,s2Step284EarlyControlFittedArena,s2Step284EarlyControlHistoryArena,s2Step284EarlyControlSigmaArena,s2Step284EarlyControlOutputArena,s2Step284EarlyControlLog⟩

private def s2Step284CounterWork : List Wire := [791, 815, 830, 800]

private theorem s2Step284Counter_bounded : s2Step284CounterWork.toFinset⊆arenaWires := by norm_num [s2Step284CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step284HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step284CounterDuring : Arena := ⟨s2Step284HeadFvAfter.live∪s2Step284CounterWork.toFinset,Finset.union_subset s2Step284HeadFvAfter.bounded s2Step284Counter_bounded⟩

private def s2Step284EntryFFresh : List Wire := []

private def s2Step284EntryFvFresh : List Wire := []

private def s2Step284EntryGFresh : List Wire := []

private def s2Step284EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step284EntryGvFresh : List Wire := [845]

private def s2Step284ExitFExtra : List Wire := [640, 796]

private def s2Step284ExitFvExtra : List Wire := [891]

private def s2Step284ExitGExtra : List Wire := [128, 781]

private def s2Step284ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<128) ∨ (129≤q ∧ q<640) ∨ (641≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step284ExitGvExtra : List Wire := [783]

private def s2Step284Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step284Add0Work : List Wire := [830, 800, 894, 896, 901, 903, 904, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step284Add0_bounded : s2Step284Add0Work.toFinset⊆arenaWires := by
  have h : s2Step284Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step284Add0During : Arena := ⟨s2Step284Add0Arena.live∪s2Step284Add0Work.toFinset,Finset.union_subset s2Step284Add0Arena.bounded s2Step284Add0_bounded⟩

private def s2Step284Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step284Add1Work : List Wire := [830, 800, 894, 896, 901, 903, 904, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step284Add1_bounded : s2Step284Add1Work.toFinset⊆arenaWires := by
  have h : s2Step284Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step284Add1During : Arena := ⟨s2Step284Add1Arena.live∪s2Step284Add1Work.toFinset,Finset.union_subset s2Step284Add1Arena.bounded s2Step284Add1_bounded⟩

private def s2Step284F4FlagArena : Arena := ⟨s2Step284HeadFvAfter.live∪{791},Finset.union_subset s2Step284HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step284F4Plan : HmrHybridF4Plan := ⟨s2Step284F4FlagArena,[791],s2Step284Add0Arena,[815],s2Step284Add0During,s2Step284Add0Work,s2Step284Add1During,s2Step284Add1Work⟩

private def s2Step284HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 796],768⟩

private def s2Step284HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891],770⟩

private def s2Step284HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 781],769⟩

private def s2Step284HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 783],771⟩

private def s2Step284FrontHead : WindowBank := ⟨s2Step284HeadFOut,s2Step284HeadGOut,s2Step284HeadFvOut,s2Step284HeadGvOut⟩

private def s2Step284EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640],768⟩

private def s2Step284EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798],770⟩

private def s2Step284EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128],769⟩

private def s2Step284EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845],771⟩

private def s2Step284FrontPair : WindowBank := ⟨s2Step284EntryFOut,s2Step284EntryGOut,s2Step284EntryFvOut,s2Step284EntryGvOut⟩

private def s2Step284FrontSigmaArena : Arena := ⟨s2Step284EntryGvAfter.live∪{780},Finset.union_subset s2Step284EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step284HeadFFresh : List Wire := [796]

private def s2Step284HeadFvFresh : List Wire := [891]

private def s2Step284HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step284HeadGFresh : List Wire := [781]

private def s2Step284HeadGvFresh : List Wire := [783]

private def s2Step284FrontPlan : HmrSourceFront := ⟨s2Step284EntryGvAfter,s2Step284FrontPair,(growRow 768 s2Step284EntryFFresh ++ (growRow 769 s2Step284EntryGFresh ++ (growRow 770 s2Step284EntryFvFresh ++ (growRow 771 s2Step284EntryGvFresh ++ [])))),s2Step284FrontSigmaArena,[780],s2Step284HeadGBefore,[801],
  s2Step284HeadFvAfter,s2Step284FrontHead,(growRow 769 s2Step284HeadGFresh ++ (growRow 768 s2Step284HeadFFresh ++ (growRow 771 s2Step284HeadGvFresh ++ (growRow 770 s2Step284HeadFvFresh ++ [])))),s2Step284F4Plan,s2Step284CounterDuring,s2Step284CounterWork,s2Step284ExitGvAfter,s2Step284FrontOut,(shrinkRow 769 s2Step284ExitGExtra ++ (shrinkRow 768 s2Step284ExitFExtra ++ (shrinkRow 770 s2Step284ExitFvExtra ++ (shrinkRow 771 s2Step284ExitGvExtra ++ []))))⟩

private def s2Step284CompletePlan : HmrEarlyStepPlan := ⟨s2Step284FrontPlan,s2Step284EarlyControlArena,s2Step284EarlyControlPlan,s2Step284CompleteMoves⟩

private theorem s2Step284Complete_apart : List.Disjoint (s2Step284CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [780, 801, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] := by
  have nd : ((s2Step284CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[780, 801, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step284Complete_owned : (s2Step284CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step284EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step284EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private def s2Step284CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,640),(641,781),(782,783),(784,790),(792,796),(797,800),(801,815),(816,830),(831,891),(892,894),(895,896),(897,901),(902,903),(905,907)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s2Step284CompleteRelocationMove0Borrowed : Arena := ⟨s2Step284ExitGvAfter.live∪{128},Finset.union_subset s2Step284ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step284CompleteRelocationMove1Borrowed : Arena := ⟨s2Step284CompleteRelocationMove0After.live∪{640},Finset.union_subset s2Step284CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s2Step284CompleteRelocation_move0_owned : 790∈s2Step284ExitGvAfter.live := by norm_num [s2Step284ExitGvAfter,arenaWires]

private theorem s2Step284CompleteRelocation_move0_reserve : s2Step284ExitGvAfter.reserve {128}=some s2Step284CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step284ExitGvAfter,arenaWires]
  · rfl

private theorem s2Step284CompleteRelocation_move0_retire : s2Step284CompleteRelocationMove0Borrowed.retireSet {790}=s2Step284CompleteRelocationMove0After := by
  unfold Arena.retireSet s2Step284CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step284CompleteRelocationMove0Borrowed,s2Step284ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step284CompleteRelocation_move1_owned : 812∈s2Step284CompleteRelocationMove0After.live := by norm_num [s2Step284CompleteRelocationMove0After,arenaWires]

private theorem s2Step284CompleteRelocation_move1_reserve : s2Step284CompleteRelocationMove0After.reserve {640}=some s2Step284CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step284CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s2Step284CompleteRelocation_move1_retire : s2Step284CompleteRelocationMove1Borrowed.retireSet {812}=s2Step284EarlyControlArena := by
  unfold Arena.retireSet s2Step284EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step284CompleteRelocationMove1Borrowed,s2Step284CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step284CompleteRelocation_checked : s2Step284ExitGvAfter.checkRepack [(790,128),(812,640)]=some s2Step284EarlyControlArena := by
  have tail2 : s2Step284EarlyControlArena.checkRepack []=some s2Step284EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s2Step284CompleteRelocationMove0After s2Step284CompleteRelocationMove1Borrowed s2Step284EarlyControlArena s2Step284EarlyControlArena 812 640 []
    s2Step284CompleteRelocation_move1_owned s2Step284CompleteRelocation_move1_reserve s2Step284CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s2Step284ExitGvAfter s2Step284CompleteRelocationMove0Borrowed s2Step284CompleteRelocationMove0After s2Step284EarlyControlArena 790 128 [(812,640)]
    s2Step284CompleteRelocation_move0_owned s2Step284CompleteRelocation_move0_reserve s2Step284CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s2Step284Complete_repack : s2Step284ExitGvAfter.checkRepack s2Step284CompleteMoves=some s2Step284EarlyControlArena := by
  simpa only [s2Step284CompleteMoves] using s2Step284CompleteRelocation_checked

private theorem s2Step284EarlyControl_branchOwned : ([801] : List Wire).toFinset⊆s2Step284EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step284EarlyControlSigmaArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step284EarlyControl_branch : compileHmrBranchRetirement s2Step284EarlyControlSigmaArena 801=some s2Step284EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step284EarlyControl_branchOwned
  · ext q
    simp [s2Step284EarlyControlOutputArena,s2Step284EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step284EarlyControl_classEqualityBorrow : s2Step284EarlyControlPositiveArena.checkBorrow (([780, 781] : List Wire).length-1) s2Step284EarlyControlLog.classWork=some s2Step284EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step284EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step284EarlyControlPositiveArena (fun q => (0≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step284EarlyControlEqualityArena,s2Step284EarlyControlPositiveArena,s2Step284EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step284EarlyControl_classEqualityOwned : ([780, 781] : List Wire).toFinset⊆s2Step284EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step284EarlyControlPositiveArena (fun q => (0≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step284EarlyControl_classEquality : compileHmrEqualityLog s2Step284EarlyControlPositiveArena [780, 781] 0 s2Step284EarlyControlLog.classWork=some (s2Step284EarlyControlEqualityArena,s2Step284EarlyControlLog.classWork,s2Step284EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step284EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step284EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step284EarlyControl_classOwned : ([777, 796, 780] : List Wire).toFinset⊆s2Step284EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step284EarlyControlZeroArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step284EarlyControl_positiveBorrow : s2Step284EarlyControlZeroArena.checkBorrow (1) s2Step284EarlyControlLog.positiveWork=some s2Step284EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step284EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step284EarlyControlZeroArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step284EarlyControlPositiveArena,s2Step284EarlyControlZeroArena,s2Step284EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step284EarlyControl_class : compileHmrSourceClassLog s2Step284EarlyControlZeroArena false 777 s2Step284EarlyControlZeroPlan.top 0 780 s2Step284EarlyControlLog.positiveWork s2Step284EarlyControlLog.classWork=some s2Step284EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step284EarlyControlClassPlan s2Step284EarlyControlZeroArena false 777 s2Step284EarlyControlZeroPlan.top 0 780
  constructor
  · decide +kernel
  · exact s2Step284EarlyControl_classOwned
  · exact s2Step284EarlyControl_positiveBorrow
  · exact s2Step284EarlyControl_classEquality

private theorem s2Step284EarlyControl_entryRecordOwned : ([801, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).toFinset⊆s2Step284EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step284EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step284EarlyControl_entrySigmaOwned : ([780, 254] : List Wire).toFinset⊆s2Step284EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step284EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step284EarlyControl_fitBorrow : s2Step284EarlyControlFlagArena.checkBorrow ((54-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).length)) s2Step284EarlyControlLog.recordFresh=some s2Step284EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step284EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step284EarlyControlFlagArena (fun q => (0≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step284EarlyControlFittedArena,s2Step284EarlyControlFlagArena,s2Step284EarlyControlLog,arenaWires]

private theorem s2Step284EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).toFinset⊆s2Step284EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step284EarlyControlFlagArena (fun q => (0≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step284EarlyControl_fit : compileHmrRecordGrowLog s2Step284EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 54 s2Step284EarlyControlLog.recordFresh=some s2Step284EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step284EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step284EarlyControl_fitBorrow

private theorem s2Step284EarlyControl_flagsBorrow : s2Step284EarlyControlEqualityArena.checkBorrow (6) s2Step284EarlyControlLog.flagWork=some s2Step284EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step284EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step284EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step284EarlyControlFlagArena,s2Step284EarlyControlEqualityArena,s2Step284EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step284EarlyControl_flagsOwned : ([791, 253, 252, 251] : List Wire).toFinset⊆s2Step284EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step284EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step284EarlyControl_flags : compileHmrFlagsLog s2Step284EarlyControlClassPlan.equalityArena s2Step284EarlyControlClassPlan.equality.top 253 252 251 s2Step284EarlyControlLog.flagWork=some s2Step284EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step284EarlyControl_flagsOwned⟩
  · exact s2Step284EarlyControl_flagsBorrow

private theorem s2Step284EarlyControl_historyBorrow : s2Step284EarlyControlArena.checkBorrow ((54-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).length)) s2Step284EarlyControlLog.recordFresh=some s2Step284EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step284EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step284EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step284EarlyControlHistoryArena,s2Step284EarlyControlArena,s2Step284EarlyControlLog,arenaWires]

private theorem s2Step284EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).toFinset⊆s2Step284EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step284EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step284EarlyControl_history : compileHmrRecordGrowLog s2Step284EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 54 s2Step284EarlyControlLog.recordFresh=some s2Step284EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step284EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step284EarlyControl_historyBorrow

private theorem s2Step284EarlyControl_sigmaOwned : ([254, 780] : List Wire).toFinset⊆s2Step284EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step284EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step284EarlyControl_sigmaReleaseOwned : ([780] : List Wire).toFinset⊆s2Step284EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step284EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step284EarlyControl_sigmaRelease : s2Step284EarlyControlHistoryArena.release {780} (fun _ => false)=some s2Step284EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step284EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step284EarlyControlSigmaArena,s2Step284EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step284EarlyControl_sigma : compileHmrSigmaDropLog s2Step284EarlyControlHistoryArena false 0 0 254 780 []=some s2Step284EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step284EarlyControl_sigmaOwned⟩
  · exact s2Step284EarlyControl_sigmaRelease

private theorem s2Step284EarlyControl_zeroBorrow : s2Step284EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step284EarlyControlLog.zeroWork=some s2Step284EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step284EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step284EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step284EarlyControlZeroArena,s2Step284EarlyControlArena,s2Step284EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step284EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step284EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step284EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step284EarlyControl_zero : compileHmrEqualityLog s2Step284EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step284EarlyControlLog.zeroWork=some (s2Step284EarlyControlZeroArena,s2Step284EarlyControlLog.zeroWork,s2Step284EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step284EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step284EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step284EarlyControl_logged : s2Step284EarlyControlPlan.Logged s2Step284EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 777 780 254 253 252 251 801 54 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step284EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step284EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step284EarlyControl_zero
  · exact s2Step284EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step284EarlyControl_flags
  · exact s2Step284EarlyControl_fit
  · exact s2Step284EarlyControl_history
  · exact s2Step284EarlyControl_sigma
  · exact s2Step284EarlyControl_branch

private theorem s2Step284EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step284EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 777 780 254 253 252 251 801 54 s2Step284EarlyControlLog=some s2Step284EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step284EarlyControlPlan s2Step284EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 777 780 254 253 252 251 801 54 s2Step284EarlyControl_logged

private def s2Step284EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step284EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640],768⟩

private def s2Step284EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798],770⟩

private def s2Step284EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128],769⟩

private def s2Step284EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788],771⟩

private def s2Step284FrontBank : WindowBank := ⟨s2Step284EntryFRow,s2Step284EntryGRow,s2Step284EntryFvRow,s2Step284EntryGvRow⟩

private def s2Step284Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 796, 768]

private def s2Step284Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 781, 769]

private def s2Step284Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 770]

private def s2Step284Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 783, 771]

private theorem s2Step284Counter_apart : Disjoint s2Step284HeadFvAfter.live s2Step284CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step284HeadFvAfter (fun q => (0≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step284Counter_borrowed : s2Step284HeadFvAfter.checkBorrow 4 s2Step284CounterWork=some s2Step284CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step284HeadFvAfter s2Step284CounterDuring s2Step284CounterWork.toFinset s2Step284Counter_bounded s2Step284Counter_apart rfl

private theorem s2Step284Counter_owned : (780::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step284HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step284HeadFvAfter (fun q => (0≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step284Counter_checked : compileHmrCounterStepLog s2Step284HeadFvAfter true 780 [772, 773, 774, 775, 776, 777] s2Step284CounterWork=some s2Step284CounterDuring := by
  have owned : ∀q∈780::[772, 773, 774, 775, 776, 777],q∈s2Step284HeadFvAfter.live := fun q hq => s2Step284Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step284Counter_borrowed

private def s2Step284EntryFAfter : Arena := s2Step284EntryFBefore

private theorem s2Step284EntryBank_incomingDistinct : ([s2Step284EntryFRow,s2Step284EntryGRow,s2Step284EntryFvRow,s2Step284EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step284EntryF_Incoming : rowsOwned s2Step284EntryFBefore [s2Step284EntryFRow,s2Step284EntryGRow,s2Step284EntryFvRow,s2Step284EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step284EntryFRow,s2Step284EntryGRow,s2Step284EntryFvRow,s2Step284EntryGvRow] 0 s2Step284EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step284EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step284EntryBank_outgoingOwned : rowsOwned s2Step284EntryGvAfter [s2Step284EntryFOut,s2Step284EntryGOut,s2Step284EntryFvOut,s2Step284EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step284EntryGvAfter (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step284EntryF_Outgoing : rowsOwned s2Step284EntryGvAfter [s2Step284EntryFOut,s2Step284EntryGOut,s2Step284EntryFvOut,s2Step284EntryGvOut] :=
  hmrRows_owned_drop s2Step284EntryGvAfter [s2Step284EntryFOut,s2Step284EntryGOut,s2Step284EntryFvOut,s2Step284EntryGvOut] 0 s2Step284EntryBank_outgoingOwned

private theorem s2Step284EntryF_distinct : (s2Step284EntryFRow.sign::s2Step284EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step284EntryF_owned : (s2Step284EntryFRow.sign::s2Step284EntryFRow.payload).toFinset⊆s2Step284EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step284EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step284EntryF_reserved : s2Step284EntryFBefore.reserve s2Step284EntryFFresh.toFinset=some s2Step284EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step284EntryFFresh,arenaWires]
  · norm_num [s2Step284EntryFBefore,s2Step284EntryFFresh,arenaWires]
  · simp only [s2Step284EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step284EntryF_checked : planRowResizeLog s2Step284EntryFBefore s2Step284EntryFRow 129 s2Step284EntryFFresh=
    some (s2Step284EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640],768⟩,growRow 768 s2Step284EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step284EntryFBefore s2Step284EntryFAfter s2Step284EntryFRow 129 s2Step284EntryFFresh
    s2Step284EntryF_distinct s2Step284EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step284EntryF_reserved
  have rowEq : WindowRow.mk (s2Step284EntryFRow.payload++s2Step284EntryFFresh) s2Step284EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step284EntryFvAfter : Arena := s2Step284EntryFBefore

private def s2Step284EntryFvBefore : Arena := s2Step284EntryFBefore

private theorem s2Step284EntryFv_Incoming : rowsOwned s2Step284EntryFvBefore [s2Step284EntryFvRow,s2Step284EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step284EntryFRow,s2Step284EntryGRow,s2Step284EntryFvRow,s2Step284EntryGvRow] 2 s2Step284EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step284EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step284EntryFv_Outgoing : rowsOwned s2Step284EntryGvAfter [s2Step284EntryFvOut,s2Step284EntryGvOut] :=
  hmrRows_owned_drop s2Step284EntryGvAfter [s2Step284EntryFOut,s2Step284EntryGOut,s2Step284EntryFvOut,s2Step284EntryGvOut] 2 s2Step284EntryBank_outgoingOwned

private theorem s2Step284EntryFv_distinct : (s2Step284EntryFvRow.sign::s2Step284EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step284EntryFv_owned : (s2Step284EntryFvRow.sign::s2Step284EntryFvRow.payload).toFinset⊆s2Step284EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step284EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step284EntryFv_reserved : s2Step284EntryFvBefore.reserve s2Step284EntryFvFresh.toFinset=some s2Step284EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step284EntryFvFresh,arenaWires]
  · norm_num [s2Step284EntryFvBefore,s2Step284EntryFBefore,s2Step284EntryFvFresh,arenaWires]
  · simp only [s2Step284EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step284EntryFv_checked : planRowResizeLog s2Step284EntryFvBefore s2Step284EntryFvRow 157 s2Step284EntryFvFresh=
    some (s2Step284EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798],770⟩,growRow 770 s2Step284EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step284EntryFvBefore s2Step284EntryFvAfter s2Step284EntryFvRow 157 s2Step284EntryFvFresh
    s2Step284EntryFv_distinct s2Step284EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step284EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step284EntryFvRow.payload++s2Step284EntryFvFresh) s2Step284EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step284EntryGAfter : Arena := s2Step284EntryFBefore

private def s2Step284EntryGBefore : Arena := s2Step284EntryFBefore

private theorem s2Step284EntryG_Incoming : rowsOwned s2Step284EntryGBefore [s2Step284EntryGRow,s2Step284EntryFvRow,s2Step284EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step284EntryFRow,s2Step284EntryGRow,s2Step284EntryFvRow,s2Step284EntryGvRow] 1 s2Step284EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step284EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step284EntryG_Outgoing : rowsOwned s2Step284EntryGvAfter [s2Step284EntryGOut,s2Step284EntryFvOut,s2Step284EntryGvOut] :=
  hmrRows_owned_drop s2Step284EntryGvAfter [s2Step284EntryFOut,s2Step284EntryGOut,s2Step284EntryFvOut,s2Step284EntryGvOut] 1 s2Step284EntryBank_outgoingOwned

private theorem s2Step284EntryG_distinct : (s2Step284EntryGRow.sign::s2Step284EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step284EntryG_owned : (s2Step284EntryGRow.sign::s2Step284EntryGRow.payload).toFinset⊆s2Step284EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step284EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step284EntryG_reserved : s2Step284EntryGBefore.reserve s2Step284EntryGFresh.toFinset=some s2Step284EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step284EntryGFresh,arenaWires]
  · norm_num [s2Step284EntryGBefore,s2Step284EntryFBefore,s2Step284EntryGFresh,arenaWires]
  · simp only [s2Step284EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step284EntryG_checked : planRowResizeLog s2Step284EntryGBefore s2Step284EntryGRow 129 s2Step284EntryGFresh=
    some (s2Step284EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128],769⟩,growRow 769 s2Step284EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step284EntryGBefore s2Step284EntryGAfter s2Step284EntryGRow 129 s2Step284EntryGFresh
    s2Step284EntryG_distinct s2Step284EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step284EntryG_reserved
  have rowEq : WindowRow.mk (s2Step284EntryGRow.payload++s2Step284EntryGFresh) s2Step284EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step284EntryGvBefore : Arena := s2Step284EntryFBefore

private theorem s2Step284EntryGv_Incoming : rowsOwned s2Step284EntryGvBefore [s2Step284EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step284EntryFRow,s2Step284EntryGRow,s2Step284EntryFvRow,s2Step284EntryGvRow] 3 s2Step284EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step284EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step284EntryGv_Outgoing : rowsOwned s2Step284EntryGvAfter [s2Step284EntryGvOut] :=
  hmrRows_owned_drop s2Step284EntryGvAfter [s2Step284EntryFOut,s2Step284EntryGOut,s2Step284EntryFvOut,s2Step284EntryGvOut] 3 s2Step284EntryBank_outgoingOwned

private theorem s2Step284EntryGv_distinct : (s2Step284EntryGvRow.sign::s2Step284EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step284EntryGv_owned : (s2Step284EntryGvRow.sign::s2Step284EntryGvRow.payload).toFinset⊆s2Step284EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step284EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step284EntryGv_reserved : s2Step284EntryGvBefore.reserve s2Step284EntryGvFresh.toFinset=some s2Step284EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step284EntryGvFresh,arenaWires]
  · norm_num [s2Step284EntryGvBefore,s2Step284EntryFBefore,s2Step284EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step284EntryGvAfter,s2Step284EntryGvBefore,s2Step284EntryFBefore,s2Step284EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step284EntryGv_checked : planRowResizeLog s2Step284EntryGvBefore s2Step284EntryGvRow 157 s2Step284EntryGvFresh=
    some (s2Step284EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845],771⟩,growRow 771 s2Step284EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step284EntryGvBefore s2Step284EntryGvAfter s2Step284EntryGvRow 157 s2Step284EntryGvFresh
    s2Step284EntryGv_distinct s2Step284EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step284EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step284EntryGvRow.payload++s2Step284EntryGvFresh) s2Step284EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step284EntryBank_rows : planWindowRowsLog s2Step284EntryFBefore [(s2Step284EntryFRow,129),(s2Step284EntryGRow,129),(s2Step284EntryFvRow,157),(s2Step284EntryGvRow,157)] [s2Step284EntryFFresh,s2Step284EntryGFresh,s2Step284EntryFvFresh,s2Step284EntryGvFresh]=
    some (s2Step284EntryGvAfter,[s2Step284EntryFOut,s2Step284EntryGOut,s2Step284EntryFvOut,s2Step284EntryGvOut],(growRow 768 s2Step284EntryFFresh ++ (growRow 769 s2Step284EntryGFresh ++ (growRow 770 s2Step284EntryFvFresh ++ (growRow 771 s2Step284EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step284EntryGvAfter [] []=some (s2Step284EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step284EntryGvBefore s2Step284EntryGvAfter s2Step284EntryGvAfter
    s2Step284EntryGvRow s2Step284EntryGvOut 157 s2Step284EntryGvFresh [] [] []
    (growRow 771 s2Step284EntryGvFresh) ([]) s2Step284EntryGv_Incoming s2Step284EntryGv_checked h4 s2Step284EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step284EntryFvBefore s2Step284EntryFvAfter s2Step284EntryGvAfter
    s2Step284EntryFvRow s2Step284EntryFvOut 157 s2Step284EntryFvFresh [(s2Step284EntryGvRow,157)] [s2Step284EntryGvFresh] [s2Step284EntryGvOut]
    (growRow 770 s2Step284EntryFvFresh) ((growRow 771 s2Step284EntryGvFresh ++ [])) s2Step284EntryFv_Incoming s2Step284EntryFv_checked h3 s2Step284EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step284EntryGBefore s2Step284EntryGAfter s2Step284EntryGvAfter
    s2Step284EntryGRow s2Step284EntryGOut 129 s2Step284EntryGFresh [(s2Step284EntryFvRow,157),(s2Step284EntryGvRow,157)] [s2Step284EntryFvFresh,s2Step284EntryGvFresh] [s2Step284EntryFvOut,s2Step284EntryGvOut]
    (growRow 769 s2Step284EntryGFresh) ((growRow 770 s2Step284EntryFvFresh ++ (growRow 771 s2Step284EntryGvFresh ++ []))) s2Step284EntryG_Incoming s2Step284EntryG_checked h2 s2Step284EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step284EntryFBefore s2Step284EntryFAfter s2Step284EntryGvAfter
    s2Step284EntryFRow s2Step284EntryFOut 129 s2Step284EntryFFresh [(s2Step284EntryGRow,129),(s2Step284EntryFvRow,157),(s2Step284EntryGvRow,157)] [s2Step284EntryGFresh,s2Step284EntryFvFresh,s2Step284EntryGvFresh] [s2Step284EntryGOut,s2Step284EntryFvOut,s2Step284EntryGvOut]
    (growRow 768 s2Step284EntryFFresh) ((growRow 769 s2Step284EntryGFresh ++ (growRow 770 s2Step284EntryFvFresh ++ (growRow 771 s2Step284EntryGvFresh ++ [])))) s2Step284EntryF_Incoming s2Step284EntryF_checked h1 s2Step284EntryF_Outgoing
  exact h0

private theorem s2Step284EntryBank_checked : compileHmrBankResizeLog .entry s2Step284EntryFBefore ⟨s2Step284EntryFRow,s2Step284EntryGRow,s2Step284EntryFvRow,s2Step284EntryGvRow⟩ ⟨129,129,157,157⟩ [s2Step284EntryFFresh,s2Step284EntryGFresh,s2Step284EntryFvFresh,s2Step284EntryGvFresh]=
    some (s2Step284EntryGvAfter,⟨s2Step284EntryFOut,s2Step284EntryGOut,s2Step284EntryFvOut,s2Step284EntryGvOut⟩,(growRow 768 s2Step284EntryFFresh ++ (growRow 769 s2Step284EntryGFresh ++ (growRow 770 s2Step284EntryFvFresh ++ (growRow 771 s2Step284EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step284EntryBank_rows]
  rfl

private def s2Step284ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<128) ∨ (129≤q ∧ q<640) ∨ (641≤q ∧ q<781) ∨ (782≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step284ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<128) ∨ (129≤q ∧ q<781) ∨ (782≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step284ExitFBefore : Arena := s2Step284ExitGAfter

private def s2Step284ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 796],768⟩

private def s2Step284ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891],770⟩

private def s2Step284ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 781],769⟩

private def s2Step284ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 783],771⟩

private theorem s2Step284ExitBank_incomingDistinct : ([s2Step284ExitGRow,s2Step284ExitFRow,s2Step284ExitFvRow,s2Step284ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step284ExitF_Incoming : rowsOwned s2Step284ExitFBefore [s2Step284ExitFRow,s2Step284ExitFvRow,s2Step284ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step284ExitGRow,s2Step284ExitFRow,s2Step284ExitFvRow,s2Step284ExitGvRow] 1 s2Step284ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step284ExitFBefore (fun q => (0≤q ∧ q<128) ∨ (129≤q ∧ q<781) ∨ (782≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step284ExitBank_outgoingOwned : rowsOwned s2Step284ExitGvAfter [s2Step284ExitGOut,s2Step284ExitFOut,s2Step284ExitFvOut,s2Step284ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step284ExitGvAfter (fun q => (0≤q ∧ q<128) ∨ (129≤q ∧ q<640) ∨ (641≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step284ExitF_Outgoing : rowsOwned s2Step284ExitGvAfter [s2Step284ExitFOut,s2Step284ExitFvOut,s2Step284ExitGvOut] :=
  hmrRows_owned_drop s2Step284ExitGvAfter [s2Step284ExitGOut,s2Step284ExitFOut,s2Step284ExitFvOut,s2Step284ExitGvOut] 1 s2Step284ExitBank_outgoingOwned

private theorem s2Step284ExitF_distinct : (s2Step284ExitFRow.sign::s2Step284ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step284ExitF_owned : (s2Step284ExitFRow.sign::s2Step284ExitFRow.payload).toFinset⊆s2Step284ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step284ExitFBefore (fun q => (0≤q ∧ q<128) ∨ (129≤q ∧ q<781) ∨ (782≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step284ExitF_retired : s2Step284ExitFBefore.retireSet s2Step284ExitFExtra.toFinset=s2Step284ExitFAfter := by
  unfold Arena.retireSet s2Step284ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step284ExitFBefore,s2Step284ExitGAfter,s2Step284ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step284ExitF_checked : planRowResizeLog s2Step284ExitFBefore s2Step284ExitFRow 128 []=
    some (s2Step284ExitFAfter,s2Step284ExitFOut,shrinkRow 768 s2Step284ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step284ExitFBefore s2Step284ExitFRow 128 s2Step284ExitF_distinct s2Step284ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step284ExitFRow.payload.take 128) s2Step284ExitFRow.sign=s2Step284ExitFOut := by decide +kernel
  have hi : s2Step284ExitFRow.payload.drop 128=s2Step284ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step284ExitF_retired] at result
  exact result

private def s2Step284ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<128) ∨ (129≤q ∧ q<640) ∨ (641≤q ∧ q<781) ∨ (782≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step284ExitFvBefore : Arena := s2Step284ExitFAfter

private theorem s2Step284ExitFv_Incoming : rowsOwned s2Step284ExitFvBefore [s2Step284ExitFvRow,s2Step284ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step284ExitGRow,s2Step284ExitFRow,s2Step284ExitFvRow,s2Step284ExitGvRow] 2 s2Step284ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step284ExitFvBefore (fun q => (0≤q ∧ q<128) ∨ (129≤q ∧ q<640) ∨ (641≤q ∧ q<781) ∨ (782≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step284ExitFv_Outgoing : rowsOwned s2Step284ExitGvAfter [s2Step284ExitFvOut,s2Step284ExitGvOut] :=
  hmrRows_owned_drop s2Step284ExitGvAfter [s2Step284ExitGOut,s2Step284ExitFOut,s2Step284ExitFvOut,s2Step284ExitGvOut] 2 s2Step284ExitBank_outgoingOwned

private theorem s2Step284ExitFv_distinct : (s2Step284ExitFvRow.sign::s2Step284ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step284ExitFv_owned : (s2Step284ExitFvRow.sign::s2Step284ExitFvRow.payload).toFinset⊆s2Step284ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step284ExitFvBefore (fun q => (0≤q ∧ q<128) ∨ (129≤q ∧ q<640) ∨ (641≤q ∧ q<781) ∨ (782≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step284ExitFv_retired : s2Step284ExitFvBefore.retireSet s2Step284ExitFvExtra.toFinset=s2Step284ExitFvAfter := by
  unfold Arena.retireSet s2Step284ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step284ExitFvBefore,s2Step284ExitFAfter,s2Step284ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step284ExitFv_checked : planRowResizeLog s2Step284ExitFvBefore s2Step284ExitFvRow 157 []=
    some (s2Step284ExitFvAfter,s2Step284ExitFvOut,shrinkRow 770 s2Step284ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step284ExitFvBefore s2Step284ExitFvRow 157 s2Step284ExitFv_distinct s2Step284ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step284ExitFvRow.payload.take 157) s2Step284ExitFvRow.sign=s2Step284ExitFvOut := by decide +kernel
  have hi : s2Step284ExitFvRow.payload.drop 157=s2Step284ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step284ExitFv_retired] at result
  exact result

private def s2Step284ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private theorem s2Step284ExitG_Incoming : rowsOwned s2Step284ExitGBefore [s2Step284ExitGRow,s2Step284ExitFRow,s2Step284ExitFvRow,s2Step284ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step284ExitGRow,s2Step284ExitFRow,s2Step284ExitFvRow,s2Step284ExitGvRow] 0 s2Step284ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step284ExitGBefore (fun q => (0≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step284ExitG_Outgoing : rowsOwned s2Step284ExitGvAfter [s2Step284ExitGOut,s2Step284ExitFOut,s2Step284ExitFvOut,s2Step284ExitGvOut] :=
  hmrRows_owned_drop s2Step284ExitGvAfter [s2Step284ExitGOut,s2Step284ExitFOut,s2Step284ExitFvOut,s2Step284ExitGvOut] 0 s2Step284ExitBank_outgoingOwned

private theorem s2Step284ExitG_distinct : (s2Step284ExitGRow.sign::s2Step284ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step284ExitG_owned : (s2Step284ExitGRow.sign::s2Step284ExitGRow.payload).toFinset⊆s2Step284ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step284ExitGBefore (fun q => (0≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step284ExitG_retired : s2Step284ExitGBefore.retireSet s2Step284ExitGExtra.toFinset=s2Step284ExitGAfter := by
  unfold Arena.retireSet s2Step284ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step284ExitGBefore,s2Step284ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step284ExitG_checked : planRowResizeLog s2Step284ExitGBefore s2Step284ExitGRow 128 []=
    some (s2Step284ExitGAfter,s2Step284ExitGOut,shrinkRow 769 s2Step284ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step284ExitGBefore s2Step284ExitGRow 128 s2Step284ExitG_distinct s2Step284ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step284ExitGRow.payload.take 128) s2Step284ExitGRow.sign=s2Step284ExitGOut := by decide +kernel
  have hi : s2Step284ExitGRow.payload.drop 128=s2Step284ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step284ExitG_retired] at result
  exact result

private def s2Step284ExitGvBefore : Arena := s2Step284ExitFvAfter

private theorem s2Step284ExitGv_Incoming : rowsOwned s2Step284ExitGvBefore [s2Step284ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step284ExitGRow,s2Step284ExitFRow,s2Step284ExitFvRow,s2Step284ExitGvRow] 3 s2Step284ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step284ExitGvBefore (fun q => (0≤q ∧ q<128) ∨ (129≤q ∧ q<640) ∨ (641≤q ∧ q<781) ∨ (782≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step284ExitGv_Outgoing : rowsOwned s2Step284ExitGvAfter [s2Step284ExitGvOut] :=
  hmrRows_owned_drop s2Step284ExitGvAfter [s2Step284ExitGOut,s2Step284ExitFOut,s2Step284ExitFvOut,s2Step284ExitGvOut] 3 s2Step284ExitBank_outgoingOwned

private theorem s2Step284ExitGv_distinct : (s2Step284ExitGvRow.sign::s2Step284ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step284ExitGv_owned : (s2Step284ExitGvRow.sign::s2Step284ExitGvRow.payload).toFinset⊆s2Step284ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step284ExitGvBefore (fun q => (0≤q ∧ q<128) ∨ (129≤q ∧ q<640) ∨ (641≤q ∧ q<781) ∨ (782≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step284ExitGv_retired : s2Step284ExitGvBefore.retireSet s2Step284ExitGvExtra.toFinset=s2Step284ExitGvAfter := by
  unfold Arena.retireSet s2Step284ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step284ExitGvBefore,s2Step284ExitFvAfter,s2Step284ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step284ExitGv_checked : planRowResizeLog s2Step284ExitGvBefore s2Step284ExitGvRow 157 []=
    some (s2Step284ExitGvAfter,s2Step284ExitGvOut,shrinkRow 771 s2Step284ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step284ExitGvBefore s2Step284ExitGvRow 157 s2Step284ExitGv_distinct s2Step284ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step284ExitGvRow.payload.take 157) s2Step284ExitGvRow.sign=s2Step284ExitGvOut := by decide +kernel
  have hi : s2Step284ExitGvRow.payload.drop 157=s2Step284ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step284ExitGv_retired] at result
  exact result

private theorem s2Step284ExitBank_rows : planWindowRowsLog s2Step284ExitGBefore [(s2Step284ExitGRow,128),(s2Step284ExitFRow,128),(s2Step284ExitFvRow,157),(s2Step284ExitGvRow,157)] [[],[],[],[]]=
    some (s2Step284ExitGvAfter,[s2Step284ExitGOut,s2Step284ExitFOut,s2Step284ExitFvOut,s2Step284ExitGvOut],(shrinkRow 769 s2Step284ExitGExtra ++ (shrinkRow 768 s2Step284ExitFExtra ++ (shrinkRow 770 s2Step284ExitFvExtra ++ (shrinkRow 771 s2Step284ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step284ExitGvAfter [] []=some (s2Step284ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step284ExitGvBefore s2Step284ExitGvAfter s2Step284ExitGvAfter
    s2Step284ExitGvRow s2Step284ExitGvOut 157 [] [] [] []
    (shrinkRow 771 s2Step284ExitGvExtra) ([]) s2Step284ExitGv_Incoming s2Step284ExitGv_checked h4 s2Step284ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step284ExitFvBefore s2Step284ExitFvAfter s2Step284ExitGvAfter
    s2Step284ExitFvRow s2Step284ExitFvOut 157 [] [(s2Step284ExitGvRow,157)] [[]] [s2Step284ExitGvOut]
    (shrinkRow 770 s2Step284ExitFvExtra) ((shrinkRow 771 s2Step284ExitGvExtra ++ [])) s2Step284ExitFv_Incoming s2Step284ExitFv_checked h3 s2Step284ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step284ExitFBefore s2Step284ExitFAfter s2Step284ExitGvAfter
    s2Step284ExitFRow s2Step284ExitFOut 128 [] [(s2Step284ExitFvRow,157),(s2Step284ExitGvRow,157)] [[],[]] [s2Step284ExitFvOut,s2Step284ExitGvOut]
    (shrinkRow 768 s2Step284ExitFExtra) ((shrinkRow 770 s2Step284ExitFvExtra ++ (shrinkRow 771 s2Step284ExitGvExtra ++ []))) s2Step284ExitF_Incoming s2Step284ExitF_checked h2 s2Step284ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step284ExitGBefore s2Step284ExitGAfter s2Step284ExitGvAfter
    s2Step284ExitGRow s2Step284ExitGOut 128 [] [(s2Step284ExitFRow,128),(s2Step284ExitFvRow,157),(s2Step284ExitGvRow,157)] [[],[],[]] [s2Step284ExitFOut,s2Step284ExitFvOut,s2Step284ExitGvOut]
    (shrinkRow 769 s2Step284ExitGExtra) ((shrinkRow 768 s2Step284ExitFExtra ++ (shrinkRow 770 s2Step284ExitFvExtra ++ (shrinkRow 771 s2Step284ExitGvExtra ++ [])))) s2Step284ExitG_Incoming s2Step284ExitG_checked h1 s2Step284ExitG_Outgoing
  exact h0

private theorem s2Step284ExitBank_checked : compileHmrBankResizeLog .exit s2Step284ExitGBefore ⟨s2Step284ExitFRow,s2Step284ExitGRow,s2Step284ExitFvRow,s2Step284ExitGvRow⟩ ⟨128,128,157,157⟩ [[],[],[],[]]=
    some (s2Step284ExitGvAfter,⟨s2Step284ExitFOut,s2Step284ExitGOut,s2Step284ExitFvOut,s2Step284ExitGvOut⟩,(shrinkRow 769 s2Step284ExitGExtra ++ (shrinkRow 768 s2Step284ExitFExtra ++ (shrinkRow 770 s2Step284ExitFvExtra ++ (shrinkRow 771 s2Step284ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step284ExitBank_rows]
  rfl

private theorem s2Step284Add0_apart : Disjoint s2Step284Add0Arena.live s2Step284Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step284Add0Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step284Add0_card : s2Step284Add0Arena.live.card=900 := by
  decide +kernel

private theorem s2Step284Add0_borrowed : s2Step284Add0Arena.checkBorrow (hmrHybridCount s2Step284Add0Arena s2Step284Add0B.length) s2Step284Add0Work=some s2Step284Add0During := by
  have len : s2Step284Add0Work.length=hmrHybridCount s2Step284Add0Arena s2Step284Add0B.length := by
    rw [hmrHybridCount,s2Step284Add0_card]
    decide +kernel
  have nd : s2Step284Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step284Add0Arena s2Step284Add0During s2Step284Add0Work.toFinset s2Step284Add0_bounded s2Step284Add0_apart rfl

private theorem s2Step284Add0_distinct : (791::801::815::(s2Step284Add0A++s2Step284Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step284Add0_owned : (791::801::815::(s2Step284Add0A++s2Step284Add0B)).toFinset⊆s2Step284Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step284Add0Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step284Add0_checked : compileHmrHybridCinLog s2Step284Add0Arena 801 791 815 s2Step284Add0A s2Step284Add0B s2Step284Add0Work=some s2Step284Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step284Add0Arena s2Step284Add0During 801 791 815 s2Step284Add0A s2Step284Add0B s2Step284Add0Work
    (by decide +kernel) (by decide +kernel) s2Step284Add0_distinct
    (fun q hq => s2Step284Add0_owned (List.mem_toFinset.mpr hq)) s2Step284Add0_borrowed

private theorem s2Step284Add1_apart : Disjoint s2Step284Add1Arena.live s2Step284Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step284Add1Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step284Add1_card : s2Step284Add1Arena.live.card=900 := by
  decide +kernel

private theorem s2Step284Add1_borrowed : s2Step284Add1Arena.checkBorrow (hmrHybridCount s2Step284Add1Arena s2Step284Add1B.length) s2Step284Add1Work=some s2Step284Add1During := by
  have len : s2Step284Add1Work.length=hmrHybridCount s2Step284Add1Arena s2Step284Add1B.length := by
    rw [hmrHybridCount,s2Step284Add1_card]
    decide +kernel
  have nd : s2Step284Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step284Add1Arena s2Step284Add1During s2Step284Add1Work.toFinset s2Step284Add1_bounded s2Step284Add1_apart rfl

private theorem s2Step284Add1_distinct : (791::801::815::(s2Step284Add1A++s2Step284Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step284Add1_owned : (791::801::815::(s2Step284Add1A++s2Step284Add1B)).toFinset⊆s2Step284Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step284Add1Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step284Add1_checked : compileHmrHybridCinLog s2Step284Add1Arena 801 791 815 s2Step284Add1A s2Step284Add1B s2Step284Add1Work=some s2Step284Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step284Add1Arena s2Step284Add1During 801 791 815 s2Step284Add1A s2Step284Add1B s2Step284Add1Work
    (by decide +kernel) (by decide +kernel) s2Step284Add1_distinct
    (fun q hq => s2Step284Add1_owned (List.mem_toFinset.mpr hq)) s2Step284Add1_borrowed

private theorem s2Step284F4_apart : Disjoint (s2Step284Add0A++s2Step284Add0B).toFinset (s2Step284Add1A++s2Step284Add1B).toFinset := by
  have nd : ((s2Step284Add0A++s2Step284Add0B)++(s2Step284Add1A++s2Step284Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step284F4_carry : s2Step284F4FlagArena.checkBorrow 1 [815]=some s2Step284Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step284F4FlagArena,s2Step284HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step284F4FlagArena,s2Step284HeadFvAfter,s2Step284Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step284F4_distinct : (780::801::791::815::((s2Step284Add0A++s2Step284Add1A)++(s2Step284Add0B++s2Step284Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step284F4_flag : s2Step284HeadFvAfter.checkBorrow 1 [791]=some s2Step284F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step284HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step284F4_owned : (780::801::((s2Step284Add0A++s2Step284Add1A)++(s2Step284Add0B++s2Step284Add1B))).toFinset⊆s2Step284HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step284HeadFvAfter (fun q => (0≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step284F4_checked : compileHmrHybridF4Log s2Step284HeadFvAfter 780 801 s2Step284Add0A s2Step284Add0B s2Step284Add1A s2Step284Add1B [791] [815] s2Step284Add0Work s2Step284Add1Work=some s2Step284F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step284HeadFvAfter s2Step284F4FlagArena s2Step284Add0Arena s2Step284Add0During s2Step284Add1During 780 801
    s2Step284Add0A s2Step284Add0B s2Step284Add1A s2Step284Add1B [791] [815] s2Step284Add0Work s2Step284Add1Work
    (fun q hq => s2Step284F4_owned (List.mem_toFinset.mpr hq)) s2Step284F4_flag s2Step284F4_carry
    s2Step284F4_distinct s2Step284F4_apart s2Step284Add0_checked s2Step284Add1_checked

private theorem s2Step284Front_branch : s2Step284FrontSigmaArena.checkBorrow 1 [801]=some s2Step284HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step284FrontSigmaArena,s2Step284EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step284FrontSigmaArena,s2Step284EntryGvAfter,s2Step284HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step284Front_entry : HmrFrontEntryValid s2Step284EntryFBefore s2Step284FrontBank 129 157 ⟨128,128,157,157⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step284FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step284EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step284EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step284FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step284Front_sigma : s2Step284EntryGvAfter.checkBorrow 1 [780]=some s2Step284FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step284EntryGvAfter,arenaWires]
  · rfl

private def s2Step284HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step284HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step284HeadFBefore : Arena := s2Step284HeadGAfter

private def s2Step284HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640],768⟩

private def s2Step284HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798],770⟩

private def s2Step284HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128],769⟩

private def s2Step284HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845],771⟩

private theorem s2Step284HeadBank_incomingDistinct : ([s2Step284HeadGRow,s2Step284HeadFRow,s2Step284HeadGvRow,s2Step284HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step284HeadF_Incoming : rowsOwned s2Step284HeadFBefore [s2Step284HeadFRow,s2Step284HeadGvRow,s2Step284HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step284HeadGRow,s2Step284HeadFRow,s2Step284HeadGvRow,s2Step284HeadFvRow] 1 s2Step284HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step284HeadFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step284HeadBank_outgoingOwned : rowsOwned s2Step284HeadFvAfter [s2Step284HeadGOut,s2Step284HeadFOut,s2Step284HeadGvOut,s2Step284HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step284HeadFvAfter (fun q => (0≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step284HeadF_Outgoing : rowsOwned s2Step284HeadFvAfter [s2Step284HeadFOut,s2Step284HeadGvOut,s2Step284HeadFvOut] :=
  hmrRows_owned_drop s2Step284HeadFvAfter [s2Step284HeadGOut,s2Step284HeadFOut,s2Step284HeadGvOut,s2Step284HeadFvOut] 1 s2Step284HeadBank_outgoingOwned

private theorem s2Step284HeadF_distinct : (s2Step284HeadFRow.sign::s2Step284HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step284HeadF_owned : (s2Step284HeadFRow.sign::s2Step284HeadFRow.payload).toFinset⊆s2Step284HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step284HeadFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step284HeadF_reserved : s2Step284HeadFBefore.reserve s2Step284HeadFFresh.toFinset=some s2Step284HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step284HeadFFresh,arenaWires]
  · norm_num [s2Step284HeadFBefore,s2Step284HeadGAfter,s2Step284HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step284HeadFAfter,s2Step284HeadFBefore,s2Step284HeadGAfter,s2Step284HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step284HeadF_checked : planRowResizeLog s2Step284HeadFBefore s2Step284HeadFRow 130 s2Step284HeadFFresh=
    some (s2Step284HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 796],768⟩,growRow 768 s2Step284HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step284HeadFBefore s2Step284HeadFAfter s2Step284HeadFRow 130 s2Step284HeadFFresh
    s2Step284HeadF_distinct s2Step284HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step284HeadF_reserved
  have rowEq : WindowRow.mk (s2Step284HeadFRow.payload++s2Step284HeadFFresh) s2Step284HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 796],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step284HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step284HeadFvBefore : Arena := s2Step284HeadGvAfter

private theorem s2Step284HeadFv_Incoming : rowsOwned s2Step284HeadFvBefore [s2Step284HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step284HeadGRow,s2Step284HeadFRow,s2Step284HeadGvRow,s2Step284HeadFvRow] 3 s2Step284HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step284HeadFvBefore (fun q => (0≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step284HeadFv_Outgoing : rowsOwned s2Step284HeadFvAfter [s2Step284HeadFvOut] :=
  hmrRows_owned_drop s2Step284HeadFvAfter [s2Step284HeadGOut,s2Step284HeadFOut,s2Step284HeadGvOut,s2Step284HeadFvOut] 3 s2Step284HeadBank_outgoingOwned

private theorem s2Step284HeadFv_distinct : (s2Step284HeadFvRow.sign::s2Step284HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step284HeadFv_owned : (s2Step284HeadFvRow.sign::s2Step284HeadFvRow.payload).toFinset⊆s2Step284HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step284HeadFvBefore (fun q => (0≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step284HeadFv_reserved : s2Step284HeadFvBefore.reserve s2Step284HeadFvFresh.toFinset=some s2Step284HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step284HeadFvFresh,arenaWires]
  · norm_num [s2Step284HeadFvBefore,s2Step284HeadGvAfter,s2Step284HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step284HeadFvAfter,s2Step284HeadFvBefore,s2Step284HeadGvAfter,s2Step284HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step284HeadFv_checked : planRowResizeLog s2Step284HeadFvBefore s2Step284HeadFvRow 158 s2Step284HeadFvFresh=
    some (s2Step284HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891],770⟩,growRow 770 s2Step284HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step284HeadFvBefore s2Step284HeadFvAfter s2Step284HeadFvRow 158 s2Step284HeadFvFresh
    s2Step284HeadFv_distinct s2Step284HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step284HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step284HeadFvRow.payload++s2Step284HeadFvFresh) s2Step284HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step284HeadG_Incoming : rowsOwned s2Step284HeadGBefore [s2Step284HeadGRow,s2Step284HeadFRow,s2Step284HeadGvRow,s2Step284HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step284HeadGRow,s2Step284HeadFRow,s2Step284HeadGvRow,s2Step284HeadFvRow] 0 s2Step284HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step284HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step284HeadG_Outgoing : rowsOwned s2Step284HeadFvAfter [s2Step284HeadGOut,s2Step284HeadFOut,s2Step284HeadGvOut,s2Step284HeadFvOut] :=
  hmrRows_owned_drop s2Step284HeadFvAfter [s2Step284HeadGOut,s2Step284HeadFOut,s2Step284HeadGvOut,s2Step284HeadFvOut] 0 s2Step284HeadBank_outgoingOwned

private theorem s2Step284HeadG_distinct : (s2Step284HeadGRow.sign::s2Step284HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step284HeadG_owned : (s2Step284HeadGRow.sign::s2Step284HeadGRow.payload).toFinset⊆s2Step284HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step284HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step284HeadG_reserved : s2Step284HeadGBefore.reserve s2Step284HeadGFresh.toFinset=some s2Step284HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step284HeadGFresh,arenaWires]
  · norm_num [s2Step284HeadGBefore,s2Step284HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step284HeadGAfter,s2Step284HeadGBefore,s2Step284HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step284HeadG_checked : planRowResizeLog s2Step284HeadGBefore s2Step284HeadGRow 130 s2Step284HeadGFresh=
    some (s2Step284HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 781],769⟩,growRow 769 s2Step284HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step284HeadGBefore s2Step284HeadGAfter s2Step284HeadGRow 130 s2Step284HeadGFresh
    s2Step284HeadG_distinct s2Step284HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step284HeadG_reserved
  have rowEq : WindowRow.mk (s2Step284HeadGRow.payload++s2Step284HeadGFresh) s2Step284HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 781],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step284HeadGvBefore : Arena := s2Step284HeadFAfter

private theorem s2Step284HeadGv_Incoming : rowsOwned s2Step284HeadGvBefore [s2Step284HeadGvRow,s2Step284HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step284HeadGRow,s2Step284HeadFRow,s2Step284HeadGvRow,s2Step284HeadFvRow] 2 s2Step284HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step284HeadGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step284HeadGv_Outgoing : rowsOwned s2Step284HeadFvAfter [s2Step284HeadGvOut,s2Step284HeadFvOut] :=
  hmrRows_owned_drop s2Step284HeadFvAfter [s2Step284HeadGOut,s2Step284HeadFOut,s2Step284HeadGvOut,s2Step284HeadFvOut] 2 s2Step284HeadBank_outgoingOwned

private theorem s2Step284HeadGv_distinct : (s2Step284HeadGvRow.sign::s2Step284HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step284HeadGv_owned : (s2Step284HeadGvRow.sign::s2Step284HeadGvRow.payload).toFinset⊆s2Step284HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step284HeadGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step284HeadGv_reserved : s2Step284HeadGvBefore.reserve s2Step284HeadGvFresh.toFinset=some s2Step284HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step284HeadGvFresh,arenaWires]
  · norm_num [s2Step284HeadGvBefore,s2Step284HeadFAfter,s2Step284HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step284HeadGvAfter,s2Step284HeadGvBefore,s2Step284HeadFAfter,s2Step284HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step284HeadGv_checked : planRowResizeLog s2Step284HeadGvBefore s2Step284HeadGvRow 158 s2Step284HeadGvFresh=
    some (s2Step284HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 783],771⟩,growRow 771 s2Step284HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step284HeadGvBefore s2Step284HeadGvAfter s2Step284HeadGvRow 158 s2Step284HeadGvFresh
    s2Step284HeadGv_distinct s2Step284HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step284HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step284HeadGvRow.payload++s2Step284HeadGvFresh) s2Step284HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 783],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step284HeadBank_rows : planWindowRowsLog s2Step284HeadGBefore [(s2Step284HeadGRow,130),(s2Step284HeadFRow,130),(s2Step284HeadGvRow,158),(s2Step284HeadFvRow,158)] [s2Step284HeadGFresh,s2Step284HeadFFresh,s2Step284HeadGvFresh,s2Step284HeadFvFresh]=
    some (s2Step284HeadFvAfter,[s2Step284HeadGOut,s2Step284HeadFOut,s2Step284HeadGvOut,s2Step284HeadFvOut],(growRow 769 s2Step284HeadGFresh ++ (growRow 768 s2Step284HeadFFresh ++ (growRow 771 s2Step284HeadGvFresh ++ (growRow 770 s2Step284HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step284HeadFvAfter [] []=some (s2Step284HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step284HeadFvBefore s2Step284HeadFvAfter s2Step284HeadFvAfter
    s2Step284HeadFvRow s2Step284HeadFvOut 158 s2Step284HeadFvFresh [] [] []
    (growRow 770 s2Step284HeadFvFresh) ([]) s2Step284HeadFv_Incoming s2Step284HeadFv_checked h4 s2Step284HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step284HeadGvBefore s2Step284HeadGvAfter s2Step284HeadFvAfter
    s2Step284HeadGvRow s2Step284HeadGvOut 158 s2Step284HeadGvFresh [(s2Step284HeadFvRow,158)] [s2Step284HeadFvFresh] [s2Step284HeadFvOut]
    (growRow 771 s2Step284HeadGvFresh) ((growRow 770 s2Step284HeadFvFresh ++ [])) s2Step284HeadGv_Incoming s2Step284HeadGv_checked h3 s2Step284HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step284HeadFBefore s2Step284HeadFAfter s2Step284HeadFvAfter
    s2Step284HeadFRow s2Step284HeadFOut 130 s2Step284HeadFFresh [(s2Step284HeadGvRow,158),(s2Step284HeadFvRow,158)] [s2Step284HeadGvFresh,s2Step284HeadFvFresh] [s2Step284HeadGvOut,s2Step284HeadFvOut]
    (growRow 768 s2Step284HeadFFresh) ((growRow 771 s2Step284HeadGvFresh ++ (growRow 770 s2Step284HeadFvFresh ++ []))) s2Step284HeadF_Incoming s2Step284HeadF_checked h2 s2Step284HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step284HeadGBefore s2Step284HeadGAfter s2Step284HeadFvAfter
    s2Step284HeadGRow s2Step284HeadGOut 130 s2Step284HeadGFresh [(s2Step284HeadFRow,130),(s2Step284HeadGvRow,158),(s2Step284HeadFvRow,158)] [s2Step284HeadFFresh,s2Step284HeadGvFresh,s2Step284HeadFvFresh] [s2Step284HeadFOut,s2Step284HeadGvOut,s2Step284HeadFvOut]
    (growRow 769 s2Step284HeadGFresh) ((growRow 768 s2Step284HeadFFresh ++ (growRow 771 s2Step284HeadGvFresh ++ (growRow 770 s2Step284HeadFvFresh ++ [])))) s2Step284HeadG_Incoming s2Step284HeadG_checked h1 s2Step284HeadG_Outgoing
  exact h0

private theorem s2Step284HeadBank_checked : compileHmrBankResizeLog .headroom s2Step284HeadGBefore ⟨s2Step284HeadFRow,s2Step284HeadGRow,s2Step284HeadFvRow,s2Step284HeadGvRow⟩ ⟨130,130,158,158⟩ [s2Step284HeadGFresh,s2Step284HeadFFresh,s2Step284HeadGvFresh,s2Step284HeadFvFresh]=
    some (s2Step284HeadFvAfter,⟨s2Step284HeadFOut,s2Step284HeadGOut,s2Step284HeadFvOut,s2Step284HeadGvOut⟩,(growRow 769 s2Step284HeadGFresh ++ (growRow 768 s2Step284HeadFFresh ++ (growRow 771 s2Step284HeadGvFresh ++ (growRow 770 s2Step284HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step284HeadBank_rows]
  rfl

private theorem s2Step284Front_checked : compileHmrSourceFrontLog s2Step284EntryFBefore s2Step284FrontBank 129 157 ⟨128,128,157,157⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step284FrontLog=some s2Step284FrontPlan := by
  have pairEq : s2Step284FrontPair=⟨s2Step284HeadFRow,s2Step284HeadGRow,s2Step284HeadFvRow,s2Step284HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step284FrontHead=⟨s2Step284ExitFRow,s2Step284ExitGRow,s2Step284ExitFvRow,s2Step284ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step284Add0A=s2Step284FrontHead.f.wires := by decide +kernel
  have gEq : s2Step284Add0B=s2Step284FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step284Add1A=s2Step284FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step284Add1B=s2Step284FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step284EntryFBefore s2Step284FrontBank 129 157 ⟨128,128,157,157⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step284FrontLog s2Step284FrontPlan
  · exact s2Step284Front_entry
  · exact s2Step284EntryBank_checked
  · exact s2Step284Front_sigma
  · rfl
  · exact s2Step284Front_branch
  · rfl
  · simpa only [s2Step284FrontPlan,pairEq] using s2Step284HeadBank_checked
  · simpa only [s2Step284FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step284F4_checked
  · exact s2Step284Counter_checked
  · rfl
  · simpa only [s2Step284FrontPlan,headEq] using s2Step284ExitBank_checked

private theorem s2Step284Complete_explicit_checked : compileHmrEarlyStepLog s2Step284EntryFBefore s2Step284FrontBank 129 157 ⟨128,128,157,157⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 54 s2Step284CompleteLog=some s2Step284CompletePlan := by
  let Q := s2Step284EarlyControlPlan
  have hq := s2Step284EarlyControl_plan_checked
  have fv1 : s2Step284CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step284CompleteOut.fv.payload[2]?.getD s2Step284CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step284CompleteOut.fv.payload[3]?.getD s2Step284CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step284CompleteOut.fv.payload[4]?.getD s2Step284CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step284EntryFBefore s2Step284EarlyControlArena s2Step284FrontBank 129 157 ⟨128,128,157,157⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 54 s2Step284CompleteLog s2Step284FrontPlan Q
    s2Step284Front_checked s2Step284Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step284Complete_owned s2Step284Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step284EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 777 780 s2Step284CompleteOut.fv.second (s2Step284CompleteOut.fv.payload[2]?.getD s2Step284CompleteOut.fv.sign) (s2Step284CompleteOut.fv.payload[3]?.getD s2Step284CompleteOut.fv.sign) (s2Step284CompleteOut.fv.payload[4]?.getD s2Step284CompleteOut.fv.sign) 801 54 s2Step284EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep284Arena : Arena := s2Step284EntryFBefore
def s2PrivateStep284Bank : WindowBank := s2Step284FrontBank
def s2PrivateStep284Spec : HmrSourceWalkStepLog := ⟨129,157,⟨128,128,157,157⟩,54,.early s2Step284CompleteLog⟩
def s2PrivateStep284Plan : HmrSourceStepPlan := .early s2Step284CompletePlan
theorem s2PrivateStep284_source : s2PrivateStep284Spec=s2ObservedLogs272[12] := rfl
theorem s2PrivateStep284_checked : compileHmrSourceStepLog s2PrivateStep284Arena s2PrivateStep284Bank
    s2PrivateStep284Spec.fgWidth s2PrivateStep284Spec.vWidth s2PrivateStep284Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905]
    6 498 284 s2PrivateStep284Spec.need none s2PrivateStep284Spec.log=some s2PrivateStep284Plan := by
  change compileHmrSourceStepLog s2Step284EntryFBefore s2Step284FrontBank 129 157 ⟨128,128,157,157⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 6 498 284 54 none (.early s2Step284CompleteLog)=some (.early s2Step284CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 284<498)]
  rw [s2Step284Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
