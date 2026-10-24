import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep289
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

private def s2Step291CompleteMoves : List (Wire × Wire) := [(821,124)]

private def s2Step291EarlyControlLog : HmrEarlyControlLog := ⟨[821, 812, 805, 849, 790],[811],[780],[830, 800, 894, 896, 901, 903],[]⟩

private def s2Step291FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[805], [812], [791], [796]],[[], [], [], []]⟩,[783],[847],[849],[790],[811, 780, 830, 800, 894, 896, 901, 903, 904, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[811, 780, 830, 800, 894, 896, 901, 903, 904, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[849, 790, 811, 780]⟩

private def s2Step291CompleteLog : HmrEarlyStepLog := ⟨s2Step291FrontLog,s2Step291CompleteMoves,s2Step291EarlyControlLog⟩

private def s2Step291ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636],768⟩

private def s2Step291ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796],770⟩

private def s2Step291ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123],769⟩

private def s2Step291ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791],771⟩

private def s2Step291FrontOut : WindowBank := ⟨s2Step291ExitFOut,s2Step291ExitGOut,s2Step291ExitFvOut,s2Step291ExitGvOut⟩

private def s2Step291CompleteOut : WindowBank := s2Step291FrontOut.repacked s2Step291CompleteMoves

private def s2Step291EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step291EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step291EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step291EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step291EarlyControlPositiveArena,[811],s2Step291EarlyControlEqualityArena,[780],⟨⟨783,false⟩,[⟨⟨811,false⟩,780⟩]⟩⟩

private def s2Step291EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<904) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step291EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<904) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step291EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step291EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step291EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step291EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step291EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,821⟩,⟨⟨774,false⟩,812⟩,⟨⟨775,false⟩,805⟩,⟨⟨776,false⟩,849⟩,⟨⟨777,false⟩,790⟩]⟩

private def s2Step291EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step291EarlyControlZeroArena,s2Step291EarlyControlZeroPlan,s2Step291EarlyControlClassPlan,s2Step291EarlyControlFlagArena,s2Step291EarlyControlFittedArena,s2Step291EarlyControlHistoryArena,s2Step291EarlyControlSigmaArena,s2Step291EarlyControlOutputArena,s2Step291EarlyControlLog⟩

private def s2Step291CounterWork : List Wire := [849, 790, 811, 780]

private theorem s2Step291Counter_bounded : s2Step291CounterWork.toFinset⊆arenaWires := by norm_num [s2Step291CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step291HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step291CounterDuring : Arena := ⟨s2Step291HeadFvAfter.live∪s2Step291CounterWork.toFinset,Finset.union_subset s2Step291HeadFvAfter.bounded s2Step291Counter_bounded⟩

private def s2Step291EntryFFresh : List Wire := []

private def s2Step291EntryFvFresh : List Wire := []

private def s2Step291EntryGFresh : List Wire := []

private def s2Step291EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step291EntryGvAfter : Arena := s2Step291EntryFBefore

private def s2Step291EntryGvFresh : List Wire := []

private def s2Step291ExitFExtra : List Wire := [812]

private def s2Step291ExitGExtra : List Wire := [124, 805]

private def s2Step291ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<124) ∨ (125≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step291ExitGvAfter : Arena := s2Step291ExitFAfter

private def s2Step291Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step291Add0Work : List Wire := [811, 780, 830, 800, 894, 896, 901, 903, 904, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step291Add0_bounded : s2Step291Add0Work.toFinset⊆arenaWires := by
  have h : s2Step291Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step291Add0During : Arena := ⟨s2Step291Add0Arena.live∪s2Step291Add0Work.toFinset,Finset.union_subset s2Step291Add0Arena.bounded s2Step291Add0_bounded⟩

private def s2Step291Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step291Add1Work : List Wire := [811, 780, 830, 800, 894, 896, 901, 903, 904, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step291Add1_bounded : s2Step291Add1Work.toFinset⊆arenaWires := by
  have h : s2Step291Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step291Add1During : Arena := ⟨s2Step291Add1Arena.live∪s2Step291Add1Work.toFinset,Finset.union_subset s2Step291Add1Arena.bounded s2Step291Add1_bounded⟩

private def s2Step291F4FlagArena : Arena := ⟨s2Step291HeadFvAfter.live∪{849},Finset.union_subset s2Step291HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step291F4Plan : HmrHybridF4Plan := ⟨s2Step291F4FlagArena,[849],s2Step291Add0Arena,[790],s2Step291Add0During,s2Step291Add0Work,s2Step291Add1During,s2Step291Add1Work⟩

private def s2Step291HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 812],768⟩

private def s2Step291HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796],770⟩

private def s2Step291HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 805],769⟩

private def s2Step291HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791],771⟩

private def s2Step291FrontHead : WindowBank := ⟨s2Step291HeadFOut,s2Step291HeadGOut,s2Step291HeadFvOut,s2Step291HeadGvOut⟩

private def s2Step291EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636],768⟩

private def s2Step291EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815],770⟩

private def s2Step291EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124],769⟩

private def s2Step291EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808],771⟩

private def s2Step291FrontPair : WindowBank := ⟨s2Step291EntryFOut,s2Step291EntryGOut,s2Step291EntryFvOut,s2Step291EntryGvOut⟩

private def s2Step291FrontSigmaArena : Arena := ⟨s2Step291EntryGvAfter.live∪{783},Finset.union_subset s2Step291EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step291HeadFFresh : List Wire := [812]

private def s2Step291HeadFvFresh : List Wire := [796]

private def s2Step291HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step291HeadGFresh : List Wire := [805]

private def s2Step291HeadGvFresh : List Wire := [791]

private def s2Step291FrontPlan : HmrSourceFront := ⟨s2Step291EntryGvAfter,s2Step291FrontPair,(growRow 768 s2Step291EntryFFresh ++ (growRow 769 s2Step291EntryGFresh ++ (growRow 770 s2Step291EntryFvFresh ++ (growRow 771 s2Step291EntryGvFresh ++ [])))),s2Step291FrontSigmaArena,[783],s2Step291HeadGBefore,[847],
  s2Step291HeadFvAfter,s2Step291FrontHead,(growRow 769 s2Step291HeadGFresh ++ (growRow 768 s2Step291HeadFFresh ++ (growRow 771 s2Step291HeadGvFresh ++ (growRow 770 s2Step291HeadFvFresh ++ [])))),s2Step291F4Plan,s2Step291CounterDuring,s2Step291CounterWork,s2Step291ExitGvAfter,s2Step291FrontOut,(shrinkRow 769 s2Step291ExitGExtra ++ (shrinkRow 768 s2Step291ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ []))))⟩

private def s2Step291CompletePlan : HmrEarlyStepPlan := ⟨s2Step291FrontPlan,s2Step291EarlyControlArena,s2Step291EarlyControlPlan,s2Step291CompleteMoves⟩

private theorem s2Step291Complete_apart : List.Disjoint (s2Step291CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [783, 847, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] := by
  have nd : ((s2Step291CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[783, 847, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step291Complete_owned : (s2Step291CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step291EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step291EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private def s2Step291CompleteMoveArena : Arena := ⟨s2Step291ExitGvAfter.live∪{124},Finset.union_subset s2Step291ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step291Complete_repack : s2Step291ExitGvAfter.checkRepack s2Step291CompleteMoves=some s2Step291EarlyControlArena := by
  have owned : 821∈s2Step291ExitGvAfter.live := by norm_num [s2Step291ExitGvAfter,s2Step291ExitFAfter,arenaWires]
  have reserve : s2Step291ExitGvAfter.reserve {124}=some s2Step291CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step291ExitGvAfter,s2Step291ExitFAfter,arenaWires]
    · rfl
  have retired : s2Step291CompleteMoveArena.retireSet {821}=s2Step291EarlyControlArena := by
    unfold Arena.retireSet s2Step291EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step291CompleteMoveArena,s2Step291ExitGvAfter,s2Step291ExitFAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step291CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step291CompleteMoveArena.retireSet {821}).checkRepack []=some s2Step291EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step291EarlyControl_branchOwned : ([847] : List Wire).toFinset⊆s2Step291EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step291EarlyControlSigmaArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step291EarlyControl_branch : compileHmrBranchRetirement s2Step291EarlyControlSigmaArena 847=some s2Step291EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step291EarlyControl_branchOwned
  · ext q
    simp [s2Step291EarlyControlOutputArena,s2Step291EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step291EarlyControl_classEqualityBorrow : s2Step291EarlyControlPositiveArena.checkBorrow (([783, 811] : List Wire).length-1) s2Step291EarlyControlLog.classWork=some s2Step291EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step291EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step291EarlyControlPositiveArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step291EarlyControlEqualityArena,s2Step291EarlyControlPositiveArena,s2Step291EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step291EarlyControl_classEqualityOwned : ([783, 811] : List Wire).toFinset⊆s2Step291EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step291EarlyControlPositiveArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step291EarlyControl_classEquality : compileHmrEqualityLog s2Step291EarlyControlPositiveArena [783, 811] 0 s2Step291EarlyControlLog.classWork=some (s2Step291EarlyControlEqualityArena,s2Step291EarlyControlLog.classWork,s2Step291EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step291EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step291EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step291EarlyControl_classOwned : ([777, 790, 783] : List Wire).toFinset⊆s2Step291EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step291EarlyControlZeroArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step291EarlyControl_positiveBorrow : s2Step291EarlyControlZeroArena.checkBorrow (1) s2Step291EarlyControlLog.positiveWork=some s2Step291EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step291EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step291EarlyControlZeroArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step291EarlyControlPositiveArena,s2Step291EarlyControlZeroArena,s2Step291EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step291EarlyControl_class : compileHmrSourceClassLog s2Step291EarlyControlZeroArena false 777 s2Step291EarlyControlZeroPlan.top 0 783 s2Step291EarlyControlLog.positiveWork s2Step291EarlyControlLog.classWork=some s2Step291EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step291EarlyControlClassPlan s2Step291EarlyControlZeroArena false 777 s2Step291EarlyControlZeroPlan.top 0 783
  constructor
  · decide +kernel
  · exact s2Step291EarlyControl_classOwned
  · exact s2Step291EarlyControl_positiveBorrow
  · exact s2Step291EarlyControl_classEquality

private theorem s2Step291EarlyControl_entryRecordOwned : ([847, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).toFinset⊆s2Step291EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step291EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step291EarlyControl_entrySigmaOwned : ([783, 254] : List Wire).toFinset⊆s2Step291EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step291EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step291EarlyControl_fitBorrow : s2Step291EarlyControlFlagArena.checkBorrow ((54-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).length)) s2Step291EarlyControlLog.recordFresh=some s2Step291EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step291EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step291EarlyControlFlagArena (fun q => (0≤q ∧ q<904) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step291EarlyControlFittedArena,s2Step291EarlyControlFlagArena,s2Step291EarlyControlLog,arenaWires]

private theorem s2Step291EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).toFinset⊆s2Step291EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step291EarlyControlFlagArena (fun q => (0≤q ∧ q<904) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step291EarlyControl_fit : compileHmrRecordGrowLog s2Step291EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 54 s2Step291EarlyControlLog.recordFresh=some s2Step291EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step291EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step291EarlyControl_fitBorrow

private theorem s2Step291EarlyControl_flagsBorrow : s2Step291EarlyControlEqualityArena.checkBorrow (6) s2Step291EarlyControlLog.flagWork=some s2Step291EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step291EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step291EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step291EarlyControlFlagArena,s2Step291EarlyControlEqualityArena,s2Step291EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step291EarlyControl_flagsOwned : ([780, 253, 252, 251] : List Wire).toFinset⊆s2Step291EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step291EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step291EarlyControl_flags : compileHmrFlagsLog s2Step291EarlyControlClassPlan.equalityArena s2Step291EarlyControlClassPlan.equality.top 253 252 251 s2Step291EarlyControlLog.flagWork=some s2Step291EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step291EarlyControl_flagsOwned⟩
  · exact s2Step291EarlyControl_flagsBorrow

private theorem s2Step291EarlyControl_historyBorrow : s2Step291EarlyControlArena.checkBorrow ((54-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).length)) s2Step291EarlyControlLog.recordFresh=some s2Step291EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step291EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step291EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step291EarlyControlHistoryArena,s2Step291EarlyControlArena,s2Step291EarlyControlLog,arenaWires]

private theorem s2Step291EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).toFinset⊆s2Step291EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step291EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step291EarlyControl_history : compileHmrRecordGrowLog s2Step291EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 54 s2Step291EarlyControlLog.recordFresh=some s2Step291EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step291EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step291EarlyControl_historyBorrow

private theorem s2Step291EarlyControl_sigmaOwned : ([254, 783] : List Wire).toFinset⊆s2Step291EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step291EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step291EarlyControl_sigmaReleaseOwned : ([783] : List Wire).toFinset⊆s2Step291EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step291EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step291EarlyControl_sigmaRelease : s2Step291EarlyControlHistoryArena.release {783} (fun _ => false)=some s2Step291EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step291EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step291EarlyControlSigmaArena,s2Step291EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step291EarlyControl_sigma : compileHmrSigmaDropLog s2Step291EarlyControlHistoryArena false 0 0 254 783 []=some s2Step291EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step291EarlyControl_sigmaOwned⟩
  · exact s2Step291EarlyControl_sigmaRelease

private theorem s2Step291EarlyControl_zeroBorrow : s2Step291EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step291EarlyControlLog.zeroWork=some s2Step291EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step291EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step291EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step291EarlyControlZeroArena,s2Step291EarlyControlArena,s2Step291EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step291EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step291EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step291EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step291EarlyControl_zero : compileHmrEqualityLog s2Step291EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step291EarlyControlLog.zeroWork=some (s2Step291EarlyControlZeroArena,s2Step291EarlyControlLog.zeroWork,s2Step291EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step291EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step291EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step291EarlyControl_logged : s2Step291EarlyControlPlan.Logged s2Step291EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 777 783 254 253 252 251 847 54 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step291EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step291EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step291EarlyControl_zero
  · exact s2Step291EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step291EarlyControl_flags
  · exact s2Step291EarlyControl_fit
  · exact s2Step291EarlyControl_history
  · exact s2Step291EarlyControl_sigma
  · exact s2Step291EarlyControl_branch

private theorem s2Step291EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step291EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 777 783 254 253 252 251 847 54 s2Step291EarlyControlLog=some s2Step291EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step291EarlyControlPlan s2Step291EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 777 783 254 253 252 251 847 54 s2Step291EarlyControl_logged

private def s2Step291EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636],768⟩

private def s2Step291EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815],770⟩

private def s2Step291EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124],769⟩

private def s2Step291EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808],771⟩

private def s2Step291FrontBank : WindowBank := ⟨s2Step291EntryFRow,s2Step291EntryGRow,s2Step291EntryFvRow,s2Step291EntryGvRow⟩

private def s2Step291Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 812, 768]

private def s2Step291Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 805, 769]

private def s2Step291Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 770]

private def s2Step291Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 771]

private theorem s2Step291Counter_apart : Disjoint s2Step291HeadFvAfter.live s2Step291CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step291HeadFvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step291Counter_borrowed : s2Step291HeadFvAfter.checkBorrow 4 s2Step291CounterWork=some s2Step291CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step291HeadFvAfter s2Step291CounterDuring s2Step291CounterWork.toFinset s2Step291Counter_bounded s2Step291Counter_apart rfl

private theorem s2Step291Counter_owned : (783::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step291HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step291HeadFvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step291Counter_checked : compileHmrCounterStepLog s2Step291HeadFvAfter true 783 [772, 773, 774, 775, 776, 777] s2Step291CounterWork=some s2Step291CounterDuring := by
  have owned : ∀q∈783::[772, 773, 774, 775, 776, 777],q∈s2Step291HeadFvAfter.live := fun q hq => s2Step291Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step291Counter_borrowed

private def s2Step291EntryFAfter : Arena := s2Step291EntryFBefore

private theorem s2Step291EntryBank_incomingDistinct : ([s2Step291EntryFRow,s2Step291EntryGRow,s2Step291EntryFvRow,s2Step291EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step291EntryF_Incoming : rowsOwned s2Step291EntryFBefore [s2Step291EntryFRow,s2Step291EntryGRow,s2Step291EntryFvRow,s2Step291EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step291EntryFRow,s2Step291EntryGRow,s2Step291EntryFvRow,s2Step291EntryGvRow] 0 s2Step291EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step291EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step291EntryBank_outgoingOwned : rowsOwned s2Step291EntryGvAfter [s2Step291EntryFOut,s2Step291EntryGOut,s2Step291EntryFvOut,s2Step291EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step291EntryGvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step291EntryF_Outgoing : rowsOwned s2Step291EntryGvAfter [s2Step291EntryFOut,s2Step291EntryGOut,s2Step291EntryFvOut,s2Step291EntryGvOut] :=
  hmrRows_owned_drop s2Step291EntryGvAfter [s2Step291EntryFOut,s2Step291EntryGOut,s2Step291EntryFvOut,s2Step291EntryGvOut] 0 s2Step291EntryBank_outgoingOwned

private theorem s2Step291EntryF_distinct : (s2Step291EntryFRow.sign::s2Step291EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step291EntryF_owned : (s2Step291EntryFRow.sign::s2Step291EntryFRow.payload).toFinset⊆s2Step291EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step291EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step291EntryF_reserved : s2Step291EntryFBefore.reserve s2Step291EntryFFresh.toFinset=some s2Step291EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step291EntryFFresh,arenaWires]
  · norm_num [s2Step291EntryFBefore,s2Step291EntryFFresh,arenaWires]
  · simp only [s2Step291EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step291EntryF_checked : planRowResizeLog s2Step291EntryFBefore s2Step291EntryFRow 125 s2Step291EntryFFresh=
    some (s2Step291EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636],768⟩,growRow 768 s2Step291EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step291EntryFBefore s2Step291EntryFAfter s2Step291EntryFRow 125 s2Step291EntryFFresh
    s2Step291EntryF_distinct s2Step291EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step291EntryF_reserved
  have rowEq : WindowRow.mk (s2Step291EntryFRow.payload++s2Step291EntryFFresh) s2Step291EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step291EntryFvAfter : Arena := s2Step291EntryFBefore

private def s2Step291EntryFvBefore : Arena := s2Step291EntryFBefore

private theorem s2Step291EntryFv_Incoming : rowsOwned s2Step291EntryFvBefore [s2Step291EntryFvRow,s2Step291EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step291EntryFRow,s2Step291EntryGRow,s2Step291EntryFvRow,s2Step291EntryGvRow] 2 s2Step291EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step291EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step291EntryFv_Outgoing : rowsOwned s2Step291EntryGvAfter [s2Step291EntryFvOut,s2Step291EntryGvOut] :=
  hmrRows_owned_drop s2Step291EntryGvAfter [s2Step291EntryFOut,s2Step291EntryGOut,s2Step291EntryFvOut,s2Step291EntryGvOut] 2 s2Step291EntryBank_outgoingOwned

private theorem s2Step291EntryFv_distinct : (s2Step291EntryFvRow.sign::s2Step291EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step291EntryFv_owned : (s2Step291EntryFvRow.sign::s2Step291EntryFvRow.payload).toFinset⊆s2Step291EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step291EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step291EntryFv_reserved : s2Step291EntryFvBefore.reserve s2Step291EntryFvFresh.toFinset=some s2Step291EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step291EntryFvFresh,arenaWires]
  · norm_num [s2Step291EntryFvBefore,s2Step291EntryFBefore,s2Step291EntryFvFresh,arenaWires]
  · simp only [s2Step291EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step291EntryFv_checked : planRowResizeLog s2Step291EntryFvBefore s2Step291EntryFvRow 160 s2Step291EntryFvFresh=
    some (s2Step291EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815],770⟩,growRow 770 s2Step291EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step291EntryFvBefore s2Step291EntryFvAfter s2Step291EntryFvRow 160 s2Step291EntryFvFresh
    s2Step291EntryFv_distinct s2Step291EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step291EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step291EntryFvRow.payload++s2Step291EntryFvFresh) s2Step291EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step291EntryGAfter : Arena := s2Step291EntryFBefore

private def s2Step291EntryGBefore : Arena := s2Step291EntryFBefore

private theorem s2Step291EntryG_Incoming : rowsOwned s2Step291EntryGBefore [s2Step291EntryGRow,s2Step291EntryFvRow,s2Step291EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step291EntryFRow,s2Step291EntryGRow,s2Step291EntryFvRow,s2Step291EntryGvRow] 1 s2Step291EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step291EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step291EntryG_Outgoing : rowsOwned s2Step291EntryGvAfter [s2Step291EntryGOut,s2Step291EntryFvOut,s2Step291EntryGvOut] :=
  hmrRows_owned_drop s2Step291EntryGvAfter [s2Step291EntryFOut,s2Step291EntryGOut,s2Step291EntryFvOut,s2Step291EntryGvOut] 1 s2Step291EntryBank_outgoingOwned

private theorem s2Step291EntryG_distinct : (s2Step291EntryGRow.sign::s2Step291EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step291EntryG_owned : (s2Step291EntryGRow.sign::s2Step291EntryGRow.payload).toFinset⊆s2Step291EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step291EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step291EntryG_reserved : s2Step291EntryGBefore.reserve s2Step291EntryGFresh.toFinset=some s2Step291EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step291EntryGFresh,arenaWires]
  · norm_num [s2Step291EntryGBefore,s2Step291EntryFBefore,s2Step291EntryGFresh,arenaWires]
  · simp only [s2Step291EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step291EntryG_checked : planRowResizeLog s2Step291EntryGBefore s2Step291EntryGRow 125 s2Step291EntryGFresh=
    some (s2Step291EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124],769⟩,growRow 769 s2Step291EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step291EntryGBefore s2Step291EntryGAfter s2Step291EntryGRow 125 s2Step291EntryGFresh
    s2Step291EntryG_distinct s2Step291EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step291EntryG_reserved
  have rowEq : WindowRow.mk (s2Step291EntryGRow.payload++s2Step291EntryGFresh) s2Step291EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step291EntryGvBefore : Arena := s2Step291EntryFBefore

private theorem s2Step291EntryGv_Incoming : rowsOwned s2Step291EntryGvBefore [s2Step291EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step291EntryFRow,s2Step291EntryGRow,s2Step291EntryFvRow,s2Step291EntryGvRow] 3 s2Step291EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step291EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step291EntryGv_Outgoing : rowsOwned s2Step291EntryGvAfter [s2Step291EntryGvOut] :=
  hmrRows_owned_drop s2Step291EntryGvAfter [s2Step291EntryFOut,s2Step291EntryGOut,s2Step291EntryFvOut,s2Step291EntryGvOut] 3 s2Step291EntryBank_outgoingOwned

private theorem s2Step291EntryGv_distinct : (s2Step291EntryGvRow.sign::s2Step291EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step291EntryGv_owned : (s2Step291EntryGvRow.sign::s2Step291EntryGvRow.payload).toFinset⊆s2Step291EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step291EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step291EntryGv_reserved : s2Step291EntryGvBefore.reserve s2Step291EntryGvFresh.toFinset=some s2Step291EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step291EntryGvFresh,arenaWires]
  · norm_num [s2Step291EntryGvBefore,s2Step291EntryFBefore,s2Step291EntryGvFresh,arenaWires]
  · simp only [s2Step291EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step291EntryGv_checked : planRowResizeLog s2Step291EntryGvBefore s2Step291EntryGvRow 160 s2Step291EntryGvFresh=
    some (s2Step291EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808],771⟩,growRow 771 s2Step291EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step291EntryGvBefore s2Step291EntryGvAfter s2Step291EntryGvRow 160 s2Step291EntryGvFresh
    s2Step291EntryGv_distinct s2Step291EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step291EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step291EntryGvRow.payload++s2Step291EntryGvFresh) s2Step291EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step291EntryBank_rows : planWindowRowsLog s2Step291EntryFBefore [(s2Step291EntryFRow,125),(s2Step291EntryGRow,125),(s2Step291EntryFvRow,160),(s2Step291EntryGvRow,160)] [s2Step291EntryFFresh,s2Step291EntryGFresh,s2Step291EntryFvFresh,s2Step291EntryGvFresh]=
    some (s2Step291EntryGvAfter,[s2Step291EntryFOut,s2Step291EntryGOut,s2Step291EntryFvOut,s2Step291EntryGvOut],(growRow 768 s2Step291EntryFFresh ++ (growRow 769 s2Step291EntryGFresh ++ (growRow 770 s2Step291EntryFvFresh ++ (growRow 771 s2Step291EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step291EntryGvAfter [] []=some (s2Step291EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step291EntryGvBefore s2Step291EntryGvAfter s2Step291EntryGvAfter
    s2Step291EntryGvRow s2Step291EntryGvOut 160 s2Step291EntryGvFresh [] [] []
    (growRow 771 s2Step291EntryGvFresh) ([]) s2Step291EntryGv_Incoming s2Step291EntryGv_checked h4 s2Step291EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step291EntryFvBefore s2Step291EntryFvAfter s2Step291EntryGvAfter
    s2Step291EntryFvRow s2Step291EntryFvOut 160 s2Step291EntryFvFresh [(s2Step291EntryGvRow,160)] [s2Step291EntryGvFresh] [s2Step291EntryGvOut]
    (growRow 770 s2Step291EntryFvFresh) ((growRow 771 s2Step291EntryGvFresh ++ [])) s2Step291EntryFv_Incoming s2Step291EntryFv_checked h3 s2Step291EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step291EntryGBefore s2Step291EntryGAfter s2Step291EntryGvAfter
    s2Step291EntryGRow s2Step291EntryGOut 125 s2Step291EntryGFresh [(s2Step291EntryFvRow,160),(s2Step291EntryGvRow,160)] [s2Step291EntryFvFresh,s2Step291EntryGvFresh] [s2Step291EntryFvOut,s2Step291EntryGvOut]
    (growRow 769 s2Step291EntryGFresh) ((growRow 770 s2Step291EntryFvFresh ++ (growRow 771 s2Step291EntryGvFresh ++ []))) s2Step291EntryG_Incoming s2Step291EntryG_checked h2 s2Step291EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step291EntryFBefore s2Step291EntryFAfter s2Step291EntryGvAfter
    s2Step291EntryFRow s2Step291EntryFOut 125 s2Step291EntryFFresh [(s2Step291EntryGRow,125),(s2Step291EntryFvRow,160),(s2Step291EntryGvRow,160)] [s2Step291EntryGFresh,s2Step291EntryFvFresh,s2Step291EntryGvFresh] [s2Step291EntryGOut,s2Step291EntryFvOut,s2Step291EntryGvOut]
    (growRow 768 s2Step291EntryFFresh) ((growRow 769 s2Step291EntryGFresh ++ (growRow 770 s2Step291EntryFvFresh ++ (growRow 771 s2Step291EntryGvFresh ++ [])))) s2Step291EntryF_Incoming s2Step291EntryF_checked h1 s2Step291EntryF_Outgoing
  exact h0

private theorem s2Step291EntryBank_checked : compileHmrBankResizeLog .entry s2Step291EntryFBefore ⟨s2Step291EntryFRow,s2Step291EntryGRow,s2Step291EntryFvRow,s2Step291EntryGvRow⟩ ⟨125,125,160,160⟩ [s2Step291EntryFFresh,s2Step291EntryGFresh,s2Step291EntryFvFresh,s2Step291EntryGvFresh]=
    some (s2Step291EntryGvAfter,⟨s2Step291EntryFOut,s2Step291EntryGOut,s2Step291EntryFvOut,s2Step291EntryGvOut⟩,(growRow 768 s2Step291EntryFFresh ++ (growRow 769 s2Step291EntryGFresh ++ (growRow 770 s2Step291EntryFvFresh ++ (growRow 771 s2Step291EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step291EntryBank_rows]
  rfl

private def s2Step291ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<124) ∨ (125≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step291ExitFBefore : Arena := s2Step291ExitGAfter

private def s2Step291ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 812],768⟩

private def s2Step291ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796],770⟩

private def s2Step291ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 805],769⟩

private def s2Step291ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791],771⟩

private theorem s2Step291ExitBank_incomingDistinct : ([s2Step291ExitGRow,s2Step291ExitFRow,s2Step291ExitFvRow,s2Step291ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step291ExitF_Incoming : rowsOwned s2Step291ExitFBefore [s2Step291ExitFRow,s2Step291ExitFvRow,s2Step291ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step291ExitGRow,s2Step291ExitFRow,s2Step291ExitFvRow,s2Step291ExitGvRow] 1 s2Step291ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step291ExitFBefore (fun q => (0≤q ∧ q<124) ∨ (125≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step291ExitBank_outgoingOwned : rowsOwned s2Step291ExitGvAfter [s2Step291ExitGOut,s2Step291ExitFOut,s2Step291ExitFvOut,s2Step291ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step291ExitGvAfter (fun q => (0≤q ∧ q<124) ∨ (125≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step291ExitF_Outgoing : rowsOwned s2Step291ExitGvAfter [s2Step291ExitFOut,s2Step291ExitFvOut,s2Step291ExitGvOut] :=
  hmrRows_owned_drop s2Step291ExitGvAfter [s2Step291ExitGOut,s2Step291ExitFOut,s2Step291ExitFvOut,s2Step291ExitGvOut] 1 s2Step291ExitBank_outgoingOwned

private theorem s2Step291ExitF_distinct : (s2Step291ExitFRow.sign::s2Step291ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step291ExitF_owned : (s2Step291ExitFRow.sign::s2Step291ExitFRow.payload).toFinset⊆s2Step291ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step291ExitFBefore (fun q => (0≤q ∧ q<124) ∨ (125≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step291ExitF_retired : s2Step291ExitFBefore.retireSet s2Step291ExitFExtra.toFinset=s2Step291ExitFAfter := by
  unfold Arena.retireSet s2Step291ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step291ExitFBefore,s2Step291ExitGAfter,s2Step291ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step291ExitF_checked : planRowResizeLog s2Step291ExitFBefore s2Step291ExitFRow 125 []=
    some (s2Step291ExitFAfter,s2Step291ExitFOut,shrinkRow 768 s2Step291ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step291ExitFBefore s2Step291ExitFRow 125 s2Step291ExitF_distinct s2Step291ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step291ExitFRow.payload.take 125) s2Step291ExitFRow.sign=s2Step291ExitFOut := by decide +kernel
  have hi : s2Step291ExitFRow.payload.drop 125=s2Step291ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step291ExitF_retired] at result
  exact result

private def s2Step291ExitFvAfter : Arena := s2Step291ExitFAfter

private def s2Step291ExitFvBefore : Arena := s2Step291ExitFAfter

private theorem s2Step291ExitFv_Incoming : rowsOwned s2Step291ExitFvBefore [s2Step291ExitFvRow,s2Step291ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step291ExitGRow,s2Step291ExitFRow,s2Step291ExitFvRow,s2Step291ExitGvRow] 2 s2Step291ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step291ExitFvBefore (fun q => (0≤q ∧ q<124) ∨ (125≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step291ExitFv_Outgoing : rowsOwned s2Step291ExitGvAfter [s2Step291ExitFvOut,s2Step291ExitGvOut] :=
  hmrRows_owned_drop s2Step291ExitGvAfter [s2Step291ExitGOut,s2Step291ExitFOut,s2Step291ExitFvOut,s2Step291ExitGvOut] 2 s2Step291ExitBank_outgoingOwned

private theorem s2Step291ExitFv_distinct : (s2Step291ExitFvRow.sign::s2Step291ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step291ExitFv_owned : (s2Step291ExitFvRow.sign::s2Step291ExitFvRow.payload).toFinset⊆s2Step291ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step291ExitFvBefore (fun q => (0≤q ∧ q<124) ∨ (125≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step291ExitFv_reserved : s2Step291ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step291ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step291ExitFv_checked : planRowResizeLog s2Step291ExitFvBefore s2Step291ExitFvRow 161 []=
    some (s2Step291ExitFvAfter,s2Step291ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step291ExitFvBefore s2Step291ExitFvAfter s2Step291ExitFvRow 161 []
    s2Step291ExitFv_distinct s2Step291ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step291ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step291ExitFvRow.payload++[]) s2Step291ExitFvRow.sign=s2Step291ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step291ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private theorem s2Step291ExitG_Incoming : rowsOwned s2Step291ExitGBefore [s2Step291ExitGRow,s2Step291ExitFRow,s2Step291ExitFvRow,s2Step291ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step291ExitGRow,s2Step291ExitFRow,s2Step291ExitFvRow,s2Step291ExitGvRow] 0 s2Step291ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step291ExitGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step291ExitG_Outgoing : rowsOwned s2Step291ExitGvAfter [s2Step291ExitGOut,s2Step291ExitFOut,s2Step291ExitFvOut,s2Step291ExitGvOut] :=
  hmrRows_owned_drop s2Step291ExitGvAfter [s2Step291ExitGOut,s2Step291ExitFOut,s2Step291ExitFvOut,s2Step291ExitGvOut] 0 s2Step291ExitBank_outgoingOwned

private theorem s2Step291ExitG_distinct : (s2Step291ExitGRow.sign::s2Step291ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step291ExitG_owned : (s2Step291ExitGRow.sign::s2Step291ExitGRow.payload).toFinset⊆s2Step291ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step291ExitGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step291ExitG_retired : s2Step291ExitGBefore.retireSet s2Step291ExitGExtra.toFinset=s2Step291ExitGAfter := by
  unfold Arena.retireSet s2Step291ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step291ExitGBefore,s2Step291ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step291ExitG_checked : planRowResizeLog s2Step291ExitGBefore s2Step291ExitGRow 124 []=
    some (s2Step291ExitGAfter,s2Step291ExitGOut,shrinkRow 769 s2Step291ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step291ExitGBefore s2Step291ExitGRow 124 s2Step291ExitG_distinct s2Step291ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step291ExitGRow.payload.take 124) s2Step291ExitGRow.sign=s2Step291ExitGOut := by decide +kernel
  have hi : s2Step291ExitGRow.payload.drop 124=s2Step291ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step291ExitG_retired] at result
  exact result

private def s2Step291ExitGvBefore : Arena := s2Step291ExitFAfter

private theorem s2Step291ExitGv_Incoming : rowsOwned s2Step291ExitGvBefore [s2Step291ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step291ExitGRow,s2Step291ExitFRow,s2Step291ExitFvRow,s2Step291ExitGvRow] 3 s2Step291ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step291ExitGvBefore (fun q => (0≤q ∧ q<124) ∨ (125≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step291ExitGv_Outgoing : rowsOwned s2Step291ExitGvAfter [s2Step291ExitGvOut] :=
  hmrRows_owned_drop s2Step291ExitGvAfter [s2Step291ExitGOut,s2Step291ExitFOut,s2Step291ExitFvOut,s2Step291ExitGvOut] 3 s2Step291ExitBank_outgoingOwned

private theorem s2Step291ExitGv_distinct : (s2Step291ExitGvRow.sign::s2Step291ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step291ExitGv_owned : (s2Step291ExitGvRow.sign::s2Step291ExitGvRow.payload).toFinset⊆s2Step291ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step291ExitGvBefore (fun q => (0≤q ∧ q<124) ∨ (125≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step291ExitGv_reserved : s2Step291ExitGvBefore.reserve (∅ : Finset Wire)=some s2Step291ExitGvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step291ExitGv_checked : planRowResizeLog s2Step291ExitGvBefore s2Step291ExitGvRow 161 []=
    some (s2Step291ExitGvAfter,s2Step291ExitGvOut,growRow 771 []) := by
  have result := planRowResizeLog_of_growth s2Step291ExitGvBefore s2Step291ExitGvAfter s2Step291ExitGvRow 161 []
    s2Step291ExitGv_distinct s2Step291ExitGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step291ExitGv_reserved
  have rowEq : WindowRow.mk (s2Step291ExitGvRow.payload++[]) s2Step291ExitGvRow.sign=s2Step291ExitGvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step291ExitBank_rows : planWindowRowsLog s2Step291ExitGBefore [(s2Step291ExitGRow,124),(s2Step291ExitFRow,125),(s2Step291ExitFvRow,161),(s2Step291ExitGvRow,161)] [[],[],[],[]]=
    some (s2Step291ExitGvAfter,[s2Step291ExitGOut,s2Step291ExitFOut,s2Step291ExitFvOut,s2Step291ExitGvOut],(shrinkRow 769 s2Step291ExitGExtra ++ (shrinkRow 768 s2Step291ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ []))))) := by
  have h4 : planWindowRowsLog s2Step291ExitGvAfter [] []=some (s2Step291ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step291ExitGvBefore s2Step291ExitGvAfter s2Step291ExitGvAfter
    s2Step291ExitGvRow s2Step291ExitGvOut 161 [] [] [] []
    (growRow 771 []) ([]) s2Step291ExitGv_Incoming s2Step291ExitGv_checked h4 s2Step291ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step291ExitFvBefore s2Step291ExitFvAfter s2Step291ExitGvAfter
    s2Step291ExitFvRow s2Step291ExitFvOut 161 [] [(s2Step291ExitGvRow,161)] [[]] [s2Step291ExitGvOut]
    (growRow 770 []) ((growRow 771 [] ++ [])) s2Step291ExitFv_Incoming s2Step291ExitFv_checked h3 s2Step291ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step291ExitFBefore s2Step291ExitFAfter s2Step291ExitGvAfter
    s2Step291ExitFRow s2Step291ExitFOut 125 [] [(s2Step291ExitFvRow,161),(s2Step291ExitGvRow,161)] [[],[]] [s2Step291ExitFvOut,s2Step291ExitGvOut]
    (shrinkRow 768 s2Step291ExitFExtra) ((growRow 770 [] ++ (growRow 771 [] ++ []))) s2Step291ExitF_Incoming s2Step291ExitF_checked h2 s2Step291ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step291ExitGBefore s2Step291ExitGAfter s2Step291ExitGvAfter
    s2Step291ExitGRow s2Step291ExitGOut 124 [] [(s2Step291ExitFRow,125),(s2Step291ExitFvRow,161),(s2Step291ExitGvRow,161)] [[],[],[]] [s2Step291ExitFOut,s2Step291ExitFvOut,s2Step291ExitGvOut]
    (shrinkRow 769 s2Step291ExitGExtra) ((shrinkRow 768 s2Step291ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ [])))) s2Step291ExitG_Incoming s2Step291ExitG_checked h1 s2Step291ExitG_Outgoing
  exact h0

private theorem s2Step291ExitBank_checked : compileHmrBankResizeLog .exit s2Step291ExitGBefore ⟨s2Step291ExitFRow,s2Step291ExitGRow,s2Step291ExitFvRow,s2Step291ExitGvRow⟩ ⟨125,124,161,161⟩ [[],[],[],[]]=
    some (s2Step291ExitGvAfter,⟨s2Step291ExitFOut,s2Step291ExitGOut,s2Step291ExitFvOut,s2Step291ExitGvOut⟩,(shrinkRow 769 s2Step291ExitGExtra ++ (shrinkRow 768 s2Step291ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step291ExitBank_rows]
  rfl

private theorem s2Step291Add0_apart : Disjoint s2Step291Add0Arena.live s2Step291Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step291Add0Arena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step291Add0_card : s2Step291Add0Arena.live.card=898 := by
  decide +kernel

private theorem s2Step291Add0_borrowed : s2Step291Add0Arena.checkBorrow (hmrHybridCount s2Step291Add0Arena s2Step291Add0B.length) s2Step291Add0Work=some s2Step291Add0During := by
  have len : s2Step291Add0Work.length=hmrHybridCount s2Step291Add0Arena s2Step291Add0B.length := by
    rw [hmrHybridCount,s2Step291Add0_card]
    decide +kernel
  have nd : s2Step291Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step291Add0Arena s2Step291Add0During s2Step291Add0Work.toFinset s2Step291Add0_bounded s2Step291Add0_apart rfl

private theorem s2Step291Add0_distinct : (849::847::790::(s2Step291Add0A++s2Step291Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step291Add0_owned : (849::847::790::(s2Step291Add0A++s2Step291Add0B)).toFinset⊆s2Step291Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step291Add0Arena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step291Add0_checked : compileHmrHybridCinLog s2Step291Add0Arena 847 849 790 s2Step291Add0A s2Step291Add0B s2Step291Add0Work=some s2Step291Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step291Add0Arena s2Step291Add0During 847 849 790 s2Step291Add0A s2Step291Add0B s2Step291Add0Work
    (by decide +kernel) (by decide +kernel) s2Step291Add0_distinct
    (fun q hq => s2Step291Add0_owned (List.mem_toFinset.mpr hq)) s2Step291Add0_borrowed

private theorem s2Step291Add1_apart : Disjoint s2Step291Add1Arena.live s2Step291Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step291Add1Arena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step291Add1_card : s2Step291Add1Arena.live.card=898 := by
  decide +kernel

private theorem s2Step291Add1_borrowed : s2Step291Add1Arena.checkBorrow (hmrHybridCount s2Step291Add1Arena s2Step291Add1B.length) s2Step291Add1Work=some s2Step291Add1During := by
  have len : s2Step291Add1Work.length=hmrHybridCount s2Step291Add1Arena s2Step291Add1B.length := by
    rw [hmrHybridCount,s2Step291Add1_card]
    decide +kernel
  have nd : s2Step291Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step291Add1Arena s2Step291Add1During s2Step291Add1Work.toFinset s2Step291Add1_bounded s2Step291Add1_apart rfl

private theorem s2Step291Add1_distinct : (849::847::790::(s2Step291Add1A++s2Step291Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step291Add1_owned : (849::847::790::(s2Step291Add1A++s2Step291Add1B)).toFinset⊆s2Step291Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step291Add1Arena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step291Add1_checked : compileHmrHybridCinLog s2Step291Add1Arena 847 849 790 s2Step291Add1A s2Step291Add1B s2Step291Add1Work=some s2Step291Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step291Add1Arena s2Step291Add1During 847 849 790 s2Step291Add1A s2Step291Add1B s2Step291Add1Work
    (by decide +kernel) (by decide +kernel) s2Step291Add1_distinct
    (fun q hq => s2Step291Add1_owned (List.mem_toFinset.mpr hq)) s2Step291Add1_borrowed

private theorem s2Step291F4_apart : Disjoint (s2Step291Add0A++s2Step291Add0B).toFinset (s2Step291Add1A++s2Step291Add1B).toFinset := by
  have nd : ((s2Step291Add0A++s2Step291Add0B)++(s2Step291Add1A++s2Step291Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step291F4_carry : s2Step291F4FlagArena.checkBorrow 1 [790]=some s2Step291Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step291F4FlagArena,s2Step291HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step291F4FlagArena,s2Step291HeadFvAfter,s2Step291Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step291F4_distinct : (783::847::849::790::((s2Step291Add0A++s2Step291Add1A)++(s2Step291Add0B++s2Step291Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step291F4_flag : s2Step291HeadFvAfter.checkBorrow 1 [849]=some s2Step291F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step291HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step291F4_owned : (783::847::((s2Step291Add0A++s2Step291Add1A)++(s2Step291Add0B++s2Step291Add1B))).toFinset⊆s2Step291HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step291HeadFvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step291F4_checked : compileHmrHybridF4Log s2Step291HeadFvAfter 783 847 s2Step291Add0A s2Step291Add0B s2Step291Add1A s2Step291Add1B [849] [790] s2Step291Add0Work s2Step291Add1Work=some s2Step291F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step291HeadFvAfter s2Step291F4FlagArena s2Step291Add0Arena s2Step291Add0During s2Step291Add1During 783 847
    s2Step291Add0A s2Step291Add0B s2Step291Add1A s2Step291Add1B [849] [790] s2Step291Add0Work s2Step291Add1Work
    (fun q hq => s2Step291F4_owned (List.mem_toFinset.mpr hq)) s2Step291F4_flag s2Step291F4_carry
    s2Step291F4_distinct s2Step291F4_apart s2Step291Add0_checked s2Step291Add1_checked

private theorem s2Step291Front_branch : s2Step291FrontSigmaArena.checkBorrow 1 [847]=some s2Step291HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step291FrontSigmaArena,s2Step291EntryGvAfter,s2Step291EntryFBefore,arenaWires]
  · ext q
    simp only [s2Step291FrontSigmaArena,s2Step291EntryGvAfter,s2Step291EntryFBefore,s2Step291HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step291Front_entry : HmrFrontEntryValid s2Step291EntryFBefore s2Step291FrontBank 125 160 ⟨125,124,161,161⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step291FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step291EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step291EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step291FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step291Front_sigma : s2Step291EntryGvAfter.checkBorrow 1 [783]=some s2Step291FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step291EntryGvAfter,s2Step291EntryFBefore,arenaWires]
  · rfl

private def s2Step291HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step291HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step291HeadFBefore : Arena := s2Step291HeadGAfter

private def s2Step291HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636],768⟩

private def s2Step291HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815],770⟩

private def s2Step291HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124],769⟩

private def s2Step291HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808],771⟩

private theorem s2Step291HeadBank_incomingDistinct : ([s2Step291HeadGRow,s2Step291HeadFRow,s2Step291HeadGvRow,s2Step291HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step291HeadF_Incoming : rowsOwned s2Step291HeadFBefore [s2Step291HeadFRow,s2Step291HeadGvRow,s2Step291HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step291HeadGRow,s2Step291HeadFRow,s2Step291HeadGvRow,s2Step291HeadFvRow] 1 s2Step291HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step291HeadFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step291HeadBank_outgoingOwned : rowsOwned s2Step291HeadFvAfter [s2Step291HeadGOut,s2Step291HeadFOut,s2Step291HeadGvOut,s2Step291HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step291HeadFvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step291HeadF_Outgoing : rowsOwned s2Step291HeadFvAfter [s2Step291HeadFOut,s2Step291HeadGvOut,s2Step291HeadFvOut] :=
  hmrRows_owned_drop s2Step291HeadFvAfter [s2Step291HeadGOut,s2Step291HeadFOut,s2Step291HeadGvOut,s2Step291HeadFvOut] 1 s2Step291HeadBank_outgoingOwned

private theorem s2Step291HeadF_distinct : (s2Step291HeadFRow.sign::s2Step291HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step291HeadF_owned : (s2Step291HeadFRow.sign::s2Step291HeadFRow.payload).toFinset⊆s2Step291HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step291HeadFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step291HeadF_reserved : s2Step291HeadFBefore.reserve s2Step291HeadFFresh.toFinset=some s2Step291HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step291HeadFFresh,arenaWires]
  · norm_num [s2Step291HeadFBefore,s2Step291HeadGAfter,s2Step291HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step291HeadFAfter,s2Step291HeadFBefore,s2Step291HeadGAfter,s2Step291HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step291HeadF_checked : planRowResizeLog s2Step291HeadFBefore s2Step291HeadFRow 126 s2Step291HeadFFresh=
    some (s2Step291HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 812],768⟩,growRow 768 s2Step291HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step291HeadFBefore s2Step291HeadFAfter s2Step291HeadFRow 126 s2Step291HeadFFresh
    s2Step291HeadF_distinct s2Step291HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step291HeadF_reserved
  have rowEq : WindowRow.mk (s2Step291HeadFRow.payload++s2Step291HeadFFresh) s2Step291HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 812],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step291HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step291HeadFvBefore : Arena := s2Step291HeadGvAfter

private theorem s2Step291HeadFv_Incoming : rowsOwned s2Step291HeadFvBefore [s2Step291HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step291HeadGRow,s2Step291HeadFRow,s2Step291HeadGvRow,s2Step291HeadFvRow] 3 s2Step291HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step291HeadFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step291HeadFv_Outgoing : rowsOwned s2Step291HeadFvAfter [s2Step291HeadFvOut] :=
  hmrRows_owned_drop s2Step291HeadFvAfter [s2Step291HeadGOut,s2Step291HeadFOut,s2Step291HeadGvOut,s2Step291HeadFvOut] 3 s2Step291HeadBank_outgoingOwned

private theorem s2Step291HeadFv_distinct : (s2Step291HeadFvRow.sign::s2Step291HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step291HeadFv_owned : (s2Step291HeadFvRow.sign::s2Step291HeadFvRow.payload).toFinset⊆s2Step291HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step291HeadFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step291HeadFv_reserved : s2Step291HeadFvBefore.reserve s2Step291HeadFvFresh.toFinset=some s2Step291HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step291HeadFvFresh,arenaWires]
  · norm_num [s2Step291HeadFvBefore,s2Step291HeadGvAfter,s2Step291HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step291HeadFvAfter,s2Step291HeadFvBefore,s2Step291HeadGvAfter,s2Step291HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step291HeadFv_checked : planRowResizeLog s2Step291HeadFvBefore s2Step291HeadFvRow 161 s2Step291HeadFvFresh=
    some (s2Step291HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796],770⟩,growRow 770 s2Step291HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step291HeadFvBefore s2Step291HeadFvAfter s2Step291HeadFvRow 161 s2Step291HeadFvFresh
    s2Step291HeadFv_distinct s2Step291HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step291HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step291HeadFvRow.payload++s2Step291HeadFvFresh) s2Step291HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step291HeadG_Incoming : rowsOwned s2Step291HeadGBefore [s2Step291HeadGRow,s2Step291HeadFRow,s2Step291HeadGvRow,s2Step291HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step291HeadGRow,s2Step291HeadFRow,s2Step291HeadGvRow,s2Step291HeadFvRow] 0 s2Step291HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step291HeadGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step291HeadG_Outgoing : rowsOwned s2Step291HeadFvAfter [s2Step291HeadGOut,s2Step291HeadFOut,s2Step291HeadGvOut,s2Step291HeadFvOut] :=
  hmrRows_owned_drop s2Step291HeadFvAfter [s2Step291HeadGOut,s2Step291HeadFOut,s2Step291HeadGvOut,s2Step291HeadFvOut] 0 s2Step291HeadBank_outgoingOwned

private theorem s2Step291HeadG_distinct : (s2Step291HeadGRow.sign::s2Step291HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step291HeadG_owned : (s2Step291HeadGRow.sign::s2Step291HeadGRow.payload).toFinset⊆s2Step291HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step291HeadGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step291HeadG_reserved : s2Step291HeadGBefore.reserve s2Step291HeadGFresh.toFinset=some s2Step291HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step291HeadGFresh,arenaWires]
  · norm_num [s2Step291HeadGBefore,s2Step291HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step291HeadGAfter,s2Step291HeadGBefore,s2Step291HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step291HeadG_checked : planRowResizeLog s2Step291HeadGBefore s2Step291HeadGRow 126 s2Step291HeadGFresh=
    some (s2Step291HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 805],769⟩,growRow 769 s2Step291HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step291HeadGBefore s2Step291HeadGAfter s2Step291HeadGRow 126 s2Step291HeadGFresh
    s2Step291HeadG_distinct s2Step291HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step291HeadG_reserved
  have rowEq : WindowRow.mk (s2Step291HeadGRow.payload++s2Step291HeadGFresh) s2Step291HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 805],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step291HeadGvBefore : Arena := s2Step291HeadFAfter

private theorem s2Step291HeadGv_Incoming : rowsOwned s2Step291HeadGvBefore [s2Step291HeadGvRow,s2Step291HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step291HeadGRow,s2Step291HeadFRow,s2Step291HeadGvRow,s2Step291HeadFvRow] 2 s2Step291HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step291HeadGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step291HeadGv_Outgoing : rowsOwned s2Step291HeadFvAfter [s2Step291HeadGvOut,s2Step291HeadFvOut] :=
  hmrRows_owned_drop s2Step291HeadFvAfter [s2Step291HeadGOut,s2Step291HeadFOut,s2Step291HeadGvOut,s2Step291HeadFvOut] 2 s2Step291HeadBank_outgoingOwned

private theorem s2Step291HeadGv_distinct : (s2Step291HeadGvRow.sign::s2Step291HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step291HeadGv_owned : (s2Step291HeadGvRow.sign::s2Step291HeadGvRow.payload).toFinset⊆s2Step291HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step291HeadGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step291HeadGv_reserved : s2Step291HeadGvBefore.reserve s2Step291HeadGvFresh.toFinset=some s2Step291HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step291HeadGvFresh,arenaWires]
  · norm_num [s2Step291HeadGvBefore,s2Step291HeadFAfter,s2Step291HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step291HeadGvAfter,s2Step291HeadGvBefore,s2Step291HeadFAfter,s2Step291HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step291HeadGv_checked : planRowResizeLog s2Step291HeadGvBefore s2Step291HeadGvRow 161 s2Step291HeadGvFresh=
    some (s2Step291HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791],771⟩,growRow 771 s2Step291HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step291HeadGvBefore s2Step291HeadGvAfter s2Step291HeadGvRow 161 s2Step291HeadGvFresh
    s2Step291HeadGv_distinct s2Step291HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step291HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step291HeadGvRow.payload++s2Step291HeadGvFresh) s2Step291HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step291HeadBank_rows : planWindowRowsLog s2Step291HeadGBefore [(s2Step291HeadGRow,126),(s2Step291HeadFRow,126),(s2Step291HeadGvRow,161),(s2Step291HeadFvRow,161)] [s2Step291HeadGFresh,s2Step291HeadFFresh,s2Step291HeadGvFresh,s2Step291HeadFvFresh]=
    some (s2Step291HeadFvAfter,[s2Step291HeadGOut,s2Step291HeadFOut,s2Step291HeadGvOut,s2Step291HeadFvOut],(growRow 769 s2Step291HeadGFresh ++ (growRow 768 s2Step291HeadFFresh ++ (growRow 771 s2Step291HeadGvFresh ++ (growRow 770 s2Step291HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step291HeadFvAfter [] []=some (s2Step291HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step291HeadFvBefore s2Step291HeadFvAfter s2Step291HeadFvAfter
    s2Step291HeadFvRow s2Step291HeadFvOut 161 s2Step291HeadFvFresh [] [] []
    (growRow 770 s2Step291HeadFvFresh) ([]) s2Step291HeadFv_Incoming s2Step291HeadFv_checked h4 s2Step291HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step291HeadGvBefore s2Step291HeadGvAfter s2Step291HeadFvAfter
    s2Step291HeadGvRow s2Step291HeadGvOut 161 s2Step291HeadGvFresh [(s2Step291HeadFvRow,161)] [s2Step291HeadFvFresh] [s2Step291HeadFvOut]
    (growRow 771 s2Step291HeadGvFresh) ((growRow 770 s2Step291HeadFvFresh ++ [])) s2Step291HeadGv_Incoming s2Step291HeadGv_checked h3 s2Step291HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step291HeadFBefore s2Step291HeadFAfter s2Step291HeadFvAfter
    s2Step291HeadFRow s2Step291HeadFOut 126 s2Step291HeadFFresh [(s2Step291HeadGvRow,161),(s2Step291HeadFvRow,161)] [s2Step291HeadGvFresh,s2Step291HeadFvFresh] [s2Step291HeadGvOut,s2Step291HeadFvOut]
    (growRow 768 s2Step291HeadFFresh) ((growRow 771 s2Step291HeadGvFresh ++ (growRow 770 s2Step291HeadFvFresh ++ []))) s2Step291HeadF_Incoming s2Step291HeadF_checked h2 s2Step291HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step291HeadGBefore s2Step291HeadGAfter s2Step291HeadFvAfter
    s2Step291HeadGRow s2Step291HeadGOut 126 s2Step291HeadGFresh [(s2Step291HeadFRow,126),(s2Step291HeadGvRow,161),(s2Step291HeadFvRow,161)] [s2Step291HeadFFresh,s2Step291HeadGvFresh,s2Step291HeadFvFresh] [s2Step291HeadFOut,s2Step291HeadGvOut,s2Step291HeadFvOut]
    (growRow 769 s2Step291HeadGFresh) ((growRow 768 s2Step291HeadFFresh ++ (growRow 771 s2Step291HeadGvFresh ++ (growRow 770 s2Step291HeadFvFresh ++ [])))) s2Step291HeadG_Incoming s2Step291HeadG_checked h1 s2Step291HeadG_Outgoing
  exact h0

private theorem s2Step291HeadBank_checked : compileHmrBankResizeLog .headroom s2Step291HeadGBefore ⟨s2Step291HeadFRow,s2Step291HeadGRow,s2Step291HeadFvRow,s2Step291HeadGvRow⟩ ⟨126,126,161,161⟩ [s2Step291HeadGFresh,s2Step291HeadFFresh,s2Step291HeadGvFresh,s2Step291HeadFvFresh]=
    some (s2Step291HeadFvAfter,⟨s2Step291HeadFOut,s2Step291HeadGOut,s2Step291HeadFvOut,s2Step291HeadGvOut⟩,(growRow 769 s2Step291HeadGFresh ++ (growRow 768 s2Step291HeadFFresh ++ (growRow 771 s2Step291HeadGvFresh ++ (growRow 770 s2Step291HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step291HeadBank_rows]
  rfl

private theorem s2Step291Front_checked : compileHmrSourceFrontLog s2Step291EntryFBefore s2Step291FrontBank 125 160 ⟨125,124,161,161⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step291FrontLog=some s2Step291FrontPlan := by
  have pairEq : s2Step291FrontPair=⟨s2Step291HeadFRow,s2Step291HeadGRow,s2Step291HeadFvRow,s2Step291HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step291FrontHead=⟨s2Step291ExitFRow,s2Step291ExitGRow,s2Step291ExitFvRow,s2Step291ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step291Add0A=s2Step291FrontHead.f.wires := by decide +kernel
  have gEq : s2Step291Add0B=s2Step291FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step291Add1A=s2Step291FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step291Add1B=s2Step291FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step291EntryFBefore s2Step291FrontBank 125 160 ⟨125,124,161,161⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step291FrontLog s2Step291FrontPlan
  · exact s2Step291Front_entry
  · exact s2Step291EntryBank_checked
  · exact s2Step291Front_sigma
  · rfl
  · exact s2Step291Front_branch
  · rfl
  · simpa only [s2Step291FrontPlan,pairEq] using s2Step291HeadBank_checked
  · simpa only [s2Step291FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step291F4_checked
  · exact s2Step291Counter_checked
  · rfl
  · simpa only [s2Step291FrontPlan,headEq] using s2Step291ExitBank_checked

private theorem s2Step291Complete_explicit_checked : compileHmrEarlyStepLog s2Step291EntryFBefore s2Step291FrontBank 125 160 ⟨125,124,161,161⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 54 s2Step291CompleteLog=some s2Step291CompletePlan := by
  let Q := s2Step291EarlyControlPlan
  have hq := s2Step291EarlyControl_plan_checked
  have fv1 : s2Step291CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step291CompleteOut.fv.payload[2]?.getD s2Step291CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step291CompleteOut.fv.payload[3]?.getD s2Step291CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step291CompleteOut.fv.payload[4]?.getD s2Step291CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step291EntryFBefore s2Step291EarlyControlArena s2Step291FrontBank 125 160 ⟨125,124,161,161⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 54 s2Step291CompleteLog s2Step291FrontPlan Q
    s2Step291Front_checked s2Step291Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step291Complete_owned s2Step291Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step291EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 777 783 s2Step291CompleteOut.fv.second (s2Step291CompleteOut.fv.payload[2]?.getD s2Step291CompleteOut.fv.sign) (s2Step291CompleteOut.fv.payload[3]?.getD s2Step291CompleteOut.fv.sign) (s2Step291CompleteOut.fv.payload[4]?.getD s2Step291CompleteOut.fv.sign) 847 54 s2Step291EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep291Arena : Arena := s2Step291EntryFBefore
def s2PrivateStep291Bank : WindowBank := s2Step291FrontBank
def s2PrivateStep291Spec : HmrSourceWalkStepLog := ⟨125,160,⟨125,124,161,161⟩,54,.early s2Step291CompleteLog⟩
def s2PrivateStep291Plan : HmrSourceStepPlan := .early s2Step291CompletePlan
theorem s2PrivateStep291_source : s2PrivateStep291Spec=s2ObservedLogs288[3] := rfl
theorem s2PrivateStep291_checked : compileHmrSourceStepLog s2PrivateStep291Arena s2PrivateStep291Bank
    s2PrivateStep291Spec.fgWidth s2PrivateStep291Spec.vWidth s2PrivateStep291Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905]
    6 498 291 s2PrivateStep291Spec.need none s2PrivateStep291Spec.log=some s2PrivateStep291Plan := by
  change compileHmrSourceStepLog s2Step291EntryFBefore s2Step291FrontBank 125 160 ⟨125,124,161,161⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 6 498 291 54 none (.early s2Step291CompleteLog)=some (.early s2Step291CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 291<498)]
  rw [s2Step291Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
