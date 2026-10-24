import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep280
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

private def s2Step282CompleteMoves : List (Wire × Wire) := []

private def s2Step282EarlyControlLog : HmrEarlyControlLog := ⟨[845, 891, 783, 781, 798],[791],[815],[830, 800, 894, 896, 901, 903],[]⟩

private def s2Step282FrontLog : HmrFrontAllocationLog := ⟨⟨[[783, 781], [], [], []],[[815], [798], [845], [891]],[[], [], [], []]⟩,[780],[796],[830],[800],[894, 896, 901, 903, 904, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[894, 896, 901, 903, 904, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[830, 800, 894, 896]⟩

private def s2Step282CompleteLog : HmrEarlyStepLog := ⟨s2Step282FrontLog,s2Step282CompleteMoves,s2Step282EarlyControlLog⟩

private def s2Step282ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640],768⟩

private def s2Step282ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839],770⟩

private def s2Step282ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129],769⟩

private def s2Step282ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788],771⟩

private def s2Step282FrontOut : WindowBank := ⟨s2Step282ExitFOut,s2Step282ExitGOut,s2Step282ExitFvOut,s2Step282ExitGvOut⟩

private def s2Step282CompleteOut : WindowBank := s2Step282FrontOut.repacked s2Step282CompleteMoves

private def s2Step282EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step282EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step282EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step282EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step282EarlyControlPositiveArena,[791],s2Step282EarlyControlEqualityArena,[815],⟨⟨780,false⟩,[⟨⟨791,false⟩,815⟩]⟩⟩

private def s2Step282EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<904) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step282EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<904) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step282EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step282EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step282EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step282EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step282EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,845⟩,⟨⟨774,false⟩,891⟩,⟨⟨775,false⟩,783⟩,⟨⟨776,false⟩,781⟩,⟨⟨777,false⟩,798⟩]⟩

private def s2Step282EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step282EarlyControlZeroArena,s2Step282EarlyControlZeroPlan,s2Step282EarlyControlClassPlan,s2Step282EarlyControlFlagArena,s2Step282EarlyControlFittedArena,s2Step282EarlyControlHistoryArena,s2Step282EarlyControlSigmaArena,s2Step282EarlyControlOutputArena,s2Step282EarlyControlLog⟩

private def s2Step282CounterWork : List Wire := [830, 800, 894, 896]

private theorem s2Step282Counter_bounded : s2Step282CounterWork.toFinset⊆arenaWires := by norm_num [s2Step282CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step282HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step282CounterDuring : Arena := ⟨s2Step282HeadFvAfter.live∪s2Step282CounterWork.toFinset,Finset.union_subset s2Step282HeadFvAfter.bounded s2Step282Counter_bounded⟩

private def s2Step282EntryFFresh : List Wire := [783, 781]

private def s2Step282EntryFvFresh : List Wire := []

private def s2Step282EntryGFresh : List Wire := []

private def s2Step282EntryFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step282EntryGvAfter : Arena := s2Step282EntryFAfter

private def s2Step282EntryGvFresh : List Wire := []

private def s2Step282ExitFExtra : List Wire := [783, 781, 798]

private def s2Step282ExitFvExtra : List Wire := [891]

private def s2Step282ExitGExtra : List Wire := [791, 815]

private def s2Step282ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step282ExitGvExtra : List Wire := [845]

private def s2Step282Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step282Add0Work : List Wire := [894, 896, 901, 903, 904, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step282Add0_bounded : s2Step282Add0Work.toFinset⊆arenaWires := by
  have h : s2Step282Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step282Add0During : Arena := ⟨s2Step282Add0Arena.live∪s2Step282Add0Work.toFinset,Finset.union_subset s2Step282Add0Arena.bounded s2Step282Add0_bounded⟩

private def s2Step282Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step282Add1Work : List Wire := [894, 896, 901, 903, 904, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step282Add1_bounded : s2Step282Add1Work.toFinset⊆arenaWires := by
  have h : s2Step282Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step282Add1During : Arena := ⟨s2Step282Add1Arena.live∪s2Step282Add1Work.toFinset,Finset.union_subset s2Step282Add1Arena.bounded s2Step282Add1_bounded⟩

private def s2Step282F4FlagArena : Arena := ⟨s2Step282HeadFvAfter.live∪{830},Finset.union_subset s2Step282HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step282F4Plan : HmrHybridF4Plan := ⟨s2Step282F4FlagArena,[830],s2Step282Add0Arena,[800],s2Step282Add0During,s2Step282Add0Work,s2Step282Add1During,s2Step282Add1Work⟩

private def s2Step282HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 783, 781, 798],768⟩

private def s2Step282HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 891],770⟩

private def s2Step282HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 791, 815],769⟩

private def s2Step282HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845],771⟩

private def s2Step282FrontHead : WindowBank := ⟨s2Step282HeadFOut,s2Step282HeadGOut,s2Step282HeadFvOut,s2Step282HeadGvOut⟩

private def s2Step282EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 783, 781],768⟩

private def s2Step282EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839],770⟩

private def s2Step282EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 791],769⟩

private def s2Step282EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788],771⟩

private def s2Step282FrontPair : WindowBank := ⟨s2Step282EntryFOut,s2Step282EntryGOut,s2Step282EntryFvOut,s2Step282EntryGvOut⟩

private def s2Step282FrontSigmaArena : Arena := ⟨s2Step282EntryGvAfter.live∪{780},Finset.union_subset s2Step282EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step282HeadFFresh : List Wire := [798]

private def s2Step282HeadFvFresh : List Wire := [891]

private def s2Step282HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step282HeadGFresh : List Wire := [815]

private def s2Step282HeadGvFresh : List Wire := [845]

private def s2Step282FrontPlan : HmrSourceFront := ⟨s2Step282EntryGvAfter,s2Step282FrontPair,(growRow 768 s2Step282EntryFFresh ++ (growRow 769 s2Step282EntryGFresh ++ (growRow 770 s2Step282EntryFvFresh ++ (growRow 771 s2Step282EntryGvFresh ++ [])))),s2Step282FrontSigmaArena,[780],s2Step282HeadGBefore,[796],
  s2Step282HeadFvAfter,s2Step282FrontHead,(growRow 769 s2Step282HeadGFresh ++ (growRow 768 s2Step282HeadFFresh ++ (growRow 771 s2Step282HeadGvFresh ++ (growRow 770 s2Step282HeadFvFresh ++ [])))),s2Step282F4Plan,s2Step282CounterDuring,s2Step282CounterWork,s2Step282ExitGvAfter,s2Step282FrontOut,(shrinkRow 769 s2Step282ExitGExtra ++ (shrinkRow 768 s2Step282ExitFExtra ++ (shrinkRow 770 s2Step282ExitFvExtra ++ (shrinkRow 771 s2Step282ExitGvExtra ++ []))))⟩

private def s2Step282CompletePlan : HmrEarlyStepPlan := ⟨s2Step282FrontPlan,s2Step282EarlyControlArena,s2Step282EarlyControlPlan,s2Step282CompleteMoves⟩

private theorem s2Step282Complete_apart : List.Disjoint (s2Step282CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [780, 796, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] := by
  have nd : ((s2Step282CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[780, 796, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step282Complete_owned : (s2Step282CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step282EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step282EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step282Complete_repack : s2Step282ExitGvAfter.checkRepack s2Step282CompleteMoves=some s2Step282EarlyControlArena := by rfl

private theorem s2Step282EarlyControl_branchOwned : ([796] : List Wire).toFinset⊆s2Step282EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step282EarlyControlSigmaArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step282EarlyControl_branch : compileHmrBranchRetirement s2Step282EarlyControlSigmaArena 796=some s2Step282EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step282EarlyControl_branchOwned
  · ext q
    simp [s2Step282EarlyControlOutputArena,s2Step282EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step282EarlyControl_classEqualityBorrow : s2Step282EarlyControlPositiveArena.checkBorrow (([780, 791] : List Wire).length-1) s2Step282EarlyControlLog.classWork=some s2Step282EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step282EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step282EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step282EarlyControlEqualityArena,s2Step282EarlyControlPositiveArena,s2Step282EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step282EarlyControl_classEqualityOwned : ([780, 791] : List Wire).toFinset⊆s2Step282EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step282EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step282EarlyControl_classEquality : compileHmrEqualityLog s2Step282EarlyControlPositiveArena [780, 791] 0 s2Step282EarlyControlLog.classWork=some (s2Step282EarlyControlEqualityArena,s2Step282EarlyControlLog.classWork,s2Step282EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step282EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step282EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step282EarlyControl_classOwned : ([777, 798, 780] : List Wire).toFinset⊆s2Step282EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step282EarlyControlZeroArena (fun q => (0≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step282EarlyControl_positiveBorrow : s2Step282EarlyControlZeroArena.checkBorrow (1) s2Step282EarlyControlLog.positiveWork=some s2Step282EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step282EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step282EarlyControlZeroArena (fun q => (0≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step282EarlyControlPositiveArena,s2Step282EarlyControlZeroArena,s2Step282EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step282EarlyControl_class : compileHmrSourceClassLog s2Step282EarlyControlZeroArena false 777 s2Step282EarlyControlZeroPlan.top 0 780 s2Step282EarlyControlLog.positiveWork s2Step282EarlyControlLog.classWork=some s2Step282EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step282EarlyControlClassPlan s2Step282EarlyControlZeroArena false 777 s2Step282EarlyControlZeroPlan.top 0 780
  constructor
  · decide +kernel
  · exact s2Step282EarlyControl_classOwned
  · exact s2Step282EarlyControl_positiveBorrow
  · exact s2Step282EarlyControl_classEquality

private theorem s2Step282EarlyControl_entryRecordOwned : ([796, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).toFinset⊆s2Step282EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step282EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step282EarlyControl_entrySigmaOwned : ([780, 254] : List Wire).toFinset⊆s2Step282EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step282EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step282EarlyControl_fitBorrow : s2Step282EarlyControlFlagArena.checkBorrow ((54-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).length)) s2Step282EarlyControlLog.recordFresh=some s2Step282EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step282EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step282EarlyControlFlagArena (fun q => (0≤q ∧ q<904) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step282EarlyControlFittedArena,s2Step282EarlyControlFlagArena,s2Step282EarlyControlLog,arenaWires]

private theorem s2Step282EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).toFinset⊆s2Step282EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step282EarlyControlFlagArena (fun q => (0≤q ∧ q<904) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step282EarlyControl_fit : compileHmrRecordGrowLog s2Step282EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 54 s2Step282EarlyControlLog.recordFresh=some s2Step282EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step282EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step282EarlyControl_fitBorrow

private theorem s2Step282EarlyControl_flagsBorrow : s2Step282EarlyControlEqualityArena.checkBorrow (6) s2Step282EarlyControlLog.flagWork=some s2Step282EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step282EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step282EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step282EarlyControlFlagArena,s2Step282EarlyControlEqualityArena,s2Step282EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step282EarlyControl_flagsOwned : ([815, 253, 252, 251] : List Wire).toFinset⊆s2Step282EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step282EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step282EarlyControl_flags : compileHmrFlagsLog s2Step282EarlyControlClassPlan.equalityArena s2Step282EarlyControlClassPlan.equality.top 253 252 251 s2Step282EarlyControlLog.flagWork=some s2Step282EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step282EarlyControl_flagsOwned⟩
  · exact s2Step282EarlyControl_flagsBorrow

private theorem s2Step282EarlyControl_historyBorrow : s2Step282EarlyControlArena.checkBorrow ((54-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).length)) s2Step282EarlyControlLog.recordFresh=some s2Step282EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step282EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step282EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step282EarlyControlHistoryArena,s2Step282EarlyControlArena,s2Step282EarlyControlLog,arenaWires]

private theorem s2Step282EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).toFinset⊆s2Step282EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step282EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step282EarlyControl_history : compileHmrRecordGrowLog s2Step282EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 54 s2Step282EarlyControlLog.recordFresh=some s2Step282EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step282EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step282EarlyControl_historyBorrow

private theorem s2Step282EarlyControl_sigmaOwned : ([254, 780] : List Wire).toFinset⊆s2Step282EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step282EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step282EarlyControl_sigmaReleaseOwned : ([780] : List Wire).toFinset⊆s2Step282EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step282EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step282EarlyControl_sigmaRelease : s2Step282EarlyControlHistoryArena.release {780} (fun _ => false)=some s2Step282EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step282EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step282EarlyControlSigmaArena,s2Step282EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step282EarlyControl_sigma : compileHmrSigmaDropLog s2Step282EarlyControlHistoryArena false 0 0 254 780 []=some s2Step282EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step282EarlyControl_sigmaOwned⟩
  · exact s2Step282EarlyControl_sigmaRelease

private theorem s2Step282EarlyControl_zeroBorrow : s2Step282EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step282EarlyControlLog.zeroWork=some s2Step282EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step282EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step282EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step282EarlyControlZeroArena,s2Step282EarlyControlArena,s2Step282EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step282EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step282EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step282EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step282EarlyControl_zero : compileHmrEqualityLog s2Step282EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step282EarlyControlLog.zeroWork=some (s2Step282EarlyControlZeroArena,s2Step282EarlyControlLog.zeroWork,s2Step282EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step282EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step282EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step282EarlyControl_logged : s2Step282EarlyControlPlan.Logged s2Step282EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 777 780 254 253 252 251 796 54 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step282EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step282EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step282EarlyControl_zero
  · exact s2Step282EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step282EarlyControl_flags
  · exact s2Step282EarlyControl_fit
  · exact s2Step282EarlyControl_history
  · exact s2Step282EarlyControl_sigma
  · exact s2Step282EarlyControl_branch

private theorem s2Step282EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step282EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 777 780 254 253 252 251 796 54 s2Step282EarlyControlLog=some s2Step282EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step282EarlyControlPlan s2Step282EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 777 780 254 253 252 251 796 54 s2Step282EarlyControl_logged

private def s2Step282EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step282EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640],768⟩

private def s2Step282EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839],770⟩

private def s2Step282EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 791],769⟩

private def s2Step282EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788],771⟩

private def s2Step282FrontBank : WindowBank := ⟨s2Step282EntryFRow,s2Step282EntryGRow,s2Step282EntryFvRow,s2Step282EntryGvRow⟩

private def s2Step282Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 783, 781, 798, 768]

private def s2Step282Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 791, 815, 769]

private def s2Step282Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 891, 770]

private def s2Step282Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 771]

private theorem s2Step282Counter_apart : Disjoint s2Step282HeadFvAfter.live s2Step282CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step282HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step282Counter_borrowed : s2Step282HeadFvAfter.checkBorrow 4 s2Step282CounterWork=some s2Step282CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step282HeadFvAfter s2Step282CounterDuring s2Step282CounterWork.toFinset s2Step282Counter_bounded s2Step282Counter_apart rfl

private theorem s2Step282Counter_owned : (780::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step282HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step282HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step282Counter_checked : compileHmrCounterStepLog s2Step282HeadFvAfter true 780 [772, 773, 774, 775, 776, 777] s2Step282CounterWork=some s2Step282CounterDuring := by
  have owned : ∀q∈780::[772, 773, 774, 775, 776, 777],q∈s2Step282HeadFvAfter.live := fun q hq => s2Step282Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step282Counter_borrowed

private theorem s2Step282EntryBank_incomingDistinct : ([s2Step282EntryFRow,s2Step282EntryGRow,s2Step282EntryFvRow,s2Step282EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step282EntryF_Incoming : rowsOwned s2Step282EntryFBefore [s2Step282EntryFRow,s2Step282EntryGRow,s2Step282EntryFvRow,s2Step282EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step282EntryFRow,s2Step282EntryGRow,s2Step282EntryFvRow,s2Step282EntryGvRow] 0 s2Step282EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step282EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step282EntryBank_outgoingOwned : rowsOwned s2Step282EntryGvAfter [s2Step282EntryFOut,s2Step282EntryGOut,s2Step282EntryFvOut,s2Step282EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step282EntryGvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step282EntryF_Outgoing : rowsOwned s2Step282EntryGvAfter [s2Step282EntryFOut,s2Step282EntryGOut,s2Step282EntryFvOut,s2Step282EntryGvOut] :=
  hmrRows_owned_drop s2Step282EntryGvAfter [s2Step282EntryFOut,s2Step282EntryGOut,s2Step282EntryFvOut,s2Step282EntryGvOut] 0 s2Step282EntryBank_outgoingOwned

private theorem s2Step282EntryF_distinct : (s2Step282EntryFRow.sign::s2Step282EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step282EntryF_owned : (s2Step282EntryFRow.sign::s2Step282EntryFRow.payload).toFinset⊆s2Step282EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step282EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step282EntryF_reserved : s2Step282EntryFBefore.reserve s2Step282EntryFFresh.toFinset=some s2Step282EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step282EntryFFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step282EntryFBefore,s2Step282EntryFFresh,arenaWires]
  · ext q
    simp only [s2Step282EntryFAfter,s2Step282EntryFBefore,s2Step282EntryFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step282EntryF_checked : planRowResizeLog s2Step282EntryFBefore s2Step282EntryFRow 131 s2Step282EntryFFresh=
    some (s2Step282EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 783, 781],768⟩,growRow 768 s2Step282EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step282EntryFBefore s2Step282EntryFAfter s2Step282EntryFRow 131 s2Step282EntryFFresh
    s2Step282EntryF_distinct s2Step282EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step282EntryF_reserved
  have rowEq : WindowRow.mk (s2Step282EntryFRow.payload++s2Step282EntryFFresh) s2Step282EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 783, 781],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step282EntryFvAfter : Arena := s2Step282EntryFAfter

private def s2Step282EntryFvBefore : Arena := s2Step282EntryFAfter

private theorem s2Step282EntryFv_Incoming : rowsOwned s2Step282EntryFvBefore [s2Step282EntryFvRow,s2Step282EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step282EntryFRow,s2Step282EntryGRow,s2Step282EntryFvRow,s2Step282EntryGvRow] 2 s2Step282EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step282EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step282EntryFv_Outgoing : rowsOwned s2Step282EntryGvAfter [s2Step282EntryFvOut,s2Step282EntryGvOut] :=
  hmrRows_owned_drop s2Step282EntryGvAfter [s2Step282EntryFOut,s2Step282EntryGOut,s2Step282EntryFvOut,s2Step282EntryGvOut] 2 s2Step282EntryBank_outgoingOwned

private theorem s2Step282EntryFv_distinct : (s2Step282EntryFvRow.sign::s2Step282EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step282EntryFv_owned : (s2Step282EntryFvRow.sign::s2Step282EntryFvRow.payload).toFinset⊆s2Step282EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step282EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step282EntryFv_reserved : s2Step282EntryFvBefore.reserve s2Step282EntryFvFresh.toFinset=some s2Step282EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step282EntryFvFresh,arenaWires]
  · norm_num [s2Step282EntryFvBefore,s2Step282EntryFAfter,s2Step282EntryFvFresh,arenaWires]
  · simp only [s2Step282EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step282EntryFv_checked : planRowResizeLog s2Step282EntryFvBefore s2Step282EntryFvRow 156 s2Step282EntryFvFresh=
    some (s2Step282EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839],770⟩,growRow 770 s2Step282EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step282EntryFvBefore s2Step282EntryFvAfter s2Step282EntryFvRow 156 s2Step282EntryFvFresh
    s2Step282EntryFv_distinct s2Step282EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step282EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step282EntryFvRow.payload++s2Step282EntryFvFresh) s2Step282EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step282EntryGAfter : Arena := s2Step282EntryFAfter

private def s2Step282EntryGBefore : Arena := s2Step282EntryFAfter

private theorem s2Step282EntryG_Incoming : rowsOwned s2Step282EntryGBefore [s2Step282EntryGRow,s2Step282EntryFvRow,s2Step282EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step282EntryFRow,s2Step282EntryGRow,s2Step282EntryFvRow,s2Step282EntryGvRow] 1 s2Step282EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step282EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step282EntryG_Outgoing : rowsOwned s2Step282EntryGvAfter [s2Step282EntryGOut,s2Step282EntryFvOut,s2Step282EntryGvOut] :=
  hmrRows_owned_drop s2Step282EntryGvAfter [s2Step282EntryFOut,s2Step282EntryGOut,s2Step282EntryFvOut,s2Step282EntryGvOut] 1 s2Step282EntryBank_outgoingOwned

private theorem s2Step282EntryG_distinct : (s2Step282EntryGRow.sign::s2Step282EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step282EntryG_owned : (s2Step282EntryGRow.sign::s2Step282EntryGRow.payload).toFinset⊆s2Step282EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step282EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step282EntryG_reserved : s2Step282EntryGBefore.reserve s2Step282EntryGFresh.toFinset=some s2Step282EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step282EntryGFresh,arenaWires]
  · norm_num [s2Step282EntryGBefore,s2Step282EntryFAfter,s2Step282EntryGFresh,arenaWires]
  · simp only [s2Step282EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step282EntryG_checked : planRowResizeLog s2Step282EntryGBefore s2Step282EntryGRow 131 s2Step282EntryGFresh=
    some (s2Step282EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 791],769⟩,growRow 769 s2Step282EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step282EntryGBefore s2Step282EntryGAfter s2Step282EntryGRow 131 s2Step282EntryGFresh
    s2Step282EntryG_distinct s2Step282EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step282EntryG_reserved
  have rowEq : WindowRow.mk (s2Step282EntryGRow.payload++s2Step282EntryGFresh) s2Step282EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 791],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step282EntryGvBefore : Arena := s2Step282EntryFAfter

private theorem s2Step282EntryGv_Incoming : rowsOwned s2Step282EntryGvBefore [s2Step282EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step282EntryFRow,s2Step282EntryGRow,s2Step282EntryFvRow,s2Step282EntryGvRow] 3 s2Step282EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step282EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step282EntryGv_Outgoing : rowsOwned s2Step282EntryGvAfter [s2Step282EntryGvOut] :=
  hmrRows_owned_drop s2Step282EntryGvAfter [s2Step282EntryFOut,s2Step282EntryGOut,s2Step282EntryFvOut,s2Step282EntryGvOut] 3 s2Step282EntryBank_outgoingOwned

private theorem s2Step282EntryGv_distinct : (s2Step282EntryGvRow.sign::s2Step282EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step282EntryGv_owned : (s2Step282EntryGvRow.sign::s2Step282EntryGvRow.payload).toFinset⊆s2Step282EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step282EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step282EntryGv_reserved : s2Step282EntryGvBefore.reserve s2Step282EntryGvFresh.toFinset=some s2Step282EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step282EntryGvFresh,arenaWires]
  · norm_num [s2Step282EntryGvBefore,s2Step282EntryFAfter,s2Step282EntryGvFresh,arenaWires]
  · simp only [s2Step282EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step282EntryGv_checked : planRowResizeLog s2Step282EntryGvBefore s2Step282EntryGvRow 156 s2Step282EntryGvFresh=
    some (s2Step282EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788],771⟩,growRow 771 s2Step282EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step282EntryGvBefore s2Step282EntryGvAfter s2Step282EntryGvRow 156 s2Step282EntryGvFresh
    s2Step282EntryGv_distinct s2Step282EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step282EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step282EntryGvRow.payload++s2Step282EntryGvFresh) s2Step282EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step282EntryBank_rows : planWindowRowsLog s2Step282EntryFBefore [(s2Step282EntryFRow,131),(s2Step282EntryGRow,131),(s2Step282EntryFvRow,156),(s2Step282EntryGvRow,156)] [s2Step282EntryFFresh,s2Step282EntryGFresh,s2Step282EntryFvFresh,s2Step282EntryGvFresh]=
    some (s2Step282EntryGvAfter,[s2Step282EntryFOut,s2Step282EntryGOut,s2Step282EntryFvOut,s2Step282EntryGvOut],(growRow 768 s2Step282EntryFFresh ++ (growRow 769 s2Step282EntryGFresh ++ (growRow 770 s2Step282EntryFvFresh ++ (growRow 771 s2Step282EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step282EntryGvAfter [] []=some (s2Step282EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step282EntryGvBefore s2Step282EntryGvAfter s2Step282EntryGvAfter
    s2Step282EntryGvRow s2Step282EntryGvOut 156 s2Step282EntryGvFresh [] [] []
    (growRow 771 s2Step282EntryGvFresh) ([]) s2Step282EntryGv_Incoming s2Step282EntryGv_checked h4 s2Step282EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step282EntryFvBefore s2Step282EntryFvAfter s2Step282EntryGvAfter
    s2Step282EntryFvRow s2Step282EntryFvOut 156 s2Step282EntryFvFresh [(s2Step282EntryGvRow,156)] [s2Step282EntryGvFresh] [s2Step282EntryGvOut]
    (growRow 770 s2Step282EntryFvFresh) ((growRow 771 s2Step282EntryGvFresh ++ [])) s2Step282EntryFv_Incoming s2Step282EntryFv_checked h3 s2Step282EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step282EntryGBefore s2Step282EntryGAfter s2Step282EntryGvAfter
    s2Step282EntryGRow s2Step282EntryGOut 131 s2Step282EntryGFresh [(s2Step282EntryFvRow,156),(s2Step282EntryGvRow,156)] [s2Step282EntryFvFresh,s2Step282EntryGvFresh] [s2Step282EntryFvOut,s2Step282EntryGvOut]
    (growRow 769 s2Step282EntryGFresh) ((growRow 770 s2Step282EntryFvFresh ++ (growRow 771 s2Step282EntryGvFresh ++ []))) s2Step282EntryG_Incoming s2Step282EntryG_checked h2 s2Step282EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step282EntryFBefore s2Step282EntryFAfter s2Step282EntryGvAfter
    s2Step282EntryFRow s2Step282EntryFOut 131 s2Step282EntryFFresh [(s2Step282EntryGRow,131),(s2Step282EntryFvRow,156),(s2Step282EntryGvRow,156)] [s2Step282EntryGFresh,s2Step282EntryFvFresh,s2Step282EntryGvFresh] [s2Step282EntryGOut,s2Step282EntryFvOut,s2Step282EntryGvOut]
    (growRow 768 s2Step282EntryFFresh) ((growRow 769 s2Step282EntryGFresh ++ (growRow 770 s2Step282EntryFvFresh ++ (growRow 771 s2Step282EntryGvFresh ++ [])))) s2Step282EntryF_Incoming s2Step282EntryF_checked h1 s2Step282EntryF_Outgoing
  exact h0

private theorem s2Step282EntryBank_checked : compileHmrBankResizeLog .entry s2Step282EntryFBefore ⟨s2Step282EntryFRow,s2Step282EntryGRow,s2Step282EntryFvRow,s2Step282EntryGvRow⟩ ⟨131,131,156,156⟩ [s2Step282EntryFFresh,s2Step282EntryGFresh,s2Step282EntryFvFresh,s2Step282EntryGvFresh]=
    some (s2Step282EntryGvAfter,⟨s2Step282EntryFOut,s2Step282EntryGOut,s2Step282EntryFvOut,s2Step282EntryGvOut⟩,(growRow 768 s2Step282EntryFFresh ++ (growRow 769 s2Step282EntryGFresh ++ (growRow 770 s2Step282EntryFvFresh ++ (growRow 771 s2Step282EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step282EntryBank_rows]
  rfl

private def s2Step282ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step282ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step282ExitFBefore : Arena := s2Step282ExitGAfter

private def s2Step282ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 783, 781, 798],768⟩

private def s2Step282ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 891],770⟩

private def s2Step282ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 791, 815],769⟩

private def s2Step282ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845],771⟩

private theorem s2Step282ExitBank_incomingDistinct : ([s2Step282ExitGRow,s2Step282ExitFRow,s2Step282ExitFvRow,s2Step282ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step282ExitF_Incoming : rowsOwned s2Step282ExitFBefore [s2Step282ExitFRow,s2Step282ExitFvRow,s2Step282ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step282ExitGRow,s2Step282ExitFRow,s2Step282ExitFvRow,s2Step282ExitGvRow] 1 s2Step282ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step282ExitFBefore (fun q => (0≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step282ExitBank_outgoingOwned : rowsOwned s2Step282ExitGvAfter [s2Step282ExitGOut,s2Step282ExitFOut,s2Step282ExitFvOut,s2Step282ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step282ExitGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step282ExitF_Outgoing : rowsOwned s2Step282ExitGvAfter [s2Step282ExitFOut,s2Step282ExitFvOut,s2Step282ExitGvOut] :=
  hmrRows_owned_drop s2Step282ExitGvAfter [s2Step282ExitGOut,s2Step282ExitFOut,s2Step282ExitFvOut,s2Step282ExitGvOut] 1 s2Step282ExitBank_outgoingOwned

private theorem s2Step282ExitF_distinct : (s2Step282ExitFRow.sign::s2Step282ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step282ExitF_owned : (s2Step282ExitFRow.sign::s2Step282ExitFRow.payload).toFinset⊆s2Step282ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step282ExitFBefore (fun q => (0≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step282ExitF_retired : s2Step282ExitFBefore.retireSet s2Step282ExitFExtra.toFinset=s2Step282ExitFAfter := by
  unfold Arena.retireSet s2Step282ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step282ExitFBefore,s2Step282ExitGAfter,s2Step282ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step282ExitF_checked : planRowResizeLog s2Step282ExitFBefore s2Step282ExitFRow 129 []=
    some (s2Step282ExitFAfter,s2Step282ExitFOut,shrinkRow 768 s2Step282ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step282ExitFBefore s2Step282ExitFRow 129 s2Step282ExitF_distinct s2Step282ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step282ExitFRow.payload.take 129) s2Step282ExitFRow.sign=s2Step282ExitFOut := by decide +kernel
  have hi : s2Step282ExitFRow.payload.drop 129=s2Step282ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step282ExitF_retired] at result
  exact result

private def s2Step282ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step282ExitFvBefore : Arena := s2Step282ExitFAfter

private theorem s2Step282ExitFv_Incoming : rowsOwned s2Step282ExitFvBefore [s2Step282ExitFvRow,s2Step282ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step282ExitGRow,s2Step282ExitFRow,s2Step282ExitFvRow,s2Step282ExitGvRow] 2 s2Step282ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step282ExitFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step282ExitFv_Outgoing : rowsOwned s2Step282ExitGvAfter [s2Step282ExitFvOut,s2Step282ExitGvOut] :=
  hmrRows_owned_drop s2Step282ExitGvAfter [s2Step282ExitGOut,s2Step282ExitFOut,s2Step282ExitFvOut,s2Step282ExitGvOut] 2 s2Step282ExitBank_outgoingOwned

private theorem s2Step282ExitFv_distinct : (s2Step282ExitFvRow.sign::s2Step282ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step282ExitFv_owned : (s2Step282ExitFvRow.sign::s2Step282ExitFvRow.payload).toFinset⊆s2Step282ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step282ExitFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step282ExitFv_retired : s2Step282ExitFvBefore.retireSet s2Step282ExitFvExtra.toFinset=s2Step282ExitFvAfter := by
  unfold Arena.retireSet s2Step282ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step282ExitFvBefore,s2Step282ExitFAfter,s2Step282ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step282ExitFv_checked : planRowResizeLog s2Step282ExitFvBefore s2Step282ExitFvRow 156 []=
    some (s2Step282ExitFvAfter,s2Step282ExitFvOut,shrinkRow 770 s2Step282ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step282ExitFvBefore s2Step282ExitFvRow 156 s2Step282ExitFv_distinct s2Step282ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step282ExitFvRow.payload.take 156) s2Step282ExitFvRow.sign=s2Step282ExitFvOut := by decide +kernel
  have hi : s2Step282ExitFvRow.payload.drop 156=s2Step282ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step282ExitFv_retired] at result
  exact result

private def s2Step282ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private theorem s2Step282ExitG_Incoming : rowsOwned s2Step282ExitGBefore [s2Step282ExitGRow,s2Step282ExitFRow,s2Step282ExitFvRow,s2Step282ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step282ExitGRow,s2Step282ExitFRow,s2Step282ExitFvRow,s2Step282ExitGvRow] 0 s2Step282ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step282ExitGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step282ExitG_Outgoing : rowsOwned s2Step282ExitGvAfter [s2Step282ExitGOut,s2Step282ExitFOut,s2Step282ExitFvOut,s2Step282ExitGvOut] :=
  hmrRows_owned_drop s2Step282ExitGvAfter [s2Step282ExitGOut,s2Step282ExitFOut,s2Step282ExitFvOut,s2Step282ExitGvOut] 0 s2Step282ExitBank_outgoingOwned

private theorem s2Step282ExitG_distinct : (s2Step282ExitGRow.sign::s2Step282ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step282ExitG_owned : (s2Step282ExitGRow.sign::s2Step282ExitGRow.payload).toFinset⊆s2Step282ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step282ExitGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step282ExitG_retired : s2Step282ExitGBefore.retireSet s2Step282ExitGExtra.toFinset=s2Step282ExitGAfter := by
  unfold Arena.retireSet s2Step282ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step282ExitGBefore,s2Step282ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step282ExitG_checked : planRowResizeLog s2Step282ExitGBefore s2Step282ExitGRow 130 []=
    some (s2Step282ExitGAfter,s2Step282ExitGOut,shrinkRow 769 s2Step282ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step282ExitGBefore s2Step282ExitGRow 130 s2Step282ExitG_distinct s2Step282ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step282ExitGRow.payload.take 130) s2Step282ExitGRow.sign=s2Step282ExitGOut := by decide +kernel
  have hi : s2Step282ExitGRow.payload.drop 130=s2Step282ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step282ExitG_retired] at result
  exact result

private def s2Step282ExitGvBefore : Arena := s2Step282ExitFvAfter

private theorem s2Step282ExitGv_Incoming : rowsOwned s2Step282ExitGvBefore [s2Step282ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step282ExitGRow,s2Step282ExitFRow,s2Step282ExitFvRow,s2Step282ExitGvRow] 3 s2Step282ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step282ExitGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step282ExitGv_Outgoing : rowsOwned s2Step282ExitGvAfter [s2Step282ExitGvOut] :=
  hmrRows_owned_drop s2Step282ExitGvAfter [s2Step282ExitGOut,s2Step282ExitFOut,s2Step282ExitFvOut,s2Step282ExitGvOut] 3 s2Step282ExitBank_outgoingOwned

private theorem s2Step282ExitGv_distinct : (s2Step282ExitGvRow.sign::s2Step282ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step282ExitGv_owned : (s2Step282ExitGvRow.sign::s2Step282ExitGvRow.payload).toFinset⊆s2Step282ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step282ExitGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step282ExitGv_retired : s2Step282ExitGvBefore.retireSet s2Step282ExitGvExtra.toFinset=s2Step282ExitGvAfter := by
  unfold Arena.retireSet s2Step282ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step282ExitGvBefore,s2Step282ExitFvAfter,s2Step282ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step282ExitGv_checked : planRowResizeLog s2Step282ExitGvBefore s2Step282ExitGvRow 156 []=
    some (s2Step282ExitGvAfter,s2Step282ExitGvOut,shrinkRow 771 s2Step282ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step282ExitGvBefore s2Step282ExitGvRow 156 s2Step282ExitGv_distinct s2Step282ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step282ExitGvRow.payload.take 156) s2Step282ExitGvRow.sign=s2Step282ExitGvOut := by decide +kernel
  have hi : s2Step282ExitGvRow.payload.drop 156=s2Step282ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step282ExitGv_retired] at result
  exact result

private theorem s2Step282ExitBank_rows : planWindowRowsLog s2Step282ExitGBefore [(s2Step282ExitGRow,130),(s2Step282ExitFRow,129),(s2Step282ExitFvRow,156),(s2Step282ExitGvRow,156)] [[],[],[],[]]=
    some (s2Step282ExitGvAfter,[s2Step282ExitGOut,s2Step282ExitFOut,s2Step282ExitFvOut,s2Step282ExitGvOut],(shrinkRow 769 s2Step282ExitGExtra ++ (shrinkRow 768 s2Step282ExitFExtra ++ (shrinkRow 770 s2Step282ExitFvExtra ++ (shrinkRow 771 s2Step282ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step282ExitGvAfter [] []=some (s2Step282ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step282ExitGvBefore s2Step282ExitGvAfter s2Step282ExitGvAfter
    s2Step282ExitGvRow s2Step282ExitGvOut 156 [] [] [] []
    (shrinkRow 771 s2Step282ExitGvExtra) ([]) s2Step282ExitGv_Incoming s2Step282ExitGv_checked h4 s2Step282ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step282ExitFvBefore s2Step282ExitFvAfter s2Step282ExitGvAfter
    s2Step282ExitFvRow s2Step282ExitFvOut 156 [] [(s2Step282ExitGvRow,156)] [[]] [s2Step282ExitGvOut]
    (shrinkRow 770 s2Step282ExitFvExtra) ((shrinkRow 771 s2Step282ExitGvExtra ++ [])) s2Step282ExitFv_Incoming s2Step282ExitFv_checked h3 s2Step282ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step282ExitFBefore s2Step282ExitFAfter s2Step282ExitGvAfter
    s2Step282ExitFRow s2Step282ExitFOut 129 [] [(s2Step282ExitFvRow,156),(s2Step282ExitGvRow,156)] [[],[]] [s2Step282ExitFvOut,s2Step282ExitGvOut]
    (shrinkRow 768 s2Step282ExitFExtra) ((shrinkRow 770 s2Step282ExitFvExtra ++ (shrinkRow 771 s2Step282ExitGvExtra ++ []))) s2Step282ExitF_Incoming s2Step282ExitF_checked h2 s2Step282ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step282ExitGBefore s2Step282ExitGAfter s2Step282ExitGvAfter
    s2Step282ExitGRow s2Step282ExitGOut 130 [] [(s2Step282ExitFRow,129),(s2Step282ExitFvRow,156),(s2Step282ExitGvRow,156)] [[],[],[]] [s2Step282ExitFOut,s2Step282ExitFvOut,s2Step282ExitGvOut]
    (shrinkRow 769 s2Step282ExitGExtra) ((shrinkRow 768 s2Step282ExitFExtra ++ (shrinkRow 770 s2Step282ExitFvExtra ++ (shrinkRow 771 s2Step282ExitGvExtra ++ [])))) s2Step282ExitG_Incoming s2Step282ExitG_checked h1 s2Step282ExitG_Outgoing
  exact h0

private theorem s2Step282ExitBank_checked : compileHmrBankResizeLog .exit s2Step282ExitGBefore ⟨s2Step282ExitFRow,s2Step282ExitGRow,s2Step282ExitFvRow,s2Step282ExitGvRow⟩ ⟨129,130,156,156⟩ [[],[],[],[]]=
    some (s2Step282ExitGvAfter,⟨s2Step282ExitFOut,s2Step282ExitGOut,s2Step282ExitFvOut,s2Step282ExitGvOut⟩,(shrinkRow 769 s2Step282ExitGExtra ++ (shrinkRow 768 s2Step282ExitFExtra ++ (shrinkRow 770 s2Step282ExitFvExtra ++ (shrinkRow 771 s2Step282ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step282ExitBank_rows]
  rfl

private theorem s2Step282Add0_apart : Disjoint s2Step282Add0Arena.live s2Step282Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step282Add0Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step282Add0_card : s2Step282Add0Arena.live.card=902 := by
  decide +kernel

private theorem s2Step282Add0_borrowed : s2Step282Add0Arena.checkBorrow (hmrHybridCount s2Step282Add0Arena s2Step282Add0B.length) s2Step282Add0Work=some s2Step282Add0During := by
  have len : s2Step282Add0Work.length=hmrHybridCount s2Step282Add0Arena s2Step282Add0B.length := by
    rw [hmrHybridCount,s2Step282Add0_card]
    decide +kernel
  have nd : s2Step282Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step282Add0Arena s2Step282Add0During s2Step282Add0Work.toFinset s2Step282Add0_bounded s2Step282Add0_apart rfl

private theorem s2Step282Add0_distinct : (830::796::800::(s2Step282Add0A++s2Step282Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step282Add0_owned : (830::796::800::(s2Step282Add0A++s2Step282Add0B)).toFinset⊆s2Step282Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step282Add0Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step282Add0_checked : compileHmrHybridCinLog s2Step282Add0Arena 796 830 800 s2Step282Add0A s2Step282Add0B s2Step282Add0Work=some s2Step282Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step282Add0Arena s2Step282Add0During 796 830 800 s2Step282Add0A s2Step282Add0B s2Step282Add0Work
    (by decide +kernel) (by decide +kernel) s2Step282Add0_distinct
    (fun q hq => s2Step282Add0_owned (List.mem_toFinset.mpr hq)) s2Step282Add0_borrowed

private theorem s2Step282Add1_apart : Disjoint s2Step282Add1Arena.live s2Step282Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step282Add1Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step282Add1_card : s2Step282Add1Arena.live.card=902 := by
  decide +kernel

private theorem s2Step282Add1_borrowed : s2Step282Add1Arena.checkBorrow (hmrHybridCount s2Step282Add1Arena s2Step282Add1B.length) s2Step282Add1Work=some s2Step282Add1During := by
  have len : s2Step282Add1Work.length=hmrHybridCount s2Step282Add1Arena s2Step282Add1B.length := by
    rw [hmrHybridCount,s2Step282Add1_card]
    decide +kernel
  have nd : s2Step282Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step282Add1Arena s2Step282Add1During s2Step282Add1Work.toFinset s2Step282Add1_bounded s2Step282Add1_apart rfl

private theorem s2Step282Add1_distinct : (830::796::800::(s2Step282Add1A++s2Step282Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step282Add1_owned : (830::796::800::(s2Step282Add1A++s2Step282Add1B)).toFinset⊆s2Step282Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step282Add1Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step282Add1_checked : compileHmrHybridCinLog s2Step282Add1Arena 796 830 800 s2Step282Add1A s2Step282Add1B s2Step282Add1Work=some s2Step282Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step282Add1Arena s2Step282Add1During 796 830 800 s2Step282Add1A s2Step282Add1B s2Step282Add1Work
    (by decide +kernel) (by decide +kernel) s2Step282Add1_distinct
    (fun q hq => s2Step282Add1_owned (List.mem_toFinset.mpr hq)) s2Step282Add1_borrowed

private theorem s2Step282F4_apart : Disjoint (s2Step282Add0A++s2Step282Add0B).toFinset (s2Step282Add1A++s2Step282Add1B).toFinset := by
  have nd : ((s2Step282Add0A++s2Step282Add0B)++(s2Step282Add1A++s2Step282Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step282F4_carry : s2Step282F4FlagArena.checkBorrow 1 [800]=some s2Step282Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step282F4FlagArena,s2Step282HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step282F4FlagArena,s2Step282HeadFvAfter,s2Step282Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step282F4_distinct : (780::796::830::800::((s2Step282Add0A++s2Step282Add1A)++(s2Step282Add0B++s2Step282Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step282F4_flag : s2Step282HeadFvAfter.checkBorrow 1 [830]=some s2Step282F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step282HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step282F4_owned : (780::796::((s2Step282Add0A++s2Step282Add1A)++(s2Step282Add0B++s2Step282Add1B))).toFinset⊆s2Step282HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step282HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step282F4_checked : compileHmrHybridF4Log s2Step282HeadFvAfter 780 796 s2Step282Add0A s2Step282Add0B s2Step282Add1A s2Step282Add1B [830] [800] s2Step282Add0Work s2Step282Add1Work=some s2Step282F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step282HeadFvAfter s2Step282F4FlagArena s2Step282Add0Arena s2Step282Add0During s2Step282Add1During 780 796
    s2Step282Add0A s2Step282Add0B s2Step282Add1A s2Step282Add1B [830] [800] s2Step282Add0Work s2Step282Add1Work
    (fun q hq => s2Step282F4_owned (List.mem_toFinset.mpr hq)) s2Step282F4_flag s2Step282F4_carry
    s2Step282F4_distinct s2Step282F4_apart s2Step282Add0_checked s2Step282Add1_checked

private theorem s2Step282Front_branch : s2Step282FrontSigmaArena.checkBorrow 1 [796]=some s2Step282HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step282FrontSigmaArena,s2Step282EntryGvAfter,s2Step282EntryFAfter,arenaWires]
  · ext q
    simp only [s2Step282FrontSigmaArena,s2Step282EntryGvAfter,s2Step282EntryFAfter,s2Step282HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step282Front_entry : HmrFrontEntryValid s2Step282EntryFBefore s2Step282FrontBank 131 156 ⟨129,130,156,156⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step282FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step282EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step282EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step282FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step282Front_sigma : s2Step282EntryGvAfter.checkBorrow 1 [780]=some s2Step282FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step282EntryGvAfter,s2Step282EntryFAfter,arenaWires]
  · rfl

private def s2Step282HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step282HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step282HeadFBefore : Arena := s2Step282HeadGAfter

private def s2Step282HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 783, 781],768⟩

private def s2Step282HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839],770⟩

private def s2Step282HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 791],769⟩

private def s2Step282HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788],771⟩

private theorem s2Step282HeadBank_incomingDistinct : ([s2Step282HeadGRow,s2Step282HeadFRow,s2Step282HeadGvRow,s2Step282HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step282HeadF_Incoming : rowsOwned s2Step282HeadFBefore [s2Step282HeadFRow,s2Step282HeadGvRow,s2Step282HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step282HeadGRow,s2Step282HeadFRow,s2Step282HeadGvRow,s2Step282HeadFvRow] 1 s2Step282HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step282HeadFBefore (fun q => (0≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step282HeadBank_outgoingOwned : rowsOwned s2Step282HeadFvAfter [s2Step282HeadGOut,s2Step282HeadFOut,s2Step282HeadGvOut,s2Step282HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step282HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step282HeadF_Outgoing : rowsOwned s2Step282HeadFvAfter [s2Step282HeadFOut,s2Step282HeadGvOut,s2Step282HeadFvOut] :=
  hmrRows_owned_drop s2Step282HeadFvAfter [s2Step282HeadGOut,s2Step282HeadFOut,s2Step282HeadGvOut,s2Step282HeadFvOut] 1 s2Step282HeadBank_outgoingOwned

private theorem s2Step282HeadF_distinct : (s2Step282HeadFRow.sign::s2Step282HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step282HeadF_owned : (s2Step282HeadFRow.sign::s2Step282HeadFRow.payload).toFinset⊆s2Step282HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step282HeadFBefore (fun q => (0≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step282HeadF_reserved : s2Step282HeadFBefore.reserve s2Step282HeadFFresh.toFinset=some s2Step282HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step282HeadFFresh,arenaWires]
  · norm_num [s2Step282HeadFBefore,s2Step282HeadGAfter,s2Step282HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step282HeadFAfter,s2Step282HeadFBefore,s2Step282HeadGAfter,s2Step282HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step282HeadF_checked : planRowResizeLog s2Step282HeadFBefore s2Step282HeadFRow 132 s2Step282HeadFFresh=
    some (s2Step282HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 783, 781, 798],768⟩,growRow 768 s2Step282HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step282HeadFBefore s2Step282HeadFAfter s2Step282HeadFRow 132 s2Step282HeadFFresh
    s2Step282HeadF_distinct s2Step282HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step282HeadF_reserved
  have rowEq : WindowRow.mk (s2Step282HeadFRow.payload++s2Step282HeadFFresh) s2Step282HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 783, 781, 798],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step282HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step282HeadFvBefore : Arena := s2Step282HeadGvAfter

private theorem s2Step282HeadFv_Incoming : rowsOwned s2Step282HeadFvBefore [s2Step282HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step282HeadGRow,s2Step282HeadFRow,s2Step282HeadGvRow,s2Step282HeadFvRow] 3 s2Step282HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step282HeadFvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step282HeadFv_Outgoing : rowsOwned s2Step282HeadFvAfter [s2Step282HeadFvOut] :=
  hmrRows_owned_drop s2Step282HeadFvAfter [s2Step282HeadGOut,s2Step282HeadFOut,s2Step282HeadGvOut,s2Step282HeadFvOut] 3 s2Step282HeadBank_outgoingOwned

private theorem s2Step282HeadFv_distinct : (s2Step282HeadFvRow.sign::s2Step282HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step282HeadFv_owned : (s2Step282HeadFvRow.sign::s2Step282HeadFvRow.payload).toFinset⊆s2Step282HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step282HeadFvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step282HeadFv_reserved : s2Step282HeadFvBefore.reserve s2Step282HeadFvFresh.toFinset=some s2Step282HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step282HeadFvFresh,arenaWires]
  · norm_num [s2Step282HeadFvBefore,s2Step282HeadGvAfter,s2Step282HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step282HeadFvAfter,s2Step282HeadFvBefore,s2Step282HeadGvAfter,s2Step282HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step282HeadFv_checked : planRowResizeLog s2Step282HeadFvBefore s2Step282HeadFvRow 157 s2Step282HeadFvFresh=
    some (s2Step282HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 891],770⟩,growRow 770 s2Step282HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step282HeadFvBefore s2Step282HeadFvAfter s2Step282HeadFvRow 157 s2Step282HeadFvFresh
    s2Step282HeadFv_distinct s2Step282HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step282HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step282HeadFvRow.payload++s2Step282HeadFvFresh) s2Step282HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 891],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step282HeadG_Incoming : rowsOwned s2Step282HeadGBefore [s2Step282HeadGRow,s2Step282HeadFRow,s2Step282HeadGvRow,s2Step282HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step282HeadGRow,s2Step282HeadFRow,s2Step282HeadGvRow,s2Step282HeadFvRow] 0 s2Step282HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step282HeadGBefore (fun q => (0≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step282HeadG_Outgoing : rowsOwned s2Step282HeadFvAfter [s2Step282HeadGOut,s2Step282HeadFOut,s2Step282HeadGvOut,s2Step282HeadFvOut] :=
  hmrRows_owned_drop s2Step282HeadFvAfter [s2Step282HeadGOut,s2Step282HeadFOut,s2Step282HeadGvOut,s2Step282HeadFvOut] 0 s2Step282HeadBank_outgoingOwned

private theorem s2Step282HeadG_distinct : (s2Step282HeadGRow.sign::s2Step282HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step282HeadG_owned : (s2Step282HeadGRow.sign::s2Step282HeadGRow.payload).toFinset⊆s2Step282HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step282HeadGBefore (fun q => (0≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step282HeadG_reserved : s2Step282HeadGBefore.reserve s2Step282HeadGFresh.toFinset=some s2Step282HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step282HeadGFresh,arenaWires]
  · norm_num [s2Step282HeadGBefore,s2Step282HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step282HeadGAfter,s2Step282HeadGBefore,s2Step282HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step282HeadG_checked : planRowResizeLog s2Step282HeadGBefore s2Step282HeadGRow 132 s2Step282HeadGFresh=
    some (s2Step282HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 791, 815],769⟩,growRow 769 s2Step282HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step282HeadGBefore s2Step282HeadGAfter s2Step282HeadGRow 132 s2Step282HeadGFresh
    s2Step282HeadG_distinct s2Step282HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step282HeadG_reserved
  have rowEq : WindowRow.mk (s2Step282HeadGRow.payload++s2Step282HeadGFresh) s2Step282HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 791, 815],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step282HeadGvBefore : Arena := s2Step282HeadFAfter

private theorem s2Step282HeadGv_Incoming : rowsOwned s2Step282HeadGvBefore [s2Step282HeadGvRow,s2Step282HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step282HeadGRow,s2Step282HeadFRow,s2Step282HeadGvRow,s2Step282HeadFvRow] 2 s2Step282HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step282HeadGvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step282HeadGv_Outgoing : rowsOwned s2Step282HeadFvAfter [s2Step282HeadGvOut,s2Step282HeadFvOut] :=
  hmrRows_owned_drop s2Step282HeadFvAfter [s2Step282HeadGOut,s2Step282HeadFOut,s2Step282HeadGvOut,s2Step282HeadFvOut] 2 s2Step282HeadBank_outgoingOwned

private theorem s2Step282HeadGv_distinct : (s2Step282HeadGvRow.sign::s2Step282HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step282HeadGv_owned : (s2Step282HeadGvRow.sign::s2Step282HeadGvRow.payload).toFinset⊆s2Step282HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step282HeadGvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step282HeadGv_reserved : s2Step282HeadGvBefore.reserve s2Step282HeadGvFresh.toFinset=some s2Step282HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step282HeadGvFresh,arenaWires]
  · norm_num [s2Step282HeadGvBefore,s2Step282HeadFAfter,s2Step282HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step282HeadGvAfter,s2Step282HeadGvBefore,s2Step282HeadFAfter,s2Step282HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step282HeadGv_checked : planRowResizeLog s2Step282HeadGvBefore s2Step282HeadGvRow 157 s2Step282HeadGvFresh=
    some (s2Step282HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845],771⟩,growRow 771 s2Step282HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step282HeadGvBefore s2Step282HeadGvAfter s2Step282HeadGvRow 157 s2Step282HeadGvFresh
    s2Step282HeadGv_distinct s2Step282HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step282HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step282HeadGvRow.payload++s2Step282HeadGvFresh) s2Step282HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step282HeadBank_rows : planWindowRowsLog s2Step282HeadGBefore [(s2Step282HeadGRow,132),(s2Step282HeadFRow,132),(s2Step282HeadGvRow,157),(s2Step282HeadFvRow,157)] [s2Step282HeadGFresh,s2Step282HeadFFresh,s2Step282HeadGvFresh,s2Step282HeadFvFresh]=
    some (s2Step282HeadFvAfter,[s2Step282HeadGOut,s2Step282HeadFOut,s2Step282HeadGvOut,s2Step282HeadFvOut],(growRow 769 s2Step282HeadGFresh ++ (growRow 768 s2Step282HeadFFresh ++ (growRow 771 s2Step282HeadGvFresh ++ (growRow 770 s2Step282HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step282HeadFvAfter [] []=some (s2Step282HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step282HeadFvBefore s2Step282HeadFvAfter s2Step282HeadFvAfter
    s2Step282HeadFvRow s2Step282HeadFvOut 157 s2Step282HeadFvFresh [] [] []
    (growRow 770 s2Step282HeadFvFresh) ([]) s2Step282HeadFv_Incoming s2Step282HeadFv_checked h4 s2Step282HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step282HeadGvBefore s2Step282HeadGvAfter s2Step282HeadFvAfter
    s2Step282HeadGvRow s2Step282HeadGvOut 157 s2Step282HeadGvFresh [(s2Step282HeadFvRow,157)] [s2Step282HeadFvFresh] [s2Step282HeadFvOut]
    (growRow 771 s2Step282HeadGvFresh) ((growRow 770 s2Step282HeadFvFresh ++ [])) s2Step282HeadGv_Incoming s2Step282HeadGv_checked h3 s2Step282HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step282HeadFBefore s2Step282HeadFAfter s2Step282HeadFvAfter
    s2Step282HeadFRow s2Step282HeadFOut 132 s2Step282HeadFFresh [(s2Step282HeadGvRow,157),(s2Step282HeadFvRow,157)] [s2Step282HeadGvFresh,s2Step282HeadFvFresh] [s2Step282HeadGvOut,s2Step282HeadFvOut]
    (growRow 768 s2Step282HeadFFresh) ((growRow 771 s2Step282HeadGvFresh ++ (growRow 770 s2Step282HeadFvFresh ++ []))) s2Step282HeadF_Incoming s2Step282HeadF_checked h2 s2Step282HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step282HeadGBefore s2Step282HeadGAfter s2Step282HeadFvAfter
    s2Step282HeadGRow s2Step282HeadGOut 132 s2Step282HeadGFresh [(s2Step282HeadFRow,132),(s2Step282HeadGvRow,157),(s2Step282HeadFvRow,157)] [s2Step282HeadFFresh,s2Step282HeadGvFresh,s2Step282HeadFvFresh] [s2Step282HeadFOut,s2Step282HeadGvOut,s2Step282HeadFvOut]
    (growRow 769 s2Step282HeadGFresh) ((growRow 768 s2Step282HeadFFresh ++ (growRow 771 s2Step282HeadGvFresh ++ (growRow 770 s2Step282HeadFvFresh ++ [])))) s2Step282HeadG_Incoming s2Step282HeadG_checked h1 s2Step282HeadG_Outgoing
  exact h0

private theorem s2Step282HeadBank_checked : compileHmrBankResizeLog .headroom s2Step282HeadGBefore ⟨s2Step282HeadFRow,s2Step282HeadGRow,s2Step282HeadFvRow,s2Step282HeadGvRow⟩ ⟨132,132,157,157⟩ [s2Step282HeadGFresh,s2Step282HeadFFresh,s2Step282HeadGvFresh,s2Step282HeadFvFresh]=
    some (s2Step282HeadFvAfter,⟨s2Step282HeadFOut,s2Step282HeadGOut,s2Step282HeadFvOut,s2Step282HeadGvOut⟩,(growRow 769 s2Step282HeadGFresh ++ (growRow 768 s2Step282HeadFFresh ++ (growRow 771 s2Step282HeadGvFresh ++ (growRow 770 s2Step282HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step282HeadBank_rows]
  rfl

private theorem s2Step282Front_checked : compileHmrSourceFrontLog s2Step282EntryFBefore s2Step282FrontBank 131 156 ⟨129,130,156,156⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step282FrontLog=some s2Step282FrontPlan := by
  have pairEq : s2Step282FrontPair=⟨s2Step282HeadFRow,s2Step282HeadGRow,s2Step282HeadFvRow,s2Step282HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step282FrontHead=⟨s2Step282ExitFRow,s2Step282ExitGRow,s2Step282ExitFvRow,s2Step282ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step282Add0A=s2Step282FrontHead.f.wires := by decide +kernel
  have gEq : s2Step282Add0B=s2Step282FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step282Add1A=s2Step282FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step282Add1B=s2Step282FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step282EntryFBefore s2Step282FrontBank 131 156 ⟨129,130,156,156⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step282FrontLog s2Step282FrontPlan
  · exact s2Step282Front_entry
  · exact s2Step282EntryBank_checked
  · exact s2Step282Front_sigma
  · rfl
  · exact s2Step282Front_branch
  · rfl
  · simpa only [s2Step282FrontPlan,pairEq] using s2Step282HeadBank_checked
  · simpa only [s2Step282FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step282F4_checked
  · exact s2Step282Counter_checked
  · rfl
  · simpa only [s2Step282FrontPlan,headEq] using s2Step282ExitBank_checked

private theorem s2Step282Complete_explicit_checked : compileHmrEarlyStepLog s2Step282EntryFBefore s2Step282FrontBank 131 156 ⟨129,130,156,156⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 54 s2Step282CompleteLog=some s2Step282CompletePlan := by
  let Q := s2Step282EarlyControlPlan
  have hq := s2Step282EarlyControl_plan_checked
  have fv1 : s2Step282CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step282CompleteOut.fv.payload[2]?.getD s2Step282CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step282CompleteOut.fv.payload[3]?.getD s2Step282CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step282CompleteOut.fv.payload[4]?.getD s2Step282CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step282EntryFBefore s2Step282EarlyControlArena s2Step282FrontBank 131 156 ⟨129,130,156,156⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 54 s2Step282CompleteLog s2Step282FrontPlan Q
    s2Step282Front_checked s2Step282Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step282Complete_owned s2Step282Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step282EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 777 780 s2Step282CompleteOut.fv.second (s2Step282CompleteOut.fv.payload[2]?.getD s2Step282CompleteOut.fv.sign) (s2Step282CompleteOut.fv.payload[3]?.getD s2Step282CompleteOut.fv.sign) (s2Step282CompleteOut.fv.payload[4]?.getD s2Step282CompleteOut.fv.sign) 796 54 s2Step282EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep282Arena : Arena := s2Step282EntryFBefore
def s2PrivateStep282Bank : WindowBank := s2Step282FrontBank
def s2PrivateStep282Spec : HmrSourceWalkStepLog := ⟨131,156,⟨129,130,156,156⟩,54,.early s2Step282CompleteLog⟩
def s2PrivateStep282Plan : HmrSourceStepPlan := .early s2Step282CompletePlan
theorem s2PrivateStep282_source : s2PrivateStep282Spec=s2ObservedLogs272[10] := rfl
theorem s2PrivateStep282_checked : compileHmrSourceStepLog s2PrivateStep282Arena s2PrivateStep282Bank
    s2PrivateStep282Spec.fgWidth s2PrivateStep282Spec.vWidth s2PrivateStep282Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905]
    6 498 282 s2PrivateStep282Spec.need none s2PrivateStep282Spec.log=some s2PrivateStep282Plan := by
  change compileHmrSourceStepLog s2Step282EntryFBefore s2Step282FrontBank 131 156 ⟨129,130,156,156⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 6 498 282 54 none (.early s2Step282CompleteLog)=some (.early s2Step282CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 282<498)]
  rw [s2Step282Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
