import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep290
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

private def s2Step292CompleteMoves : List (Wire × Wire) := [(787,123)]

private def s2Step292EarlyControlLog : HmrEarlyControlLog := ⟨[787, 849, 805, 847, 812],[811],[780],[830, 800, 894, 896, 901, 903],[]⟩

private def s2Step292FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [847], [], []],[[812], [805], [849], [790]],[[], [], [], []]⟩,[783],[821],[811],[780],[830, 800, 894, 896, 901, 903, 904, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[830, 800, 894, 896, 901, 903, 904, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[811, 780, 830, 800]⟩

private def s2Step292CompleteLog : HmrEarlyStepLog := ⟨s2Step292FrontLog,s2Step292CompleteMoves,s2Step292EarlyControlLog⟩

private def s2Step292ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636],768⟩

private def s2Step292ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790],770⟩

private def s2Step292ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122],769⟩

private def s2Step292ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791],771⟩

private def s2Step292FrontOut : WindowBank := ⟨s2Step292ExitFOut,s2Step292ExitGOut,s2Step292ExitFvOut,s2Step292ExitGvOut⟩

private def s2Step292CompleteOut : WindowBank := s2Step292FrontOut.repacked s2Step292CompleteMoves

private def s2Step292EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step292EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step292EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step292EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step292EarlyControlPositiveArena,[811],s2Step292EarlyControlEqualityArena,[780],⟨⟨783,false⟩,[⟨⟨811,false⟩,780⟩]⟩⟩

private def s2Step292EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<904) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step292EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<904) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step292EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step292EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step292EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step292EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step292EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,787⟩,⟨⟨774,false⟩,849⟩,⟨⟨775,false⟩,805⟩,⟨⟨776,false⟩,847⟩,⟨⟨777,false⟩,812⟩]⟩

private def s2Step292EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step292EarlyControlZeroArena,s2Step292EarlyControlZeroPlan,s2Step292EarlyControlClassPlan,s2Step292EarlyControlFlagArena,s2Step292EarlyControlFittedArena,s2Step292EarlyControlHistoryArena,s2Step292EarlyControlSigmaArena,s2Step292EarlyControlOutputArena,s2Step292EarlyControlLog⟩

private def s2Step292CounterWork : List Wire := [811, 780, 830, 800]

private theorem s2Step292Counter_bounded : s2Step292CounterWork.toFinset⊆arenaWires := by norm_num [s2Step292CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step292HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step292CounterDuring : Arena := ⟨s2Step292HeadFvAfter.live∪s2Step292CounterWork.toFinset,Finset.union_subset s2Step292HeadFvAfter.bounded s2Step292Counter_bounded⟩

private def s2Step292EntryFFresh : List Wire := []

private def s2Step292EntryFvFresh : List Wire := []

private def s2Step292EntryGFresh : List Wire := [847]

private def s2Step292EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step292EntryGvAfter : Arena := s2Step292EntryGAfter

private def s2Step292EntryGvFresh : List Wire := []

private def s2Step292ExitFExtra : List Wire := [805]

private def s2Step292ExitGExtra : List Wire := [123, 847, 812]

private def s2Step292ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<123) ∨ (124≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step292ExitGvExtra : List Wire := [849]

private def s2Step292Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step292Add0Work : List Wire := [830, 800, 894, 896, 901, 903, 904, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step292Add0_bounded : s2Step292Add0Work.toFinset⊆arenaWires := by
  have h : s2Step292Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step292Add0During : Arena := ⟨s2Step292Add0Arena.live∪s2Step292Add0Work.toFinset,Finset.union_subset s2Step292Add0Arena.bounded s2Step292Add0_bounded⟩

private def s2Step292Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step292Add1Work : List Wire := [830, 800, 894, 896, 901, 903, 904, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step292Add1_bounded : s2Step292Add1Work.toFinset⊆arenaWires := by
  have h : s2Step292Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step292Add1During : Arena := ⟨s2Step292Add1Arena.live∪s2Step292Add1Work.toFinset,Finset.union_subset s2Step292Add1Arena.bounded s2Step292Add1_bounded⟩

private def s2Step292F4FlagArena : Arena := ⟨s2Step292HeadFvAfter.live∪{811},Finset.union_subset s2Step292HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step292F4Plan : HmrHybridF4Plan := ⟨s2Step292F4FlagArena,[811],s2Step292Add0Arena,[780],s2Step292Add0During,s2Step292Add0Work,s2Step292Add1During,s2Step292Add1Work⟩

private def s2Step292HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 805],768⟩

private def s2Step292HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790],770⟩

private def s2Step292HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 847, 812],769⟩

private def s2Step292HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849],771⟩

private def s2Step292FrontHead : WindowBank := ⟨s2Step292HeadFOut,s2Step292HeadGOut,s2Step292HeadFvOut,s2Step292HeadGvOut⟩

private def s2Step292EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636],768⟩

private def s2Step292EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796],770⟩

private def s2Step292EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 847],769⟩

private def s2Step292EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791],771⟩

private def s2Step292FrontPair : WindowBank := ⟨s2Step292EntryFOut,s2Step292EntryGOut,s2Step292EntryFvOut,s2Step292EntryGvOut⟩

private def s2Step292FrontSigmaArena : Arena := ⟨s2Step292EntryGvAfter.live∪{783},Finset.union_subset s2Step292EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step292HeadFFresh : List Wire := [805]

private def s2Step292HeadFvFresh : List Wire := [790]

private def s2Step292HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step292HeadGFresh : List Wire := [812]

private def s2Step292HeadGvFresh : List Wire := [849]

private def s2Step292FrontPlan : HmrSourceFront := ⟨s2Step292EntryGvAfter,s2Step292FrontPair,(growRow 768 s2Step292EntryFFresh ++ (growRow 769 s2Step292EntryGFresh ++ (growRow 770 s2Step292EntryFvFresh ++ (growRow 771 s2Step292EntryGvFresh ++ [])))),s2Step292FrontSigmaArena,[783],s2Step292HeadGBefore,[821],
  s2Step292HeadFvAfter,s2Step292FrontHead,(growRow 769 s2Step292HeadGFresh ++ (growRow 768 s2Step292HeadFFresh ++ (growRow 771 s2Step292HeadGvFresh ++ (growRow 770 s2Step292HeadFvFresh ++ [])))),s2Step292F4Plan,s2Step292CounterDuring,s2Step292CounterWork,s2Step292ExitGvAfter,s2Step292FrontOut,(shrinkRow 769 s2Step292ExitGExtra ++ (shrinkRow 768 s2Step292ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step292ExitGvExtra ++ []))))⟩

private def s2Step292CompletePlan : HmrEarlyStepPlan := ⟨s2Step292FrontPlan,s2Step292EarlyControlArena,s2Step292EarlyControlPlan,s2Step292CompleteMoves⟩

private theorem s2Step292Complete_apart : List.Disjoint (s2Step292CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [783, 821, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] := by
  have nd : ((s2Step292CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[783, 821, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step292Complete_owned : (s2Step292CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step292EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step292EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private def s2Step292CompleteMoveArena : Arena := ⟨s2Step292ExitGvAfter.live∪{123},Finset.union_subset s2Step292ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step292Complete_repack : s2Step292ExitGvAfter.checkRepack s2Step292CompleteMoves=some s2Step292EarlyControlArena := by
  have owned : 787∈s2Step292ExitGvAfter.live := by norm_num [s2Step292ExitGvAfter,arenaWires]
  have reserve : s2Step292ExitGvAfter.reserve {123}=some s2Step292CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step292ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step292CompleteMoveArena.retireSet {787}=s2Step292EarlyControlArena := by
    unfold Arena.retireSet s2Step292EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step292CompleteMoveArena,s2Step292ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step292CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step292CompleteMoveArena.retireSet {787}).checkRepack []=some s2Step292EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step292EarlyControl_branchOwned : ([821] : List Wire).toFinset⊆s2Step292EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step292EarlyControlSigmaArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step292EarlyControl_branch : compileHmrBranchRetirement s2Step292EarlyControlSigmaArena 821=some s2Step292EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step292EarlyControl_branchOwned
  · ext q
    simp [s2Step292EarlyControlOutputArena,s2Step292EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step292EarlyControl_classEqualityBorrow : s2Step292EarlyControlPositiveArena.checkBorrow (([783, 811] : List Wire).length-1) s2Step292EarlyControlLog.classWork=some s2Step292EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step292EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step292EarlyControlPositiveArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step292EarlyControlEqualityArena,s2Step292EarlyControlPositiveArena,s2Step292EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step292EarlyControl_classEqualityOwned : ([783, 811] : List Wire).toFinset⊆s2Step292EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step292EarlyControlPositiveArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step292EarlyControl_classEquality : compileHmrEqualityLog s2Step292EarlyControlPositiveArena [783, 811] 0 s2Step292EarlyControlLog.classWork=some (s2Step292EarlyControlEqualityArena,s2Step292EarlyControlLog.classWork,s2Step292EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step292EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step292EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step292EarlyControl_classOwned : ([777, 812, 783] : List Wire).toFinset⊆s2Step292EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step292EarlyControlZeroArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step292EarlyControl_positiveBorrow : s2Step292EarlyControlZeroArena.checkBorrow (1) s2Step292EarlyControlLog.positiveWork=some s2Step292EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step292EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step292EarlyControlZeroArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step292EarlyControlPositiveArena,s2Step292EarlyControlZeroArena,s2Step292EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step292EarlyControl_class : compileHmrSourceClassLog s2Step292EarlyControlZeroArena false 777 s2Step292EarlyControlZeroPlan.top 0 783 s2Step292EarlyControlLog.positiveWork s2Step292EarlyControlLog.classWork=some s2Step292EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step292EarlyControlClassPlan s2Step292EarlyControlZeroArena false 777 s2Step292EarlyControlZeroPlan.top 0 783
  constructor
  · decide +kernel
  · exact s2Step292EarlyControl_classOwned
  · exact s2Step292EarlyControl_positiveBorrow
  · exact s2Step292EarlyControl_classEquality

private theorem s2Step292EarlyControl_entryRecordOwned : ([821, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).toFinset⊆s2Step292EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step292EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step292EarlyControl_entrySigmaOwned : ([783, 254] : List Wire).toFinset⊆s2Step292EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step292EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step292EarlyControl_fitBorrow : s2Step292EarlyControlFlagArena.checkBorrow ((54-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).length)) s2Step292EarlyControlLog.recordFresh=some s2Step292EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step292EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step292EarlyControlFlagArena (fun q => (0≤q ∧ q<904) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step292EarlyControlFittedArena,s2Step292EarlyControlFlagArena,s2Step292EarlyControlLog,arenaWires]

private theorem s2Step292EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).toFinset⊆s2Step292EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step292EarlyControlFlagArena (fun q => (0≤q ∧ q<904) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step292EarlyControl_fit : compileHmrRecordGrowLog s2Step292EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 54 s2Step292EarlyControlLog.recordFresh=some s2Step292EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step292EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step292EarlyControl_fitBorrow

private theorem s2Step292EarlyControl_flagsBorrow : s2Step292EarlyControlEqualityArena.checkBorrow (6) s2Step292EarlyControlLog.flagWork=some s2Step292EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step292EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step292EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step292EarlyControlFlagArena,s2Step292EarlyControlEqualityArena,s2Step292EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step292EarlyControl_flagsOwned : ([780, 253, 252, 251] : List Wire).toFinset⊆s2Step292EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step292EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step292EarlyControl_flags : compileHmrFlagsLog s2Step292EarlyControlClassPlan.equalityArena s2Step292EarlyControlClassPlan.equality.top 253 252 251 s2Step292EarlyControlLog.flagWork=some s2Step292EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step292EarlyControl_flagsOwned⟩
  · exact s2Step292EarlyControl_flagsBorrow

private theorem s2Step292EarlyControl_historyBorrow : s2Step292EarlyControlArena.checkBorrow ((54-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).length)) s2Step292EarlyControlLog.recordFresh=some s2Step292EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step292EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step292EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step292EarlyControlHistoryArena,s2Step292EarlyControlArena,s2Step292EarlyControlLog,arenaWires]

private theorem s2Step292EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).toFinset⊆s2Step292EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step292EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step292EarlyControl_history : compileHmrRecordGrowLog s2Step292EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 54 s2Step292EarlyControlLog.recordFresh=some s2Step292EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step292EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step292EarlyControl_historyBorrow

private theorem s2Step292EarlyControl_sigmaOwned : ([254, 783] : List Wire).toFinset⊆s2Step292EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step292EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step292EarlyControl_sigmaReleaseOwned : ([783] : List Wire).toFinset⊆s2Step292EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step292EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step292EarlyControl_sigmaRelease : s2Step292EarlyControlHistoryArena.release {783} (fun _ => false)=some s2Step292EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step292EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step292EarlyControlSigmaArena,s2Step292EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step292EarlyControl_sigma : compileHmrSigmaDropLog s2Step292EarlyControlHistoryArena false 0 0 254 783 []=some s2Step292EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step292EarlyControl_sigmaOwned⟩
  · exact s2Step292EarlyControl_sigmaRelease

private theorem s2Step292EarlyControl_zeroBorrow : s2Step292EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step292EarlyControlLog.zeroWork=some s2Step292EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step292EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step292EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step292EarlyControlZeroArena,s2Step292EarlyControlArena,s2Step292EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step292EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step292EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step292EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step292EarlyControl_zero : compileHmrEqualityLog s2Step292EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step292EarlyControlLog.zeroWork=some (s2Step292EarlyControlZeroArena,s2Step292EarlyControlLog.zeroWork,s2Step292EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step292EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step292EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step292EarlyControl_logged : s2Step292EarlyControlPlan.Logged s2Step292EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 777 783 254 253 252 251 821 54 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step292EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step292EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step292EarlyControl_zero
  · exact s2Step292EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step292EarlyControl_flags
  · exact s2Step292EarlyControl_fit
  · exact s2Step292EarlyControl_history
  · exact s2Step292EarlyControl_sigma
  · exact s2Step292EarlyControl_branch

private theorem s2Step292EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step292EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 777 783 254 253 252 251 821 54 s2Step292EarlyControlLog=some s2Step292EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step292EarlyControlPlan s2Step292EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 777 783 254 253 252 251 821 54 s2Step292EarlyControl_logged

private def s2Step292EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step292EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636],768⟩

private def s2Step292EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796],770⟩

private def s2Step292EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123],769⟩

private def s2Step292EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791],771⟩

private def s2Step292FrontBank : WindowBank := ⟨s2Step292EntryFRow,s2Step292EntryGRow,s2Step292EntryFvRow,s2Step292EntryGvRow⟩

private def s2Step292Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 805, 768]

private def s2Step292Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 847, 812, 769]

private def s2Step292Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 770]

private def s2Step292Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 771]

private theorem s2Step292Counter_apart : Disjoint s2Step292HeadFvAfter.live s2Step292CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step292HeadFvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step292Counter_borrowed : s2Step292HeadFvAfter.checkBorrow 4 s2Step292CounterWork=some s2Step292CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step292HeadFvAfter s2Step292CounterDuring s2Step292CounterWork.toFinset s2Step292Counter_bounded s2Step292Counter_apart rfl

private theorem s2Step292Counter_owned : (783::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step292HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step292HeadFvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step292Counter_checked : compileHmrCounterStepLog s2Step292HeadFvAfter true 783 [772, 773, 774, 775, 776, 777] s2Step292CounterWork=some s2Step292CounterDuring := by
  have owned : ∀q∈783::[772, 773, 774, 775, 776, 777],q∈s2Step292HeadFvAfter.live := fun q hq => s2Step292Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step292Counter_borrowed

private def s2Step292EntryFAfter : Arena := s2Step292EntryFBefore

private theorem s2Step292EntryBank_incomingDistinct : ([s2Step292EntryFRow,s2Step292EntryGRow,s2Step292EntryFvRow,s2Step292EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step292EntryF_Incoming : rowsOwned s2Step292EntryFBefore [s2Step292EntryFRow,s2Step292EntryGRow,s2Step292EntryFvRow,s2Step292EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step292EntryFRow,s2Step292EntryGRow,s2Step292EntryFvRow,s2Step292EntryGvRow] 0 s2Step292EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step292EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step292EntryBank_outgoingOwned : rowsOwned s2Step292EntryGvAfter [s2Step292EntryFOut,s2Step292EntryGOut,s2Step292EntryFvOut,s2Step292EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step292EntryGvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step292EntryF_Outgoing : rowsOwned s2Step292EntryGvAfter [s2Step292EntryFOut,s2Step292EntryGOut,s2Step292EntryFvOut,s2Step292EntryGvOut] :=
  hmrRows_owned_drop s2Step292EntryGvAfter [s2Step292EntryFOut,s2Step292EntryGOut,s2Step292EntryFvOut,s2Step292EntryGvOut] 0 s2Step292EntryBank_outgoingOwned

private theorem s2Step292EntryF_distinct : (s2Step292EntryFRow.sign::s2Step292EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step292EntryF_owned : (s2Step292EntryFRow.sign::s2Step292EntryFRow.payload).toFinset⊆s2Step292EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step292EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step292EntryF_reserved : s2Step292EntryFBefore.reserve s2Step292EntryFFresh.toFinset=some s2Step292EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step292EntryFFresh,arenaWires]
  · norm_num [s2Step292EntryFBefore,s2Step292EntryFFresh,arenaWires]
  · simp only [s2Step292EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step292EntryF_checked : planRowResizeLog s2Step292EntryFBefore s2Step292EntryFRow 125 s2Step292EntryFFresh=
    some (s2Step292EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636],768⟩,growRow 768 s2Step292EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step292EntryFBefore s2Step292EntryFAfter s2Step292EntryFRow 125 s2Step292EntryFFresh
    s2Step292EntryF_distinct s2Step292EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step292EntryF_reserved
  have rowEq : WindowRow.mk (s2Step292EntryFRow.payload++s2Step292EntryFFresh) s2Step292EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step292EntryFvAfter : Arena := s2Step292EntryGAfter

private def s2Step292EntryFvBefore : Arena := s2Step292EntryGAfter

private theorem s2Step292EntryFv_Incoming : rowsOwned s2Step292EntryFvBefore [s2Step292EntryFvRow,s2Step292EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step292EntryFRow,s2Step292EntryGRow,s2Step292EntryFvRow,s2Step292EntryGvRow] 2 s2Step292EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step292EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step292EntryFv_Outgoing : rowsOwned s2Step292EntryGvAfter [s2Step292EntryFvOut,s2Step292EntryGvOut] :=
  hmrRows_owned_drop s2Step292EntryGvAfter [s2Step292EntryFOut,s2Step292EntryGOut,s2Step292EntryFvOut,s2Step292EntryGvOut] 2 s2Step292EntryBank_outgoingOwned

private theorem s2Step292EntryFv_distinct : (s2Step292EntryFvRow.sign::s2Step292EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step292EntryFv_owned : (s2Step292EntryFvRow.sign::s2Step292EntryFvRow.payload).toFinset⊆s2Step292EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step292EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step292EntryFv_reserved : s2Step292EntryFvBefore.reserve s2Step292EntryFvFresh.toFinset=some s2Step292EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step292EntryFvFresh,arenaWires]
  · norm_num [s2Step292EntryFvBefore,s2Step292EntryGAfter,s2Step292EntryFvFresh,arenaWires]
  · simp only [s2Step292EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step292EntryFv_checked : planRowResizeLog s2Step292EntryFvBefore s2Step292EntryFvRow 161 s2Step292EntryFvFresh=
    some (s2Step292EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796],770⟩,growRow 770 s2Step292EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step292EntryFvBefore s2Step292EntryFvAfter s2Step292EntryFvRow 161 s2Step292EntryFvFresh
    s2Step292EntryFv_distinct s2Step292EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step292EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step292EntryFvRow.payload++s2Step292EntryFvFresh) s2Step292EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step292EntryGBefore : Arena := s2Step292EntryFBefore

private theorem s2Step292EntryG_Incoming : rowsOwned s2Step292EntryGBefore [s2Step292EntryGRow,s2Step292EntryFvRow,s2Step292EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step292EntryFRow,s2Step292EntryGRow,s2Step292EntryFvRow,s2Step292EntryGvRow] 1 s2Step292EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step292EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step292EntryG_Outgoing : rowsOwned s2Step292EntryGvAfter [s2Step292EntryGOut,s2Step292EntryFvOut,s2Step292EntryGvOut] :=
  hmrRows_owned_drop s2Step292EntryGvAfter [s2Step292EntryFOut,s2Step292EntryGOut,s2Step292EntryFvOut,s2Step292EntryGvOut] 1 s2Step292EntryBank_outgoingOwned

private theorem s2Step292EntryG_distinct : (s2Step292EntryGRow.sign::s2Step292EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step292EntryG_owned : (s2Step292EntryGRow.sign::s2Step292EntryGRow.payload).toFinset⊆s2Step292EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step292EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step292EntryG_reserved : s2Step292EntryGBefore.reserve s2Step292EntryGFresh.toFinset=some s2Step292EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step292EntryGFresh,arenaWires]
  · norm_num [s2Step292EntryGBefore,s2Step292EntryFBefore,s2Step292EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step292EntryGAfter,s2Step292EntryGBefore,s2Step292EntryFBefore,s2Step292EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step292EntryG_checked : planRowResizeLog s2Step292EntryGBefore s2Step292EntryGRow 125 s2Step292EntryGFresh=
    some (s2Step292EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 847],769⟩,growRow 769 s2Step292EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step292EntryGBefore s2Step292EntryGAfter s2Step292EntryGRow 125 s2Step292EntryGFresh
    s2Step292EntryG_distinct s2Step292EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step292EntryG_reserved
  have rowEq : WindowRow.mk (s2Step292EntryGRow.payload++s2Step292EntryGFresh) s2Step292EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 847],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step292EntryGvBefore : Arena := s2Step292EntryGAfter

private theorem s2Step292EntryGv_Incoming : rowsOwned s2Step292EntryGvBefore [s2Step292EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step292EntryFRow,s2Step292EntryGRow,s2Step292EntryFvRow,s2Step292EntryGvRow] 3 s2Step292EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step292EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step292EntryGv_Outgoing : rowsOwned s2Step292EntryGvAfter [s2Step292EntryGvOut] :=
  hmrRows_owned_drop s2Step292EntryGvAfter [s2Step292EntryFOut,s2Step292EntryGOut,s2Step292EntryFvOut,s2Step292EntryGvOut] 3 s2Step292EntryBank_outgoingOwned

private theorem s2Step292EntryGv_distinct : (s2Step292EntryGvRow.sign::s2Step292EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step292EntryGv_owned : (s2Step292EntryGvRow.sign::s2Step292EntryGvRow.payload).toFinset⊆s2Step292EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step292EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step292EntryGv_reserved : s2Step292EntryGvBefore.reserve s2Step292EntryGvFresh.toFinset=some s2Step292EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step292EntryGvFresh,arenaWires]
  · norm_num [s2Step292EntryGvBefore,s2Step292EntryGAfter,s2Step292EntryGvFresh,arenaWires]
  · simp only [s2Step292EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step292EntryGv_checked : planRowResizeLog s2Step292EntryGvBefore s2Step292EntryGvRow 161 s2Step292EntryGvFresh=
    some (s2Step292EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791],771⟩,growRow 771 s2Step292EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step292EntryGvBefore s2Step292EntryGvAfter s2Step292EntryGvRow 161 s2Step292EntryGvFresh
    s2Step292EntryGv_distinct s2Step292EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step292EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step292EntryGvRow.payload++s2Step292EntryGvFresh) s2Step292EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step292EntryBank_rows : planWindowRowsLog s2Step292EntryFBefore [(s2Step292EntryFRow,125),(s2Step292EntryGRow,125),(s2Step292EntryFvRow,161),(s2Step292EntryGvRow,161)] [s2Step292EntryFFresh,s2Step292EntryGFresh,s2Step292EntryFvFresh,s2Step292EntryGvFresh]=
    some (s2Step292EntryGvAfter,[s2Step292EntryFOut,s2Step292EntryGOut,s2Step292EntryFvOut,s2Step292EntryGvOut],(growRow 768 s2Step292EntryFFresh ++ (growRow 769 s2Step292EntryGFresh ++ (growRow 770 s2Step292EntryFvFresh ++ (growRow 771 s2Step292EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step292EntryGvAfter [] []=some (s2Step292EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step292EntryGvBefore s2Step292EntryGvAfter s2Step292EntryGvAfter
    s2Step292EntryGvRow s2Step292EntryGvOut 161 s2Step292EntryGvFresh [] [] []
    (growRow 771 s2Step292EntryGvFresh) ([]) s2Step292EntryGv_Incoming s2Step292EntryGv_checked h4 s2Step292EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step292EntryFvBefore s2Step292EntryFvAfter s2Step292EntryGvAfter
    s2Step292EntryFvRow s2Step292EntryFvOut 161 s2Step292EntryFvFresh [(s2Step292EntryGvRow,161)] [s2Step292EntryGvFresh] [s2Step292EntryGvOut]
    (growRow 770 s2Step292EntryFvFresh) ((growRow 771 s2Step292EntryGvFresh ++ [])) s2Step292EntryFv_Incoming s2Step292EntryFv_checked h3 s2Step292EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step292EntryGBefore s2Step292EntryGAfter s2Step292EntryGvAfter
    s2Step292EntryGRow s2Step292EntryGOut 125 s2Step292EntryGFresh [(s2Step292EntryFvRow,161),(s2Step292EntryGvRow,161)] [s2Step292EntryFvFresh,s2Step292EntryGvFresh] [s2Step292EntryFvOut,s2Step292EntryGvOut]
    (growRow 769 s2Step292EntryGFresh) ((growRow 770 s2Step292EntryFvFresh ++ (growRow 771 s2Step292EntryGvFresh ++ []))) s2Step292EntryG_Incoming s2Step292EntryG_checked h2 s2Step292EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step292EntryFBefore s2Step292EntryFAfter s2Step292EntryGvAfter
    s2Step292EntryFRow s2Step292EntryFOut 125 s2Step292EntryFFresh [(s2Step292EntryGRow,125),(s2Step292EntryFvRow,161),(s2Step292EntryGvRow,161)] [s2Step292EntryGFresh,s2Step292EntryFvFresh,s2Step292EntryGvFresh] [s2Step292EntryGOut,s2Step292EntryFvOut,s2Step292EntryGvOut]
    (growRow 768 s2Step292EntryFFresh) ((growRow 769 s2Step292EntryGFresh ++ (growRow 770 s2Step292EntryFvFresh ++ (growRow 771 s2Step292EntryGvFresh ++ [])))) s2Step292EntryF_Incoming s2Step292EntryF_checked h1 s2Step292EntryF_Outgoing
  exact h0

private theorem s2Step292EntryBank_checked : compileHmrBankResizeLog .entry s2Step292EntryFBefore ⟨s2Step292EntryFRow,s2Step292EntryGRow,s2Step292EntryFvRow,s2Step292EntryGvRow⟩ ⟨125,125,161,161⟩ [s2Step292EntryFFresh,s2Step292EntryGFresh,s2Step292EntryFvFresh,s2Step292EntryGvFresh]=
    some (s2Step292EntryGvAfter,⟨s2Step292EntryFOut,s2Step292EntryGOut,s2Step292EntryFvOut,s2Step292EntryGvOut⟩,(growRow 768 s2Step292EntryFFresh ++ (growRow 769 s2Step292EntryGFresh ++ (growRow 770 s2Step292EntryFvFresh ++ (growRow 771 s2Step292EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step292EntryBank_rows]
  rfl

private def s2Step292ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<123) ∨ (124≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step292ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<123) ∨ (124≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step292ExitFBefore : Arena := s2Step292ExitGAfter

private def s2Step292ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 805],768⟩

private def s2Step292ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790],770⟩

private def s2Step292ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 847, 812],769⟩

private def s2Step292ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849],771⟩

private theorem s2Step292ExitBank_incomingDistinct : ([s2Step292ExitGRow,s2Step292ExitFRow,s2Step292ExitFvRow,s2Step292ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step292ExitF_Incoming : rowsOwned s2Step292ExitFBefore [s2Step292ExitFRow,s2Step292ExitFvRow,s2Step292ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step292ExitGRow,s2Step292ExitFRow,s2Step292ExitFvRow,s2Step292ExitGvRow] 1 s2Step292ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step292ExitFBefore (fun q => (0≤q ∧ q<123) ∨ (124≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step292ExitBank_outgoingOwned : rowsOwned s2Step292ExitGvAfter [s2Step292ExitGOut,s2Step292ExitFOut,s2Step292ExitFvOut,s2Step292ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step292ExitGvAfter (fun q => (0≤q ∧ q<123) ∨ (124≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step292ExitF_Outgoing : rowsOwned s2Step292ExitGvAfter [s2Step292ExitFOut,s2Step292ExitFvOut,s2Step292ExitGvOut] :=
  hmrRows_owned_drop s2Step292ExitGvAfter [s2Step292ExitGOut,s2Step292ExitFOut,s2Step292ExitFvOut,s2Step292ExitGvOut] 1 s2Step292ExitBank_outgoingOwned

private theorem s2Step292ExitF_distinct : (s2Step292ExitFRow.sign::s2Step292ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step292ExitF_owned : (s2Step292ExitFRow.sign::s2Step292ExitFRow.payload).toFinset⊆s2Step292ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step292ExitFBefore (fun q => (0≤q ∧ q<123) ∨ (124≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step292ExitF_retired : s2Step292ExitFBefore.retireSet s2Step292ExitFExtra.toFinset=s2Step292ExitFAfter := by
  unfold Arena.retireSet s2Step292ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step292ExitFBefore,s2Step292ExitGAfter,s2Step292ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step292ExitF_checked : planRowResizeLog s2Step292ExitFBefore s2Step292ExitFRow 125 []=
    some (s2Step292ExitFAfter,s2Step292ExitFOut,shrinkRow 768 s2Step292ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step292ExitFBefore s2Step292ExitFRow 125 s2Step292ExitF_distinct s2Step292ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step292ExitFRow.payload.take 125) s2Step292ExitFRow.sign=s2Step292ExitFOut := by decide +kernel
  have hi : s2Step292ExitFRow.payload.drop 125=s2Step292ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step292ExitF_retired] at result
  exact result

private def s2Step292ExitFvAfter : Arena := s2Step292ExitFAfter

private def s2Step292ExitFvBefore : Arena := s2Step292ExitFAfter

private theorem s2Step292ExitFv_Incoming : rowsOwned s2Step292ExitFvBefore [s2Step292ExitFvRow,s2Step292ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step292ExitGRow,s2Step292ExitFRow,s2Step292ExitFvRow,s2Step292ExitGvRow] 2 s2Step292ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step292ExitFvBefore (fun q => (0≤q ∧ q<123) ∨ (124≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step292ExitFv_Outgoing : rowsOwned s2Step292ExitGvAfter [s2Step292ExitFvOut,s2Step292ExitGvOut] :=
  hmrRows_owned_drop s2Step292ExitGvAfter [s2Step292ExitGOut,s2Step292ExitFOut,s2Step292ExitFvOut,s2Step292ExitGvOut] 2 s2Step292ExitBank_outgoingOwned

private theorem s2Step292ExitFv_distinct : (s2Step292ExitFvRow.sign::s2Step292ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step292ExitFv_owned : (s2Step292ExitFvRow.sign::s2Step292ExitFvRow.payload).toFinset⊆s2Step292ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step292ExitFvBefore (fun q => (0≤q ∧ q<123) ∨ (124≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step292ExitFv_reserved : s2Step292ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step292ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step292ExitFv_checked : planRowResizeLog s2Step292ExitFvBefore s2Step292ExitFvRow 162 []=
    some (s2Step292ExitFvAfter,s2Step292ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step292ExitFvBefore s2Step292ExitFvAfter s2Step292ExitFvRow 162 []
    s2Step292ExitFv_distinct s2Step292ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step292ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step292ExitFvRow.payload++[]) s2Step292ExitFvRow.sign=s2Step292ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step292ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private theorem s2Step292ExitG_Incoming : rowsOwned s2Step292ExitGBefore [s2Step292ExitGRow,s2Step292ExitFRow,s2Step292ExitFvRow,s2Step292ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step292ExitGRow,s2Step292ExitFRow,s2Step292ExitFvRow,s2Step292ExitGvRow] 0 s2Step292ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step292ExitGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step292ExitG_Outgoing : rowsOwned s2Step292ExitGvAfter [s2Step292ExitGOut,s2Step292ExitFOut,s2Step292ExitFvOut,s2Step292ExitGvOut] :=
  hmrRows_owned_drop s2Step292ExitGvAfter [s2Step292ExitGOut,s2Step292ExitFOut,s2Step292ExitFvOut,s2Step292ExitGvOut] 0 s2Step292ExitBank_outgoingOwned

private theorem s2Step292ExitG_distinct : (s2Step292ExitGRow.sign::s2Step292ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step292ExitG_owned : (s2Step292ExitGRow.sign::s2Step292ExitGRow.payload).toFinset⊆s2Step292ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step292ExitGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step292ExitG_retired : s2Step292ExitGBefore.retireSet s2Step292ExitGExtra.toFinset=s2Step292ExitGAfter := by
  unfold Arena.retireSet s2Step292ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step292ExitGBefore,s2Step292ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step292ExitG_checked : planRowResizeLog s2Step292ExitGBefore s2Step292ExitGRow 123 []=
    some (s2Step292ExitGAfter,s2Step292ExitGOut,shrinkRow 769 s2Step292ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step292ExitGBefore s2Step292ExitGRow 123 s2Step292ExitG_distinct s2Step292ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step292ExitGRow.payload.take 123) s2Step292ExitGRow.sign=s2Step292ExitGOut := by decide +kernel
  have hi : s2Step292ExitGRow.payload.drop 123=s2Step292ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step292ExitG_retired] at result
  exact result

private def s2Step292ExitGvBefore : Arena := s2Step292ExitFAfter

private theorem s2Step292ExitGv_Incoming : rowsOwned s2Step292ExitGvBefore [s2Step292ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step292ExitGRow,s2Step292ExitFRow,s2Step292ExitFvRow,s2Step292ExitGvRow] 3 s2Step292ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step292ExitGvBefore (fun q => (0≤q ∧ q<123) ∨ (124≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step292ExitGv_Outgoing : rowsOwned s2Step292ExitGvAfter [s2Step292ExitGvOut] :=
  hmrRows_owned_drop s2Step292ExitGvAfter [s2Step292ExitGOut,s2Step292ExitFOut,s2Step292ExitFvOut,s2Step292ExitGvOut] 3 s2Step292ExitBank_outgoingOwned

private theorem s2Step292ExitGv_distinct : (s2Step292ExitGvRow.sign::s2Step292ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step292ExitGv_owned : (s2Step292ExitGvRow.sign::s2Step292ExitGvRow.payload).toFinset⊆s2Step292ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step292ExitGvBefore (fun q => (0≤q ∧ q<123) ∨ (124≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step292ExitGv_retired : s2Step292ExitGvBefore.retireSet s2Step292ExitGvExtra.toFinset=s2Step292ExitGvAfter := by
  unfold Arena.retireSet s2Step292ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step292ExitGvBefore,s2Step292ExitFAfter,s2Step292ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step292ExitGv_checked : planRowResizeLog s2Step292ExitGvBefore s2Step292ExitGvRow 161 []=
    some (s2Step292ExitGvAfter,s2Step292ExitGvOut,shrinkRow 771 s2Step292ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step292ExitGvBefore s2Step292ExitGvRow 161 s2Step292ExitGv_distinct s2Step292ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step292ExitGvRow.payload.take 161) s2Step292ExitGvRow.sign=s2Step292ExitGvOut := by decide +kernel
  have hi : s2Step292ExitGvRow.payload.drop 161=s2Step292ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step292ExitGv_retired] at result
  exact result

private theorem s2Step292ExitBank_rows : planWindowRowsLog s2Step292ExitGBefore [(s2Step292ExitGRow,123),(s2Step292ExitFRow,125),(s2Step292ExitFvRow,162),(s2Step292ExitGvRow,161)] [[],[],[],[]]=
    some (s2Step292ExitGvAfter,[s2Step292ExitGOut,s2Step292ExitFOut,s2Step292ExitFvOut,s2Step292ExitGvOut],(shrinkRow 769 s2Step292ExitGExtra ++ (shrinkRow 768 s2Step292ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step292ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step292ExitGvAfter [] []=some (s2Step292ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step292ExitGvBefore s2Step292ExitGvAfter s2Step292ExitGvAfter
    s2Step292ExitGvRow s2Step292ExitGvOut 161 [] [] [] []
    (shrinkRow 771 s2Step292ExitGvExtra) ([]) s2Step292ExitGv_Incoming s2Step292ExitGv_checked h4 s2Step292ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step292ExitFvBefore s2Step292ExitFvAfter s2Step292ExitGvAfter
    s2Step292ExitFvRow s2Step292ExitFvOut 162 [] [(s2Step292ExitGvRow,161)] [[]] [s2Step292ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step292ExitGvExtra ++ [])) s2Step292ExitFv_Incoming s2Step292ExitFv_checked h3 s2Step292ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step292ExitFBefore s2Step292ExitFAfter s2Step292ExitGvAfter
    s2Step292ExitFRow s2Step292ExitFOut 125 [] [(s2Step292ExitFvRow,162),(s2Step292ExitGvRow,161)] [[],[]] [s2Step292ExitFvOut,s2Step292ExitGvOut]
    (shrinkRow 768 s2Step292ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step292ExitGvExtra ++ []))) s2Step292ExitF_Incoming s2Step292ExitF_checked h2 s2Step292ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step292ExitGBefore s2Step292ExitGAfter s2Step292ExitGvAfter
    s2Step292ExitGRow s2Step292ExitGOut 123 [] [(s2Step292ExitFRow,125),(s2Step292ExitFvRow,162),(s2Step292ExitGvRow,161)] [[],[],[]] [s2Step292ExitFOut,s2Step292ExitFvOut,s2Step292ExitGvOut]
    (shrinkRow 769 s2Step292ExitGExtra) ((shrinkRow 768 s2Step292ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step292ExitGvExtra ++ [])))) s2Step292ExitG_Incoming s2Step292ExitG_checked h1 s2Step292ExitG_Outgoing
  exact h0

private theorem s2Step292ExitBank_checked : compileHmrBankResizeLog .exit s2Step292ExitGBefore ⟨s2Step292ExitFRow,s2Step292ExitGRow,s2Step292ExitFvRow,s2Step292ExitGvRow⟩ ⟨125,123,162,161⟩ [[],[],[],[]]=
    some (s2Step292ExitGvAfter,⟨s2Step292ExitFOut,s2Step292ExitGOut,s2Step292ExitFvOut,s2Step292ExitGvOut⟩,(shrinkRow 769 s2Step292ExitGExtra ++ (shrinkRow 768 s2Step292ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step292ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step292ExitBank_rows]
  rfl

private theorem s2Step292Add0_apart : Disjoint s2Step292Add0Arena.live s2Step292Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step292Add0Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step292Add0_card : s2Step292Add0Arena.live.card=900 := by
  decide +kernel

private theorem s2Step292Add0_borrowed : s2Step292Add0Arena.checkBorrow (hmrHybridCount s2Step292Add0Arena s2Step292Add0B.length) s2Step292Add0Work=some s2Step292Add0During := by
  have len : s2Step292Add0Work.length=hmrHybridCount s2Step292Add0Arena s2Step292Add0B.length := by
    rw [hmrHybridCount,s2Step292Add0_card]
    decide +kernel
  have nd : s2Step292Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step292Add0Arena s2Step292Add0During s2Step292Add0Work.toFinset s2Step292Add0_bounded s2Step292Add0_apart rfl

private theorem s2Step292Add0_distinct : (811::821::780::(s2Step292Add0A++s2Step292Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step292Add0_owned : (811::821::780::(s2Step292Add0A++s2Step292Add0B)).toFinset⊆s2Step292Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step292Add0Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step292Add0_checked : compileHmrHybridCinLog s2Step292Add0Arena 821 811 780 s2Step292Add0A s2Step292Add0B s2Step292Add0Work=some s2Step292Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step292Add0Arena s2Step292Add0During 821 811 780 s2Step292Add0A s2Step292Add0B s2Step292Add0Work
    (by decide +kernel) (by decide +kernel) s2Step292Add0_distinct
    (fun q hq => s2Step292Add0_owned (List.mem_toFinset.mpr hq)) s2Step292Add0_borrowed

private theorem s2Step292Add1_apart : Disjoint s2Step292Add1Arena.live s2Step292Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step292Add1Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step292Add1_card : s2Step292Add1Arena.live.card=900 := by
  decide +kernel

private theorem s2Step292Add1_borrowed : s2Step292Add1Arena.checkBorrow (hmrHybridCount s2Step292Add1Arena s2Step292Add1B.length) s2Step292Add1Work=some s2Step292Add1During := by
  have len : s2Step292Add1Work.length=hmrHybridCount s2Step292Add1Arena s2Step292Add1B.length := by
    rw [hmrHybridCount,s2Step292Add1_card]
    decide +kernel
  have nd : s2Step292Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step292Add1Arena s2Step292Add1During s2Step292Add1Work.toFinset s2Step292Add1_bounded s2Step292Add1_apart rfl

private theorem s2Step292Add1_distinct : (811::821::780::(s2Step292Add1A++s2Step292Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step292Add1_owned : (811::821::780::(s2Step292Add1A++s2Step292Add1B)).toFinset⊆s2Step292Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step292Add1Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step292Add1_checked : compileHmrHybridCinLog s2Step292Add1Arena 821 811 780 s2Step292Add1A s2Step292Add1B s2Step292Add1Work=some s2Step292Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step292Add1Arena s2Step292Add1During 821 811 780 s2Step292Add1A s2Step292Add1B s2Step292Add1Work
    (by decide +kernel) (by decide +kernel) s2Step292Add1_distinct
    (fun q hq => s2Step292Add1_owned (List.mem_toFinset.mpr hq)) s2Step292Add1_borrowed

private theorem s2Step292F4_apart : Disjoint (s2Step292Add0A++s2Step292Add0B).toFinset (s2Step292Add1A++s2Step292Add1B).toFinset := by
  have nd : ((s2Step292Add0A++s2Step292Add0B)++(s2Step292Add1A++s2Step292Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step292F4_carry : s2Step292F4FlagArena.checkBorrow 1 [780]=some s2Step292Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step292F4FlagArena,s2Step292HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step292F4FlagArena,s2Step292HeadFvAfter,s2Step292Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step292F4_distinct : (783::821::811::780::((s2Step292Add0A++s2Step292Add1A)++(s2Step292Add0B++s2Step292Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step292F4_flag : s2Step292HeadFvAfter.checkBorrow 1 [811]=some s2Step292F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step292HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step292F4_owned : (783::821::((s2Step292Add0A++s2Step292Add1A)++(s2Step292Add0B++s2Step292Add1B))).toFinset⊆s2Step292HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step292HeadFvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step292F4_checked : compileHmrHybridF4Log s2Step292HeadFvAfter 783 821 s2Step292Add0A s2Step292Add0B s2Step292Add1A s2Step292Add1B [811] [780] s2Step292Add0Work s2Step292Add1Work=some s2Step292F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step292HeadFvAfter s2Step292F4FlagArena s2Step292Add0Arena s2Step292Add0During s2Step292Add1During 783 821
    s2Step292Add0A s2Step292Add0B s2Step292Add1A s2Step292Add1B [811] [780] s2Step292Add0Work s2Step292Add1Work
    (fun q hq => s2Step292F4_owned (List.mem_toFinset.mpr hq)) s2Step292F4_flag s2Step292F4_carry
    s2Step292F4_distinct s2Step292F4_apart s2Step292Add0_checked s2Step292Add1_checked

private theorem s2Step292Front_branch : s2Step292FrontSigmaArena.checkBorrow 1 [821]=some s2Step292HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step292FrontSigmaArena,s2Step292EntryGvAfter,s2Step292EntryGAfter,arenaWires]
  · ext q
    simp only [s2Step292FrontSigmaArena,s2Step292EntryGvAfter,s2Step292EntryGAfter,s2Step292HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step292Front_entry : HmrFrontEntryValid s2Step292EntryFBefore s2Step292FrontBank 125 161 ⟨125,123,162,161⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step292FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step292EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step292EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step292FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step292Front_sigma : s2Step292EntryGvAfter.checkBorrow 1 [783]=some s2Step292FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step292EntryGvAfter,s2Step292EntryGAfter,arenaWires]
  · rfl

private def s2Step292HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step292HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step292HeadFBefore : Arena := s2Step292HeadGAfter

private def s2Step292HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636],768⟩

private def s2Step292HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796],770⟩

private def s2Step292HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 847],769⟩

private def s2Step292HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791],771⟩

private theorem s2Step292HeadBank_incomingDistinct : ([s2Step292HeadGRow,s2Step292HeadFRow,s2Step292HeadGvRow,s2Step292HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step292HeadF_Incoming : rowsOwned s2Step292HeadFBefore [s2Step292HeadFRow,s2Step292HeadGvRow,s2Step292HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step292HeadGRow,s2Step292HeadFRow,s2Step292HeadGvRow,s2Step292HeadFvRow] 1 s2Step292HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step292HeadFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step292HeadBank_outgoingOwned : rowsOwned s2Step292HeadFvAfter [s2Step292HeadGOut,s2Step292HeadFOut,s2Step292HeadGvOut,s2Step292HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step292HeadFvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step292HeadF_Outgoing : rowsOwned s2Step292HeadFvAfter [s2Step292HeadFOut,s2Step292HeadGvOut,s2Step292HeadFvOut] :=
  hmrRows_owned_drop s2Step292HeadFvAfter [s2Step292HeadGOut,s2Step292HeadFOut,s2Step292HeadGvOut,s2Step292HeadFvOut] 1 s2Step292HeadBank_outgoingOwned

private theorem s2Step292HeadF_distinct : (s2Step292HeadFRow.sign::s2Step292HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step292HeadF_owned : (s2Step292HeadFRow.sign::s2Step292HeadFRow.payload).toFinset⊆s2Step292HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step292HeadFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step292HeadF_reserved : s2Step292HeadFBefore.reserve s2Step292HeadFFresh.toFinset=some s2Step292HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step292HeadFFresh,arenaWires]
  · norm_num [s2Step292HeadFBefore,s2Step292HeadGAfter,s2Step292HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step292HeadFAfter,s2Step292HeadFBefore,s2Step292HeadGAfter,s2Step292HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step292HeadF_checked : planRowResizeLog s2Step292HeadFBefore s2Step292HeadFRow 126 s2Step292HeadFFresh=
    some (s2Step292HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 805],768⟩,growRow 768 s2Step292HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step292HeadFBefore s2Step292HeadFAfter s2Step292HeadFRow 126 s2Step292HeadFFresh
    s2Step292HeadF_distinct s2Step292HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step292HeadF_reserved
  have rowEq : WindowRow.mk (s2Step292HeadFRow.payload++s2Step292HeadFFresh) s2Step292HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 805],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step292HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step292HeadFvBefore : Arena := s2Step292HeadGvAfter

private theorem s2Step292HeadFv_Incoming : rowsOwned s2Step292HeadFvBefore [s2Step292HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step292HeadGRow,s2Step292HeadFRow,s2Step292HeadGvRow,s2Step292HeadFvRow] 3 s2Step292HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step292HeadFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step292HeadFv_Outgoing : rowsOwned s2Step292HeadFvAfter [s2Step292HeadFvOut] :=
  hmrRows_owned_drop s2Step292HeadFvAfter [s2Step292HeadGOut,s2Step292HeadFOut,s2Step292HeadGvOut,s2Step292HeadFvOut] 3 s2Step292HeadBank_outgoingOwned

private theorem s2Step292HeadFv_distinct : (s2Step292HeadFvRow.sign::s2Step292HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step292HeadFv_owned : (s2Step292HeadFvRow.sign::s2Step292HeadFvRow.payload).toFinset⊆s2Step292HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step292HeadFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step292HeadFv_reserved : s2Step292HeadFvBefore.reserve s2Step292HeadFvFresh.toFinset=some s2Step292HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step292HeadFvFresh,arenaWires]
  · norm_num [s2Step292HeadFvBefore,s2Step292HeadGvAfter,s2Step292HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step292HeadFvAfter,s2Step292HeadFvBefore,s2Step292HeadGvAfter,s2Step292HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step292HeadFv_checked : planRowResizeLog s2Step292HeadFvBefore s2Step292HeadFvRow 162 s2Step292HeadFvFresh=
    some (s2Step292HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790],770⟩,growRow 770 s2Step292HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step292HeadFvBefore s2Step292HeadFvAfter s2Step292HeadFvRow 162 s2Step292HeadFvFresh
    s2Step292HeadFv_distinct s2Step292HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step292HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step292HeadFvRow.payload++s2Step292HeadFvFresh) s2Step292HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step292HeadG_Incoming : rowsOwned s2Step292HeadGBefore [s2Step292HeadGRow,s2Step292HeadFRow,s2Step292HeadGvRow,s2Step292HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step292HeadGRow,s2Step292HeadFRow,s2Step292HeadGvRow,s2Step292HeadFvRow] 0 s2Step292HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step292HeadGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step292HeadG_Outgoing : rowsOwned s2Step292HeadFvAfter [s2Step292HeadGOut,s2Step292HeadFOut,s2Step292HeadGvOut,s2Step292HeadFvOut] :=
  hmrRows_owned_drop s2Step292HeadFvAfter [s2Step292HeadGOut,s2Step292HeadFOut,s2Step292HeadGvOut,s2Step292HeadFvOut] 0 s2Step292HeadBank_outgoingOwned

private theorem s2Step292HeadG_distinct : (s2Step292HeadGRow.sign::s2Step292HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step292HeadG_owned : (s2Step292HeadGRow.sign::s2Step292HeadGRow.payload).toFinset⊆s2Step292HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step292HeadGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step292HeadG_reserved : s2Step292HeadGBefore.reserve s2Step292HeadGFresh.toFinset=some s2Step292HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step292HeadGFresh,arenaWires]
  · norm_num [s2Step292HeadGBefore,s2Step292HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step292HeadGAfter,s2Step292HeadGBefore,s2Step292HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step292HeadG_checked : planRowResizeLog s2Step292HeadGBefore s2Step292HeadGRow 126 s2Step292HeadGFresh=
    some (s2Step292HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 847, 812],769⟩,growRow 769 s2Step292HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step292HeadGBefore s2Step292HeadGAfter s2Step292HeadGRow 126 s2Step292HeadGFresh
    s2Step292HeadG_distinct s2Step292HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step292HeadG_reserved
  have rowEq : WindowRow.mk (s2Step292HeadGRow.payload++s2Step292HeadGFresh) s2Step292HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 847, 812],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step292HeadGvBefore : Arena := s2Step292HeadFAfter

private theorem s2Step292HeadGv_Incoming : rowsOwned s2Step292HeadGvBefore [s2Step292HeadGvRow,s2Step292HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step292HeadGRow,s2Step292HeadFRow,s2Step292HeadGvRow,s2Step292HeadFvRow] 2 s2Step292HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step292HeadGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step292HeadGv_Outgoing : rowsOwned s2Step292HeadFvAfter [s2Step292HeadGvOut,s2Step292HeadFvOut] :=
  hmrRows_owned_drop s2Step292HeadFvAfter [s2Step292HeadGOut,s2Step292HeadFOut,s2Step292HeadGvOut,s2Step292HeadFvOut] 2 s2Step292HeadBank_outgoingOwned

private theorem s2Step292HeadGv_distinct : (s2Step292HeadGvRow.sign::s2Step292HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step292HeadGv_owned : (s2Step292HeadGvRow.sign::s2Step292HeadGvRow.payload).toFinset⊆s2Step292HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step292HeadGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step292HeadGv_reserved : s2Step292HeadGvBefore.reserve s2Step292HeadGvFresh.toFinset=some s2Step292HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step292HeadGvFresh,arenaWires]
  · norm_num [s2Step292HeadGvBefore,s2Step292HeadFAfter,s2Step292HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step292HeadGvAfter,s2Step292HeadGvBefore,s2Step292HeadFAfter,s2Step292HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step292HeadGv_checked : planRowResizeLog s2Step292HeadGvBefore s2Step292HeadGvRow 162 s2Step292HeadGvFresh=
    some (s2Step292HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849],771⟩,growRow 771 s2Step292HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step292HeadGvBefore s2Step292HeadGvAfter s2Step292HeadGvRow 162 s2Step292HeadGvFresh
    s2Step292HeadGv_distinct s2Step292HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step292HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step292HeadGvRow.payload++s2Step292HeadGvFresh) s2Step292HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step292HeadBank_rows : planWindowRowsLog s2Step292HeadGBefore [(s2Step292HeadGRow,126),(s2Step292HeadFRow,126),(s2Step292HeadGvRow,162),(s2Step292HeadFvRow,162)] [s2Step292HeadGFresh,s2Step292HeadFFresh,s2Step292HeadGvFresh,s2Step292HeadFvFresh]=
    some (s2Step292HeadFvAfter,[s2Step292HeadGOut,s2Step292HeadFOut,s2Step292HeadGvOut,s2Step292HeadFvOut],(growRow 769 s2Step292HeadGFresh ++ (growRow 768 s2Step292HeadFFresh ++ (growRow 771 s2Step292HeadGvFresh ++ (growRow 770 s2Step292HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step292HeadFvAfter [] []=some (s2Step292HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step292HeadFvBefore s2Step292HeadFvAfter s2Step292HeadFvAfter
    s2Step292HeadFvRow s2Step292HeadFvOut 162 s2Step292HeadFvFresh [] [] []
    (growRow 770 s2Step292HeadFvFresh) ([]) s2Step292HeadFv_Incoming s2Step292HeadFv_checked h4 s2Step292HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step292HeadGvBefore s2Step292HeadGvAfter s2Step292HeadFvAfter
    s2Step292HeadGvRow s2Step292HeadGvOut 162 s2Step292HeadGvFresh [(s2Step292HeadFvRow,162)] [s2Step292HeadFvFresh] [s2Step292HeadFvOut]
    (growRow 771 s2Step292HeadGvFresh) ((growRow 770 s2Step292HeadFvFresh ++ [])) s2Step292HeadGv_Incoming s2Step292HeadGv_checked h3 s2Step292HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step292HeadFBefore s2Step292HeadFAfter s2Step292HeadFvAfter
    s2Step292HeadFRow s2Step292HeadFOut 126 s2Step292HeadFFresh [(s2Step292HeadGvRow,162),(s2Step292HeadFvRow,162)] [s2Step292HeadGvFresh,s2Step292HeadFvFresh] [s2Step292HeadGvOut,s2Step292HeadFvOut]
    (growRow 768 s2Step292HeadFFresh) ((growRow 771 s2Step292HeadGvFresh ++ (growRow 770 s2Step292HeadFvFresh ++ []))) s2Step292HeadF_Incoming s2Step292HeadF_checked h2 s2Step292HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step292HeadGBefore s2Step292HeadGAfter s2Step292HeadFvAfter
    s2Step292HeadGRow s2Step292HeadGOut 126 s2Step292HeadGFresh [(s2Step292HeadFRow,126),(s2Step292HeadGvRow,162),(s2Step292HeadFvRow,162)] [s2Step292HeadFFresh,s2Step292HeadGvFresh,s2Step292HeadFvFresh] [s2Step292HeadFOut,s2Step292HeadGvOut,s2Step292HeadFvOut]
    (growRow 769 s2Step292HeadGFresh) ((growRow 768 s2Step292HeadFFresh ++ (growRow 771 s2Step292HeadGvFresh ++ (growRow 770 s2Step292HeadFvFresh ++ [])))) s2Step292HeadG_Incoming s2Step292HeadG_checked h1 s2Step292HeadG_Outgoing
  exact h0

private theorem s2Step292HeadBank_checked : compileHmrBankResizeLog .headroom s2Step292HeadGBefore ⟨s2Step292HeadFRow,s2Step292HeadGRow,s2Step292HeadFvRow,s2Step292HeadGvRow⟩ ⟨126,126,162,162⟩ [s2Step292HeadGFresh,s2Step292HeadFFresh,s2Step292HeadGvFresh,s2Step292HeadFvFresh]=
    some (s2Step292HeadFvAfter,⟨s2Step292HeadFOut,s2Step292HeadGOut,s2Step292HeadFvOut,s2Step292HeadGvOut⟩,(growRow 769 s2Step292HeadGFresh ++ (growRow 768 s2Step292HeadFFresh ++ (growRow 771 s2Step292HeadGvFresh ++ (growRow 770 s2Step292HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step292HeadBank_rows]
  rfl

private theorem s2Step292Front_checked : compileHmrSourceFrontLog s2Step292EntryFBefore s2Step292FrontBank 125 161 ⟨125,123,162,161⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step292FrontLog=some s2Step292FrontPlan := by
  have pairEq : s2Step292FrontPair=⟨s2Step292HeadFRow,s2Step292HeadGRow,s2Step292HeadFvRow,s2Step292HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step292FrontHead=⟨s2Step292ExitFRow,s2Step292ExitGRow,s2Step292ExitFvRow,s2Step292ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step292Add0A=s2Step292FrontHead.f.wires := by decide +kernel
  have gEq : s2Step292Add0B=s2Step292FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step292Add1A=s2Step292FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step292Add1B=s2Step292FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step292EntryFBefore s2Step292FrontBank 125 161 ⟨125,123,162,161⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step292FrontLog s2Step292FrontPlan
  · exact s2Step292Front_entry
  · exact s2Step292EntryBank_checked
  · exact s2Step292Front_sigma
  · rfl
  · exact s2Step292Front_branch
  · rfl
  · simpa only [s2Step292FrontPlan,pairEq] using s2Step292HeadBank_checked
  · simpa only [s2Step292FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step292F4_checked
  · exact s2Step292Counter_checked
  · rfl
  · simpa only [s2Step292FrontPlan,headEq] using s2Step292ExitBank_checked

private theorem s2Step292Complete_explicit_checked : compileHmrEarlyStepLog s2Step292EntryFBefore s2Step292FrontBank 125 161 ⟨125,123,162,161⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 54 s2Step292CompleteLog=some s2Step292CompletePlan := by
  let Q := s2Step292EarlyControlPlan
  have hq := s2Step292EarlyControl_plan_checked
  have fv1 : s2Step292CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step292CompleteOut.fv.payload[2]?.getD s2Step292CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step292CompleteOut.fv.payload[3]?.getD s2Step292CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step292CompleteOut.fv.payload[4]?.getD s2Step292CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step292EntryFBefore s2Step292EarlyControlArena s2Step292FrontBank 125 161 ⟨125,123,162,161⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 54 s2Step292CompleteLog s2Step292FrontPlan Q
    s2Step292Front_checked s2Step292Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step292Complete_owned s2Step292Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step292EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 777 783 s2Step292CompleteOut.fv.second (s2Step292CompleteOut.fv.payload[2]?.getD s2Step292CompleteOut.fv.sign) (s2Step292CompleteOut.fv.payload[3]?.getD s2Step292CompleteOut.fv.sign) (s2Step292CompleteOut.fv.payload[4]?.getD s2Step292CompleteOut.fv.sign) 821 54 s2Step292EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep292Arena : Arena := s2Step292EntryFBefore
def s2PrivateStep292Bank : WindowBank := s2Step292FrontBank
def s2PrivateStep292Spec : HmrSourceWalkStepLog := ⟨125,161,⟨125,123,162,161⟩,54,.early s2Step292CompleteLog⟩
def s2PrivateStep292Plan : HmrSourceStepPlan := .early s2Step292CompletePlan
theorem s2PrivateStep292_source : s2PrivateStep292Spec=s2ObservedLogs288[4] := rfl
theorem s2PrivateStep292_checked : compileHmrSourceStepLog s2PrivateStep292Arena s2PrivateStep292Bank
    s2PrivateStep292Spec.fgWidth s2PrivateStep292Spec.vWidth s2PrivateStep292Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905]
    6 498 292 s2PrivateStep292Spec.need none s2PrivateStep292Spec.log=some s2PrivateStep292Plan := by
  change compileHmrSourceStepLog s2Step292EntryFBefore s2Step292FrontBank 125 161 ⟨125,123,162,161⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 6 498 292 54 none (.early s2Step292CompleteLog)=some (.early s2Step292CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 292<498)]
  rw [s2Step292Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
