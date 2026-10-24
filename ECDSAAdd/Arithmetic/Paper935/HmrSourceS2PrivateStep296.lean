import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep294
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

private def s2Step296CompleteMoves : List (Wire × Wire) := [(832,121)]

private def s2Step296EarlyControlLog : HmrEarlyControlLog := ⟨[832, 780, 811, 820, 805],[783],[847],[830, 800, 894, 896, 901, 903],[]⟩

private def s2Step296FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [820], [], []],[[805], [811], [780], [785]],[[], [], [], []]⟩,[787],[882],[783],[847],[830, 800, 894, 896, 901, 903, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[830, 800, 894, 896, 901, 903, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[783, 847, 830, 800]⟩

private def s2Step296CompleteLog : HmrEarlyStepLog := ⟨s2Step296FrontLog,s2Step296CompleteMoves,s2Step296EarlyControlLog⟩

private def s2Step296ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634],768⟩

private def s2Step296ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785],770⟩

private def s2Step296ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120],769⟩

private def s2Step296ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812],771⟩

private def s2Step296FrontOut : WindowBank := ⟨s2Step296ExitFOut,s2Step296ExitGOut,s2Step296ExitFvOut,s2Step296ExitGvOut⟩

private def s2Step296CompleteOut : WindowBank := s2Step296FrontOut.repacked s2Step296CompleteMoves

private def s2Step296EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step296EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step296EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step296EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step296EarlyControlPositiveArena,[783],s2Step296EarlyControlEqualityArena,[847],⟨⟨787,false⟩,[⟨⟨783,false⟩,847⟩]⟩⟩

private def s2Step296EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step296EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step296EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step296EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step296EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step296EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step296EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,832⟩,⟨⟨774,false⟩,780⟩,⟨⟨775,false⟩,811⟩,⟨⟨776,false⟩,820⟩,⟨⟨777,false⟩,805⟩]⟩

private def s2Step296EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step296EarlyControlZeroArena,s2Step296EarlyControlZeroPlan,s2Step296EarlyControlClassPlan,s2Step296EarlyControlFlagArena,s2Step296EarlyControlFittedArena,s2Step296EarlyControlHistoryArena,s2Step296EarlyControlSigmaArena,s2Step296EarlyControlOutputArena,s2Step296EarlyControlLog⟩

private def s2Step296CounterWork : List Wire := [783, 847, 830, 800]

private theorem s2Step296Counter_bounded : s2Step296CounterWork.toFinset⊆arenaWires := by norm_num [s2Step296CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step296HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step296CounterDuring : Arena := ⟨s2Step296HeadFvAfter.live∪s2Step296CounterWork.toFinset,Finset.union_subset s2Step296HeadFvAfter.bounded s2Step296Counter_bounded⟩

private def s2Step296EntryFFresh : List Wire := []

private def s2Step296EntryFvFresh : List Wire := []

private def s2Step296EntryGFresh : List Wire := [820]

private def s2Step296EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step296EntryGvAfter : Arena := s2Step296EntryGAfter

private def s2Step296EntryGvFresh : List Wire := []

private def s2Step296ExitFExtra : List Wire := [811]

private def s2Step296ExitGExtra : List Wire := [121, 820, 805]

private def s2Step296ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<121) ∨ (122≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step296ExitGvExtra : List Wire := [780]

private def s2Step296Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step296Add0Work : List Wire := [830, 800, 894, 896, 901, 903, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step296Add0_bounded : s2Step296Add0Work.toFinset⊆arenaWires := by
  have h : s2Step296Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step296Add0During : Arena := ⟨s2Step296Add0Arena.live∪s2Step296Add0Work.toFinset,Finset.union_subset s2Step296Add0Arena.bounded s2Step296Add0_bounded⟩

private def s2Step296Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step296Add1Work : List Wire := [830, 800, 894, 896, 901, 903, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step296Add1_bounded : s2Step296Add1Work.toFinset⊆arenaWires := by
  have h : s2Step296Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step296Add1During : Arena := ⟨s2Step296Add1Arena.live∪s2Step296Add1Work.toFinset,Finset.union_subset s2Step296Add1Arena.bounded s2Step296Add1_bounded⟩

private def s2Step296F4FlagArena : Arena := ⟨s2Step296HeadFvAfter.live∪{783},Finset.union_subset s2Step296HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step296F4Plan : HmrHybridF4Plan := ⟨s2Step296F4FlagArena,[783],s2Step296Add0Arena,[847],s2Step296Add0During,s2Step296Add0Work,s2Step296Add1During,s2Step296Add1Work⟩

private def s2Step296HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 811],768⟩

private def s2Step296HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785],770⟩

private def s2Step296HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 820, 805],769⟩

private def s2Step296HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 780],771⟩

private def s2Step296FrontHead : WindowBank := ⟨s2Step296HeadFOut,s2Step296HeadGOut,s2Step296HeadFvOut,s2Step296HeadGvOut⟩

private def s2Step296EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634],768⟩

private def s2Step296EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821],770⟩

private def s2Step296EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 820],769⟩

private def s2Step296EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812],771⟩

private def s2Step296FrontPair : WindowBank := ⟨s2Step296EntryFOut,s2Step296EntryGOut,s2Step296EntryFvOut,s2Step296EntryGvOut⟩

private def s2Step296FrontSigmaArena : Arena := ⟨s2Step296EntryGvAfter.live∪{787},Finset.union_subset s2Step296EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step296HeadFFresh : List Wire := [811]

private def s2Step296HeadFvFresh : List Wire := [785]

private def s2Step296HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step296HeadGFresh : List Wire := [805]

private def s2Step296HeadGvFresh : List Wire := [780]

private def s2Step296FrontPlan : HmrSourceFront := ⟨s2Step296EntryGvAfter,s2Step296FrontPair,(growRow 768 s2Step296EntryFFresh ++ (growRow 769 s2Step296EntryGFresh ++ (growRow 770 s2Step296EntryFvFresh ++ (growRow 771 s2Step296EntryGvFresh ++ [])))),s2Step296FrontSigmaArena,[787],s2Step296HeadGBefore,[882],
  s2Step296HeadFvAfter,s2Step296FrontHead,(growRow 769 s2Step296HeadGFresh ++ (growRow 768 s2Step296HeadFFresh ++ (growRow 771 s2Step296HeadGvFresh ++ (growRow 770 s2Step296HeadFvFresh ++ [])))),s2Step296F4Plan,s2Step296CounterDuring,s2Step296CounterWork,s2Step296ExitGvAfter,s2Step296FrontOut,(shrinkRow 769 s2Step296ExitGExtra ++ (shrinkRow 768 s2Step296ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step296ExitGvExtra ++ []))))⟩

private def s2Step296CompletePlan : HmrEarlyStepPlan := ⟨s2Step296FrontPlan,s2Step296EarlyControlArena,s2Step296EarlyControlPlan,s2Step296CompleteMoves⟩

private theorem s2Step296Complete_apart : List.Disjoint (s2Step296CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [787, 882, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] := by
  have nd : ((s2Step296CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[787, 882, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step296Complete_owned : (s2Step296CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step296EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step296EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private def s2Step296CompleteMoveArena : Arena := ⟨s2Step296ExitGvAfter.live∪{121},Finset.union_subset s2Step296ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step296Complete_repack : s2Step296ExitGvAfter.checkRepack s2Step296CompleteMoves=some s2Step296EarlyControlArena := by
  have owned : 832∈s2Step296ExitGvAfter.live := by norm_num [s2Step296ExitGvAfter,arenaWires]
  have reserve : s2Step296ExitGvAfter.reserve {121}=some s2Step296CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step296ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step296CompleteMoveArena.retireSet {832}=s2Step296EarlyControlArena := by
    unfold Arena.retireSet s2Step296EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step296CompleteMoveArena,s2Step296ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step296CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step296CompleteMoveArena.retireSet {832}).checkRepack []=some s2Step296EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step296EarlyControl_branchOwned : ([882] : List Wire).toFinset⊆s2Step296EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step296EarlyControlSigmaArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step296EarlyControl_branch : compileHmrBranchRetirement s2Step296EarlyControlSigmaArena 882=some s2Step296EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step296EarlyControl_branchOwned
  · ext q
    simp [s2Step296EarlyControlOutputArena,s2Step296EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step296EarlyControl_classEqualityBorrow : s2Step296EarlyControlPositiveArena.checkBorrow (([787, 783] : List Wire).length-1) s2Step296EarlyControlLog.classWork=some s2Step296EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step296EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step296EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step296EarlyControlEqualityArena,s2Step296EarlyControlPositiveArena,s2Step296EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step296EarlyControl_classEqualityOwned : ([787, 783] : List Wire).toFinset⊆s2Step296EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step296EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step296EarlyControl_classEquality : compileHmrEqualityLog s2Step296EarlyControlPositiveArena [787, 783] 0 s2Step296EarlyControlLog.classWork=some (s2Step296EarlyControlEqualityArena,s2Step296EarlyControlLog.classWork,s2Step296EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step296EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step296EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step296EarlyControl_classOwned : ([777, 805, 787] : List Wire).toFinset⊆s2Step296EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step296EarlyControlZeroArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step296EarlyControl_positiveBorrow : s2Step296EarlyControlZeroArena.checkBorrow (1) s2Step296EarlyControlLog.positiveWork=some s2Step296EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step296EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step296EarlyControlZeroArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step296EarlyControlPositiveArena,s2Step296EarlyControlZeroArena,s2Step296EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step296EarlyControl_class : compileHmrSourceClassLog s2Step296EarlyControlZeroArena false 777 s2Step296EarlyControlZeroPlan.top 0 787 s2Step296EarlyControlLog.positiveWork s2Step296EarlyControlLog.classWork=some s2Step296EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step296EarlyControlClassPlan s2Step296EarlyControlZeroArena false 777 s2Step296EarlyControlZeroPlan.top 0 787
  constructor
  · decide +kernel
  · exact s2Step296EarlyControl_classOwned
  · exact s2Step296EarlyControl_positiveBorrow
  · exact s2Step296EarlyControl_classEquality

private theorem s2Step296EarlyControl_entryRecordOwned : ([882, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] : List Wire).toFinset⊆s2Step296EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step296EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step296EarlyControl_entrySigmaOwned : ([787, 254] : List Wire).toFinset⊆s2Step296EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step296EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step296EarlyControl_fitBorrow : s2Step296EarlyControlFlagArena.checkBorrow ((55-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] : List Wire).length)) s2Step296EarlyControlLog.recordFresh=some s2Step296EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step296EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step296EarlyControlFlagArena (fun q => (0≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step296EarlyControlFittedArena,s2Step296EarlyControlFlagArena,s2Step296EarlyControlLog,arenaWires]

private theorem s2Step296EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] : List Wire).toFinset⊆s2Step296EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step296EarlyControlFlagArena (fun q => (0≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step296EarlyControl_fit : compileHmrRecordGrowLog s2Step296EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 55 s2Step296EarlyControlLog.recordFresh=some s2Step296EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step296EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step296EarlyControl_fitBorrow

private theorem s2Step296EarlyControl_flagsBorrow : s2Step296EarlyControlEqualityArena.checkBorrow (6) s2Step296EarlyControlLog.flagWork=some s2Step296EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step296EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step296EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step296EarlyControlFlagArena,s2Step296EarlyControlEqualityArena,s2Step296EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step296EarlyControl_flagsOwned : ([847, 253, 252, 251] : List Wire).toFinset⊆s2Step296EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step296EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step296EarlyControl_flags : compileHmrFlagsLog s2Step296EarlyControlClassPlan.equalityArena s2Step296EarlyControlClassPlan.equality.top 253 252 251 s2Step296EarlyControlLog.flagWork=some s2Step296EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step296EarlyControl_flagsOwned⟩
  · exact s2Step296EarlyControl_flagsBorrow

private theorem s2Step296EarlyControl_historyBorrow : s2Step296EarlyControlArena.checkBorrow ((55-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] : List Wire).length)) s2Step296EarlyControlLog.recordFresh=some s2Step296EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step296EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step296EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step296EarlyControlHistoryArena,s2Step296EarlyControlArena,s2Step296EarlyControlLog,arenaWires]

private theorem s2Step296EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] : List Wire).toFinset⊆s2Step296EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step296EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step296EarlyControl_history : compileHmrRecordGrowLog s2Step296EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 55 s2Step296EarlyControlLog.recordFresh=some s2Step296EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step296EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step296EarlyControl_historyBorrow

private theorem s2Step296EarlyControl_sigmaOwned : ([254, 787] : List Wire).toFinset⊆s2Step296EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step296EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step296EarlyControl_sigmaReleaseOwned : ([787] : List Wire).toFinset⊆s2Step296EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step296EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step296EarlyControl_sigmaRelease : s2Step296EarlyControlHistoryArena.release {787} (fun _ => false)=some s2Step296EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step296EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step296EarlyControlSigmaArena,s2Step296EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step296EarlyControl_sigma : compileHmrSigmaDropLog s2Step296EarlyControlHistoryArena false 0 0 254 787 []=some s2Step296EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step296EarlyControl_sigmaOwned⟩
  · exact s2Step296EarlyControl_sigmaRelease

private theorem s2Step296EarlyControl_zeroBorrow : s2Step296EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step296EarlyControlLog.zeroWork=some s2Step296EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step296EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step296EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step296EarlyControlZeroArena,s2Step296EarlyControlArena,s2Step296EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step296EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step296EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step296EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step296EarlyControl_zero : compileHmrEqualityLog s2Step296EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step296EarlyControlLog.zeroWork=some (s2Step296EarlyControlZeroArena,s2Step296EarlyControlLog.zeroWork,s2Step296EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step296EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step296EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step296EarlyControl_logged : s2Step296EarlyControlPlan.Logged s2Step296EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 777 787 254 253 252 251 882 55 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step296EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step296EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step296EarlyControl_zero
  · exact s2Step296EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step296EarlyControl_flags
  · exact s2Step296EarlyControl_fit
  · exact s2Step296EarlyControl_history
  · exact s2Step296EarlyControl_sigma
  · exact s2Step296EarlyControl_branch

private theorem s2Step296EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step296EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 777 787 254 253 252 251 882 55 s2Step296EarlyControlLog=some s2Step296EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step296EarlyControlPlan s2Step296EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 777 787 254 253 252 251 882 55 s2Step296EarlyControl_logged

private def s2Step296EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step296EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634],768⟩

private def s2Step296EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821],770⟩

private def s2Step296EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121],769⟩

private def s2Step296EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812],771⟩

private def s2Step296FrontBank : WindowBank := ⟨s2Step296EntryFRow,s2Step296EntryGRow,s2Step296EntryFvRow,s2Step296EntryGvRow⟩

private def s2Step296Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 811, 768]

private def s2Step296Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 820, 805, 769]

private def s2Step296Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 770]

private def s2Step296Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 780, 771]

private theorem s2Step296Counter_apart : Disjoint s2Step296HeadFvAfter.live s2Step296CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step296HeadFvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step296Counter_borrowed : s2Step296HeadFvAfter.checkBorrow 4 s2Step296CounterWork=some s2Step296CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step296HeadFvAfter s2Step296CounterDuring s2Step296CounterWork.toFinset s2Step296Counter_bounded s2Step296Counter_apart rfl

private theorem s2Step296Counter_owned : (787::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step296HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step296HeadFvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step296Counter_checked : compileHmrCounterStepLog s2Step296HeadFvAfter true 787 [772, 773, 774, 775, 776, 777] s2Step296CounterWork=some s2Step296CounterDuring := by
  have owned : ∀q∈787::[772, 773, 774, 775, 776, 777],q∈s2Step296HeadFvAfter.live := fun q hq => s2Step296Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step296Counter_borrowed

private def s2Step296EntryFAfter : Arena := s2Step296EntryFBefore

private theorem s2Step296EntryBank_incomingDistinct : ([s2Step296EntryFRow,s2Step296EntryGRow,s2Step296EntryFvRow,s2Step296EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step296EntryF_Incoming : rowsOwned s2Step296EntryFBefore [s2Step296EntryFRow,s2Step296EntryGRow,s2Step296EntryFvRow,s2Step296EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step296EntryFRow,s2Step296EntryGRow,s2Step296EntryFvRow,s2Step296EntryGvRow] 0 s2Step296EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step296EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step296EntryBank_outgoingOwned : rowsOwned s2Step296EntryGvAfter [s2Step296EntryFOut,s2Step296EntryGOut,s2Step296EntryFvOut,s2Step296EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step296EntryGvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step296EntryF_Outgoing : rowsOwned s2Step296EntryGvAfter [s2Step296EntryFOut,s2Step296EntryGOut,s2Step296EntryFvOut,s2Step296EntryGvOut] :=
  hmrRows_owned_drop s2Step296EntryGvAfter [s2Step296EntryFOut,s2Step296EntryGOut,s2Step296EntryFvOut,s2Step296EntryGvOut] 0 s2Step296EntryBank_outgoingOwned

private theorem s2Step296EntryF_distinct : (s2Step296EntryFRow.sign::s2Step296EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step296EntryF_owned : (s2Step296EntryFRow.sign::s2Step296EntryFRow.payload).toFinset⊆s2Step296EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step296EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step296EntryF_reserved : s2Step296EntryFBefore.reserve s2Step296EntryFFresh.toFinset=some s2Step296EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step296EntryFFresh,arenaWires]
  · norm_num [s2Step296EntryFBefore,s2Step296EntryFFresh,arenaWires]
  · simp only [s2Step296EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step296EntryF_checked : planRowResizeLog s2Step296EntryFBefore s2Step296EntryFRow 123 s2Step296EntryFFresh=
    some (s2Step296EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634],768⟩,growRow 768 s2Step296EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step296EntryFBefore s2Step296EntryFAfter s2Step296EntryFRow 123 s2Step296EntryFFresh
    s2Step296EntryF_distinct s2Step296EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step296EntryF_reserved
  have rowEq : WindowRow.mk (s2Step296EntryFRow.payload++s2Step296EntryFFresh) s2Step296EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step296EntryFvAfter : Arena := s2Step296EntryGAfter

private def s2Step296EntryFvBefore : Arena := s2Step296EntryGAfter

private theorem s2Step296EntryFv_Incoming : rowsOwned s2Step296EntryFvBefore [s2Step296EntryFvRow,s2Step296EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step296EntryFRow,s2Step296EntryGRow,s2Step296EntryFvRow,s2Step296EntryGvRow] 2 s2Step296EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step296EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step296EntryFv_Outgoing : rowsOwned s2Step296EntryGvAfter [s2Step296EntryFvOut,s2Step296EntryGvOut] :=
  hmrRows_owned_drop s2Step296EntryGvAfter [s2Step296EntryFOut,s2Step296EntryGOut,s2Step296EntryFvOut,s2Step296EntryGvOut] 2 s2Step296EntryBank_outgoingOwned

private theorem s2Step296EntryFv_distinct : (s2Step296EntryFvRow.sign::s2Step296EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step296EntryFv_owned : (s2Step296EntryFvRow.sign::s2Step296EntryFvRow.payload).toFinset⊆s2Step296EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step296EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step296EntryFv_reserved : s2Step296EntryFvBefore.reserve s2Step296EntryFvFresh.toFinset=some s2Step296EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step296EntryFvFresh,arenaWires]
  · norm_num [s2Step296EntryFvBefore,s2Step296EntryGAfter,s2Step296EntryFvFresh,arenaWires]
  · simp only [s2Step296EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step296EntryFv_checked : planRowResizeLog s2Step296EntryFvBefore s2Step296EntryFvRow 163 s2Step296EntryFvFresh=
    some (s2Step296EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821],770⟩,growRow 770 s2Step296EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step296EntryFvBefore s2Step296EntryFvAfter s2Step296EntryFvRow 163 s2Step296EntryFvFresh
    s2Step296EntryFv_distinct s2Step296EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step296EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step296EntryFvRow.payload++s2Step296EntryFvFresh) s2Step296EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step296EntryGBefore : Arena := s2Step296EntryFBefore

private theorem s2Step296EntryG_Incoming : rowsOwned s2Step296EntryGBefore [s2Step296EntryGRow,s2Step296EntryFvRow,s2Step296EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step296EntryFRow,s2Step296EntryGRow,s2Step296EntryFvRow,s2Step296EntryGvRow] 1 s2Step296EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step296EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step296EntryG_Outgoing : rowsOwned s2Step296EntryGvAfter [s2Step296EntryGOut,s2Step296EntryFvOut,s2Step296EntryGvOut] :=
  hmrRows_owned_drop s2Step296EntryGvAfter [s2Step296EntryFOut,s2Step296EntryGOut,s2Step296EntryFvOut,s2Step296EntryGvOut] 1 s2Step296EntryBank_outgoingOwned

private theorem s2Step296EntryG_distinct : (s2Step296EntryGRow.sign::s2Step296EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step296EntryG_owned : (s2Step296EntryGRow.sign::s2Step296EntryGRow.payload).toFinset⊆s2Step296EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step296EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step296EntryG_reserved : s2Step296EntryGBefore.reserve s2Step296EntryGFresh.toFinset=some s2Step296EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step296EntryGFresh,arenaWires]
  · norm_num [s2Step296EntryGBefore,s2Step296EntryFBefore,s2Step296EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step296EntryGAfter,s2Step296EntryGBefore,s2Step296EntryFBefore,s2Step296EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step296EntryG_checked : planRowResizeLog s2Step296EntryGBefore s2Step296EntryGRow 123 s2Step296EntryGFresh=
    some (s2Step296EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 820],769⟩,growRow 769 s2Step296EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step296EntryGBefore s2Step296EntryGAfter s2Step296EntryGRow 123 s2Step296EntryGFresh
    s2Step296EntryG_distinct s2Step296EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step296EntryG_reserved
  have rowEq : WindowRow.mk (s2Step296EntryGRow.payload++s2Step296EntryGFresh) s2Step296EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 820],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step296EntryGvBefore : Arena := s2Step296EntryGAfter

private theorem s2Step296EntryGv_Incoming : rowsOwned s2Step296EntryGvBefore [s2Step296EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step296EntryFRow,s2Step296EntryGRow,s2Step296EntryFvRow,s2Step296EntryGvRow] 3 s2Step296EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step296EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step296EntryGv_Outgoing : rowsOwned s2Step296EntryGvAfter [s2Step296EntryGvOut] :=
  hmrRows_owned_drop s2Step296EntryGvAfter [s2Step296EntryFOut,s2Step296EntryGOut,s2Step296EntryFvOut,s2Step296EntryGvOut] 3 s2Step296EntryBank_outgoingOwned

private theorem s2Step296EntryGv_distinct : (s2Step296EntryGvRow.sign::s2Step296EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step296EntryGv_owned : (s2Step296EntryGvRow.sign::s2Step296EntryGvRow.payload).toFinset⊆s2Step296EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step296EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step296EntryGv_reserved : s2Step296EntryGvBefore.reserve s2Step296EntryGvFresh.toFinset=some s2Step296EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step296EntryGvFresh,arenaWires]
  · norm_num [s2Step296EntryGvBefore,s2Step296EntryGAfter,s2Step296EntryGvFresh,arenaWires]
  · simp only [s2Step296EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step296EntryGv_checked : planRowResizeLog s2Step296EntryGvBefore s2Step296EntryGvRow 163 s2Step296EntryGvFresh=
    some (s2Step296EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812],771⟩,growRow 771 s2Step296EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step296EntryGvBefore s2Step296EntryGvAfter s2Step296EntryGvRow 163 s2Step296EntryGvFresh
    s2Step296EntryGv_distinct s2Step296EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step296EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step296EntryGvRow.payload++s2Step296EntryGvFresh) s2Step296EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step296EntryBank_rows : planWindowRowsLog s2Step296EntryFBefore [(s2Step296EntryFRow,123),(s2Step296EntryGRow,123),(s2Step296EntryFvRow,163),(s2Step296EntryGvRow,163)] [s2Step296EntryFFresh,s2Step296EntryGFresh,s2Step296EntryFvFresh,s2Step296EntryGvFresh]=
    some (s2Step296EntryGvAfter,[s2Step296EntryFOut,s2Step296EntryGOut,s2Step296EntryFvOut,s2Step296EntryGvOut],(growRow 768 s2Step296EntryFFresh ++ (growRow 769 s2Step296EntryGFresh ++ (growRow 770 s2Step296EntryFvFresh ++ (growRow 771 s2Step296EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step296EntryGvAfter [] []=some (s2Step296EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step296EntryGvBefore s2Step296EntryGvAfter s2Step296EntryGvAfter
    s2Step296EntryGvRow s2Step296EntryGvOut 163 s2Step296EntryGvFresh [] [] []
    (growRow 771 s2Step296EntryGvFresh) ([]) s2Step296EntryGv_Incoming s2Step296EntryGv_checked h4 s2Step296EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step296EntryFvBefore s2Step296EntryFvAfter s2Step296EntryGvAfter
    s2Step296EntryFvRow s2Step296EntryFvOut 163 s2Step296EntryFvFresh [(s2Step296EntryGvRow,163)] [s2Step296EntryGvFresh] [s2Step296EntryGvOut]
    (growRow 770 s2Step296EntryFvFresh) ((growRow 771 s2Step296EntryGvFresh ++ [])) s2Step296EntryFv_Incoming s2Step296EntryFv_checked h3 s2Step296EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step296EntryGBefore s2Step296EntryGAfter s2Step296EntryGvAfter
    s2Step296EntryGRow s2Step296EntryGOut 123 s2Step296EntryGFresh [(s2Step296EntryFvRow,163),(s2Step296EntryGvRow,163)] [s2Step296EntryFvFresh,s2Step296EntryGvFresh] [s2Step296EntryFvOut,s2Step296EntryGvOut]
    (growRow 769 s2Step296EntryGFresh) ((growRow 770 s2Step296EntryFvFresh ++ (growRow 771 s2Step296EntryGvFresh ++ []))) s2Step296EntryG_Incoming s2Step296EntryG_checked h2 s2Step296EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step296EntryFBefore s2Step296EntryFAfter s2Step296EntryGvAfter
    s2Step296EntryFRow s2Step296EntryFOut 123 s2Step296EntryFFresh [(s2Step296EntryGRow,123),(s2Step296EntryFvRow,163),(s2Step296EntryGvRow,163)] [s2Step296EntryGFresh,s2Step296EntryFvFresh,s2Step296EntryGvFresh] [s2Step296EntryGOut,s2Step296EntryFvOut,s2Step296EntryGvOut]
    (growRow 768 s2Step296EntryFFresh) ((growRow 769 s2Step296EntryGFresh ++ (growRow 770 s2Step296EntryFvFresh ++ (growRow 771 s2Step296EntryGvFresh ++ [])))) s2Step296EntryF_Incoming s2Step296EntryF_checked h1 s2Step296EntryF_Outgoing
  exact h0

private theorem s2Step296EntryBank_checked : compileHmrBankResizeLog .entry s2Step296EntryFBefore ⟨s2Step296EntryFRow,s2Step296EntryGRow,s2Step296EntryFvRow,s2Step296EntryGvRow⟩ ⟨123,123,163,163⟩ [s2Step296EntryFFresh,s2Step296EntryGFresh,s2Step296EntryFvFresh,s2Step296EntryGvFresh]=
    some (s2Step296EntryGvAfter,⟨s2Step296EntryFOut,s2Step296EntryGOut,s2Step296EntryFvOut,s2Step296EntryGvOut⟩,(growRow 768 s2Step296EntryFFresh ++ (growRow 769 s2Step296EntryGFresh ++ (growRow 770 s2Step296EntryFvFresh ++ (growRow 771 s2Step296EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step296EntryBank_rows]
  rfl

private def s2Step296ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<121) ∨ (122≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step296ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<121) ∨ (122≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step296ExitFBefore : Arena := s2Step296ExitGAfter

private def s2Step296ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 811],768⟩

private def s2Step296ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785],770⟩

private def s2Step296ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 820, 805],769⟩

private def s2Step296ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 780],771⟩

private theorem s2Step296ExitBank_incomingDistinct : ([s2Step296ExitGRow,s2Step296ExitFRow,s2Step296ExitFvRow,s2Step296ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step296ExitF_Incoming : rowsOwned s2Step296ExitFBefore [s2Step296ExitFRow,s2Step296ExitFvRow,s2Step296ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step296ExitGRow,s2Step296ExitFRow,s2Step296ExitFvRow,s2Step296ExitGvRow] 1 s2Step296ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step296ExitFBefore (fun q => (0≤q ∧ q<121) ∨ (122≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step296ExitBank_outgoingOwned : rowsOwned s2Step296ExitGvAfter [s2Step296ExitGOut,s2Step296ExitFOut,s2Step296ExitFvOut,s2Step296ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step296ExitGvAfter (fun q => (0≤q ∧ q<121) ∨ (122≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step296ExitF_Outgoing : rowsOwned s2Step296ExitGvAfter [s2Step296ExitFOut,s2Step296ExitFvOut,s2Step296ExitGvOut] :=
  hmrRows_owned_drop s2Step296ExitGvAfter [s2Step296ExitGOut,s2Step296ExitFOut,s2Step296ExitFvOut,s2Step296ExitGvOut] 1 s2Step296ExitBank_outgoingOwned

private theorem s2Step296ExitF_distinct : (s2Step296ExitFRow.sign::s2Step296ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step296ExitF_owned : (s2Step296ExitFRow.sign::s2Step296ExitFRow.payload).toFinset⊆s2Step296ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step296ExitFBefore (fun q => (0≤q ∧ q<121) ∨ (122≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step296ExitF_retired : s2Step296ExitFBefore.retireSet s2Step296ExitFExtra.toFinset=s2Step296ExitFAfter := by
  unfold Arena.retireSet s2Step296ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step296ExitFBefore,s2Step296ExitGAfter,s2Step296ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step296ExitF_checked : planRowResizeLog s2Step296ExitFBefore s2Step296ExitFRow 123 []=
    some (s2Step296ExitFAfter,s2Step296ExitFOut,shrinkRow 768 s2Step296ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step296ExitFBefore s2Step296ExitFRow 123 s2Step296ExitF_distinct s2Step296ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step296ExitFRow.payload.take 123) s2Step296ExitFRow.sign=s2Step296ExitFOut := by decide +kernel
  have hi : s2Step296ExitFRow.payload.drop 123=s2Step296ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step296ExitF_retired] at result
  exact result

private def s2Step296ExitFvAfter : Arena := s2Step296ExitFAfter

private def s2Step296ExitFvBefore : Arena := s2Step296ExitFAfter

private theorem s2Step296ExitFv_Incoming : rowsOwned s2Step296ExitFvBefore [s2Step296ExitFvRow,s2Step296ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step296ExitGRow,s2Step296ExitFRow,s2Step296ExitFvRow,s2Step296ExitGvRow] 2 s2Step296ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step296ExitFvBefore (fun q => (0≤q ∧ q<121) ∨ (122≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step296ExitFv_Outgoing : rowsOwned s2Step296ExitGvAfter [s2Step296ExitFvOut,s2Step296ExitGvOut] :=
  hmrRows_owned_drop s2Step296ExitGvAfter [s2Step296ExitGOut,s2Step296ExitFOut,s2Step296ExitFvOut,s2Step296ExitGvOut] 2 s2Step296ExitBank_outgoingOwned

private theorem s2Step296ExitFv_distinct : (s2Step296ExitFvRow.sign::s2Step296ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step296ExitFv_owned : (s2Step296ExitFvRow.sign::s2Step296ExitFvRow.payload).toFinset⊆s2Step296ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step296ExitFvBefore (fun q => (0≤q ∧ q<121) ∨ (122≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step296ExitFv_reserved : s2Step296ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step296ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step296ExitFv_checked : planRowResizeLog s2Step296ExitFvBefore s2Step296ExitFvRow 164 []=
    some (s2Step296ExitFvAfter,s2Step296ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step296ExitFvBefore s2Step296ExitFvAfter s2Step296ExitFvRow 164 []
    s2Step296ExitFv_distinct s2Step296ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step296ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step296ExitFvRow.payload++[]) s2Step296ExitFvRow.sign=s2Step296ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step296ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private theorem s2Step296ExitG_Incoming : rowsOwned s2Step296ExitGBefore [s2Step296ExitGRow,s2Step296ExitFRow,s2Step296ExitFvRow,s2Step296ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step296ExitGRow,s2Step296ExitFRow,s2Step296ExitFvRow,s2Step296ExitGvRow] 0 s2Step296ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step296ExitGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step296ExitG_Outgoing : rowsOwned s2Step296ExitGvAfter [s2Step296ExitGOut,s2Step296ExitFOut,s2Step296ExitFvOut,s2Step296ExitGvOut] :=
  hmrRows_owned_drop s2Step296ExitGvAfter [s2Step296ExitGOut,s2Step296ExitFOut,s2Step296ExitFvOut,s2Step296ExitGvOut] 0 s2Step296ExitBank_outgoingOwned

private theorem s2Step296ExitG_distinct : (s2Step296ExitGRow.sign::s2Step296ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step296ExitG_owned : (s2Step296ExitGRow.sign::s2Step296ExitGRow.payload).toFinset⊆s2Step296ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step296ExitGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step296ExitG_retired : s2Step296ExitGBefore.retireSet s2Step296ExitGExtra.toFinset=s2Step296ExitGAfter := by
  unfold Arena.retireSet s2Step296ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step296ExitGBefore,s2Step296ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step296ExitG_checked : planRowResizeLog s2Step296ExitGBefore s2Step296ExitGRow 121 []=
    some (s2Step296ExitGAfter,s2Step296ExitGOut,shrinkRow 769 s2Step296ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step296ExitGBefore s2Step296ExitGRow 121 s2Step296ExitG_distinct s2Step296ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step296ExitGRow.payload.take 121) s2Step296ExitGRow.sign=s2Step296ExitGOut := by decide +kernel
  have hi : s2Step296ExitGRow.payload.drop 121=s2Step296ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step296ExitG_retired] at result
  exact result

private def s2Step296ExitGvBefore : Arena := s2Step296ExitFAfter

private theorem s2Step296ExitGv_Incoming : rowsOwned s2Step296ExitGvBefore [s2Step296ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step296ExitGRow,s2Step296ExitFRow,s2Step296ExitFvRow,s2Step296ExitGvRow] 3 s2Step296ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step296ExitGvBefore (fun q => (0≤q ∧ q<121) ∨ (122≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step296ExitGv_Outgoing : rowsOwned s2Step296ExitGvAfter [s2Step296ExitGvOut] :=
  hmrRows_owned_drop s2Step296ExitGvAfter [s2Step296ExitGOut,s2Step296ExitFOut,s2Step296ExitFvOut,s2Step296ExitGvOut] 3 s2Step296ExitBank_outgoingOwned

private theorem s2Step296ExitGv_distinct : (s2Step296ExitGvRow.sign::s2Step296ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step296ExitGv_owned : (s2Step296ExitGvRow.sign::s2Step296ExitGvRow.payload).toFinset⊆s2Step296ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step296ExitGvBefore (fun q => (0≤q ∧ q<121) ∨ (122≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step296ExitGv_retired : s2Step296ExitGvBefore.retireSet s2Step296ExitGvExtra.toFinset=s2Step296ExitGvAfter := by
  unfold Arena.retireSet s2Step296ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step296ExitGvBefore,s2Step296ExitFAfter,s2Step296ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step296ExitGv_checked : planRowResizeLog s2Step296ExitGvBefore s2Step296ExitGvRow 163 []=
    some (s2Step296ExitGvAfter,s2Step296ExitGvOut,shrinkRow 771 s2Step296ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step296ExitGvBefore s2Step296ExitGvRow 163 s2Step296ExitGv_distinct s2Step296ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step296ExitGvRow.payload.take 163) s2Step296ExitGvRow.sign=s2Step296ExitGvOut := by decide +kernel
  have hi : s2Step296ExitGvRow.payload.drop 163=s2Step296ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step296ExitGv_retired] at result
  exact result

private theorem s2Step296ExitBank_rows : planWindowRowsLog s2Step296ExitGBefore [(s2Step296ExitGRow,121),(s2Step296ExitFRow,123),(s2Step296ExitFvRow,164),(s2Step296ExitGvRow,163)] [[],[],[],[]]=
    some (s2Step296ExitGvAfter,[s2Step296ExitGOut,s2Step296ExitFOut,s2Step296ExitFvOut,s2Step296ExitGvOut],(shrinkRow 769 s2Step296ExitGExtra ++ (shrinkRow 768 s2Step296ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step296ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step296ExitGvAfter [] []=some (s2Step296ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step296ExitGvBefore s2Step296ExitGvAfter s2Step296ExitGvAfter
    s2Step296ExitGvRow s2Step296ExitGvOut 163 [] [] [] []
    (shrinkRow 771 s2Step296ExitGvExtra) ([]) s2Step296ExitGv_Incoming s2Step296ExitGv_checked h4 s2Step296ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step296ExitFvBefore s2Step296ExitFvAfter s2Step296ExitGvAfter
    s2Step296ExitFvRow s2Step296ExitFvOut 164 [] [(s2Step296ExitGvRow,163)] [[]] [s2Step296ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step296ExitGvExtra ++ [])) s2Step296ExitFv_Incoming s2Step296ExitFv_checked h3 s2Step296ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step296ExitFBefore s2Step296ExitFAfter s2Step296ExitGvAfter
    s2Step296ExitFRow s2Step296ExitFOut 123 [] [(s2Step296ExitFvRow,164),(s2Step296ExitGvRow,163)] [[],[]] [s2Step296ExitFvOut,s2Step296ExitGvOut]
    (shrinkRow 768 s2Step296ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step296ExitGvExtra ++ []))) s2Step296ExitF_Incoming s2Step296ExitF_checked h2 s2Step296ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step296ExitGBefore s2Step296ExitGAfter s2Step296ExitGvAfter
    s2Step296ExitGRow s2Step296ExitGOut 121 [] [(s2Step296ExitFRow,123),(s2Step296ExitFvRow,164),(s2Step296ExitGvRow,163)] [[],[],[]] [s2Step296ExitFOut,s2Step296ExitFvOut,s2Step296ExitGvOut]
    (shrinkRow 769 s2Step296ExitGExtra) ((shrinkRow 768 s2Step296ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step296ExitGvExtra ++ [])))) s2Step296ExitG_Incoming s2Step296ExitG_checked h1 s2Step296ExitG_Outgoing
  exact h0

private theorem s2Step296ExitBank_checked : compileHmrBankResizeLog .exit s2Step296ExitGBefore ⟨s2Step296ExitFRow,s2Step296ExitGRow,s2Step296ExitFvRow,s2Step296ExitGvRow⟩ ⟨123,121,164,163⟩ [[],[],[],[]]=
    some (s2Step296ExitGvAfter,⟨s2Step296ExitFOut,s2Step296ExitGOut,s2Step296ExitFvOut,s2Step296ExitGvOut⟩,(shrinkRow 769 s2Step296ExitGExtra ++ (shrinkRow 768 s2Step296ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step296ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step296ExitBank_rows]
  rfl

private theorem s2Step296Add0_apart : Disjoint s2Step296Add0Arena.live s2Step296Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step296Add0Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step296Add0_card : s2Step296Add0Arena.live.card=901 := by
  decide +kernel

private theorem s2Step296Add0_borrowed : s2Step296Add0Arena.checkBorrow (hmrHybridCount s2Step296Add0Arena s2Step296Add0B.length) s2Step296Add0Work=some s2Step296Add0During := by
  have len : s2Step296Add0Work.length=hmrHybridCount s2Step296Add0Arena s2Step296Add0B.length := by
    rw [hmrHybridCount,s2Step296Add0_card]
    decide +kernel
  have nd : s2Step296Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step296Add0Arena s2Step296Add0During s2Step296Add0Work.toFinset s2Step296Add0_bounded s2Step296Add0_apart rfl

private theorem s2Step296Add0_distinct : (783::882::847::(s2Step296Add0A++s2Step296Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step296Add0_owned : (783::882::847::(s2Step296Add0A++s2Step296Add0B)).toFinset⊆s2Step296Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step296Add0Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step296Add0_checked : compileHmrHybridCinLog s2Step296Add0Arena 882 783 847 s2Step296Add0A s2Step296Add0B s2Step296Add0Work=some s2Step296Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step296Add0Arena s2Step296Add0During 882 783 847 s2Step296Add0A s2Step296Add0B s2Step296Add0Work
    (by decide +kernel) (by decide +kernel) s2Step296Add0_distinct
    (fun q hq => s2Step296Add0_owned (List.mem_toFinset.mpr hq)) s2Step296Add0_borrowed

private theorem s2Step296Add1_apart : Disjoint s2Step296Add1Arena.live s2Step296Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step296Add1Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step296Add1_card : s2Step296Add1Arena.live.card=901 := by
  decide +kernel

private theorem s2Step296Add1_borrowed : s2Step296Add1Arena.checkBorrow (hmrHybridCount s2Step296Add1Arena s2Step296Add1B.length) s2Step296Add1Work=some s2Step296Add1During := by
  have len : s2Step296Add1Work.length=hmrHybridCount s2Step296Add1Arena s2Step296Add1B.length := by
    rw [hmrHybridCount,s2Step296Add1_card]
    decide +kernel
  have nd : s2Step296Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step296Add1Arena s2Step296Add1During s2Step296Add1Work.toFinset s2Step296Add1_bounded s2Step296Add1_apart rfl

private theorem s2Step296Add1_distinct : (783::882::847::(s2Step296Add1A++s2Step296Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step296Add1_owned : (783::882::847::(s2Step296Add1A++s2Step296Add1B)).toFinset⊆s2Step296Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step296Add1Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step296Add1_checked : compileHmrHybridCinLog s2Step296Add1Arena 882 783 847 s2Step296Add1A s2Step296Add1B s2Step296Add1Work=some s2Step296Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step296Add1Arena s2Step296Add1During 882 783 847 s2Step296Add1A s2Step296Add1B s2Step296Add1Work
    (by decide +kernel) (by decide +kernel) s2Step296Add1_distinct
    (fun q hq => s2Step296Add1_owned (List.mem_toFinset.mpr hq)) s2Step296Add1_borrowed

private theorem s2Step296F4_apart : Disjoint (s2Step296Add0A++s2Step296Add0B).toFinset (s2Step296Add1A++s2Step296Add1B).toFinset := by
  have nd : ((s2Step296Add0A++s2Step296Add0B)++(s2Step296Add1A++s2Step296Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step296F4_carry : s2Step296F4FlagArena.checkBorrow 1 [847]=some s2Step296Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step296F4FlagArena,s2Step296HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step296F4FlagArena,s2Step296HeadFvAfter,s2Step296Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step296F4_distinct : (787::882::783::847::((s2Step296Add0A++s2Step296Add1A)++(s2Step296Add0B++s2Step296Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step296F4_flag : s2Step296HeadFvAfter.checkBorrow 1 [783]=some s2Step296F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step296HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step296F4_owned : (787::882::((s2Step296Add0A++s2Step296Add1A)++(s2Step296Add0B++s2Step296Add1B))).toFinset⊆s2Step296HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step296HeadFvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step296F4_checked : compileHmrHybridF4Log s2Step296HeadFvAfter 787 882 s2Step296Add0A s2Step296Add0B s2Step296Add1A s2Step296Add1B [783] [847] s2Step296Add0Work s2Step296Add1Work=some s2Step296F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step296HeadFvAfter s2Step296F4FlagArena s2Step296Add0Arena s2Step296Add0During s2Step296Add1During 787 882
    s2Step296Add0A s2Step296Add0B s2Step296Add1A s2Step296Add1B [783] [847] s2Step296Add0Work s2Step296Add1Work
    (fun q hq => s2Step296F4_owned (List.mem_toFinset.mpr hq)) s2Step296F4_flag s2Step296F4_carry
    s2Step296F4_distinct s2Step296F4_apart s2Step296Add0_checked s2Step296Add1_checked

private theorem s2Step296Front_branch : s2Step296FrontSigmaArena.checkBorrow 1 [882]=some s2Step296HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step296FrontSigmaArena,s2Step296EntryGvAfter,s2Step296EntryGAfter,arenaWires]
  · ext q
    simp only [s2Step296FrontSigmaArena,s2Step296EntryGvAfter,s2Step296EntryGAfter,s2Step296HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step296Front_entry : HmrFrontEntryValid s2Step296EntryFBefore s2Step296FrontBank 123 163 ⟨123,121,164,163⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step296FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step296EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step296EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step296FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step296Front_sigma : s2Step296EntryGvAfter.checkBorrow 1 [787]=some s2Step296FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step296EntryGvAfter,s2Step296EntryGAfter,arenaWires]
  · rfl

private def s2Step296HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step296HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step296HeadFBefore : Arena := s2Step296HeadGAfter

private def s2Step296HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634],768⟩

private def s2Step296HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821],770⟩

private def s2Step296HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 820],769⟩

private def s2Step296HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812],771⟩

private theorem s2Step296HeadBank_incomingDistinct : ([s2Step296HeadGRow,s2Step296HeadFRow,s2Step296HeadGvRow,s2Step296HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step296HeadF_Incoming : rowsOwned s2Step296HeadFBefore [s2Step296HeadFRow,s2Step296HeadGvRow,s2Step296HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step296HeadGRow,s2Step296HeadFRow,s2Step296HeadGvRow,s2Step296HeadFvRow] 1 s2Step296HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step296HeadFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step296HeadBank_outgoingOwned : rowsOwned s2Step296HeadFvAfter [s2Step296HeadGOut,s2Step296HeadFOut,s2Step296HeadGvOut,s2Step296HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step296HeadFvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step296HeadF_Outgoing : rowsOwned s2Step296HeadFvAfter [s2Step296HeadFOut,s2Step296HeadGvOut,s2Step296HeadFvOut] :=
  hmrRows_owned_drop s2Step296HeadFvAfter [s2Step296HeadGOut,s2Step296HeadFOut,s2Step296HeadGvOut,s2Step296HeadFvOut] 1 s2Step296HeadBank_outgoingOwned

private theorem s2Step296HeadF_distinct : (s2Step296HeadFRow.sign::s2Step296HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step296HeadF_owned : (s2Step296HeadFRow.sign::s2Step296HeadFRow.payload).toFinset⊆s2Step296HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step296HeadFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step296HeadF_reserved : s2Step296HeadFBefore.reserve s2Step296HeadFFresh.toFinset=some s2Step296HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step296HeadFFresh,arenaWires]
  · norm_num [s2Step296HeadFBefore,s2Step296HeadGAfter,s2Step296HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step296HeadFAfter,s2Step296HeadFBefore,s2Step296HeadGAfter,s2Step296HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step296HeadF_checked : planRowResizeLog s2Step296HeadFBefore s2Step296HeadFRow 124 s2Step296HeadFFresh=
    some (s2Step296HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 811],768⟩,growRow 768 s2Step296HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step296HeadFBefore s2Step296HeadFAfter s2Step296HeadFRow 124 s2Step296HeadFFresh
    s2Step296HeadF_distinct s2Step296HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step296HeadF_reserved
  have rowEq : WindowRow.mk (s2Step296HeadFRow.payload++s2Step296HeadFFresh) s2Step296HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 811],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step296HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step296HeadFvBefore : Arena := s2Step296HeadGvAfter

private theorem s2Step296HeadFv_Incoming : rowsOwned s2Step296HeadFvBefore [s2Step296HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step296HeadGRow,s2Step296HeadFRow,s2Step296HeadGvRow,s2Step296HeadFvRow] 3 s2Step296HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step296HeadFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step296HeadFv_Outgoing : rowsOwned s2Step296HeadFvAfter [s2Step296HeadFvOut] :=
  hmrRows_owned_drop s2Step296HeadFvAfter [s2Step296HeadGOut,s2Step296HeadFOut,s2Step296HeadGvOut,s2Step296HeadFvOut] 3 s2Step296HeadBank_outgoingOwned

private theorem s2Step296HeadFv_distinct : (s2Step296HeadFvRow.sign::s2Step296HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step296HeadFv_owned : (s2Step296HeadFvRow.sign::s2Step296HeadFvRow.payload).toFinset⊆s2Step296HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step296HeadFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step296HeadFv_reserved : s2Step296HeadFvBefore.reserve s2Step296HeadFvFresh.toFinset=some s2Step296HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step296HeadFvFresh,arenaWires]
  · norm_num [s2Step296HeadFvBefore,s2Step296HeadGvAfter,s2Step296HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step296HeadFvAfter,s2Step296HeadFvBefore,s2Step296HeadGvAfter,s2Step296HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step296HeadFv_checked : planRowResizeLog s2Step296HeadFvBefore s2Step296HeadFvRow 164 s2Step296HeadFvFresh=
    some (s2Step296HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785],770⟩,growRow 770 s2Step296HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step296HeadFvBefore s2Step296HeadFvAfter s2Step296HeadFvRow 164 s2Step296HeadFvFresh
    s2Step296HeadFv_distinct s2Step296HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step296HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step296HeadFvRow.payload++s2Step296HeadFvFresh) s2Step296HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step296HeadG_Incoming : rowsOwned s2Step296HeadGBefore [s2Step296HeadGRow,s2Step296HeadFRow,s2Step296HeadGvRow,s2Step296HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step296HeadGRow,s2Step296HeadFRow,s2Step296HeadGvRow,s2Step296HeadFvRow] 0 s2Step296HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step296HeadGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step296HeadG_Outgoing : rowsOwned s2Step296HeadFvAfter [s2Step296HeadGOut,s2Step296HeadFOut,s2Step296HeadGvOut,s2Step296HeadFvOut] :=
  hmrRows_owned_drop s2Step296HeadFvAfter [s2Step296HeadGOut,s2Step296HeadFOut,s2Step296HeadGvOut,s2Step296HeadFvOut] 0 s2Step296HeadBank_outgoingOwned

private theorem s2Step296HeadG_distinct : (s2Step296HeadGRow.sign::s2Step296HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step296HeadG_owned : (s2Step296HeadGRow.sign::s2Step296HeadGRow.payload).toFinset⊆s2Step296HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step296HeadGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step296HeadG_reserved : s2Step296HeadGBefore.reserve s2Step296HeadGFresh.toFinset=some s2Step296HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step296HeadGFresh,arenaWires]
  · norm_num [s2Step296HeadGBefore,s2Step296HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step296HeadGAfter,s2Step296HeadGBefore,s2Step296HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step296HeadG_checked : planRowResizeLog s2Step296HeadGBefore s2Step296HeadGRow 124 s2Step296HeadGFresh=
    some (s2Step296HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 820, 805],769⟩,growRow 769 s2Step296HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step296HeadGBefore s2Step296HeadGAfter s2Step296HeadGRow 124 s2Step296HeadGFresh
    s2Step296HeadG_distinct s2Step296HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step296HeadG_reserved
  have rowEq : WindowRow.mk (s2Step296HeadGRow.payload++s2Step296HeadGFresh) s2Step296HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 820, 805],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step296HeadGvBefore : Arena := s2Step296HeadFAfter

private theorem s2Step296HeadGv_Incoming : rowsOwned s2Step296HeadGvBefore [s2Step296HeadGvRow,s2Step296HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step296HeadGRow,s2Step296HeadFRow,s2Step296HeadGvRow,s2Step296HeadFvRow] 2 s2Step296HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step296HeadGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step296HeadGv_Outgoing : rowsOwned s2Step296HeadFvAfter [s2Step296HeadGvOut,s2Step296HeadFvOut] :=
  hmrRows_owned_drop s2Step296HeadFvAfter [s2Step296HeadGOut,s2Step296HeadFOut,s2Step296HeadGvOut,s2Step296HeadFvOut] 2 s2Step296HeadBank_outgoingOwned

private theorem s2Step296HeadGv_distinct : (s2Step296HeadGvRow.sign::s2Step296HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step296HeadGv_owned : (s2Step296HeadGvRow.sign::s2Step296HeadGvRow.payload).toFinset⊆s2Step296HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step296HeadGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step296HeadGv_reserved : s2Step296HeadGvBefore.reserve s2Step296HeadGvFresh.toFinset=some s2Step296HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step296HeadGvFresh,arenaWires]
  · norm_num [s2Step296HeadGvBefore,s2Step296HeadFAfter,s2Step296HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step296HeadGvAfter,s2Step296HeadGvBefore,s2Step296HeadFAfter,s2Step296HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step296HeadGv_checked : planRowResizeLog s2Step296HeadGvBefore s2Step296HeadGvRow 164 s2Step296HeadGvFresh=
    some (s2Step296HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 780],771⟩,growRow 771 s2Step296HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step296HeadGvBefore s2Step296HeadGvAfter s2Step296HeadGvRow 164 s2Step296HeadGvFresh
    s2Step296HeadGv_distinct s2Step296HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step296HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step296HeadGvRow.payload++s2Step296HeadGvFresh) s2Step296HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 780],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step296HeadBank_rows : planWindowRowsLog s2Step296HeadGBefore [(s2Step296HeadGRow,124),(s2Step296HeadFRow,124),(s2Step296HeadGvRow,164),(s2Step296HeadFvRow,164)] [s2Step296HeadGFresh,s2Step296HeadFFresh,s2Step296HeadGvFresh,s2Step296HeadFvFresh]=
    some (s2Step296HeadFvAfter,[s2Step296HeadGOut,s2Step296HeadFOut,s2Step296HeadGvOut,s2Step296HeadFvOut],(growRow 769 s2Step296HeadGFresh ++ (growRow 768 s2Step296HeadFFresh ++ (growRow 771 s2Step296HeadGvFresh ++ (growRow 770 s2Step296HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step296HeadFvAfter [] []=some (s2Step296HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step296HeadFvBefore s2Step296HeadFvAfter s2Step296HeadFvAfter
    s2Step296HeadFvRow s2Step296HeadFvOut 164 s2Step296HeadFvFresh [] [] []
    (growRow 770 s2Step296HeadFvFresh) ([]) s2Step296HeadFv_Incoming s2Step296HeadFv_checked h4 s2Step296HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step296HeadGvBefore s2Step296HeadGvAfter s2Step296HeadFvAfter
    s2Step296HeadGvRow s2Step296HeadGvOut 164 s2Step296HeadGvFresh [(s2Step296HeadFvRow,164)] [s2Step296HeadFvFresh] [s2Step296HeadFvOut]
    (growRow 771 s2Step296HeadGvFresh) ((growRow 770 s2Step296HeadFvFresh ++ [])) s2Step296HeadGv_Incoming s2Step296HeadGv_checked h3 s2Step296HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step296HeadFBefore s2Step296HeadFAfter s2Step296HeadFvAfter
    s2Step296HeadFRow s2Step296HeadFOut 124 s2Step296HeadFFresh [(s2Step296HeadGvRow,164),(s2Step296HeadFvRow,164)] [s2Step296HeadGvFresh,s2Step296HeadFvFresh] [s2Step296HeadGvOut,s2Step296HeadFvOut]
    (growRow 768 s2Step296HeadFFresh) ((growRow 771 s2Step296HeadGvFresh ++ (growRow 770 s2Step296HeadFvFresh ++ []))) s2Step296HeadF_Incoming s2Step296HeadF_checked h2 s2Step296HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step296HeadGBefore s2Step296HeadGAfter s2Step296HeadFvAfter
    s2Step296HeadGRow s2Step296HeadGOut 124 s2Step296HeadGFresh [(s2Step296HeadFRow,124),(s2Step296HeadGvRow,164),(s2Step296HeadFvRow,164)] [s2Step296HeadFFresh,s2Step296HeadGvFresh,s2Step296HeadFvFresh] [s2Step296HeadFOut,s2Step296HeadGvOut,s2Step296HeadFvOut]
    (growRow 769 s2Step296HeadGFresh) ((growRow 768 s2Step296HeadFFresh ++ (growRow 771 s2Step296HeadGvFresh ++ (growRow 770 s2Step296HeadFvFresh ++ [])))) s2Step296HeadG_Incoming s2Step296HeadG_checked h1 s2Step296HeadG_Outgoing
  exact h0

private theorem s2Step296HeadBank_checked : compileHmrBankResizeLog .headroom s2Step296HeadGBefore ⟨s2Step296HeadFRow,s2Step296HeadGRow,s2Step296HeadFvRow,s2Step296HeadGvRow⟩ ⟨124,124,164,164⟩ [s2Step296HeadGFresh,s2Step296HeadFFresh,s2Step296HeadGvFresh,s2Step296HeadFvFresh]=
    some (s2Step296HeadFvAfter,⟨s2Step296HeadFOut,s2Step296HeadGOut,s2Step296HeadFvOut,s2Step296HeadGvOut⟩,(growRow 769 s2Step296HeadGFresh ++ (growRow 768 s2Step296HeadFFresh ++ (growRow 771 s2Step296HeadGvFresh ++ (growRow 770 s2Step296HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step296HeadBank_rows]
  rfl

private theorem s2Step296Front_checked : compileHmrSourceFrontLog s2Step296EntryFBefore s2Step296FrontBank 123 163 ⟨123,121,164,163⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step296FrontLog=some s2Step296FrontPlan := by
  have pairEq : s2Step296FrontPair=⟨s2Step296HeadFRow,s2Step296HeadGRow,s2Step296HeadFvRow,s2Step296HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step296FrontHead=⟨s2Step296ExitFRow,s2Step296ExitGRow,s2Step296ExitFvRow,s2Step296ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step296Add0A=s2Step296FrontHead.f.wires := by decide +kernel
  have gEq : s2Step296Add0B=s2Step296FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step296Add1A=s2Step296FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step296Add1B=s2Step296FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step296EntryFBefore s2Step296FrontBank 123 163 ⟨123,121,164,163⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step296FrontLog s2Step296FrontPlan
  · exact s2Step296Front_entry
  · exact s2Step296EntryBank_checked
  · exact s2Step296Front_sigma
  · rfl
  · exact s2Step296Front_branch
  · rfl
  · simpa only [s2Step296FrontPlan,pairEq] using s2Step296HeadBank_checked
  · simpa only [s2Step296FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step296F4_checked
  · exact s2Step296Counter_checked
  · rfl
  · simpa only [s2Step296FrontPlan,headEq] using s2Step296ExitBank_checked

private theorem s2Step296Complete_explicit_checked : compileHmrEarlyStepLog s2Step296EntryFBefore s2Step296FrontBank 123 163 ⟨123,121,164,163⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 55 s2Step296CompleteLog=some s2Step296CompletePlan := by
  let Q := s2Step296EarlyControlPlan
  have hq := s2Step296EarlyControl_plan_checked
  have fv1 : s2Step296CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step296CompleteOut.fv.payload[2]?.getD s2Step296CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step296CompleteOut.fv.payload[3]?.getD s2Step296CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step296CompleteOut.fv.payload[4]?.getD s2Step296CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step296EntryFBefore s2Step296EarlyControlArena s2Step296FrontBank 123 163 ⟨123,121,164,163⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 55 s2Step296CompleteLog s2Step296FrontPlan Q
    s2Step296Front_checked s2Step296Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step296Complete_owned s2Step296Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step296EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 777 787 s2Step296CompleteOut.fv.second (s2Step296CompleteOut.fv.payload[2]?.getD s2Step296CompleteOut.fv.sign) (s2Step296CompleteOut.fv.payload[3]?.getD s2Step296CompleteOut.fv.sign) (s2Step296CompleteOut.fv.payload[4]?.getD s2Step296CompleteOut.fv.sign) 882 55 s2Step296EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep296Arena : Arena := s2Step296EntryFBefore
def s2PrivateStep296Bank : WindowBank := s2Step296FrontBank
def s2PrivateStep296Spec : HmrSourceWalkStepLog := ⟨123,163,⟨123,121,164,163⟩,55,.early s2Step296CompleteLog⟩
def s2PrivateStep296Plan : HmrSourceStepPlan := .early s2Step296CompletePlan
theorem s2PrivateStep296_source : s2PrivateStep296Spec=s2ObservedLogs288[8] := rfl
theorem s2PrivateStep296_checked : compileHmrSourceStepLog s2PrivateStep296Arena s2PrivateStep296Bank
    s2PrivateStep296Spec.fgWidth s2PrivateStep296Spec.vWidth s2PrivateStep296Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904]
    6 498 296 s2PrivateStep296Spec.need none s2PrivateStep296Spec.log=some s2PrivateStep296Plan := by
  change compileHmrSourceStepLog s2Step296EntryFBefore s2Step296FrontBank 123 163 ⟨123,121,164,163⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 6 498 296 55 none (.early s2Step296CompleteLog)=some (.early s2Step296CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 296<498)]
  rw [s2Step296Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
