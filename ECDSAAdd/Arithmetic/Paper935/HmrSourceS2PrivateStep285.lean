import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep283
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

private def s2Step285CompleteMoves : List (Wire × Wire) := [(811,127)]

private def s2Step285EarlyControlLog : HmrEarlyControlLog := ⟨[811, 783, 790, 812, 796],[781],[791],[815, 830, 800, 894, 896, 901],[]⟩

private def s2Step285FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[812], [790], [783], [891]],[[], [], [], []]⟩,[801],[780],[796],[781],[791, 815, 830, 800, 894, 896, 901, 903, 904, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[791, 815, 830, 800, 894, 896, 901, 903, 904, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[796, 781, 791, 815]⟩

private def s2Step285CompleteLog : HmrEarlyStepLog := ⟨s2Step285FrontLog,s2Step285CompleteMoves,s2Step285EarlyControlLog⟩

private def s2Step285ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639],768⟩

private def s2Step285ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891],770⟩

private def s2Step285ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126],769⟩

private def s2Step285ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845],771⟩

private def s2Step285FrontOut : WindowBank := ⟨s2Step285ExitFOut,s2Step285ExitGOut,s2Step285ExitFvOut,s2Step285ExitGvOut⟩

private def s2Step285CompleteOut : WindowBank := s2Step285FrontOut.repacked s2Step285CompleteMoves

private def s2Step285EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step285EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step285EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step285EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step285EarlyControlPositiveArena,[781],s2Step285EarlyControlEqualityArena,[791],⟨⟨801,false⟩,[⟨⟨781,false⟩,791⟩]⟩⟩

private def s2Step285EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step285EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step285EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step285EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step285EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step285EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step285EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,811⟩,⟨⟨774,false⟩,783⟩,⟨⟨775,false⟩,790⟩,⟨⟨776,false⟩,812⟩,⟨⟨777,false⟩,796⟩]⟩

private def s2Step285EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step285EarlyControlZeroArena,s2Step285EarlyControlZeroPlan,s2Step285EarlyControlClassPlan,s2Step285EarlyControlFlagArena,s2Step285EarlyControlFittedArena,s2Step285EarlyControlHistoryArena,s2Step285EarlyControlSigmaArena,s2Step285EarlyControlOutputArena,s2Step285EarlyControlLog⟩

private def s2Step285CounterWork : List Wire := [796, 781, 791, 815]

private theorem s2Step285Counter_bounded : s2Step285CounterWork.toFinset⊆arenaWires := by norm_num [s2Step285CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step285HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step285CounterDuring : Arena := ⟨s2Step285HeadFvAfter.live∪s2Step285CounterWork.toFinset,Finset.union_subset s2Step285HeadFvAfter.bounded s2Step285Counter_bounded⟩

private def s2Step285EntryFFresh : List Wire := []

private def s2Step285EntryFvFresh : List Wire := []

private def s2Step285EntryGFresh : List Wire := []

private def s2Step285EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step285EntryGvAfter : Arena := s2Step285EntryFBefore

private def s2Step285EntryGvFresh : List Wire := []

private def s2Step285ExitFExtra : List Wire := [790]

private def s2Step285ExitGExtra : List Wire := [127, 812]

private def s2Step285ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<127) ∨ (128≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step285ExitGvExtra : List Wire := [783]

private def s2Step285Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step285Add0Work : List Wire := [791, 815, 830, 800, 894, 896, 901, 903, 904, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step285Add0_bounded : s2Step285Add0Work.toFinset⊆arenaWires := by
  have h : s2Step285Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step285Add0During : Arena := ⟨s2Step285Add0Arena.live∪s2Step285Add0Work.toFinset,Finset.union_subset s2Step285Add0Arena.bounded s2Step285Add0_bounded⟩

private def s2Step285Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step285Add1Work : List Wire := [791, 815, 830, 800, 894, 896, 901, 903, 904, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step285Add1_bounded : s2Step285Add1Work.toFinset⊆arenaWires := by
  have h : s2Step285Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step285Add1During : Arena := ⟨s2Step285Add1Arena.live∪s2Step285Add1Work.toFinset,Finset.union_subset s2Step285Add1Arena.bounded s2Step285Add1_bounded⟩

private def s2Step285F4FlagArena : Arena := ⟨s2Step285HeadFvAfter.live∪{796},Finset.union_subset s2Step285HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step285F4Plan : HmrHybridF4Plan := ⟨s2Step285F4FlagArena,[796],s2Step285Add0Arena,[781],s2Step285Add0During,s2Step285Add0Work,s2Step285Add1During,s2Step285Add1Work⟩

private def s2Step285HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 790],768⟩

private def s2Step285HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891],770⟩

private def s2Step285HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 812],769⟩

private def s2Step285HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 783],771⟩

private def s2Step285FrontHead : WindowBank := ⟨s2Step285HeadFOut,s2Step285HeadGOut,s2Step285HeadFvOut,s2Step285HeadGvOut⟩

private def s2Step285EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639],768⟩

private def s2Step285EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798],770⟩

private def s2Step285EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127],769⟩

private def s2Step285EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845],771⟩

private def s2Step285FrontPair : WindowBank := ⟨s2Step285EntryFOut,s2Step285EntryGOut,s2Step285EntryFvOut,s2Step285EntryGvOut⟩

private def s2Step285FrontSigmaArena : Arena := ⟨s2Step285EntryGvAfter.live∪{801},Finset.union_subset s2Step285EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step285HeadFFresh : List Wire := [790]

private def s2Step285HeadFvFresh : List Wire := [891]

private def s2Step285HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step285HeadGFresh : List Wire := [812]

private def s2Step285HeadGvFresh : List Wire := [783]

private def s2Step285FrontPlan : HmrSourceFront := ⟨s2Step285EntryGvAfter,s2Step285FrontPair,(growRow 768 s2Step285EntryFFresh ++ (growRow 769 s2Step285EntryGFresh ++ (growRow 770 s2Step285EntryFvFresh ++ (growRow 771 s2Step285EntryGvFresh ++ [])))),s2Step285FrontSigmaArena,[801],s2Step285HeadGBefore,[780],
  s2Step285HeadFvAfter,s2Step285FrontHead,(growRow 769 s2Step285HeadGFresh ++ (growRow 768 s2Step285HeadFFresh ++ (growRow 771 s2Step285HeadGvFresh ++ (growRow 770 s2Step285HeadFvFresh ++ [])))),s2Step285F4Plan,s2Step285CounterDuring,s2Step285CounterWork,s2Step285ExitGvAfter,s2Step285FrontOut,(shrinkRow 769 s2Step285ExitGExtra ++ (shrinkRow 768 s2Step285ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step285ExitGvExtra ++ []))))⟩

private def s2Step285CompletePlan : HmrEarlyStepPlan := ⟨s2Step285FrontPlan,s2Step285EarlyControlArena,s2Step285EarlyControlPlan,s2Step285CompleteMoves⟩

private theorem s2Step285Complete_apart : List.Disjoint (s2Step285CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [801, 780, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] := by
  have nd : ((s2Step285CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[801, 780, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step285Complete_owned : (s2Step285CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step285EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step285EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private def s2Step285CompleteMoveArena : Arena := ⟨s2Step285ExitGvAfter.live∪{127},Finset.union_subset s2Step285ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step285Complete_repack : s2Step285ExitGvAfter.checkRepack s2Step285CompleteMoves=some s2Step285EarlyControlArena := by
  have owned : 811∈s2Step285ExitGvAfter.live := by norm_num [s2Step285ExitGvAfter,arenaWires]
  have reserve : s2Step285ExitGvAfter.reserve {127}=some s2Step285CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step285ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step285CompleteMoveArena.retireSet {811}=s2Step285EarlyControlArena := by
    unfold Arena.retireSet s2Step285EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step285CompleteMoveArena,s2Step285ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step285CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step285CompleteMoveArena.retireSet {811}).checkRepack []=some s2Step285EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step285EarlyControl_branchOwned : ([780] : List Wire).toFinset⊆s2Step285EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step285EarlyControlSigmaArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step285EarlyControl_branch : compileHmrBranchRetirement s2Step285EarlyControlSigmaArena 780=some s2Step285EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step285EarlyControl_branchOwned
  · ext q
    simp [s2Step285EarlyControlOutputArena,s2Step285EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step285EarlyControl_classEqualityBorrow : s2Step285EarlyControlPositiveArena.checkBorrow (([801, 781] : List Wire).length-1) s2Step285EarlyControlLog.classWork=some s2Step285EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step285EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step285EarlyControlPositiveArena (fun q => (0≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step285EarlyControlEqualityArena,s2Step285EarlyControlPositiveArena,s2Step285EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step285EarlyControl_classEqualityOwned : ([801, 781] : List Wire).toFinset⊆s2Step285EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step285EarlyControlPositiveArena (fun q => (0≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step285EarlyControl_classEquality : compileHmrEqualityLog s2Step285EarlyControlPositiveArena [801, 781] 0 s2Step285EarlyControlLog.classWork=some (s2Step285EarlyControlEqualityArena,s2Step285EarlyControlLog.classWork,s2Step285EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step285EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step285EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step285EarlyControl_classOwned : ([777, 796, 801] : List Wire).toFinset⊆s2Step285EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step285EarlyControlZeroArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step285EarlyControl_positiveBorrow : s2Step285EarlyControlZeroArena.checkBorrow (1) s2Step285EarlyControlLog.positiveWork=some s2Step285EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step285EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step285EarlyControlZeroArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step285EarlyControlPositiveArena,s2Step285EarlyControlZeroArena,s2Step285EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step285EarlyControl_class : compileHmrSourceClassLog s2Step285EarlyControlZeroArena false 777 s2Step285EarlyControlZeroPlan.top 0 801 s2Step285EarlyControlLog.positiveWork s2Step285EarlyControlLog.classWork=some s2Step285EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step285EarlyControlClassPlan s2Step285EarlyControlZeroArena false 777 s2Step285EarlyControlZeroPlan.top 0 801
  constructor
  · decide +kernel
  · exact s2Step285EarlyControl_classOwned
  · exact s2Step285EarlyControl_positiveBorrow
  · exact s2Step285EarlyControl_classEquality

private theorem s2Step285EarlyControl_entryRecordOwned : ([780, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).toFinset⊆s2Step285EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step285EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step285EarlyControl_entrySigmaOwned : ([801, 254] : List Wire).toFinset⊆s2Step285EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step285EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step285EarlyControl_fitBorrow : s2Step285EarlyControlFlagArena.checkBorrow ((54-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).length)) s2Step285EarlyControlLog.recordFresh=some s2Step285EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step285EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step285EarlyControlFlagArena (fun q => (0≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step285EarlyControlFittedArena,s2Step285EarlyControlFlagArena,s2Step285EarlyControlLog,arenaWires]

private theorem s2Step285EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).toFinset⊆s2Step285EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step285EarlyControlFlagArena (fun q => (0≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step285EarlyControl_fit : compileHmrRecordGrowLog s2Step285EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 54 s2Step285EarlyControlLog.recordFresh=some s2Step285EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step285EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step285EarlyControl_fitBorrow

private theorem s2Step285EarlyControl_flagsBorrow : s2Step285EarlyControlEqualityArena.checkBorrow (6) s2Step285EarlyControlLog.flagWork=some s2Step285EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step285EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step285EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step285EarlyControlFlagArena,s2Step285EarlyControlEqualityArena,s2Step285EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step285EarlyControl_flagsOwned : ([791, 253, 252, 251] : List Wire).toFinset⊆s2Step285EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step285EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step285EarlyControl_flags : compileHmrFlagsLog s2Step285EarlyControlClassPlan.equalityArena s2Step285EarlyControlClassPlan.equality.top 253 252 251 s2Step285EarlyControlLog.flagWork=some s2Step285EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step285EarlyControl_flagsOwned⟩
  · exact s2Step285EarlyControl_flagsBorrow

private theorem s2Step285EarlyControl_historyBorrow : s2Step285EarlyControlArena.checkBorrow ((54-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).length)) s2Step285EarlyControlLog.recordFresh=some s2Step285EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step285EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step285EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step285EarlyControlHistoryArena,s2Step285EarlyControlArena,s2Step285EarlyControlLog,arenaWires]

private theorem s2Step285EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).toFinset⊆s2Step285EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step285EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step285EarlyControl_history : compileHmrRecordGrowLog s2Step285EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 54 s2Step285EarlyControlLog.recordFresh=some s2Step285EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step285EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step285EarlyControl_historyBorrow

private theorem s2Step285EarlyControl_sigmaOwned : ([254, 801] : List Wire).toFinset⊆s2Step285EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step285EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step285EarlyControl_sigmaReleaseOwned : ([801] : List Wire).toFinset⊆s2Step285EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step285EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step285EarlyControl_sigmaRelease : s2Step285EarlyControlHistoryArena.release {801} (fun _ => false)=some s2Step285EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step285EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step285EarlyControlSigmaArena,s2Step285EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step285EarlyControl_sigma : compileHmrSigmaDropLog s2Step285EarlyControlHistoryArena false 0 0 254 801 []=some s2Step285EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step285EarlyControl_sigmaOwned⟩
  · exact s2Step285EarlyControl_sigmaRelease

private theorem s2Step285EarlyControl_zeroBorrow : s2Step285EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step285EarlyControlLog.zeroWork=some s2Step285EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step285EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step285EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step285EarlyControlZeroArena,s2Step285EarlyControlArena,s2Step285EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step285EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step285EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step285EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step285EarlyControl_zero : compileHmrEqualityLog s2Step285EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step285EarlyControlLog.zeroWork=some (s2Step285EarlyControlZeroArena,s2Step285EarlyControlLog.zeroWork,s2Step285EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step285EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step285EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step285EarlyControl_logged : s2Step285EarlyControlPlan.Logged s2Step285EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 777 801 254 253 252 251 780 54 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step285EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step285EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step285EarlyControl_zero
  · exact s2Step285EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step285EarlyControl_flags
  · exact s2Step285EarlyControl_fit
  · exact s2Step285EarlyControl_history
  · exact s2Step285EarlyControl_sigma
  · exact s2Step285EarlyControl_branch

private theorem s2Step285EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step285EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 777 801 254 253 252 251 780 54 s2Step285EarlyControlLog=some s2Step285EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step285EarlyControlPlan s2Step285EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 777 801 254 253 252 251 780 54 s2Step285EarlyControl_logged

private def s2Step285EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639],768⟩

private def s2Step285EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798],770⟩

private def s2Step285EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127],769⟩

private def s2Step285EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845],771⟩

private def s2Step285FrontBank : WindowBank := ⟨s2Step285EntryFRow,s2Step285EntryGRow,s2Step285EntryFvRow,s2Step285EntryGvRow⟩

private def s2Step285Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 790, 768]

private def s2Step285Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 812, 769]

private def s2Step285Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 770]

private def s2Step285Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 783, 771]

private theorem s2Step285Counter_apart : Disjoint s2Step285HeadFvAfter.live s2Step285CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step285HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step285Counter_borrowed : s2Step285HeadFvAfter.checkBorrow 4 s2Step285CounterWork=some s2Step285CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step285HeadFvAfter s2Step285CounterDuring s2Step285CounterWork.toFinset s2Step285Counter_bounded s2Step285Counter_apart rfl

private theorem s2Step285Counter_owned : (801::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step285HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step285HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step285Counter_checked : compileHmrCounterStepLog s2Step285HeadFvAfter true 801 [772, 773, 774, 775, 776, 777] s2Step285CounterWork=some s2Step285CounterDuring := by
  have owned : ∀q∈801::[772, 773, 774, 775, 776, 777],q∈s2Step285HeadFvAfter.live := fun q hq => s2Step285Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step285Counter_borrowed

private def s2Step285EntryFAfter : Arena := s2Step285EntryFBefore

private theorem s2Step285EntryBank_incomingDistinct : ([s2Step285EntryFRow,s2Step285EntryGRow,s2Step285EntryFvRow,s2Step285EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step285EntryF_Incoming : rowsOwned s2Step285EntryFBefore [s2Step285EntryFRow,s2Step285EntryGRow,s2Step285EntryFvRow,s2Step285EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step285EntryFRow,s2Step285EntryGRow,s2Step285EntryFvRow,s2Step285EntryGvRow] 0 s2Step285EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step285EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step285EntryBank_outgoingOwned : rowsOwned s2Step285EntryGvAfter [s2Step285EntryFOut,s2Step285EntryGOut,s2Step285EntryFvOut,s2Step285EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step285EntryGvAfter (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step285EntryF_Outgoing : rowsOwned s2Step285EntryGvAfter [s2Step285EntryFOut,s2Step285EntryGOut,s2Step285EntryFvOut,s2Step285EntryGvOut] :=
  hmrRows_owned_drop s2Step285EntryGvAfter [s2Step285EntryFOut,s2Step285EntryGOut,s2Step285EntryFvOut,s2Step285EntryGvOut] 0 s2Step285EntryBank_outgoingOwned

private theorem s2Step285EntryF_distinct : (s2Step285EntryFRow.sign::s2Step285EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step285EntryF_owned : (s2Step285EntryFRow.sign::s2Step285EntryFRow.payload).toFinset⊆s2Step285EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step285EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step285EntryF_reserved : s2Step285EntryFBefore.reserve s2Step285EntryFFresh.toFinset=some s2Step285EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step285EntryFFresh,arenaWires]
  · norm_num [s2Step285EntryFBefore,s2Step285EntryFFresh,arenaWires]
  · simp only [s2Step285EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step285EntryF_checked : planRowResizeLog s2Step285EntryFBefore s2Step285EntryFRow 128 s2Step285EntryFFresh=
    some (s2Step285EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639],768⟩,growRow 768 s2Step285EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step285EntryFBefore s2Step285EntryFAfter s2Step285EntryFRow 128 s2Step285EntryFFresh
    s2Step285EntryF_distinct s2Step285EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step285EntryF_reserved
  have rowEq : WindowRow.mk (s2Step285EntryFRow.payload++s2Step285EntryFFresh) s2Step285EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step285EntryFvAfter : Arena := s2Step285EntryFBefore

private def s2Step285EntryFvBefore : Arena := s2Step285EntryFBefore

private theorem s2Step285EntryFv_Incoming : rowsOwned s2Step285EntryFvBefore [s2Step285EntryFvRow,s2Step285EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step285EntryFRow,s2Step285EntryGRow,s2Step285EntryFvRow,s2Step285EntryGvRow] 2 s2Step285EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step285EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step285EntryFv_Outgoing : rowsOwned s2Step285EntryGvAfter [s2Step285EntryFvOut,s2Step285EntryGvOut] :=
  hmrRows_owned_drop s2Step285EntryGvAfter [s2Step285EntryFOut,s2Step285EntryGOut,s2Step285EntryFvOut,s2Step285EntryGvOut] 2 s2Step285EntryBank_outgoingOwned

private theorem s2Step285EntryFv_distinct : (s2Step285EntryFvRow.sign::s2Step285EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step285EntryFv_owned : (s2Step285EntryFvRow.sign::s2Step285EntryFvRow.payload).toFinset⊆s2Step285EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step285EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step285EntryFv_reserved : s2Step285EntryFvBefore.reserve s2Step285EntryFvFresh.toFinset=some s2Step285EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step285EntryFvFresh,arenaWires]
  · norm_num [s2Step285EntryFvBefore,s2Step285EntryFBefore,s2Step285EntryFvFresh,arenaWires]
  · simp only [s2Step285EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step285EntryFv_checked : planRowResizeLog s2Step285EntryFvBefore s2Step285EntryFvRow 157 s2Step285EntryFvFresh=
    some (s2Step285EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798],770⟩,growRow 770 s2Step285EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step285EntryFvBefore s2Step285EntryFvAfter s2Step285EntryFvRow 157 s2Step285EntryFvFresh
    s2Step285EntryFv_distinct s2Step285EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step285EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step285EntryFvRow.payload++s2Step285EntryFvFresh) s2Step285EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step285EntryGAfter : Arena := s2Step285EntryFBefore

private def s2Step285EntryGBefore : Arena := s2Step285EntryFBefore

private theorem s2Step285EntryG_Incoming : rowsOwned s2Step285EntryGBefore [s2Step285EntryGRow,s2Step285EntryFvRow,s2Step285EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step285EntryFRow,s2Step285EntryGRow,s2Step285EntryFvRow,s2Step285EntryGvRow] 1 s2Step285EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step285EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step285EntryG_Outgoing : rowsOwned s2Step285EntryGvAfter [s2Step285EntryGOut,s2Step285EntryFvOut,s2Step285EntryGvOut] :=
  hmrRows_owned_drop s2Step285EntryGvAfter [s2Step285EntryFOut,s2Step285EntryGOut,s2Step285EntryFvOut,s2Step285EntryGvOut] 1 s2Step285EntryBank_outgoingOwned

private theorem s2Step285EntryG_distinct : (s2Step285EntryGRow.sign::s2Step285EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step285EntryG_owned : (s2Step285EntryGRow.sign::s2Step285EntryGRow.payload).toFinset⊆s2Step285EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step285EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step285EntryG_reserved : s2Step285EntryGBefore.reserve s2Step285EntryGFresh.toFinset=some s2Step285EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step285EntryGFresh,arenaWires]
  · norm_num [s2Step285EntryGBefore,s2Step285EntryFBefore,s2Step285EntryGFresh,arenaWires]
  · simp only [s2Step285EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step285EntryG_checked : planRowResizeLog s2Step285EntryGBefore s2Step285EntryGRow 128 s2Step285EntryGFresh=
    some (s2Step285EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127],769⟩,growRow 769 s2Step285EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step285EntryGBefore s2Step285EntryGAfter s2Step285EntryGRow 128 s2Step285EntryGFresh
    s2Step285EntryG_distinct s2Step285EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step285EntryG_reserved
  have rowEq : WindowRow.mk (s2Step285EntryGRow.payload++s2Step285EntryGFresh) s2Step285EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step285EntryGvBefore : Arena := s2Step285EntryFBefore

private theorem s2Step285EntryGv_Incoming : rowsOwned s2Step285EntryGvBefore [s2Step285EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step285EntryFRow,s2Step285EntryGRow,s2Step285EntryFvRow,s2Step285EntryGvRow] 3 s2Step285EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step285EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step285EntryGv_Outgoing : rowsOwned s2Step285EntryGvAfter [s2Step285EntryGvOut] :=
  hmrRows_owned_drop s2Step285EntryGvAfter [s2Step285EntryFOut,s2Step285EntryGOut,s2Step285EntryFvOut,s2Step285EntryGvOut] 3 s2Step285EntryBank_outgoingOwned

private theorem s2Step285EntryGv_distinct : (s2Step285EntryGvRow.sign::s2Step285EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step285EntryGv_owned : (s2Step285EntryGvRow.sign::s2Step285EntryGvRow.payload).toFinset⊆s2Step285EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step285EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step285EntryGv_reserved : s2Step285EntryGvBefore.reserve s2Step285EntryGvFresh.toFinset=some s2Step285EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step285EntryGvFresh,arenaWires]
  · norm_num [s2Step285EntryGvBefore,s2Step285EntryFBefore,s2Step285EntryGvFresh,arenaWires]
  · simp only [s2Step285EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step285EntryGv_checked : planRowResizeLog s2Step285EntryGvBefore s2Step285EntryGvRow 157 s2Step285EntryGvFresh=
    some (s2Step285EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845],771⟩,growRow 771 s2Step285EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step285EntryGvBefore s2Step285EntryGvAfter s2Step285EntryGvRow 157 s2Step285EntryGvFresh
    s2Step285EntryGv_distinct s2Step285EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step285EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step285EntryGvRow.payload++s2Step285EntryGvFresh) s2Step285EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step285EntryBank_rows : planWindowRowsLog s2Step285EntryFBefore [(s2Step285EntryFRow,128),(s2Step285EntryGRow,128),(s2Step285EntryFvRow,157),(s2Step285EntryGvRow,157)] [s2Step285EntryFFresh,s2Step285EntryGFresh,s2Step285EntryFvFresh,s2Step285EntryGvFresh]=
    some (s2Step285EntryGvAfter,[s2Step285EntryFOut,s2Step285EntryGOut,s2Step285EntryFvOut,s2Step285EntryGvOut],(growRow 768 s2Step285EntryFFresh ++ (growRow 769 s2Step285EntryGFresh ++ (growRow 770 s2Step285EntryFvFresh ++ (growRow 771 s2Step285EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step285EntryGvAfter [] []=some (s2Step285EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step285EntryGvBefore s2Step285EntryGvAfter s2Step285EntryGvAfter
    s2Step285EntryGvRow s2Step285EntryGvOut 157 s2Step285EntryGvFresh [] [] []
    (growRow 771 s2Step285EntryGvFresh) ([]) s2Step285EntryGv_Incoming s2Step285EntryGv_checked h4 s2Step285EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step285EntryFvBefore s2Step285EntryFvAfter s2Step285EntryGvAfter
    s2Step285EntryFvRow s2Step285EntryFvOut 157 s2Step285EntryFvFresh [(s2Step285EntryGvRow,157)] [s2Step285EntryGvFresh] [s2Step285EntryGvOut]
    (growRow 770 s2Step285EntryFvFresh) ((growRow 771 s2Step285EntryGvFresh ++ [])) s2Step285EntryFv_Incoming s2Step285EntryFv_checked h3 s2Step285EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step285EntryGBefore s2Step285EntryGAfter s2Step285EntryGvAfter
    s2Step285EntryGRow s2Step285EntryGOut 128 s2Step285EntryGFresh [(s2Step285EntryFvRow,157),(s2Step285EntryGvRow,157)] [s2Step285EntryFvFresh,s2Step285EntryGvFresh] [s2Step285EntryFvOut,s2Step285EntryGvOut]
    (growRow 769 s2Step285EntryGFresh) ((growRow 770 s2Step285EntryFvFresh ++ (growRow 771 s2Step285EntryGvFresh ++ []))) s2Step285EntryG_Incoming s2Step285EntryG_checked h2 s2Step285EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step285EntryFBefore s2Step285EntryFAfter s2Step285EntryGvAfter
    s2Step285EntryFRow s2Step285EntryFOut 128 s2Step285EntryFFresh [(s2Step285EntryGRow,128),(s2Step285EntryFvRow,157),(s2Step285EntryGvRow,157)] [s2Step285EntryGFresh,s2Step285EntryFvFresh,s2Step285EntryGvFresh] [s2Step285EntryGOut,s2Step285EntryFvOut,s2Step285EntryGvOut]
    (growRow 768 s2Step285EntryFFresh) ((growRow 769 s2Step285EntryGFresh ++ (growRow 770 s2Step285EntryFvFresh ++ (growRow 771 s2Step285EntryGvFresh ++ [])))) s2Step285EntryF_Incoming s2Step285EntryF_checked h1 s2Step285EntryF_Outgoing
  exact h0

private theorem s2Step285EntryBank_checked : compileHmrBankResizeLog .entry s2Step285EntryFBefore ⟨s2Step285EntryFRow,s2Step285EntryGRow,s2Step285EntryFvRow,s2Step285EntryGvRow⟩ ⟨128,128,157,157⟩ [s2Step285EntryFFresh,s2Step285EntryGFresh,s2Step285EntryFvFresh,s2Step285EntryGvFresh]=
    some (s2Step285EntryGvAfter,⟨s2Step285EntryFOut,s2Step285EntryGOut,s2Step285EntryFvOut,s2Step285EntryGvOut⟩,(growRow 768 s2Step285EntryFFresh ++ (growRow 769 s2Step285EntryGFresh ++ (growRow 770 s2Step285EntryFvFresh ++ (growRow 771 s2Step285EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step285EntryBank_rows]
  rfl

private def s2Step285ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<127) ∨ (128≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step285ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<127) ∨ (128≤q ∧ q<781) ∨ (782≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step285ExitFBefore : Arena := s2Step285ExitGAfter

private def s2Step285ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 790],768⟩

private def s2Step285ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891],770⟩

private def s2Step285ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 812],769⟩

private def s2Step285ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 783],771⟩

private theorem s2Step285ExitBank_incomingDistinct : ([s2Step285ExitGRow,s2Step285ExitFRow,s2Step285ExitFvRow,s2Step285ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step285ExitF_Incoming : rowsOwned s2Step285ExitFBefore [s2Step285ExitFRow,s2Step285ExitFvRow,s2Step285ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step285ExitGRow,s2Step285ExitFRow,s2Step285ExitFvRow,s2Step285ExitGvRow] 1 s2Step285ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step285ExitFBefore (fun q => (0≤q ∧ q<127) ∨ (128≤q ∧ q<781) ∨ (782≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step285ExitBank_outgoingOwned : rowsOwned s2Step285ExitGvAfter [s2Step285ExitGOut,s2Step285ExitFOut,s2Step285ExitFvOut,s2Step285ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step285ExitGvAfter (fun q => (0≤q ∧ q<127) ∨ (128≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step285ExitF_Outgoing : rowsOwned s2Step285ExitGvAfter [s2Step285ExitFOut,s2Step285ExitFvOut,s2Step285ExitGvOut] :=
  hmrRows_owned_drop s2Step285ExitGvAfter [s2Step285ExitGOut,s2Step285ExitFOut,s2Step285ExitFvOut,s2Step285ExitGvOut] 1 s2Step285ExitBank_outgoingOwned

private theorem s2Step285ExitF_distinct : (s2Step285ExitFRow.sign::s2Step285ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step285ExitF_owned : (s2Step285ExitFRow.sign::s2Step285ExitFRow.payload).toFinset⊆s2Step285ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step285ExitFBefore (fun q => (0≤q ∧ q<127) ∨ (128≤q ∧ q<781) ∨ (782≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step285ExitF_retired : s2Step285ExitFBefore.retireSet s2Step285ExitFExtra.toFinset=s2Step285ExitFAfter := by
  unfold Arena.retireSet s2Step285ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step285ExitFBefore,s2Step285ExitGAfter,s2Step285ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step285ExitF_checked : planRowResizeLog s2Step285ExitFBefore s2Step285ExitFRow 128 []=
    some (s2Step285ExitFAfter,s2Step285ExitFOut,shrinkRow 768 s2Step285ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step285ExitFBefore s2Step285ExitFRow 128 s2Step285ExitF_distinct s2Step285ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step285ExitFRow.payload.take 128) s2Step285ExitFRow.sign=s2Step285ExitFOut := by decide +kernel
  have hi : s2Step285ExitFRow.payload.drop 128=s2Step285ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step285ExitF_retired] at result
  exact result

private def s2Step285ExitFvAfter : Arena := s2Step285ExitFAfter

private def s2Step285ExitFvBefore : Arena := s2Step285ExitFAfter

private theorem s2Step285ExitFv_Incoming : rowsOwned s2Step285ExitFvBefore [s2Step285ExitFvRow,s2Step285ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step285ExitGRow,s2Step285ExitFRow,s2Step285ExitFvRow,s2Step285ExitGvRow] 2 s2Step285ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step285ExitFvBefore (fun q => (0≤q ∧ q<127) ∨ (128≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step285ExitFv_Outgoing : rowsOwned s2Step285ExitGvAfter [s2Step285ExitFvOut,s2Step285ExitGvOut] :=
  hmrRows_owned_drop s2Step285ExitGvAfter [s2Step285ExitGOut,s2Step285ExitFOut,s2Step285ExitFvOut,s2Step285ExitGvOut] 2 s2Step285ExitBank_outgoingOwned

private theorem s2Step285ExitFv_distinct : (s2Step285ExitFvRow.sign::s2Step285ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step285ExitFv_owned : (s2Step285ExitFvRow.sign::s2Step285ExitFvRow.payload).toFinset⊆s2Step285ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step285ExitFvBefore (fun q => (0≤q ∧ q<127) ∨ (128≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step285ExitFv_reserved : s2Step285ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step285ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step285ExitFv_checked : planRowResizeLog s2Step285ExitFvBefore s2Step285ExitFvRow 158 []=
    some (s2Step285ExitFvAfter,s2Step285ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step285ExitFvBefore s2Step285ExitFvAfter s2Step285ExitFvRow 158 []
    s2Step285ExitFv_distinct s2Step285ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step285ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step285ExitFvRow.payload++[]) s2Step285ExitFvRow.sign=s2Step285ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step285ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private theorem s2Step285ExitG_Incoming : rowsOwned s2Step285ExitGBefore [s2Step285ExitGRow,s2Step285ExitFRow,s2Step285ExitFvRow,s2Step285ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step285ExitGRow,s2Step285ExitFRow,s2Step285ExitFvRow,s2Step285ExitGvRow] 0 s2Step285ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step285ExitGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step285ExitG_Outgoing : rowsOwned s2Step285ExitGvAfter [s2Step285ExitGOut,s2Step285ExitFOut,s2Step285ExitFvOut,s2Step285ExitGvOut] :=
  hmrRows_owned_drop s2Step285ExitGvAfter [s2Step285ExitGOut,s2Step285ExitFOut,s2Step285ExitFvOut,s2Step285ExitGvOut] 0 s2Step285ExitBank_outgoingOwned

private theorem s2Step285ExitG_distinct : (s2Step285ExitGRow.sign::s2Step285ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step285ExitG_owned : (s2Step285ExitGRow.sign::s2Step285ExitGRow.payload).toFinset⊆s2Step285ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step285ExitGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step285ExitG_retired : s2Step285ExitGBefore.retireSet s2Step285ExitGExtra.toFinset=s2Step285ExitGAfter := by
  unfold Arena.retireSet s2Step285ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step285ExitGBefore,s2Step285ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step285ExitG_checked : planRowResizeLog s2Step285ExitGBefore s2Step285ExitGRow 127 []=
    some (s2Step285ExitGAfter,s2Step285ExitGOut,shrinkRow 769 s2Step285ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step285ExitGBefore s2Step285ExitGRow 127 s2Step285ExitG_distinct s2Step285ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step285ExitGRow.payload.take 127) s2Step285ExitGRow.sign=s2Step285ExitGOut := by decide +kernel
  have hi : s2Step285ExitGRow.payload.drop 127=s2Step285ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step285ExitG_retired] at result
  exact result

private def s2Step285ExitGvBefore : Arena := s2Step285ExitFAfter

private theorem s2Step285ExitGv_Incoming : rowsOwned s2Step285ExitGvBefore [s2Step285ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step285ExitGRow,s2Step285ExitFRow,s2Step285ExitFvRow,s2Step285ExitGvRow] 3 s2Step285ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step285ExitGvBefore (fun q => (0≤q ∧ q<127) ∨ (128≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step285ExitGv_Outgoing : rowsOwned s2Step285ExitGvAfter [s2Step285ExitGvOut] :=
  hmrRows_owned_drop s2Step285ExitGvAfter [s2Step285ExitGOut,s2Step285ExitFOut,s2Step285ExitFvOut,s2Step285ExitGvOut] 3 s2Step285ExitBank_outgoingOwned

private theorem s2Step285ExitGv_distinct : (s2Step285ExitGvRow.sign::s2Step285ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step285ExitGv_owned : (s2Step285ExitGvRow.sign::s2Step285ExitGvRow.payload).toFinset⊆s2Step285ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step285ExitGvBefore (fun q => (0≤q ∧ q<127) ∨ (128≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step285ExitGv_retired : s2Step285ExitGvBefore.retireSet s2Step285ExitGvExtra.toFinset=s2Step285ExitGvAfter := by
  unfold Arena.retireSet s2Step285ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step285ExitGvBefore,s2Step285ExitFAfter,s2Step285ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step285ExitGv_checked : planRowResizeLog s2Step285ExitGvBefore s2Step285ExitGvRow 157 []=
    some (s2Step285ExitGvAfter,s2Step285ExitGvOut,shrinkRow 771 s2Step285ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step285ExitGvBefore s2Step285ExitGvRow 157 s2Step285ExitGv_distinct s2Step285ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step285ExitGvRow.payload.take 157) s2Step285ExitGvRow.sign=s2Step285ExitGvOut := by decide +kernel
  have hi : s2Step285ExitGvRow.payload.drop 157=s2Step285ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step285ExitGv_retired] at result
  exact result

private theorem s2Step285ExitBank_rows : planWindowRowsLog s2Step285ExitGBefore [(s2Step285ExitGRow,127),(s2Step285ExitFRow,128),(s2Step285ExitFvRow,158),(s2Step285ExitGvRow,157)] [[],[],[],[]]=
    some (s2Step285ExitGvAfter,[s2Step285ExitGOut,s2Step285ExitFOut,s2Step285ExitFvOut,s2Step285ExitGvOut],(shrinkRow 769 s2Step285ExitGExtra ++ (shrinkRow 768 s2Step285ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step285ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step285ExitGvAfter [] []=some (s2Step285ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step285ExitGvBefore s2Step285ExitGvAfter s2Step285ExitGvAfter
    s2Step285ExitGvRow s2Step285ExitGvOut 157 [] [] [] []
    (shrinkRow 771 s2Step285ExitGvExtra) ([]) s2Step285ExitGv_Incoming s2Step285ExitGv_checked h4 s2Step285ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step285ExitFvBefore s2Step285ExitFvAfter s2Step285ExitGvAfter
    s2Step285ExitFvRow s2Step285ExitFvOut 158 [] [(s2Step285ExitGvRow,157)] [[]] [s2Step285ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step285ExitGvExtra ++ [])) s2Step285ExitFv_Incoming s2Step285ExitFv_checked h3 s2Step285ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step285ExitFBefore s2Step285ExitFAfter s2Step285ExitGvAfter
    s2Step285ExitFRow s2Step285ExitFOut 128 [] [(s2Step285ExitFvRow,158),(s2Step285ExitGvRow,157)] [[],[]] [s2Step285ExitFvOut,s2Step285ExitGvOut]
    (shrinkRow 768 s2Step285ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step285ExitGvExtra ++ []))) s2Step285ExitF_Incoming s2Step285ExitF_checked h2 s2Step285ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step285ExitGBefore s2Step285ExitGAfter s2Step285ExitGvAfter
    s2Step285ExitGRow s2Step285ExitGOut 127 [] [(s2Step285ExitFRow,128),(s2Step285ExitFvRow,158),(s2Step285ExitGvRow,157)] [[],[],[]] [s2Step285ExitFOut,s2Step285ExitFvOut,s2Step285ExitGvOut]
    (shrinkRow 769 s2Step285ExitGExtra) ((shrinkRow 768 s2Step285ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step285ExitGvExtra ++ [])))) s2Step285ExitG_Incoming s2Step285ExitG_checked h1 s2Step285ExitG_Outgoing
  exact h0

private theorem s2Step285ExitBank_checked : compileHmrBankResizeLog .exit s2Step285ExitGBefore ⟨s2Step285ExitFRow,s2Step285ExitGRow,s2Step285ExitFvRow,s2Step285ExitGvRow⟩ ⟨128,127,158,157⟩ [[],[],[],[]]=
    some (s2Step285ExitGvAfter,⟨s2Step285ExitFOut,s2Step285ExitGOut,s2Step285ExitFvOut,s2Step285ExitGvOut⟩,(shrinkRow 769 s2Step285ExitGExtra ++ (shrinkRow 768 s2Step285ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step285ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step285ExitBank_rows]
  rfl

private theorem s2Step285Add0_apart : Disjoint s2Step285Add0Arena.live s2Step285Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step285Add0Arena (fun q => (0≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step285Add0_card : s2Step285Add0Arena.live.card=898 := by
  decide +kernel

private theorem s2Step285Add0_borrowed : s2Step285Add0Arena.checkBorrow (hmrHybridCount s2Step285Add0Arena s2Step285Add0B.length) s2Step285Add0Work=some s2Step285Add0During := by
  have len : s2Step285Add0Work.length=hmrHybridCount s2Step285Add0Arena s2Step285Add0B.length := by
    rw [hmrHybridCount,s2Step285Add0_card]
    decide +kernel
  have nd : s2Step285Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step285Add0Arena s2Step285Add0During s2Step285Add0Work.toFinset s2Step285Add0_bounded s2Step285Add0_apart rfl

private theorem s2Step285Add0_distinct : (796::780::781::(s2Step285Add0A++s2Step285Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step285Add0_owned : (796::780::781::(s2Step285Add0A++s2Step285Add0B)).toFinset⊆s2Step285Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step285Add0Arena (fun q => (0≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step285Add0_checked : compileHmrHybridCinLog s2Step285Add0Arena 780 796 781 s2Step285Add0A s2Step285Add0B s2Step285Add0Work=some s2Step285Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step285Add0Arena s2Step285Add0During 780 796 781 s2Step285Add0A s2Step285Add0B s2Step285Add0Work
    (by decide +kernel) (by decide +kernel) s2Step285Add0_distinct
    (fun q hq => s2Step285Add0_owned (List.mem_toFinset.mpr hq)) s2Step285Add0_borrowed

private theorem s2Step285Add1_apart : Disjoint s2Step285Add1Arena.live s2Step285Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step285Add1Arena (fun q => (0≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step285Add1_card : s2Step285Add1Arena.live.card=898 := by
  decide +kernel

private theorem s2Step285Add1_borrowed : s2Step285Add1Arena.checkBorrow (hmrHybridCount s2Step285Add1Arena s2Step285Add1B.length) s2Step285Add1Work=some s2Step285Add1During := by
  have len : s2Step285Add1Work.length=hmrHybridCount s2Step285Add1Arena s2Step285Add1B.length := by
    rw [hmrHybridCount,s2Step285Add1_card]
    decide +kernel
  have nd : s2Step285Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step285Add1Arena s2Step285Add1During s2Step285Add1Work.toFinset s2Step285Add1_bounded s2Step285Add1_apart rfl

private theorem s2Step285Add1_distinct : (796::780::781::(s2Step285Add1A++s2Step285Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step285Add1_owned : (796::780::781::(s2Step285Add1A++s2Step285Add1B)).toFinset⊆s2Step285Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step285Add1Arena (fun q => (0≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step285Add1_checked : compileHmrHybridCinLog s2Step285Add1Arena 780 796 781 s2Step285Add1A s2Step285Add1B s2Step285Add1Work=some s2Step285Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step285Add1Arena s2Step285Add1During 780 796 781 s2Step285Add1A s2Step285Add1B s2Step285Add1Work
    (by decide +kernel) (by decide +kernel) s2Step285Add1_distinct
    (fun q hq => s2Step285Add1_owned (List.mem_toFinset.mpr hq)) s2Step285Add1_borrowed

private theorem s2Step285F4_apart : Disjoint (s2Step285Add0A++s2Step285Add0B).toFinset (s2Step285Add1A++s2Step285Add1B).toFinset := by
  have nd : ((s2Step285Add0A++s2Step285Add0B)++(s2Step285Add1A++s2Step285Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step285F4_carry : s2Step285F4FlagArena.checkBorrow 1 [781]=some s2Step285Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step285F4FlagArena,s2Step285HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step285F4FlagArena,s2Step285HeadFvAfter,s2Step285Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step285F4_distinct : (801::780::796::781::((s2Step285Add0A++s2Step285Add1A)++(s2Step285Add0B++s2Step285Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step285F4_flag : s2Step285HeadFvAfter.checkBorrow 1 [796]=some s2Step285F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step285HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step285F4_owned : (801::780::((s2Step285Add0A++s2Step285Add1A)++(s2Step285Add0B++s2Step285Add1B))).toFinset⊆s2Step285HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step285HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step285F4_checked : compileHmrHybridF4Log s2Step285HeadFvAfter 801 780 s2Step285Add0A s2Step285Add0B s2Step285Add1A s2Step285Add1B [796] [781] s2Step285Add0Work s2Step285Add1Work=some s2Step285F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step285HeadFvAfter s2Step285F4FlagArena s2Step285Add0Arena s2Step285Add0During s2Step285Add1During 801 780
    s2Step285Add0A s2Step285Add0B s2Step285Add1A s2Step285Add1B [796] [781] s2Step285Add0Work s2Step285Add1Work
    (fun q hq => s2Step285F4_owned (List.mem_toFinset.mpr hq)) s2Step285F4_flag s2Step285F4_carry
    s2Step285F4_distinct s2Step285F4_apart s2Step285Add0_checked s2Step285Add1_checked

private theorem s2Step285Front_branch : s2Step285FrontSigmaArena.checkBorrow 1 [780]=some s2Step285HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step285FrontSigmaArena,s2Step285EntryGvAfter,s2Step285EntryFBefore,arenaWires]
  · ext q
    simp only [s2Step285FrontSigmaArena,s2Step285EntryGvAfter,s2Step285EntryFBefore,s2Step285HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step285Front_entry : HmrFrontEntryValid s2Step285EntryFBefore s2Step285FrontBank 128 157 ⟨128,127,158,157⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step285FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step285EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step285EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step285FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step285Front_sigma : s2Step285EntryGvAfter.checkBorrow 1 [801]=some s2Step285FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step285EntryGvAfter,s2Step285EntryFBefore,arenaWires]
  · rfl

private def s2Step285HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step285HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step285HeadFBefore : Arena := s2Step285HeadGAfter

private def s2Step285HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639],768⟩

private def s2Step285HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798],770⟩

private def s2Step285HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127],769⟩

private def s2Step285HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845],771⟩

private theorem s2Step285HeadBank_incomingDistinct : ([s2Step285HeadGRow,s2Step285HeadFRow,s2Step285HeadGvRow,s2Step285HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step285HeadF_Incoming : rowsOwned s2Step285HeadFBefore [s2Step285HeadFRow,s2Step285HeadGvRow,s2Step285HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step285HeadGRow,s2Step285HeadFRow,s2Step285HeadGvRow,s2Step285HeadFvRow] 1 s2Step285HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step285HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step285HeadBank_outgoingOwned : rowsOwned s2Step285HeadFvAfter [s2Step285HeadGOut,s2Step285HeadFOut,s2Step285HeadGvOut,s2Step285HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step285HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step285HeadF_Outgoing : rowsOwned s2Step285HeadFvAfter [s2Step285HeadFOut,s2Step285HeadGvOut,s2Step285HeadFvOut] :=
  hmrRows_owned_drop s2Step285HeadFvAfter [s2Step285HeadGOut,s2Step285HeadFOut,s2Step285HeadGvOut,s2Step285HeadFvOut] 1 s2Step285HeadBank_outgoingOwned

private theorem s2Step285HeadF_distinct : (s2Step285HeadFRow.sign::s2Step285HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step285HeadF_owned : (s2Step285HeadFRow.sign::s2Step285HeadFRow.payload).toFinset⊆s2Step285HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step285HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step285HeadF_reserved : s2Step285HeadFBefore.reserve s2Step285HeadFFresh.toFinset=some s2Step285HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step285HeadFFresh,arenaWires]
  · norm_num [s2Step285HeadFBefore,s2Step285HeadGAfter,s2Step285HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step285HeadFAfter,s2Step285HeadFBefore,s2Step285HeadGAfter,s2Step285HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step285HeadF_checked : planRowResizeLog s2Step285HeadFBefore s2Step285HeadFRow 129 s2Step285HeadFFresh=
    some (s2Step285HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 790],768⟩,growRow 768 s2Step285HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step285HeadFBefore s2Step285HeadFAfter s2Step285HeadFRow 129 s2Step285HeadFFresh
    s2Step285HeadF_distinct s2Step285HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step285HeadF_reserved
  have rowEq : WindowRow.mk (s2Step285HeadFRow.payload++s2Step285HeadFFresh) s2Step285HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 790],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step285HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step285HeadFvBefore : Arena := s2Step285HeadGvAfter

private theorem s2Step285HeadFv_Incoming : rowsOwned s2Step285HeadFvBefore [s2Step285HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step285HeadGRow,s2Step285HeadFRow,s2Step285HeadGvRow,s2Step285HeadFvRow] 3 s2Step285HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step285HeadFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step285HeadFv_Outgoing : rowsOwned s2Step285HeadFvAfter [s2Step285HeadFvOut] :=
  hmrRows_owned_drop s2Step285HeadFvAfter [s2Step285HeadGOut,s2Step285HeadFOut,s2Step285HeadGvOut,s2Step285HeadFvOut] 3 s2Step285HeadBank_outgoingOwned

private theorem s2Step285HeadFv_distinct : (s2Step285HeadFvRow.sign::s2Step285HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step285HeadFv_owned : (s2Step285HeadFvRow.sign::s2Step285HeadFvRow.payload).toFinset⊆s2Step285HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step285HeadFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step285HeadFv_reserved : s2Step285HeadFvBefore.reserve s2Step285HeadFvFresh.toFinset=some s2Step285HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step285HeadFvFresh,arenaWires]
  · norm_num [s2Step285HeadFvBefore,s2Step285HeadGvAfter,s2Step285HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step285HeadFvAfter,s2Step285HeadFvBefore,s2Step285HeadGvAfter,s2Step285HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step285HeadFv_checked : planRowResizeLog s2Step285HeadFvBefore s2Step285HeadFvRow 158 s2Step285HeadFvFresh=
    some (s2Step285HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891],770⟩,growRow 770 s2Step285HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step285HeadFvBefore s2Step285HeadFvAfter s2Step285HeadFvRow 158 s2Step285HeadFvFresh
    s2Step285HeadFv_distinct s2Step285HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step285HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step285HeadFvRow.payload++s2Step285HeadFvFresh) s2Step285HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step285HeadG_Incoming : rowsOwned s2Step285HeadGBefore [s2Step285HeadGRow,s2Step285HeadFRow,s2Step285HeadGvRow,s2Step285HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step285HeadGRow,s2Step285HeadFRow,s2Step285HeadGvRow,s2Step285HeadFvRow] 0 s2Step285HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step285HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step285HeadG_Outgoing : rowsOwned s2Step285HeadFvAfter [s2Step285HeadGOut,s2Step285HeadFOut,s2Step285HeadGvOut,s2Step285HeadFvOut] :=
  hmrRows_owned_drop s2Step285HeadFvAfter [s2Step285HeadGOut,s2Step285HeadFOut,s2Step285HeadGvOut,s2Step285HeadFvOut] 0 s2Step285HeadBank_outgoingOwned

private theorem s2Step285HeadG_distinct : (s2Step285HeadGRow.sign::s2Step285HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step285HeadG_owned : (s2Step285HeadGRow.sign::s2Step285HeadGRow.payload).toFinset⊆s2Step285HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step285HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step285HeadG_reserved : s2Step285HeadGBefore.reserve s2Step285HeadGFresh.toFinset=some s2Step285HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step285HeadGFresh,arenaWires]
  · norm_num [s2Step285HeadGBefore,s2Step285HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step285HeadGAfter,s2Step285HeadGBefore,s2Step285HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step285HeadG_checked : planRowResizeLog s2Step285HeadGBefore s2Step285HeadGRow 129 s2Step285HeadGFresh=
    some (s2Step285HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 812],769⟩,growRow 769 s2Step285HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step285HeadGBefore s2Step285HeadGAfter s2Step285HeadGRow 129 s2Step285HeadGFresh
    s2Step285HeadG_distinct s2Step285HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step285HeadG_reserved
  have rowEq : WindowRow.mk (s2Step285HeadGRow.payload++s2Step285HeadGFresh) s2Step285HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 812],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step285HeadGvBefore : Arena := s2Step285HeadFAfter

private theorem s2Step285HeadGv_Incoming : rowsOwned s2Step285HeadGvBefore [s2Step285HeadGvRow,s2Step285HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step285HeadGRow,s2Step285HeadFRow,s2Step285HeadGvRow,s2Step285HeadFvRow] 2 s2Step285HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step285HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step285HeadGv_Outgoing : rowsOwned s2Step285HeadFvAfter [s2Step285HeadGvOut,s2Step285HeadFvOut] :=
  hmrRows_owned_drop s2Step285HeadFvAfter [s2Step285HeadGOut,s2Step285HeadFOut,s2Step285HeadGvOut,s2Step285HeadFvOut] 2 s2Step285HeadBank_outgoingOwned

private theorem s2Step285HeadGv_distinct : (s2Step285HeadGvRow.sign::s2Step285HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step285HeadGv_owned : (s2Step285HeadGvRow.sign::s2Step285HeadGvRow.payload).toFinset⊆s2Step285HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step285HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step285HeadGv_reserved : s2Step285HeadGvBefore.reserve s2Step285HeadGvFresh.toFinset=some s2Step285HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step285HeadGvFresh,arenaWires]
  · norm_num [s2Step285HeadGvBefore,s2Step285HeadFAfter,s2Step285HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step285HeadGvAfter,s2Step285HeadGvBefore,s2Step285HeadFAfter,s2Step285HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step285HeadGv_checked : planRowResizeLog s2Step285HeadGvBefore s2Step285HeadGvRow 158 s2Step285HeadGvFresh=
    some (s2Step285HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 783],771⟩,growRow 771 s2Step285HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step285HeadGvBefore s2Step285HeadGvAfter s2Step285HeadGvRow 158 s2Step285HeadGvFresh
    s2Step285HeadGv_distinct s2Step285HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step285HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step285HeadGvRow.payload++s2Step285HeadGvFresh) s2Step285HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 783],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step285HeadBank_rows : planWindowRowsLog s2Step285HeadGBefore [(s2Step285HeadGRow,129),(s2Step285HeadFRow,129),(s2Step285HeadGvRow,158),(s2Step285HeadFvRow,158)] [s2Step285HeadGFresh,s2Step285HeadFFresh,s2Step285HeadGvFresh,s2Step285HeadFvFresh]=
    some (s2Step285HeadFvAfter,[s2Step285HeadGOut,s2Step285HeadFOut,s2Step285HeadGvOut,s2Step285HeadFvOut],(growRow 769 s2Step285HeadGFresh ++ (growRow 768 s2Step285HeadFFresh ++ (growRow 771 s2Step285HeadGvFresh ++ (growRow 770 s2Step285HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step285HeadFvAfter [] []=some (s2Step285HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step285HeadFvBefore s2Step285HeadFvAfter s2Step285HeadFvAfter
    s2Step285HeadFvRow s2Step285HeadFvOut 158 s2Step285HeadFvFresh [] [] []
    (growRow 770 s2Step285HeadFvFresh) ([]) s2Step285HeadFv_Incoming s2Step285HeadFv_checked h4 s2Step285HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step285HeadGvBefore s2Step285HeadGvAfter s2Step285HeadFvAfter
    s2Step285HeadGvRow s2Step285HeadGvOut 158 s2Step285HeadGvFresh [(s2Step285HeadFvRow,158)] [s2Step285HeadFvFresh] [s2Step285HeadFvOut]
    (growRow 771 s2Step285HeadGvFresh) ((growRow 770 s2Step285HeadFvFresh ++ [])) s2Step285HeadGv_Incoming s2Step285HeadGv_checked h3 s2Step285HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step285HeadFBefore s2Step285HeadFAfter s2Step285HeadFvAfter
    s2Step285HeadFRow s2Step285HeadFOut 129 s2Step285HeadFFresh [(s2Step285HeadGvRow,158),(s2Step285HeadFvRow,158)] [s2Step285HeadGvFresh,s2Step285HeadFvFresh] [s2Step285HeadGvOut,s2Step285HeadFvOut]
    (growRow 768 s2Step285HeadFFresh) ((growRow 771 s2Step285HeadGvFresh ++ (growRow 770 s2Step285HeadFvFresh ++ []))) s2Step285HeadF_Incoming s2Step285HeadF_checked h2 s2Step285HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step285HeadGBefore s2Step285HeadGAfter s2Step285HeadFvAfter
    s2Step285HeadGRow s2Step285HeadGOut 129 s2Step285HeadGFresh [(s2Step285HeadFRow,129),(s2Step285HeadGvRow,158),(s2Step285HeadFvRow,158)] [s2Step285HeadFFresh,s2Step285HeadGvFresh,s2Step285HeadFvFresh] [s2Step285HeadFOut,s2Step285HeadGvOut,s2Step285HeadFvOut]
    (growRow 769 s2Step285HeadGFresh) ((growRow 768 s2Step285HeadFFresh ++ (growRow 771 s2Step285HeadGvFresh ++ (growRow 770 s2Step285HeadFvFresh ++ [])))) s2Step285HeadG_Incoming s2Step285HeadG_checked h1 s2Step285HeadG_Outgoing
  exact h0

private theorem s2Step285HeadBank_checked : compileHmrBankResizeLog .headroom s2Step285HeadGBefore ⟨s2Step285HeadFRow,s2Step285HeadGRow,s2Step285HeadFvRow,s2Step285HeadGvRow⟩ ⟨129,129,158,158⟩ [s2Step285HeadGFresh,s2Step285HeadFFresh,s2Step285HeadGvFresh,s2Step285HeadFvFresh]=
    some (s2Step285HeadFvAfter,⟨s2Step285HeadFOut,s2Step285HeadGOut,s2Step285HeadFvOut,s2Step285HeadGvOut⟩,(growRow 769 s2Step285HeadGFresh ++ (growRow 768 s2Step285HeadFFresh ++ (growRow 771 s2Step285HeadGvFresh ++ (growRow 770 s2Step285HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step285HeadBank_rows]
  rfl

private theorem s2Step285Front_checked : compileHmrSourceFrontLog s2Step285EntryFBefore s2Step285FrontBank 128 157 ⟨128,127,158,157⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step285FrontLog=some s2Step285FrontPlan := by
  have pairEq : s2Step285FrontPair=⟨s2Step285HeadFRow,s2Step285HeadGRow,s2Step285HeadFvRow,s2Step285HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step285FrontHead=⟨s2Step285ExitFRow,s2Step285ExitGRow,s2Step285ExitFvRow,s2Step285ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step285Add0A=s2Step285FrontHead.f.wires := by decide +kernel
  have gEq : s2Step285Add0B=s2Step285FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step285Add1A=s2Step285FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step285Add1B=s2Step285FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step285EntryFBefore s2Step285FrontBank 128 157 ⟨128,127,158,157⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step285FrontLog s2Step285FrontPlan
  · exact s2Step285Front_entry
  · exact s2Step285EntryBank_checked
  · exact s2Step285Front_sigma
  · rfl
  · exact s2Step285Front_branch
  · rfl
  · simpa only [s2Step285FrontPlan,pairEq] using s2Step285HeadBank_checked
  · simpa only [s2Step285FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step285F4_checked
  · exact s2Step285Counter_checked
  · rfl
  · simpa only [s2Step285FrontPlan,headEq] using s2Step285ExitBank_checked

private theorem s2Step285Complete_explicit_checked : compileHmrEarlyStepLog s2Step285EntryFBefore s2Step285FrontBank 128 157 ⟨128,127,158,157⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 54 s2Step285CompleteLog=some s2Step285CompletePlan := by
  let Q := s2Step285EarlyControlPlan
  have hq := s2Step285EarlyControl_plan_checked
  have fv1 : s2Step285CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step285CompleteOut.fv.payload[2]?.getD s2Step285CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step285CompleteOut.fv.payload[3]?.getD s2Step285CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step285CompleteOut.fv.payload[4]?.getD s2Step285CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step285EntryFBefore s2Step285EarlyControlArena s2Step285FrontBank 128 157 ⟨128,127,158,157⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 54 s2Step285CompleteLog s2Step285FrontPlan Q
    s2Step285Front_checked s2Step285Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step285Complete_owned s2Step285Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step285EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 777 801 s2Step285CompleteOut.fv.second (s2Step285CompleteOut.fv.payload[2]?.getD s2Step285CompleteOut.fv.sign) (s2Step285CompleteOut.fv.payload[3]?.getD s2Step285CompleteOut.fv.sign) (s2Step285CompleteOut.fv.payload[4]?.getD s2Step285CompleteOut.fv.sign) 780 54 s2Step285EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep285Arena : Arena := s2Step285EntryFBefore
def s2PrivateStep285Bank : WindowBank := s2Step285FrontBank
def s2PrivateStep285Spec : HmrSourceWalkStepLog := ⟨128,157,⟨128,127,158,157⟩,54,.early s2Step285CompleteLog⟩
def s2PrivateStep285Plan : HmrSourceStepPlan := .early s2Step285CompletePlan
theorem s2PrivateStep285_source : s2PrivateStep285Spec=s2ObservedLogs272[13] := rfl
theorem s2PrivateStep285_checked : compileHmrSourceStepLog s2PrivateStep285Arena s2PrivateStep285Bank
    s2PrivateStep285Spec.fgWidth s2PrivateStep285Spec.vWidth s2PrivateStep285Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905]
    6 498 285 s2PrivateStep285Spec.need none s2PrivateStep285Spec.log=some s2PrivateStep285Plan := by
  change compileHmrSourceStepLog s2Step285EntryFBefore s2Step285FrontBank 128 157 ⟨128,127,158,157⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 6 498 285 54 none (.early s2Step285CompleteLog)=some (.early s2Step285CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 285<498)]
  rw [s2Step285Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
