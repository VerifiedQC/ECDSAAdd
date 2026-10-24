import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep281
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

private def s2Step283CompleteMoves : List (Wire × Wire) := [(801,129)]

private def s2Step283EarlyControlLog : HmrEarlyControlLog := ⟨[801, 781, 796, 783, 891],[791],[815],[830, 800, 894, 896, 901, 903],[]⟩

private def s2Step283FrontLog : HmrFrontAllocationLog := ⟨⟨[[796], [], [], []],[[891], [783], [781], [798]],[[], [], [], []]⟩,[780],[845],[791],[815],[830, 800, 894, 896, 901, 903, 904, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[830, 800, 894, 896, 901, 903, 904, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[791, 815, 830, 800]⟩

private def s2Step283CompleteLog : HmrEarlyStepLog := ⟨s2Step283FrontLog,s2Step283CompleteMoves,s2Step283EarlyControlLog⟩

private def s2Step283ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640],768⟩

private def s2Step283ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798],770⟩

private def s2Step283ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128],769⟩

private def s2Step283ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788],771⟩

private def s2Step283FrontOut : WindowBank := ⟨s2Step283ExitFOut,s2Step283ExitGOut,s2Step283ExitFvOut,s2Step283ExitGvOut⟩

private def s2Step283CompleteOut : WindowBank := s2Step283FrontOut.repacked s2Step283CompleteMoves

private def s2Step283EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step283EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step283EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step283EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step283EarlyControlPositiveArena,[791],s2Step283EarlyControlEqualityArena,[815],⟨⟨780,false⟩,[⟨⟨791,false⟩,815⟩]⟩⟩

private def s2Step283EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<904) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step283EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<904) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step283EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step283EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step283EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step283EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step283EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,801⟩,⟨⟨774,false⟩,781⟩,⟨⟨775,false⟩,796⟩,⟨⟨776,false⟩,783⟩,⟨⟨777,false⟩,891⟩]⟩

private def s2Step283EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step283EarlyControlZeroArena,s2Step283EarlyControlZeroPlan,s2Step283EarlyControlClassPlan,s2Step283EarlyControlFlagArena,s2Step283EarlyControlFittedArena,s2Step283EarlyControlHistoryArena,s2Step283EarlyControlSigmaArena,s2Step283EarlyControlOutputArena,s2Step283EarlyControlLog⟩

private def s2Step283CounterWork : List Wire := [791, 815, 830, 800]

private theorem s2Step283Counter_bounded : s2Step283CounterWork.toFinset⊆arenaWires := by norm_num [s2Step283CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step283HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step283CounterDuring : Arena := ⟨s2Step283HeadFvAfter.live∪s2Step283CounterWork.toFinset,Finset.union_subset s2Step283HeadFvAfter.bounded s2Step283Counter_bounded⟩

private def s2Step283EntryFFresh : List Wire := [796]

private def s2Step283EntryFvFresh : List Wire := []

private def s2Step283EntryGFresh : List Wire := []

private def s2Step283EntryFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step283EntryGvAfter : Arena := s2Step283EntryFAfter

private def s2Step283EntryGvFresh : List Wire := []

private def s2Step283ExitFExtra : List Wire := [796, 783]

private def s2Step283ExitGExtra : List Wire := [129, 891]

private def s2Step283ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<129) ∨ (130≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step283ExitGvExtra : List Wire := [781]

private def s2Step283Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step283Add0Work : List Wire := [830, 800, 894, 896, 901, 903, 904, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step283Add0_bounded : s2Step283Add0Work.toFinset⊆arenaWires := by
  have h : s2Step283Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step283Add0During : Arena := ⟨s2Step283Add0Arena.live∪s2Step283Add0Work.toFinset,Finset.union_subset s2Step283Add0Arena.bounded s2Step283Add0_bounded⟩

private def s2Step283Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step283Add1Work : List Wire := [830, 800, 894, 896, 901, 903, 904, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step283Add1_bounded : s2Step283Add1Work.toFinset⊆arenaWires := by
  have h : s2Step283Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step283Add1During : Arena := ⟨s2Step283Add1Arena.live∪s2Step283Add1Work.toFinset,Finset.union_subset s2Step283Add1Arena.bounded s2Step283Add1_bounded⟩

private def s2Step283F4FlagArena : Arena := ⟨s2Step283HeadFvAfter.live∪{791},Finset.union_subset s2Step283HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step283F4Plan : HmrHybridF4Plan := ⟨s2Step283F4FlagArena,[791],s2Step283Add0Arena,[815],s2Step283Add0During,s2Step283Add0Work,s2Step283Add1During,s2Step283Add1Work⟩

private def s2Step283HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 796, 783],768⟩

private def s2Step283HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798],770⟩

private def s2Step283HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 891],769⟩

private def s2Step283HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 781],771⟩

private def s2Step283FrontHead : WindowBank := ⟨s2Step283HeadFOut,s2Step283HeadGOut,s2Step283HeadFvOut,s2Step283HeadGvOut⟩

private def s2Step283EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 796],768⟩

private def s2Step283EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839],770⟩

private def s2Step283EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129],769⟩

private def s2Step283EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788],771⟩

private def s2Step283FrontPair : WindowBank := ⟨s2Step283EntryFOut,s2Step283EntryGOut,s2Step283EntryFvOut,s2Step283EntryGvOut⟩

private def s2Step283FrontSigmaArena : Arena := ⟨s2Step283EntryGvAfter.live∪{780},Finset.union_subset s2Step283EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step283HeadFFresh : List Wire := [783]

private def s2Step283HeadFvFresh : List Wire := [798]

private def s2Step283HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step283HeadGFresh : List Wire := [891]

private def s2Step283HeadGvFresh : List Wire := [781]

private def s2Step283FrontPlan : HmrSourceFront := ⟨s2Step283EntryGvAfter,s2Step283FrontPair,(growRow 768 s2Step283EntryFFresh ++ (growRow 769 s2Step283EntryGFresh ++ (growRow 770 s2Step283EntryFvFresh ++ (growRow 771 s2Step283EntryGvFresh ++ [])))),s2Step283FrontSigmaArena,[780],s2Step283HeadGBefore,[845],
  s2Step283HeadFvAfter,s2Step283FrontHead,(growRow 769 s2Step283HeadGFresh ++ (growRow 768 s2Step283HeadFFresh ++ (growRow 771 s2Step283HeadGvFresh ++ (growRow 770 s2Step283HeadFvFresh ++ [])))),s2Step283F4Plan,s2Step283CounterDuring,s2Step283CounterWork,s2Step283ExitGvAfter,s2Step283FrontOut,(shrinkRow 769 s2Step283ExitGExtra ++ (shrinkRow 768 s2Step283ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step283ExitGvExtra ++ []))))⟩

private def s2Step283CompletePlan : HmrEarlyStepPlan := ⟨s2Step283FrontPlan,s2Step283EarlyControlArena,s2Step283EarlyControlPlan,s2Step283CompleteMoves⟩

private theorem s2Step283Complete_apart : List.Disjoint (s2Step283CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [780, 845, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] := by
  have nd : ((s2Step283CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[780, 845, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step283Complete_owned : (s2Step283CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step283EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step283EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private def s2Step283CompleteMoveArena : Arena := ⟨s2Step283ExitGvAfter.live∪{129},Finset.union_subset s2Step283ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step283Complete_repack : s2Step283ExitGvAfter.checkRepack s2Step283CompleteMoves=some s2Step283EarlyControlArena := by
  have owned : 801∈s2Step283ExitGvAfter.live := by norm_num [s2Step283ExitGvAfter,arenaWires]
  have reserve : s2Step283ExitGvAfter.reserve {129}=some s2Step283CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step283ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step283CompleteMoveArena.retireSet {801}=s2Step283EarlyControlArena := by
    unfold Arena.retireSet s2Step283EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step283CompleteMoveArena,s2Step283ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step283CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step283CompleteMoveArena.retireSet {801}).checkRepack []=some s2Step283EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step283EarlyControl_branchOwned : ([845] : List Wire).toFinset⊆s2Step283EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step283EarlyControlSigmaArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step283EarlyControl_branch : compileHmrBranchRetirement s2Step283EarlyControlSigmaArena 845=some s2Step283EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step283EarlyControl_branchOwned
  · ext q
    simp [s2Step283EarlyControlOutputArena,s2Step283EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step283EarlyControl_classEqualityBorrow : s2Step283EarlyControlPositiveArena.checkBorrow (([780, 791] : List Wire).length-1) s2Step283EarlyControlLog.classWork=some s2Step283EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step283EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step283EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step283EarlyControlEqualityArena,s2Step283EarlyControlPositiveArena,s2Step283EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step283EarlyControl_classEqualityOwned : ([780, 791] : List Wire).toFinset⊆s2Step283EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step283EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step283EarlyControl_classEquality : compileHmrEqualityLog s2Step283EarlyControlPositiveArena [780, 791] 0 s2Step283EarlyControlLog.classWork=some (s2Step283EarlyControlEqualityArena,s2Step283EarlyControlLog.classWork,s2Step283EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step283EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step283EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step283EarlyControl_classOwned : ([777, 891, 780] : List Wire).toFinset⊆s2Step283EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step283EarlyControlZeroArena (fun q => (0≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step283EarlyControl_positiveBorrow : s2Step283EarlyControlZeroArena.checkBorrow (1) s2Step283EarlyControlLog.positiveWork=some s2Step283EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step283EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step283EarlyControlZeroArena (fun q => (0≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step283EarlyControlPositiveArena,s2Step283EarlyControlZeroArena,s2Step283EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step283EarlyControl_class : compileHmrSourceClassLog s2Step283EarlyControlZeroArena false 777 s2Step283EarlyControlZeroPlan.top 0 780 s2Step283EarlyControlLog.positiveWork s2Step283EarlyControlLog.classWork=some s2Step283EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step283EarlyControlClassPlan s2Step283EarlyControlZeroArena false 777 s2Step283EarlyControlZeroPlan.top 0 780
  constructor
  · decide +kernel
  · exact s2Step283EarlyControl_classOwned
  · exact s2Step283EarlyControl_positiveBorrow
  · exact s2Step283EarlyControl_classEquality

private theorem s2Step283EarlyControl_entryRecordOwned : ([845, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).toFinset⊆s2Step283EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step283EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step283EarlyControl_entrySigmaOwned : ([780, 254] : List Wire).toFinset⊆s2Step283EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step283EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step283EarlyControl_fitBorrow : s2Step283EarlyControlFlagArena.checkBorrow ((54-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).length)) s2Step283EarlyControlLog.recordFresh=some s2Step283EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step283EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step283EarlyControlFlagArena (fun q => (0≤q ∧ q<904) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step283EarlyControlFittedArena,s2Step283EarlyControlFlagArena,s2Step283EarlyControlLog,arenaWires]

private theorem s2Step283EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).toFinset⊆s2Step283EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step283EarlyControlFlagArena (fun q => (0≤q ∧ q<904) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step283EarlyControl_fit : compileHmrRecordGrowLog s2Step283EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 54 s2Step283EarlyControlLog.recordFresh=some s2Step283EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step283EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step283EarlyControl_fitBorrow

private theorem s2Step283EarlyControl_flagsBorrow : s2Step283EarlyControlEqualityArena.checkBorrow (6) s2Step283EarlyControlLog.flagWork=some s2Step283EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step283EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step283EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step283EarlyControlFlagArena,s2Step283EarlyControlEqualityArena,s2Step283EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step283EarlyControl_flagsOwned : ([815, 253, 252, 251] : List Wire).toFinset⊆s2Step283EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step283EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step283EarlyControl_flags : compileHmrFlagsLog s2Step283EarlyControlClassPlan.equalityArena s2Step283EarlyControlClassPlan.equality.top 253 252 251 s2Step283EarlyControlLog.flagWork=some s2Step283EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step283EarlyControl_flagsOwned⟩
  · exact s2Step283EarlyControl_flagsBorrow

private theorem s2Step283EarlyControl_historyBorrow : s2Step283EarlyControlArena.checkBorrow ((54-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).length)) s2Step283EarlyControlLog.recordFresh=some s2Step283EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step283EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step283EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step283EarlyControlHistoryArena,s2Step283EarlyControlArena,s2Step283EarlyControlLog,arenaWires]

private theorem s2Step283EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).toFinset⊆s2Step283EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step283EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step283EarlyControl_history : compileHmrRecordGrowLog s2Step283EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 54 s2Step283EarlyControlLog.recordFresh=some s2Step283EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step283EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step283EarlyControl_historyBorrow

private theorem s2Step283EarlyControl_sigmaOwned : ([254, 780] : List Wire).toFinset⊆s2Step283EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step283EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step283EarlyControl_sigmaReleaseOwned : ([780] : List Wire).toFinset⊆s2Step283EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step283EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step283EarlyControl_sigmaRelease : s2Step283EarlyControlHistoryArena.release {780} (fun _ => false)=some s2Step283EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step283EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step283EarlyControlSigmaArena,s2Step283EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step283EarlyControl_sigma : compileHmrSigmaDropLog s2Step283EarlyControlHistoryArena false 0 0 254 780 []=some s2Step283EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step283EarlyControl_sigmaOwned⟩
  · exact s2Step283EarlyControl_sigmaRelease

private theorem s2Step283EarlyControl_zeroBorrow : s2Step283EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step283EarlyControlLog.zeroWork=some s2Step283EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step283EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step283EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step283EarlyControlZeroArena,s2Step283EarlyControlArena,s2Step283EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step283EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step283EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step283EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step283EarlyControl_zero : compileHmrEqualityLog s2Step283EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step283EarlyControlLog.zeroWork=some (s2Step283EarlyControlZeroArena,s2Step283EarlyControlLog.zeroWork,s2Step283EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step283EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step283EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step283EarlyControl_logged : s2Step283EarlyControlPlan.Logged s2Step283EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 777 780 254 253 252 251 845 54 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step283EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step283EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step283EarlyControl_zero
  · exact s2Step283EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step283EarlyControl_flags
  · exact s2Step283EarlyControl_fit
  · exact s2Step283EarlyControl_history
  · exact s2Step283EarlyControl_sigma
  · exact s2Step283EarlyControl_branch

private theorem s2Step283EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step283EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 777 780 254 253 252 251 845 54 s2Step283EarlyControlLog=some s2Step283EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step283EarlyControlPlan s2Step283EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 777 780 254 253 252 251 845 54 s2Step283EarlyControl_logged

private def s2Step283EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step283EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640],768⟩

private def s2Step283EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839],770⟩

private def s2Step283EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129],769⟩

private def s2Step283EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788],771⟩

private def s2Step283FrontBank : WindowBank := ⟨s2Step283EntryFRow,s2Step283EntryGRow,s2Step283EntryFvRow,s2Step283EntryGvRow⟩

private def s2Step283Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 796, 783, 768]

private def s2Step283Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 891, 769]

private def s2Step283Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 770]

private def s2Step283Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 781, 771]

private theorem s2Step283Counter_apart : Disjoint s2Step283HeadFvAfter.live s2Step283CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step283HeadFvAfter (fun q => (0≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step283Counter_borrowed : s2Step283HeadFvAfter.checkBorrow 4 s2Step283CounterWork=some s2Step283CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step283HeadFvAfter s2Step283CounterDuring s2Step283CounterWork.toFinset s2Step283Counter_bounded s2Step283Counter_apart rfl

private theorem s2Step283Counter_owned : (780::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step283HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step283HeadFvAfter (fun q => (0≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step283Counter_checked : compileHmrCounterStepLog s2Step283HeadFvAfter true 780 [772, 773, 774, 775, 776, 777] s2Step283CounterWork=some s2Step283CounterDuring := by
  have owned : ∀q∈780::[772, 773, 774, 775, 776, 777],q∈s2Step283HeadFvAfter.live := fun q hq => s2Step283Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step283Counter_borrowed

private theorem s2Step283EntryBank_incomingDistinct : ([s2Step283EntryFRow,s2Step283EntryGRow,s2Step283EntryFvRow,s2Step283EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step283EntryF_Incoming : rowsOwned s2Step283EntryFBefore [s2Step283EntryFRow,s2Step283EntryGRow,s2Step283EntryFvRow,s2Step283EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step283EntryFRow,s2Step283EntryGRow,s2Step283EntryFvRow,s2Step283EntryGvRow] 0 s2Step283EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step283EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step283EntryBank_outgoingOwned : rowsOwned s2Step283EntryGvAfter [s2Step283EntryFOut,s2Step283EntryGOut,s2Step283EntryFvOut,s2Step283EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step283EntryGvAfter (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step283EntryF_Outgoing : rowsOwned s2Step283EntryGvAfter [s2Step283EntryFOut,s2Step283EntryGOut,s2Step283EntryFvOut,s2Step283EntryGvOut] :=
  hmrRows_owned_drop s2Step283EntryGvAfter [s2Step283EntryFOut,s2Step283EntryGOut,s2Step283EntryFvOut,s2Step283EntryGvOut] 0 s2Step283EntryBank_outgoingOwned

private theorem s2Step283EntryF_distinct : (s2Step283EntryFRow.sign::s2Step283EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step283EntryF_owned : (s2Step283EntryFRow.sign::s2Step283EntryFRow.payload).toFinset⊆s2Step283EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step283EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step283EntryF_reserved : s2Step283EntryFBefore.reserve s2Step283EntryFFresh.toFinset=some s2Step283EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step283EntryFFresh,arenaWires]
  · norm_num [s2Step283EntryFBefore,s2Step283EntryFFresh,arenaWires]
  · ext q
    simp only [s2Step283EntryFAfter,s2Step283EntryFBefore,s2Step283EntryFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step283EntryF_checked : planRowResizeLog s2Step283EntryFBefore s2Step283EntryFRow 130 s2Step283EntryFFresh=
    some (s2Step283EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 796],768⟩,growRow 768 s2Step283EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step283EntryFBefore s2Step283EntryFAfter s2Step283EntryFRow 130 s2Step283EntryFFresh
    s2Step283EntryF_distinct s2Step283EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step283EntryF_reserved
  have rowEq : WindowRow.mk (s2Step283EntryFRow.payload++s2Step283EntryFFresh) s2Step283EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 796],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step283EntryFvAfter : Arena := s2Step283EntryFAfter

private def s2Step283EntryFvBefore : Arena := s2Step283EntryFAfter

private theorem s2Step283EntryFv_Incoming : rowsOwned s2Step283EntryFvBefore [s2Step283EntryFvRow,s2Step283EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step283EntryFRow,s2Step283EntryGRow,s2Step283EntryFvRow,s2Step283EntryGvRow] 2 s2Step283EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step283EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step283EntryFv_Outgoing : rowsOwned s2Step283EntryGvAfter [s2Step283EntryFvOut,s2Step283EntryGvOut] :=
  hmrRows_owned_drop s2Step283EntryGvAfter [s2Step283EntryFOut,s2Step283EntryGOut,s2Step283EntryFvOut,s2Step283EntryGvOut] 2 s2Step283EntryBank_outgoingOwned

private theorem s2Step283EntryFv_distinct : (s2Step283EntryFvRow.sign::s2Step283EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step283EntryFv_owned : (s2Step283EntryFvRow.sign::s2Step283EntryFvRow.payload).toFinset⊆s2Step283EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step283EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step283EntryFv_reserved : s2Step283EntryFvBefore.reserve s2Step283EntryFvFresh.toFinset=some s2Step283EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step283EntryFvFresh,arenaWires]
  · norm_num [s2Step283EntryFvBefore,s2Step283EntryFAfter,s2Step283EntryFvFresh,arenaWires]
  · simp only [s2Step283EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step283EntryFv_checked : planRowResizeLog s2Step283EntryFvBefore s2Step283EntryFvRow 156 s2Step283EntryFvFresh=
    some (s2Step283EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839],770⟩,growRow 770 s2Step283EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step283EntryFvBefore s2Step283EntryFvAfter s2Step283EntryFvRow 156 s2Step283EntryFvFresh
    s2Step283EntryFv_distinct s2Step283EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step283EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step283EntryFvRow.payload++s2Step283EntryFvFresh) s2Step283EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step283EntryGAfter : Arena := s2Step283EntryFAfter

private def s2Step283EntryGBefore : Arena := s2Step283EntryFAfter

private theorem s2Step283EntryG_Incoming : rowsOwned s2Step283EntryGBefore [s2Step283EntryGRow,s2Step283EntryFvRow,s2Step283EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step283EntryFRow,s2Step283EntryGRow,s2Step283EntryFvRow,s2Step283EntryGvRow] 1 s2Step283EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step283EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step283EntryG_Outgoing : rowsOwned s2Step283EntryGvAfter [s2Step283EntryGOut,s2Step283EntryFvOut,s2Step283EntryGvOut] :=
  hmrRows_owned_drop s2Step283EntryGvAfter [s2Step283EntryFOut,s2Step283EntryGOut,s2Step283EntryFvOut,s2Step283EntryGvOut] 1 s2Step283EntryBank_outgoingOwned

private theorem s2Step283EntryG_distinct : (s2Step283EntryGRow.sign::s2Step283EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step283EntryG_owned : (s2Step283EntryGRow.sign::s2Step283EntryGRow.payload).toFinset⊆s2Step283EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step283EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step283EntryG_reserved : s2Step283EntryGBefore.reserve s2Step283EntryGFresh.toFinset=some s2Step283EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step283EntryGFresh,arenaWires]
  · norm_num [s2Step283EntryGBefore,s2Step283EntryFAfter,s2Step283EntryGFresh,arenaWires]
  · simp only [s2Step283EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step283EntryG_checked : planRowResizeLog s2Step283EntryGBefore s2Step283EntryGRow 130 s2Step283EntryGFresh=
    some (s2Step283EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129],769⟩,growRow 769 s2Step283EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step283EntryGBefore s2Step283EntryGAfter s2Step283EntryGRow 130 s2Step283EntryGFresh
    s2Step283EntryG_distinct s2Step283EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step283EntryG_reserved
  have rowEq : WindowRow.mk (s2Step283EntryGRow.payload++s2Step283EntryGFresh) s2Step283EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step283EntryGvBefore : Arena := s2Step283EntryFAfter

private theorem s2Step283EntryGv_Incoming : rowsOwned s2Step283EntryGvBefore [s2Step283EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step283EntryFRow,s2Step283EntryGRow,s2Step283EntryFvRow,s2Step283EntryGvRow] 3 s2Step283EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step283EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step283EntryGv_Outgoing : rowsOwned s2Step283EntryGvAfter [s2Step283EntryGvOut] :=
  hmrRows_owned_drop s2Step283EntryGvAfter [s2Step283EntryFOut,s2Step283EntryGOut,s2Step283EntryFvOut,s2Step283EntryGvOut] 3 s2Step283EntryBank_outgoingOwned

private theorem s2Step283EntryGv_distinct : (s2Step283EntryGvRow.sign::s2Step283EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step283EntryGv_owned : (s2Step283EntryGvRow.sign::s2Step283EntryGvRow.payload).toFinset⊆s2Step283EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step283EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step283EntryGv_reserved : s2Step283EntryGvBefore.reserve s2Step283EntryGvFresh.toFinset=some s2Step283EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step283EntryGvFresh,arenaWires]
  · norm_num [s2Step283EntryGvBefore,s2Step283EntryFAfter,s2Step283EntryGvFresh,arenaWires]
  · simp only [s2Step283EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step283EntryGv_checked : planRowResizeLog s2Step283EntryGvBefore s2Step283EntryGvRow 156 s2Step283EntryGvFresh=
    some (s2Step283EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788],771⟩,growRow 771 s2Step283EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step283EntryGvBefore s2Step283EntryGvAfter s2Step283EntryGvRow 156 s2Step283EntryGvFresh
    s2Step283EntryGv_distinct s2Step283EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step283EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step283EntryGvRow.payload++s2Step283EntryGvFresh) s2Step283EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step283EntryBank_rows : planWindowRowsLog s2Step283EntryFBefore [(s2Step283EntryFRow,130),(s2Step283EntryGRow,130),(s2Step283EntryFvRow,156),(s2Step283EntryGvRow,156)] [s2Step283EntryFFresh,s2Step283EntryGFresh,s2Step283EntryFvFresh,s2Step283EntryGvFresh]=
    some (s2Step283EntryGvAfter,[s2Step283EntryFOut,s2Step283EntryGOut,s2Step283EntryFvOut,s2Step283EntryGvOut],(growRow 768 s2Step283EntryFFresh ++ (growRow 769 s2Step283EntryGFresh ++ (growRow 770 s2Step283EntryFvFresh ++ (growRow 771 s2Step283EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step283EntryGvAfter [] []=some (s2Step283EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step283EntryGvBefore s2Step283EntryGvAfter s2Step283EntryGvAfter
    s2Step283EntryGvRow s2Step283EntryGvOut 156 s2Step283EntryGvFresh [] [] []
    (growRow 771 s2Step283EntryGvFresh) ([]) s2Step283EntryGv_Incoming s2Step283EntryGv_checked h4 s2Step283EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step283EntryFvBefore s2Step283EntryFvAfter s2Step283EntryGvAfter
    s2Step283EntryFvRow s2Step283EntryFvOut 156 s2Step283EntryFvFresh [(s2Step283EntryGvRow,156)] [s2Step283EntryGvFresh] [s2Step283EntryGvOut]
    (growRow 770 s2Step283EntryFvFresh) ((growRow 771 s2Step283EntryGvFresh ++ [])) s2Step283EntryFv_Incoming s2Step283EntryFv_checked h3 s2Step283EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step283EntryGBefore s2Step283EntryGAfter s2Step283EntryGvAfter
    s2Step283EntryGRow s2Step283EntryGOut 130 s2Step283EntryGFresh [(s2Step283EntryFvRow,156),(s2Step283EntryGvRow,156)] [s2Step283EntryFvFresh,s2Step283EntryGvFresh] [s2Step283EntryFvOut,s2Step283EntryGvOut]
    (growRow 769 s2Step283EntryGFresh) ((growRow 770 s2Step283EntryFvFresh ++ (growRow 771 s2Step283EntryGvFresh ++ []))) s2Step283EntryG_Incoming s2Step283EntryG_checked h2 s2Step283EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step283EntryFBefore s2Step283EntryFAfter s2Step283EntryGvAfter
    s2Step283EntryFRow s2Step283EntryFOut 130 s2Step283EntryFFresh [(s2Step283EntryGRow,130),(s2Step283EntryFvRow,156),(s2Step283EntryGvRow,156)] [s2Step283EntryGFresh,s2Step283EntryFvFresh,s2Step283EntryGvFresh] [s2Step283EntryGOut,s2Step283EntryFvOut,s2Step283EntryGvOut]
    (growRow 768 s2Step283EntryFFresh) ((growRow 769 s2Step283EntryGFresh ++ (growRow 770 s2Step283EntryFvFresh ++ (growRow 771 s2Step283EntryGvFresh ++ [])))) s2Step283EntryF_Incoming s2Step283EntryF_checked h1 s2Step283EntryF_Outgoing
  exact h0

private theorem s2Step283EntryBank_checked : compileHmrBankResizeLog .entry s2Step283EntryFBefore ⟨s2Step283EntryFRow,s2Step283EntryGRow,s2Step283EntryFvRow,s2Step283EntryGvRow⟩ ⟨130,130,156,156⟩ [s2Step283EntryFFresh,s2Step283EntryGFresh,s2Step283EntryFvFresh,s2Step283EntryGvFresh]=
    some (s2Step283EntryGvAfter,⟨s2Step283EntryFOut,s2Step283EntryGOut,s2Step283EntryFvOut,s2Step283EntryGvOut⟩,(growRow 768 s2Step283EntryFFresh ++ (growRow 769 s2Step283EntryGFresh ++ (growRow 770 s2Step283EntryFvFresh ++ (growRow 771 s2Step283EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step283EntryBank_rows]
  rfl

private def s2Step283ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<129) ∨ (130≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step283ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<129) ∨ (130≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step283ExitFBefore : Arena := s2Step283ExitGAfter

private def s2Step283ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 796, 783],768⟩

private def s2Step283ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798],770⟩

private def s2Step283ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 891],769⟩

private def s2Step283ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 781],771⟩

private theorem s2Step283ExitBank_incomingDistinct : ([s2Step283ExitGRow,s2Step283ExitFRow,s2Step283ExitFvRow,s2Step283ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step283ExitF_Incoming : rowsOwned s2Step283ExitFBefore [s2Step283ExitFRow,s2Step283ExitFvRow,s2Step283ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step283ExitGRow,s2Step283ExitFRow,s2Step283ExitFvRow,s2Step283ExitGvRow] 1 s2Step283ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step283ExitFBefore (fun q => (0≤q ∧ q<129) ∨ (130≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step283ExitBank_outgoingOwned : rowsOwned s2Step283ExitGvAfter [s2Step283ExitGOut,s2Step283ExitFOut,s2Step283ExitFvOut,s2Step283ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step283ExitGvAfter (fun q => (0≤q ∧ q<129) ∨ (130≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step283ExitF_Outgoing : rowsOwned s2Step283ExitGvAfter [s2Step283ExitFOut,s2Step283ExitFvOut,s2Step283ExitGvOut] :=
  hmrRows_owned_drop s2Step283ExitGvAfter [s2Step283ExitGOut,s2Step283ExitFOut,s2Step283ExitFvOut,s2Step283ExitGvOut] 1 s2Step283ExitBank_outgoingOwned

private theorem s2Step283ExitF_distinct : (s2Step283ExitFRow.sign::s2Step283ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step283ExitF_owned : (s2Step283ExitFRow.sign::s2Step283ExitFRow.payload).toFinset⊆s2Step283ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step283ExitFBefore (fun q => (0≤q ∧ q<129) ∨ (130≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step283ExitF_retired : s2Step283ExitFBefore.retireSet s2Step283ExitFExtra.toFinset=s2Step283ExitFAfter := by
  unfold Arena.retireSet s2Step283ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step283ExitFBefore,s2Step283ExitGAfter,s2Step283ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step283ExitF_checked : planRowResizeLog s2Step283ExitFBefore s2Step283ExitFRow 129 []=
    some (s2Step283ExitFAfter,s2Step283ExitFOut,shrinkRow 768 s2Step283ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step283ExitFBefore s2Step283ExitFRow 129 s2Step283ExitF_distinct s2Step283ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step283ExitFRow.payload.take 129) s2Step283ExitFRow.sign=s2Step283ExitFOut := by decide +kernel
  have hi : s2Step283ExitFRow.payload.drop 129=s2Step283ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step283ExitF_retired] at result
  exact result

private def s2Step283ExitFvAfter : Arena := s2Step283ExitFAfter

private def s2Step283ExitFvBefore : Arena := s2Step283ExitFAfter

private theorem s2Step283ExitFv_Incoming : rowsOwned s2Step283ExitFvBefore [s2Step283ExitFvRow,s2Step283ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step283ExitGRow,s2Step283ExitFRow,s2Step283ExitFvRow,s2Step283ExitGvRow] 2 s2Step283ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step283ExitFvBefore (fun q => (0≤q ∧ q<129) ∨ (130≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step283ExitFv_Outgoing : rowsOwned s2Step283ExitGvAfter [s2Step283ExitFvOut,s2Step283ExitGvOut] :=
  hmrRows_owned_drop s2Step283ExitGvAfter [s2Step283ExitGOut,s2Step283ExitFOut,s2Step283ExitFvOut,s2Step283ExitGvOut] 2 s2Step283ExitBank_outgoingOwned

private theorem s2Step283ExitFv_distinct : (s2Step283ExitFvRow.sign::s2Step283ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step283ExitFv_owned : (s2Step283ExitFvRow.sign::s2Step283ExitFvRow.payload).toFinset⊆s2Step283ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step283ExitFvBefore (fun q => (0≤q ∧ q<129) ∨ (130≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step283ExitFv_reserved : s2Step283ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step283ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step283ExitFv_checked : planRowResizeLog s2Step283ExitFvBefore s2Step283ExitFvRow 157 []=
    some (s2Step283ExitFvAfter,s2Step283ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step283ExitFvBefore s2Step283ExitFvAfter s2Step283ExitFvRow 157 []
    s2Step283ExitFv_distinct s2Step283ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step283ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step283ExitFvRow.payload++[]) s2Step283ExitFvRow.sign=s2Step283ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step283ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private theorem s2Step283ExitG_Incoming : rowsOwned s2Step283ExitGBefore [s2Step283ExitGRow,s2Step283ExitFRow,s2Step283ExitFvRow,s2Step283ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step283ExitGRow,s2Step283ExitFRow,s2Step283ExitFvRow,s2Step283ExitGvRow] 0 s2Step283ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step283ExitGBefore (fun q => (0≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step283ExitG_Outgoing : rowsOwned s2Step283ExitGvAfter [s2Step283ExitGOut,s2Step283ExitFOut,s2Step283ExitFvOut,s2Step283ExitGvOut] :=
  hmrRows_owned_drop s2Step283ExitGvAfter [s2Step283ExitGOut,s2Step283ExitFOut,s2Step283ExitFvOut,s2Step283ExitGvOut] 0 s2Step283ExitBank_outgoingOwned

private theorem s2Step283ExitG_distinct : (s2Step283ExitGRow.sign::s2Step283ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step283ExitG_owned : (s2Step283ExitGRow.sign::s2Step283ExitGRow.payload).toFinset⊆s2Step283ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step283ExitGBefore (fun q => (0≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step283ExitG_retired : s2Step283ExitGBefore.retireSet s2Step283ExitGExtra.toFinset=s2Step283ExitGAfter := by
  unfold Arena.retireSet s2Step283ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step283ExitGBefore,s2Step283ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step283ExitG_checked : planRowResizeLog s2Step283ExitGBefore s2Step283ExitGRow 129 []=
    some (s2Step283ExitGAfter,s2Step283ExitGOut,shrinkRow 769 s2Step283ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step283ExitGBefore s2Step283ExitGRow 129 s2Step283ExitG_distinct s2Step283ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step283ExitGRow.payload.take 129) s2Step283ExitGRow.sign=s2Step283ExitGOut := by decide +kernel
  have hi : s2Step283ExitGRow.payload.drop 129=s2Step283ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step283ExitG_retired] at result
  exact result

private def s2Step283ExitGvBefore : Arena := s2Step283ExitFAfter

private theorem s2Step283ExitGv_Incoming : rowsOwned s2Step283ExitGvBefore [s2Step283ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step283ExitGRow,s2Step283ExitFRow,s2Step283ExitFvRow,s2Step283ExitGvRow] 3 s2Step283ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step283ExitGvBefore (fun q => (0≤q ∧ q<129) ∨ (130≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step283ExitGv_Outgoing : rowsOwned s2Step283ExitGvAfter [s2Step283ExitGvOut] :=
  hmrRows_owned_drop s2Step283ExitGvAfter [s2Step283ExitGOut,s2Step283ExitFOut,s2Step283ExitFvOut,s2Step283ExitGvOut] 3 s2Step283ExitBank_outgoingOwned

private theorem s2Step283ExitGv_distinct : (s2Step283ExitGvRow.sign::s2Step283ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step283ExitGv_owned : (s2Step283ExitGvRow.sign::s2Step283ExitGvRow.payload).toFinset⊆s2Step283ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step283ExitGvBefore (fun q => (0≤q ∧ q<129) ∨ (130≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step283ExitGv_retired : s2Step283ExitGvBefore.retireSet s2Step283ExitGvExtra.toFinset=s2Step283ExitGvAfter := by
  unfold Arena.retireSet s2Step283ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step283ExitGvBefore,s2Step283ExitFAfter,s2Step283ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step283ExitGv_checked : planRowResizeLog s2Step283ExitGvBefore s2Step283ExitGvRow 156 []=
    some (s2Step283ExitGvAfter,s2Step283ExitGvOut,shrinkRow 771 s2Step283ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step283ExitGvBefore s2Step283ExitGvRow 156 s2Step283ExitGv_distinct s2Step283ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step283ExitGvRow.payload.take 156) s2Step283ExitGvRow.sign=s2Step283ExitGvOut := by decide +kernel
  have hi : s2Step283ExitGvRow.payload.drop 156=s2Step283ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step283ExitGv_retired] at result
  exact result

private theorem s2Step283ExitBank_rows : planWindowRowsLog s2Step283ExitGBefore [(s2Step283ExitGRow,129),(s2Step283ExitFRow,129),(s2Step283ExitFvRow,157),(s2Step283ExitGvRow,156)] [[],[],[],[]]=
    some (s2Step283ExitGvAfter,[s2Step283ExitGOut,s2Step283ExitFOut,s2Step283ExitFvOut,s2Step283ExitGvOut],(shrinkRow 769 s2Step283ExitGExtra ++ (shrinkRow 768 s2Step283ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step283ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step283ExitGvAfter [] []=some (s2Step283ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step283ExitGvBefore s2Step283ExitGvAfter s2Step283ExitGvAfter
    s2Step283ExitGvRow s2Step283ExitGvOut 156 [] [] [] []
    (shrinkRow 771 s2Step283ExitGvExtra) ([]) s2Step283ExitGv_Incoming s2Step283ExitGv_checked h4 s2Step283ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step283ExitFvBefore s2Step283ExitFvAfter s2Step283ExitGvAfter
    s2Step283ExitFvRow s2Step283ExitFvOut 157 [] [(s2Step283ExitGvRow,156)] [[]] [s2Step283ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step283ExitGvExtra ++ [])) s2Step283ExitFv_Incoming s2Step283ExitFv_checked h3 s2Step283ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step283ExitFBefore s2Step283ExitFAfter s2Step283ExitGvAfter
    s2Step283ExitFRow s2Step283ExitFOut 129 [] [(s2Step283ExitFvRow,157),(s2Step283ExitGvRow,156)] [[],[]] [s2Step283ExitFvOut,s2Step283ExitGvOut]
    (shrinkRow 768 s2Step283ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step283ExitGvExtra ++ []))) s2Step283ExitF_Incoming s2Step283ExitF_checked h2 s2Step283ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step283ExitGBefore s2Step283ExitGAfter s2Step283ExitGvAfter
    s2Step283ExitGRow s2Step283ExitGOut 129 [] [(s2Step283ExitFRow,129),(s2Step283ExitFvRow,157),(s2Step283ExitGvRow,156)] [[],[],[]] [s2Step283ExitFOut,s2Step283ExitFvOut,s2Step283ExitGvOut]
    (shrinkRow 769 s2Step283ExitGExtra) ((shrinkRow 768 s2Step283ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step283ExitGvExtra ++ [])))) s2Step283ExitG_Incoming s2Step283ExitG_checked h1 s2Step283ExitG_Outgoing
  exact h0

private theorem s2Step283ExitBank_checked : compileHmrBankResizeLog .exit s2Step283ExitGBefore ⟨s2Step283ExitFRow,s2Step283ExitGRow,s2Step283ExitFvRow,s2Step283ExitGvRow⟩ ⟨129,129,157,156⟩ [[],[],[],[]]=
    some (s2Step283ExitGvAfter,⟨s2Step283ExitFOut,s2Step283ExitGOut,s2Step283ExitFvOut,s2Step283ExitGvOut⟩,(shrinkRow 769 s2Step283ExitGExtra ++ (shrinkRow 768 s2Step283ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step283ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step283ExitBank_rows]
  rfl

private theorem s2Step283Add0_apart : Disjoint s2Step283Add0Arena.live s2Step283Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step283Add0Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step283Add0_card : s2Step283Add0Arena.live.card=900 := by
  decide +kernel

private theorem s2Step283Add0_borrowed : s2Step283Add0Arena.checkBorrow (hmrHybridCount s2Step283Add0Arena s2Step283Add0B.length) s2Step283Add0Work=some s2Step283Add0During := by
  have len : s2Step283Add0Work.length=hmrHybridCount s2Step283Add0Arena s2Step283Add0B.length := by
    rw [hmrHybridCount,s2Step283Add0_card]
    decide +kernel
  have nd : s2Step283Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step283Add0Arena s2Step283Add0During s2Step283Add0Work.toFinset s2Step283Add0_bounded s2Step283Add0_apart rfl

private theorem s2Step283Add0_distinct : (791::845::815::(s2Step283Add0A++s2Step283Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step283Add0_owned : (791::845::815::(s2Step283Add0A++s2Step283Add0B)).toFinset⊆s2Step283Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step283Add0Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step283Add0_checked : compileHmrHybridCinLog s2Step283Add0Arena 845 791 815 s2Step283Add0A s2Step283Add0B s2Step283Add0Work=some s2Step283Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step283Add0Arena s2Step283Add0During 845 791 815 s2Step283Add0A s2Step283Add0B s2Step283Add0Work
    (by decide +kernel) (by decide +kernel) s2Step283Add0_distinct
    (fun q hq => s2Step283Add0_owned (List.mem_toFinset.mpr hq)) s2Step283Add0_borrowed

private theorem s2Step283Add1_apart : Disjoint s2Step283Add1Arena.live s2Step283Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step283Add1Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step283Add1_card : s2Step283Add1Arena.live.card=900 := by
  decide +kernel

private theorem s2Step283Add1_borrowed : s2Step283Add1Arena.checkBorrow (hmrHybridCount s2Step283Add1Arena s2Step283Add1B.length) s2Step283Add1Work=some s2Step283Add1During := by
  have len : s2Step283Add1Work.length=hmrHybridCount s2Step283Add1Arena s2Step283Add1B.length := by
    rw [hmrHybridCount,s2Step283Add1_card]
    decide +kernel
  have nd : s2Step283Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step283Add1Arena s2Step283Add1During s2Step283Add1Work.toFinset s2Step283Add1_bounded s2Step283Add1_apart rfl

private theorem s2Step283Add1_distinct : (791::845::815::(s2Step283Add1A++s2Step283Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step283Add1_owned : (791::845::815::(s2Step283Add1A++s2Step283Add1B)).toFinset⊆s2Step283Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step283Add1Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step283Add1_checked : compileHmrHybridCinLog s2Step283Add1Arena 845 791 815 s2Step283Add1A s2Step283Add1B s2Step283Add1Work=some s2Step283Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step283Add1Arena s2Step283Add1During 845 791 815 s2Step283Add1A s2Step283Add1B s2Step283Add1Work
    (by decide +kernel) (by decide +kernel) s2Step283Add1_distinct
    (fun q hq => s2Step283Add1_owned (List.mem_toFinset.mpr hq)) s2Step283Add1_borrowed

private theorem s2Step283F4_apart : Disjoint (s2Step283Add0A++s2Step283Add0B).toFinset (s2Step283Add1A++s2Step283Add1B).toFinset := by
  have nd : ((s2Step283Add0A++s2Step283Add0B)++(s2Step283Add1A++s2Step283Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step283F4_carry : s2Step283F4FlagArena.checkBorrow 1 [815]=some s2Step283Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step283F4FlagArena,s2Step283HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step283F4FlagArena,s2Step283HeadFvAfter,s2Step283Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step283F4_distinct : (780::845::791::815::((s2Step283Add0A++s2Step283Add1A)++(s2Step283Add0B++s2Step283Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step283F4_flag : s2Step283HeadFvAfter.checkBorrow 1 [791]=some s2Step283F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step283HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step283F4_owned : (780::845::((s2Step283Add0A++s2Step283Add1A)++(s2Step283Add0B++s2Step283Add1B))).toFinset⊆s2Step283HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step283HeadFvAfter (fun q => (0≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step283F4_checked : compileHmrHybridF4Log s2Step283HeadFvAfter 780 845 s2Step283Add0A s2Step283Add0B s2Step283Add1A s2Step283Add1B [791] [815] s2Step283Add0Work s2Step283Add1Work=some s2Step283F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step283HeadFvAfter s2Step283F4FlagArena s2Step283Add0Arena s2Step283Add0During s2Step283Add1During 780 845
    s2Step283Add0A s2Step283Add0B s2Step283Add1A s2Step283Add1B [791] [815] s2Step283Add0Work s2Step283Add1Work
    (fun q hq => s2Step283F4_owned (List.mem_toFinset.mpr hq)) s2Step283F4_flag s2Step283F4_carry
    s2Step283F4_distinct s2Step283F4_apart s2Step283Add0_checked s2Step283Add1_checked

private theorem s2Step283Front_branch : s2Step283FrontSigmaArena.checkBorrow 1 [845]=some s2Step283HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step283FrontSigmaArena,s2Step283EntryGvAfter,s2Step283EntryFAfter,arenaWires]
  · ext q
    simp only [s2Step283FrontSigmaArena,s2Step283EntryGvAfter,s2Step283EntryFAfter,s2Step283HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step283Front_entry : HmrFrontEntryValid s2Step283EntryFBefore s2Step283FrontBank 130 156 ⟨129,129,157,156⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step283FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step283EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step283EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step283FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step283Front_sigma : s2Step283EntryGvAfter.checkBorrow 1 [780]=some s2Step283FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step283EntryGvAfter,s2Step283EntryFAfter,arenaWires]
  · rfl

private def s2Step283HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<791) ∨ (792≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step283HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step283HeadFBefore : Arena := s2Step283HeadGAfter

private def s2Step283HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 796],768⟩

private def s2Step283HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839],770⟩

private def s2Step283HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129],769⟩

private def s2Step283HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788],771⟩

private theorem s2Step283HeadBank_incomingDistinct : ([s2Step283HeadGRow,s2Step283HeadFRow,s2Step283HeadGvRow,s2Step283HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step283HeadF_Incoming : rowsOwned s2Step283HeadFBefore [s2Step283HeadFRow,s2Step283HeadGvRow,s2Step283HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step283HeadGRow,s2Step283HeadFRow,s2Step283HeadGvRow,s2Step283HeadFvRow] 1 s2Step283HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step283HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step283HeadBank_outgoingOwned : rowsOwned s2Step283HeadFvAfter [s2Step283HeadGOut,s2Step283HeadFOut,s2Step283HeadGvOut,s2Step283HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step283HeadFvAfter (fun q => (0≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step283HeadF_Outgoing : rowsOwned s2Step283HeadFvAfter [s2Step283HeadFOut,s2Step283HeadGvOut,s2Step283HeadFvOut] :=
  hmrRows_owned_drop s2Step283HeadFvAfter [s2Step283HeadGOut,s2Step283HeadFOut,s2Step283HeadGvOut,s2Step283HeadFvOut] 1 s2Step283HeadBank_outgoingOwned

private theorem s2Step283HeadF_distinct : (s2Step283HeadFRow.sign::s2Step283HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step283HeadF_owned : (s2Step283HeadFRow.sign::s2Step283HeadFRow.payload).toFinset⊆s2Step283HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step283HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step283HeadF_reserved : s2Step283HeadFBefore.reserve s2Step283HeadFFresh.toFinset=some s2Step283HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step283HeadFFresh,arenaWires]
  · norm_num [s2Step283HeadFBefore,s2Step283HeadGAfter,s2Step283HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step283HeadFAfter,s2Step283HeadFBefore,s2Step283HeadGAfter,s2Step283HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step283HeadF_checked : planRowResizeLog s2Step283HeadFBefore s2Step283HeadFRow 131 s2Step283HeadFFresh=
    some (s2Step283HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 796, 783],768⟩,growRow 768 s2Step283HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step283HeadFBefore s2Step283HeadFAfter s2Step283HeadFRow 131 s2Step283HeadFFresh
    s2Step283HeadF_distinct s2Step283HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step283HeadF_reserved
  have rowEq : WindowRow.mk (s2Step283HeadFRow.payload++s2Step283HeadFFresh) s2Step283HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 796, 783],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step283HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<791) ∨ (792≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step283HeadFvBefore : Arena := s2Step283HeadGvAfter

private theorem s2Step283HeadFv_Incoming : rowsOwned s2Step283HeadFvBefore [s2Step283HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step283HeadGRow,s2Step283HeadFRow,s2Step283HeadGvRow,s2Step283HeadFvRow] 3 s2Step283HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step283HeadFvBefore (fun q => (0≤q ∧ q<791) ∨ (792≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step283HeadFv_Outgoing : rowsOwned s2Step283HeadFvAfter [s2Step283HeadFvOut] :=
  hmrRows_owned_drop s2Step283HeadFvAfter [s2Step283HeadGOut,s2Step283HeadFOut,s2Step283HeadGvOut,s2Step283HeadFvOut] 3 s2Step283HeadBank_outgoingOwned

private theorem s2Step283HeadFv_distinct : (s2Step283HeadFvRow.sign::s2Step283HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step283HeadFv_owned : (s2Step283HeadFvRow.sign::s2Step283HeadFvRow.payload).toFinset⊆s2Step283HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step283HeadFvBefore (fun q => (0≤q ∧ q<791) ∨ (792≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step283HeadFv_reserved : s2Step283HeadFvBefore.reserve s2Step283HeadFvFresh.toFinset=some s2Step283HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step283HeadFvFresh,arenaWires]
  · norm_num [s2Step283HeadFvBefore,s2Step283HeadGvAfter,s2Step283HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step283HeadFvAfter,s2Step283HeadFvBefore,s2Step283HeadGvAfter,s2Step283HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step283HeadFv_checked : planRowResizeLog s2Step283HeadFvBefore s2Step283HeadFvRow 157 s2Step283HeadFvFresh=
    some (s2Step283HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798],770⟩,growRow 770 s2Step283HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step283HeadFvBefore s2Step283HeadFvAfter s2Step283HeadFvRow 157 s2Step283HeadFvFresh
    s2Step283HeadFv_distinct s2Step283HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step283HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step283HeadFvRow.payload++s2Step283HeadFvFresh) s2Step283HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step283HeadG_Incoming : rowsOwned s2Step283HeadGBefore [s2Step283HeadGRow,s2Step283HeadFRow,s2Step283HeadGvRow,s2Step283HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step283HeadGRow,s2Step283HeadFRow,s2Step283HeadGvRow,s2Step283HeadFvRow] 0 s2Step283HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step283HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step283HeadG_Outgoing : rowsOwned s2Step283HeadFvAfter [s2Step283HeadGOut,s2Step283HeadFOut,s2Step283HeadGvOut,s2Step283HeadFvOut] :=
  hmrRows_owned_drop s2Step283HeadFvAfter [s2Step283HeadGOut,s2Step283HeadFOut,s2Step283HeadGvOut,s2Step283HeadFvOut] 0 s2Step283HeadBank_outgoingOwned

private theorem s2Step283HeadG_distinct : (s2Step283HeadGRow.sign::s2Step283HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step283HeadG_owned : (s2Step283HeadGRow.sign::s2Step283HeadGRow.payload).toFinset⊆s2Step283HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step283HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<791) ∨ (792≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step283HeadG_reserved : s2Step283HeadGBefore.reserve s2Step283HeadGFresh.toFinset=some s2Step283HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step283HeadGFresh,arenaWires]
  · norm_num [s2Step283HeadGBefore,s2Step283HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step283HeadGAfter,s2Step283HeadGBefore,s2Step283HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step283HeadG_checked : planRowResizeLog s2Step283HeadGBefore s2Step283HeadGRow 131 s2Step283HeadGFresh=
    some (s2Step283HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 891],769⟩,growRow 769 s2Step283HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step283HeadGBefore s2Step283HeadGAfter s2Step283HeadGRow 131 s2Step283HeadGFresh
    s2Step283HeadG_distinct s2Step283HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step283HeadG_reserved
  have rowEq : WindowRow.mk (s2Step283HeadGRow.payload++s2Step283HeadGFresh) s2Step283HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 891],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step283HeadGvBefore : Arena := s2Step283HeadFAfter

private theorem s2Step283HeadGv_Incoming : rowsOwned s2Step283HeadGvBefore [s2Step283HeadGvRow,s2Step283HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step283HeadGRow,s2Step283HeadFRow,s2Step283HeadGvRow,s2Step283HeadFvRow] 2 s2Step283HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step283HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<791) ∨ (792≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step283HeadGv_Outgoing : rowsOwned s2Step283HeadFvAfter [s2Step283HeadGvOut,s2Step283HeadFvOut] :=
  hmrRows_owned_drop s2Step283HeadFvAfter [s2Step283HeadGOut,s2Step283HeadFOut,s2Step283HeadGvOut,s2Step283HeadFvOut] 2 s2Step283HeadBank_outgoingOwned

private theorem s2Step283HeadGv_distinct : (s2Step283HeadGvRow.sign::s2Step283HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step283HeadGv_owned : (s2Step283HeadGvRow.sign::s2Step283HeadGvRow.payload).toFinset⊆s2Step283HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step283HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<791) ∨ (792≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step283HeadGv_reserved : s2Step283HeadGvBefore.reserve s2Step283HeadGvFresh.toFinset=some s2Step283HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step283HeadGvFresh,arenaWires]
  · norm_num [s2Step283HeadGvBefore,s2Step283HeadFAfter,s2Step283HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step283HeadGvAfter,s2Step283HeadGvBefore,s2Step283HeadFAfter,s2Step283HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step283HeadGv_checked : planRowResizeLog s2Step283HeadGvBefore s2Step283HeadGvRow 157 s2Step283HeadGvFresh=
    some (s2Step283HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 781],771⟩,growRow 771 s2Step283HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step283HeadGvBefore s2Step283HeadGvAfter s2Step283HeadGvRow 157 s2Step283HeadGvFresh
    s2Step283HeadGv_distinct s2Step283HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step283HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step283HeadGvRow.payload++s2Step283HeadGvFresh) s2Step283HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 781],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step283HeadBank_rows : planWindowRowsLog s2Step283HeadGBefore [(s2Step283HeadGRow,131),(s2Step283HeadFRow,131),(s2Step283HeadGvRow,157),(s2Step283HeadFvRow,157)] [s2Step283HeadGFresh,s2Step283HeadFFresh,s2Step283HeadGvFresh,s2Step283HeadFvFresh]=
    some (s2Step283HeadFvAfter,[s2Step283HeadGOut,s2Step283HeadFOut,s2Step283HeadGvOut,s2Step283HeadFvOut],(growRow 769 s2Step283HeadGFresh ++ (growRow 768 s2Step283HeadFFresh ++ (growRow 771 s2Step283HeadGvFresh ++ (growRow 770 s2Step283HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step283HeadFvAfter [] []=some (s2Step283HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step283HeadFvBefore s2Step283HeadFvAfter s2Step283HeadFvAfter
    s2Step283HeadFvRow s2Step283HeadFvOut 157 s2Step283HeadFvFresh [] [] []
    (growRow 770 s2Step283HeadFvFresh) ([]) s2Step283HeadFv_Incoming s2Step283HeadFv_checked h4 s2Step283HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step283HeadGvBefore s2Step283HeadGvAfter s2Step283HeadFvAfter
    s2Step283HeadGvRow s2Step283HeadGvOut 157 s2Step283HeadGvFresh [(s2Step283HeadFvRow,157)] [s2Step283HeadFvFresh] [s2Step283HeadFvOut]
    (growRow 771 s2Step283HeadGvFresh) ((growRow 770 s2Step283HeadFvFresh ++ [])) s2Step283HeadGv_Incoming s2Step283HeadGv_checked h3 s2Step283HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step283HeadFBefore s2Step283HeadFAfter s2Step283HeadFvAfter
    s2Step283HeadFRow s2Step283HeadFOut 131 s2Step283HeadFFresh [(s2Step283HeadGvRow,157),(s2Step283HeadFvRow,157)] [s2Step283HeadGvFresh,s2Step283HeadFvFresh] [s2Step283HeadGvOut,s2Step283HeadFvOut]
    (growRow 768 s2Step283HeadFFresh) ((growRow 771 s2Step283HeadGvFresh ++ (growRow 770 s2Step283HeadFvFresh ++ []))) s2Step283HeadF_Incoming s2Step283HeadF_checked h2 s2Step283HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step283HeadGBefore s2Step283HeadGAfter s2Step283HeadFvAfter
    s2Step283HeadGRow s2Step283HeadGOut 131 s2Step283HeadGFresh [(s2Step283HeadFRow,131),(s2Step283HeadGvRow,157),(s2Step283HeadFvRow,157)] [s2Step283HeadFFresh,s2Step283HeadGvFresh,s2Step283HeadFvFresh] [s2Step283HeadFOut,s2Step283HeadGvOut,s2Step283HeadFvOut]
    (growRow 769 s2Step283HeadGFresh) ((growRow 768 s2Step283HeadFFresh ++ (growRow 771 s2Step283HeadGvFresh ++ (growRow 770 s2Step283HeadFvFresh ++ [])))) s2Step283HeadG_Incoming s2Step283HeadG_checked h1 s2Step283HeadG_Outgoing
  exact h0

private theorem s2Step283HeadBank_checked : compileHmrBankResizeLog .headroom s2Step283HeadGBefore ⟨s2Step283HeadFRow,s2Step283HeadGRow,s2Step283HeadFvRow,s2Step283HeadGvRow⟩ ⟨131,131,157,157⟩ [s2Step283HeadGFresh,s2Step283HeadFFresh,s2Step283HeadGvFresh,s2Step283HeadFvFresh]=
    some (s2Step283HeadFvAfter,⟨s2Step283HeadFOut,s2Step283HeadGOut,s2Step283HeadFvOut,s2Step283HeadGvOut⟩,(growRow 769 s2Step283HeadGFresh ++ (growRow 768 s2Step283HeadFFresh ++ (growRow 771 s2Step283HeadGvFresh ++ (growRow 770 s2Step283HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step283HeadBank_rows]
  rfl

private theorem s2Step283Front_checked : compileHmrSourceFrontLog s2Step283EntryFBefore s2Step283FrontBank 130 156 ⟨129,129,157,156⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step283FrontLog=some s2Step283FrontPlan := by
  have pairEq : s2Step283FrontPair=⟨s2Step283HeadFRow,s2Step283HeadGRow,s2Step283HeadFvRow,s2Step283HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step283FrontHead=⟨s2Step283ExitFRow,s2Step283ExitGRow,s2Step283ExitFvRow,s2Step283ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step283Add0A=s2Step283FrontHead.f.wires := by decide +kernel
  have gEq : s2Step283Add0B=s2Step283FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step283Add1A=s2Step283FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step283Add1B=s2Step283FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step283EntryFBefore s2Step283FrontBank 130 156 ⟨129,129,157,156⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step283FrontLog s2Step283FrontPlan
  · exact s2Step283Front_entry
  · exact s2Step283EntryBank_checked
  · exact s2Step283Front_sigma
  · rfl
  · exact s2Step283Front_branch
  · rfl
  · simpa only [s2Step283FrontPlan,pairEq] using s2Step283HeadBank_checked
  · simpa only [s2Step283FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step283F4_checked
  · exact s2Step283Counter_checked
  · rfl
  · simpa only [s2Step283FrontPlan,headEq] using s2Step283ExitBank_checked

private theorem s2Step283Complete_explicit_checked : compileHmrEarlyStepLog s2Step283EntryFBefore s2Step283FrontBank 130 156 ⟨129,129,157,156⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 54 s2Step283CompleteLog=some s2Step283CompletePlan := by
  let Q := s2Step283EarlyControlPlan
  have hq := s2Step283EarlyControl_plan_checked
  have fv1 : s2Step283CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step283CompleteOut.fv.payload[2]?.getD s2Step283CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step283CompleteOut.fv.payload[3]?.getD s2Step283CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step283CompleteOut.fv.payload[4]?.getD s2Step283CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step283EntryFBefore s2Step283EarlyControlArena s2Step283FrontBank 130 156 ⟨129,129,157,156⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 54 s2Step283CompleteLog s2Step283FrontPlan Q
    s2Step283Front_checked s2Step283Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step283Complete_owned s2Step283Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step283EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 777 780 s2Step283CompleteOut.fv.second (s2Step283CompleteOut.fv.payload[2]?.getD s2Step283CompleteOut.fv.sign) (s2Step283CompleteOut.fv.payload[3]?.getD s2Step283CompleteOut.fv.sign) (s2Step283CompleteOut.fv.payload[4]?.getD s2Step283CompleteOut.fv.sign) 845 54 s2Step283EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep283Arena : Arena := s2Step283EntryFBefore
def s2PrivateStep283Bank : WindowBank := s2Step283FrontBank
def s2PrivateStep283Spec : HmrSourceWalkStepLog := ⟨130,156,⟨129,129,157,156⟩,54,.early s2Step283CompleteLog⟩
def s2PrivateStep283Plan : HmrSourceStepPlan := .early s2Step283CompletePlan
theorem s2PrivateStep283_source : s2PrivateStep283Spec=s2ObservedLogs272[11] := rfl
theorem s2PrivateStep283_checked : compileHmrSourceStepLog s2PrivateStep283Arena s2PrivateStep283Bank
    s2PrivateStep283Spec.fgWidth s2PrivateStep283Spec.vWidth s2PrivateStep283Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905]
    6 498 283 s2PrivateStep283Spec.need none s2PrivateStep283Spec.log=some s2PrivateStep283Plan := by
  change compileHmrSourceStepLog s2Step283EntryFBefore s2Step283FrontBank 130 156 ⟨129,129,157,156⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 6 498 283 54 none (.early s2Step283CompleteLog)=some (.early s2Step283CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 283<498)]
  rw [s2Step283Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
